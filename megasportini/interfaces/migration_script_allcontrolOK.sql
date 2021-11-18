-- ----------------------------------------------------------------------------
-- MySQL Workbench Migration
-- Migrated Schemata: allcontrol
-- Source Schemata: allcontrol
-- Created: Wed Sep 15 22:47:01 2021
-- Workbench Version: 8.0.26
-- ----------------------------------------------------------------------------

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------------------------------------------------------
-- Schema allcontrol
-- ----------------------------------------------------------------------------
DROP SCHEMA IF EXISTS `allcontrol` ;
CREATE SCHEMA IF NOT EXISTS `allcontrol` ;

-- ----------------------------------------------------------------------------
-- Table allcontrol.ciudad
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `allcontrol`.`ciudad` (
  `id_ciudad` INT(4) NOT NULL AUTO_INCREMENT,
  `id_pais` INT(4) NOT NULL,
  `nombre_ciudad` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_ciudad`))
ENGINE = InnoDB
AUTO_INCREMENT = 13
DEFAULT CHARACTER SET = utf8;

-- ----------------------------------------------------------------------------
-- Table allcontrol.cliente
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `allcontrol`.`cliente` (
  `Id_Cliente` INT(10) NOT NULL AUTO_INCREMENT COMMENT 'Id Cliente',
  `DocIdentidad` VARCHAR(15) NOT NULL COMMENT 'Documento de identidad',
  `TipoDocumento` VARCHAR(1) NOT NULL COMMENT 'T=TARJETA IDENTIDAD; C=CEDULA; P=PASAPORTE; E=C.EXTRANJERIA, N=NIT',
  `Nombres` VARCHAR(50) NOT NULL COMMENT 'Nombre de Cliente',
  `Apellidos` VARCHAR(50) NOT NULL COMMENT 'Apellidos de Cliente',
  `Direccion` VARCHAR(60) NOT NULL COMMENT 'Direccion Cliente',
  `Telefono` VARCHAR(15) NOT NULL COMMENT 'Telefono Cliente',
  `Id_Codigo_Postal` INT(10) NOT NULL COMMENT 'Id Codigo Postal',
  `correo` VARCHAR(50) NOT NULL COMMENT 'Correo Electronico',
  PRIMARY KEY (`Id_Cliente`))
ENGINE = InnoDB
AUTO_INCREMENT = 21
DEFAULT CHARACTER SET = utf8;

-- ----------------------------------------------------------------------------
-- Table allcontrol.codigopostal
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `allcontrol`.`codigopostal` (
  `id_postal` INT(10) NOT NULL,
  `id_ciudad` INT(4) NOT NULL,
  `id_pais` INT(4) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

-- ----------------------------------------------------------------------------
-- Table allcontrol.dashboardxusr
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `allcontrol`.`dashboardxusr` (
  `id_dashboard` INT(2) NOT NULL AUTO_INCREMENT COMMENT 'id de dash board',
  `Descripcion_Dashboard` VARCHAR(40) NOT NULL,
  `id_estado` INT(3) NOT NULL,
  PRIMARY KEY (`id_dashboard`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8;

-- ----------------------------------------------------------------------------
-- Table allcontrol.detallepedxcli
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `allcontrol`.`detallepedxcli` (
  `Id_Detalle_Pedido` INT(10) NOT NULL AUTO_INCREMENT COMMENT 'Id detalle de pedido Autonumerico (10)',
  `Id_Pedido` INT(10) NOT NULL COMMENT 'Id pedid\\r\\n\\r\\n\\r\\nId Pedido',
  `Id_Producto` INT(10) NOT NULL COMMENT 'Id Producto',
  `Cantidad` INT(10) NOT NULL COMMENT 'Cantidad de Producto',
  `Precio` DOUBLE NOT NULL COMMENT 'Precio de producto',
  `Descuento` DOUBLE NOT NULL COMMENT 'Descuento en el producto',
  `id_Estado_DetPed` INT(3) NOT NULL COMMENT 'Id estado detalle pedido',
  PRIMARY KEY (`Id_Detalle_Pedido`))
ENGINE = InnoDB
AUTO_INCREMENT = 41
DEFAULT CHARACTER SET = utf8
COMMENT = 'Entidad detalle de pedidos por cliente';

-- ----------------------------------------------------------------------------
-- Table allcontrol.detallepedxcomp
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `allcontrol`.`detallepedxcomp` (
  `id_detalle_ped_comp` INT(10) NOT NULL AUTO_INCREMENT COMMENT 'id detalle pedido por compra',
  `id_pedido_compra` INT(10) NOT NULL,
  `id_producto` INT(10) NOT NULL,
  `cantidad` INT(10) NOT NULL,
  `costo_unitario` DOUBLE NOT NULL,
  PRIMARY KEY (`id_detalle_ped_comp`))
ENGINE = InnoDB
AUTO_INCREMENT = 19
DEFAULT CHARACTER SET = utf8;

-- ----------------------------------------------------------------------------
-- Table allcontrol.entidad
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `allcontrol`.`entidad` (
  `id_entidad` INT(3) NOT NULL AUTO_INCREMENT COMMENT 'id de entidad',
  `Nombre_Entidad` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`id_entidad`))
ENGINE = InnoDB
AUTO_INCREMENT = 19
DEFAULT CHARACTER SET = utf8;

-- ----------------------------------------------------------------------------
-- Table allcontrol.estado
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `allcontrol`.`estado` (
  `id_estado` INT(3) NOT NULL AUTO_INCREMENT COMMENT 'Id de estado',
  `Descripcion_Estado` VARCHAR(40) NOT NULL,
  `id_entidad` INT(3) NOT NULL,
  PRIMARY KEY (`id_estado`))
ENGINE = InnoDB
AUTO_INCREMENT = 37
DEFAULT CHARACTER SET = utf8;

-- ----------------------------------------------------------------------------
-- Table allcontrol.factura
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `allcontrol`.`factura` (
  `Id_Factura` INT(10) NOT NULL AUTO_INCREMENT COMMENT 'Id Factura',
  `Id_Pedido` INT(10) NOT NULL COMMENT 'Id Pedido',
  `Fecha_Factura` DATE NOT NULL COMMENT 'Fecha de Factura',
  `Fecha_Vencimiento` DATE NOT NULL COMMENT 'Fecha de Vencimiento',
  `Valor_Envio` DOUBLE NOT NULL COMMENT 'Valor de envio',
  `Valor_Total` DOUBLE NOT NULL COMMENT 'Valor Total',
  `Id_EstadodeFactura` INT(3) NOT NULL COMMENT 'Id Estado de Factura',
  PRIMARY KEY (`Id_Factura`))
ENGINE = InnoDB
AUTO_INCREMENT = 121
DEFAULT CHARACTER SET = utf8;

-- ----------------------------------------------------------------------------
-- Table allcontrol.pais
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `allcontrol`.`pais` (
  `id_pais` INT(4) NOT NULL AUTO_INCREMENT COMMENT 'id pais',
  `nombre_pais` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_pais`))
ENGINE = InnoDB
AUTO_INCREMENT = 59
DEFAULT CHARACTER SET = utf8;

-- ----------------------------------------------------------------------------
-- Table allcontrol.pedidosdecompra
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `allcontrol`.`pedidosdecompra` (
  `id_pedido_compra` INT(10) NOT NULL AUTO_INCREMENT COMMENT 'Id Pedido de Compra',
  `id_proveedor` INT(10) NOT NULL,
  `id_usuario` INT(10) NOT NULL,
  `fecha_pedido` DATE NOT NULL,
  `fecha_recibido` DATE NOT NULL,
  `Valor_total_compra` DOUBLE NOT NULL,
  `id_estado` INT(3) NOT NULL,
  PRIMARY KEY (`id_pedido_compra`))
ENGINE = InnoDB
AUTO_INCREMENT = 19
DEFAULT CHARACTER SET = utf8;

-- ----------------------------------------------------------------------------
-- Table allcontrol.pedidosxcliente
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `allcontrol`.`pedidosxcliente` (
  `Id_Pedido` INT(10) NOT NULL AUTO_INCREMENT COMMENT 'Id Pedido Autonumerico (10)',
  `Id_Usuario` INT(10) NOT NULL COMMENT 'Id Usuario (10)',
  `Id_Cliente` INT(10) NOT NULL COMMENT 'Id Cliente (10)',
  `Fecha_Pedido` DATE NOT NULL COMMENT 'Fecha de Pedido',
  `Fecha_Envio` DATE NOT NULL COMMENT 'Fecha de Envio',
  `Id_Estado_Pedido` INT(3) NOT NULL COMMENT 'Id Estado de Pedido',
  PRIMARY KEY (`Id_Pedido`))
ENGINE = InnoDB
AUTO_INCREMENT = 19
DEFAULT CHARACTER SET = utf8
COMMENT = 'Entidad de pedidos de cliente';

-- ----------------------------------------------------------------------------
-- Table allcontrol.perfilrol
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `allcontrol`.`perfilrol` (
  `id_perfil` INT(2) NOT NULL,
  `Descripcion_Perfil` VARCHAR(40) NOT NULL,
  `id_Dashboard` INT(2) NOT NULL,
  `Estado_perfil` INT(3) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

-- ----------------------------------------------------------------------------
-- Table allcontrol.producto
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `allcontrol`.`producto` (
  `id_producto` INT(10) NOT NULL,
  `codigo_producto` VARCHAR(50) NOT NULL,
  `nombre_producto` VARCHAR(50) NOT NULL,
  `descripcion` VARCHAR(100) NOT NULL,
  `img` VARCHAR(200) NOT NULL,
  `precio_compra` DOUBLE NOT NULL,
  `precio_venta` DOUBLE NOT NULL,
  `porcentaje_utilidad` FLOAT NOT NULL,
  `saldo_cantidad` INT(10) NOT NULL,
  `id_estadoproducto` INT(3) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

-- ----------------------------------------------------------------------------
-- Table allcontrol.proveedor
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `allcontrol`.`proveedor` (
  `id_provCedula` VARCHAR(10) NOT NULL COMMENT 'id proveedor cedula o nit',
  `dig_verificacionp` VARCHAR(1) NOT NULL,
  `nombre_proveedor` VARCHAR(60) NOT NULL,
  `razon_social` VARCHAR(60) NOT NULL,
  `email_proveedor` VARCHAR(40) NOT NULL,
  `direccion_prov` VARCHAR(60) NOT NULL,
  `tel_proveedor` VARCHAR(15) NOT NULL,
  `Fecha_inicio` DATE NOT NULL,
  `id_codigo_postal` INT(10) NOT NULL,
  `paginaweb` VARCHAR(60) NOT NULL,
  `id_estadoprov` INT(3) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

-- ----------------------------------------------------------------------------
-- Table allcontrol.tipotransaccion
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `allcontrol`.`tipotransaccion` (
  `Id_Tipo_Transaccion` INT(10) NOT NULL AUTO_INCREMENT COMMENT 'Id Tipo Transaccion',
  `Descripcion_Transaccion` VARCHAR(50) NOT NULL COMMENT 'Descripcion de Transaccion',
  `Operador` VARCHAR(1) NOT NULL COMMENT '+=Suma -=Resta',
  `Id_EstadoTransaccion` INT(3) NOT NULL COMMENT 'Id Estado de Transaccion',
  PRIMARY KEY (`Id_Tipo_Transaccion`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;

-- ----------------------------------------------------------------------------
-- Table allcontrol.transacciondeinv
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `allcontrol`.`transacciondeinv` (
  `Id_Transaccion` INT(10) NOT NULL AUTO_INCREMENT COMMENT 'Id Transaccion',
  `Id_Tipo_Transaccion` INT(2) NOT NULL COMMENT 'Id Tipo Transaccion',
  `Fecha_Creacion` DATE NOT NULL COMMENT 'Fecha de Creacion',
  `Fecha_Modificacion` DATE NOT NULL COMMENT 'Fecha de Modificacion',
  `Id_Producto` INT(10) NOT NULL COMMENT 'Id Producto',
  `Cantidad` INT(10) NOT NULL COMMENT 'Cantidad de producto',
  `Id_Usuario` INT(10) NOT NULL COMMENT 'Id Usuario ',
  PRIMARY KEY (`Id_Transaccion`))
ENGINE = InnoDB
AUTO_INCREMENT = 19
DEFAULT CHARACTER SET = utf8;

-- ----------------------------------------------------------------------------
-- Table allcontrol.usuario
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `allcontrol`.`usuario` (
  `id_usuario` INT(10) NOT NULL AUTO_INCREMENT COMMENT 'id Usuario',
  `email_usuario` VARCHAR(30) NOT NULL,
  `nombre_usuario` VARCHAR(50) NOT NULL,
  `clave_usuario` VARCHAR(30) NOT NULL,
  `id_perfilusr` INT(2) NOT NULL,
  `bloqueo_usuario` TINYINT(1) NOT NULL,
  `estado_usuario` INT(3) NOT NULL,
  PRIMARY KEY (`id_usuario`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8;
SET FOREIGN_KEY_CHECKS = 1;
