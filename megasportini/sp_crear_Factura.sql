/*
CALL sp_registrar_venta(2,1,'2021-06-22','2021-06-24',1,7000,'[ {
	"id_producto":4,
	"cantidad": 6
}, {
	"id_producto":5,
	"cantidad": 9
},{
	"id_producto":6,
	"cantidad":12
}]',0);
*/

DELIMITER $$
CREATE PROCEDURE sp_registrar_factura(IN p_idusr INT, IN P_idcli INT, IN p_fechap DATE,IN p_fechae DATE,IN p_estado INT,IN p_vrenvio INT, IN productos JSON,IN p_iva INT)
BEGIN
	# parra recorrer el while que hara la insercion de productos
	DECLARE _indice BIGINT UNSIGNED DEFAULT 0;
	DECLARE _total_productos INT;
	# datos del detalle de la venta
	DECLARE _id_venta INT;
	DECLARE _id_producto INT;
	DECLARE _cantidad INT;
	DECLARE _precio_unitario DOUBLE;
	DECLARE _subtotal DOUBLE;
	# datos finales de la venta
	DECLARE _subtotal_venta DOUBLE;
	DECLARE _iva DOUBLE;
	DECLARE _total_venta DOUBLE;
	SET AUTOCOMMIT = 0;
	START TRANSACTION;
	# insercion inicial a tabla de ventas
	INSERT INTO PEDIDOSXCLIENTE (id_usuario,id_cliente,fecha_pedido,fecha_envio,id_estado_pedido) VALUES (p_idusr,p_idcli, p_fechap, P_fechae, p_estado);
	# recuperando el id del pedido de venta que se acabo de ingresar
	SET _id_venta = (SELECT LAST_INSERT_ID());
	SET _total_productos = JSON_LENGTH(productos);
	# extrayendo cada valor que llega de la lista de JSON
	WHILE 	_indice < _total_productos DO
	SET _id_producto = JSON_EXTRACT(productos,CONCAT( '$['  ,_indice, '].id_producto'));
	SET _cantidad = JSON_EXTRACT(productos,CONCAT( '$[' , _indice, '].cantidad'));
	SET _precio_unitario = (SELECT Precio_venta FROM Producto WHERE id_Producto = _id_producto);
	SET _subtotal = _cantidad * _precio_unitario;
	# insertando cada detalle de producto
	INSERT INTO Detallepedxcli (id_pedido,id_producto,cantidad,precio,descuento,id_estado_detped ) VALUES (_id_venta,_id_producto,_cantidad,_precio_unitario,0,1);
	UPDATE Producto SET Saldo_Cantidad = Saldo_Cantidad - _cantidad WHERE id_Producto = _id_producto;
        # insertando cada detalle de producto en transaccion de inventario
INSERT INTO transacciondeinv  (id_tipo_transaccion,fecha_creacion, fecha_modificacion, id_producto,cantidad,id_usuario ) VALUES (2,p_fechap,p_fechap,_id_producto,_cantidad,p_idusr);

	SET _indice = _indice + 1; 
	END WHILE;


	SET _subtotal_venta =  (SELECT SUM(precio-descuento) FROM Detallepedxcli WHERE id_pedido = _id_venta);
	SET _iva = _subtotal_venta * (p_iva/100);
	SET _total_venta = _subtotal_venta + _iva;
        # insertando La Factura de la venta
	# UPDATE Venta SET Subtotal = _subtotal_venta, Iva = _iva, ValorTotal =         #_total_venta WHERE idDetalle = _id_venta;

       INSERT INTO factura (id_pedido, fecha_factura, fecha_vencimiento, valor_envio,valor_total,id_estadodeFactura) VALUES (_id_venta,p_fechap, p_fechap+3,p_vrenvio, _total_venta,1);

	COMMIT;
END $$
DELIMITER ;
