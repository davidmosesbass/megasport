<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MegaSport</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel="stylesheet" href="css/index.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Luckiest+Guy&display=swap" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="admin/vista/plugins/fontawesome-free/css/all.min.css">

</head>
<?php
include ("conexion.php");
// C:/xampp/htdocs/allcontrol/importar
// estado;entidad;pais;  ENTIDADES FUERTES
// ALTER TABLE tablename AUTO_INCREMENT = 1

$sql1 = "DELETE FROM entidad";
$resultado= mysqli_query($conexion, $sql1);
$sql1 = "ALTER TABLE entidad AUTO_INCREMENT = 1";
$resultado= mysqli_query($conexion, $sql1);
echo "Se inicializo entidad de entidad: VACIA AUTO_INCREMENT = 1<br>";

$sql1 = "DELETE FROM estado";
$resultado= mysqli_query($conexion, $sql1);
$sql1 = "ALTER TABLE estado AUTO_INCREMENT = 1";
$resultado= mysqli_query($conexion, $sql1);
echo "Se inicializo entidad de estado: VACIA AUTO_INCREMENT = 1<br>";

$sql1 = "DELETE FROM pais";
$resultado= mysqli_query($conexion, $sql1);
$sql1 = "ALTER TABLE pais AUTO_INCREMENT = 1";
$resultado= mysqli_query($conexion, $sql1);
echo "Se inicializo entidad de pais: VACIA AUTO_INCREMENT = 1<br>";
// Entidades dependientes:
// pedidosxcliente;producto;proveedor;tipotransaccion;
// dashboardxusr;detallepedxcli;detallepedxcomp;factura;pedidosdecompra;
// transacciondeinv;usuario;cliente;codigopostal;ciudad;perfilrol;

$sql1 = "DELETE FROM pedidosxcliente";
$resultado= mysqli_query($conexion, $sql1);
$sql1 = "ALTER TABLE pedidosxcliente AUTO_INCREMENT = 1";
$resultado= mysqli_query($conexion, $sql1);
echo "Se inicializo entidad de pedidosxcliente: VACIA AUTO_INCREMENT = 1<br>";

$sql1 = "DELETE FROM producto";
$resultado= mysqli_query($conexion, $sql1);
$sql1 = "ALTER TABLE producto AUTO_INCREMENT = 1";
$resultado= mysqli_query($conexion, $sql1);
echo "Se inicializo entidad de producto: VACIA AUTO_INCREMENT = 1<br>";

$sql1 = "DELETE FROM proveedor";
$resultado= mysqli_query($conexion, $sql1);
$sql1 = "ALTER TABLE proveedor AUTO_INCREMENT = 1";
$resultado= mysqli_query($conexion, $sql1);
echo "Se inicializo entidad de proveedor: VACIA AUTO_INCREMENT = 1<br>";

$sql1 = "DELETE FROM tipotransaccion";
$resultado= mysqli_query($conexion, $sql1);
$sql1 = "ALTER TABLE tipotransaccion AUTO_INCREMENT = 1";
$resultado= mysqli_query($conexion, $sql1);
echo "Se inicializo entidad de tipotransaccion: VACIA AUTO_INCREMENT = 1<br>";

// Entidades dependientes:
// dashboardxusr;detallepedxcli;detallepedxcomp;factura;pedidosdecompra;
$sql1 = "DELETE FROM dashboardxusr";
$resultado= mysqli_query($conexion, $sql1);
$sql1 = "ALTER TABLE dashboardxusr AUTO_INCREMENT = 1";
$resultado= mysqli_query($conexion, $sql1);
echo "Se inicializo entidad de dashboardxusr: VACIA AUTO_INCREMENT = 1<br>";

$sql1 = "DELETE FROM detallepedxcli";
$resultado= mysqli_query($conexion, $sql1);
$sql1 = "ALTER TABLE detallepedxcli AUTO_INCREMENT = 1";
$resultado= mysqli_query($conexion, $sql1);
echo "Se inicializo entidad de detallepedxcli: VACIA AUTO_INCREMENT = 1<br>";

$sql1 = "DELETE FROM detallepedxcomp";
$resultado= mysqli_query($conexion, $sql1);
$sql1 = "ALTER TABLE detallepedxcomp AUTO_INCREMENT = 1";
$resultado= mysqli_query($conexion, $sql1);
echo "Se inicializo entidad de detallepedxcomp: VACIA AUTO_INCREMENT = 1<br>";

$sql1 = "DELETE FROM factura";
$resultado= mysqli_query($conexion, $sql1);
$sql1 = "ALTER TABLE factura AUTO_INCREMENT = 1";
$resultado= mysqli_query($conexion, $sql1);
echo "Se inicializo entidad de factura: VACIA AUTO_INCREMENT = 1<br>";

$sql1 = "DELETE FROM pedidosdecompra";
$resultado= mysqli_query($conexion, $sql1);
$sql1 = "ALTER TABLE pedidosdecompra AUTO_INCREMENT = 1";
$resultado= mysqli_query($conexion, $sql1);
echo "Se inicializo entidad de pedidosdecompra: VACIA AUTO_INCREMENT = 1<br>";

// Entidades dependientes:
// transacciondeinv;usuario;cliente;codigopostal;ciudad;perfilrol;

$sql1 = "DELETE FROM transacciondeinv";
$resultado= mysqli_query($conexion, $sql1);
$sql1 = "ALTER TABLE transacciondeinv AUTO_INCREMENT = 1";
$resultado= mysqli_query($conexion, $sql1);
echo "Se inicializo entidad de transacciondeinv: VACIA AUTO_INCREMENT = 1<br>";

$sql1 = "DELETE FROM usuario";
$resultado= mysqli_query($conexion, $sql1);
$sql1 = "ALTER TABLE usuario AUTO_INCREMENT = 1";
$resultado= mysqli_query($conexion, $sql1);
echo "Se inicializo entidad de usuario: VACIA AUTO_INCREMENT = 1<br>";

$sql1 = "DELETE FROM cliente";
$resultado= mysqli_query($conexion, $sql1);
$sql1 = "ALTER TABLE cliente AUTO_INCREMENT = 1";
$resultado= mysqli_query($conexion, $sql1);
echo "Se inicializo entidad de cliente: VACIA AUTO_INCREMENT = 1<br>";

$sql1 = "DELETE FROM codigopostal";
$resultado= mysqli_query($conexion, $sql1);
$sql1 = "ALTER TABLE codigopostal AUTO_INCREMENT = 1";
$resultado= mysqli_query($conexion, $sql1);
echo "Se inicializo entidad de codigopostal: VACIA AUTO_INCREMENT = 1<br>";

$sql1 = "DELETE FROM ciudad";
$resultado= mysqli_query($conexion, $sql1);
$sql1 = "ALTER TABLE ciudad AUTO_INCREMENT = 1";
$resultado= mysqli_query($conexion, $sql1);
echo "Se inicializo entidad de ciudad: VACIA AUTO_INCREMENT = 1<br>";

$sql1 = "DELETE FROM perfilrol";
$resultado= mysqli_query($conexion, $sql1);
$sql1 = "ALTER TABLE perfilrol AUTO_INCREMENT = 1";
$resultado= mysqli_query($conexion, $sql1);
echo "Se inicializo entidad de perfilrol: VACIA AUTO_INCREMENT = 1<br>";

// ESTO NO SE INVOCA DESDE PHP
$sql = "truncate table ciudad";
    $resultado= mysqli_query($conexion, $sql);
    echo $resultado;
    if ($resultado) {
        echo "Se inicializo entidad de ciudad: VACIA - TRUNCATE - AUTO_INCREMENT = 1<br>";
     }
        else {
            echo "no se INICIALIZO!! - TRUNCATE - AUTO_INCREMENT = 1.<br>";
        }
     echo "<br>";

 // importa ENTIDAD

$archivo = fopen("interfaces/ALLCONT_ENTIDAD.csv", "r");
$E_ENTIDAD = 0;
$E_CIUDAD = 0;
$E_CLIENTE = 0;
$E_CODIGOPOSTAL = 0;
$E_DASHBOARDXUSR = 0;
$E_DETALLEPEDXCLI = 0;
$E_DETALLEPEDXCOMP = 0;
$E_ESTADO = 0;
$E_FACTURA = 0;
$E_PAIS = 0;
$E_PEDIDOSDECOMPRA = 0;
$E_PEDIDOSXCLIENTE = 0;
$E_PERFILROL = 0;
$E_PRODUCTO = 0;
$E_PROVEEDOR = 0;
$E_TIPOTRANSACCION = 0;
$E_TRANSACCIONDEINV = 0;
$E_USUARIO = 0;
$conteo = 0;

while (($datos=fgetcsv($archivo,1000,",")) == true) {
    echo "Datos para registro de archivo plano entidad.<br>";
    echo "id_entidad:".$datos[0]."<br>";
    echo "Nombre_Entidad:".$datos[1]."<br>";
    
    $sql = "INSERT INTO entidad (Nombre_Entidad) 
    values ('$datos[1]')";
    $resultado= mysqli_query($conexion, $sql);
    echo $resultado;
    if ($resultado) {
        $conteo++;
        echo "se Adiciono registro Entidad ok.<br>";
     }
        else {
            echo "no Adiciono registro Entidad!!!.<br>";
        }
     echo "<br>";

}
$E_ENTIDAD = $conteo;

// importa Estado

$archivo = fopen("interfaces/ALLCONT_ESTADO.csv", "r");

$conteo = 0;

while (($datos=fgetcsv($archivo,1000,",")) == true) {
    echo "Datos para registro de archivo plano estado.<br>";
    echo "id_estado:".$datos[0]."<br>";
    echo "Descripcion_Estado:".$datos[1]."<br>";
    echo "Id_entidad:".$datos[2]."<br>";
    
     $sql = "INSERT INTO estado (Descripcion_Estado,id_entidad) 
    values ('$datos[1]','$datos[2]')";
    $resultado= mysqli_query($conexion, $sql);
    echo $resultado;
    if ($resultado) {
       $conteo++;
        echo "se Adiciono registro Estado ok.<br>";
     }
        else {
            "no Adiciono registro Estado!!!.<br>";
        }
     echo "<br>";

}

$E_ESTADO = $conteo;

// importa pais

$archivo = fopen("interfaces/ALLCONT_PAIS.csv", "r");

$conteo = 0;

while (($datos=fgetcsv($archivo,1000,",")) == true) {
    echo "Datos para registro de archivo plano pais.<br>";
    echo "id_Pais:".$datos[0]."<br>";
    echo "nombre_Pais:".$datos[1]."<br>";
    
    $sql = "INSERT INTO pais (id_pais,nombre_pais) 
    values ('$datos[0]','$datos[1]')";
    $resultado= mysqli_query($conexion, $sql);
    echo $resultado;
    if ($resultado) {
      $conteo++;
        echo "se Adiciono registro Pais ok.<br>";
     }
        else {
           echo "no Adiciono registro Pais!!!.<br>";
        }
     echo "<br>";

}

$E_PAIS = $conteo;
// importa ciudad

$archivo = fopen("interfaces/ALLCONT_CIUDAD.csv", "r");

$conteo = 0;

while (($datos=fgetcsv($archivo,1000,",")) == true) {
    echo "Datos para registro de archivo plano ciudad.<br>";
    echo "id_Ciudad:".$datos[0]."<br>";
    echo "id_Pais:".$datos[1]."<br>";
    echo "nombre_ciudad:".$datos[2]."<br>";
    
    $sql = "INSERT INTO ciudad (id_ciudad,id_pais,nombre_ciudad) 
    values ('$datos[0]','$datos[1]','$datos[2]')";
    $resultado= mysqli_query($conexion, $sql);
    echo $resultado;
    if ($resultado) {
      $conteo++;
        echo "se Adiciono registro Ciudad ok.<br>";
     }
        else {
           echo "no Adiciono registro Ciudad!!!.<br>";
        }
     echo "<br>";

}

$E_CIUDAD = $conteo;


// importa 
// ciudad;codigopostal;perfilrol;tipotransaccion;cliente;
// importa codigopostal

$archivo = fopen("interfaces/ALLCONT_CODIGOPOSTAL.csv", "r");

$conteo = 0;

while (($datos=fgetcsv($archivo,1000,",")) == true) {
    echo "Datos para registro de archivo plano codigopostal.<br>";
    echo "id_Postal:".$datos[0]."<br>";
    echo "id_ciudad:".$datos[1]."<br>";
    echo "id_pais:".$datos[2]."<br>";
    
    $sql = "INSERT INTO codigopostal (id_postal,id_ciudad,id_pais) 
    values ('$datos[0]','$datos[1]','$datos[2]')";
    $resultado= mysqli_query($conexion, $sql);
    echo $resultado;
    if ($resultado) {
        $conteo++;
        echo "se Adiciono registro codigopostal ok.<br>";
     }
        else {
           echo "no Adiciono registro codigopostal!!!.<br>";
        }
     echo "<br>";

}

$E_CODIGOPOSTAL = $conteo;

// importa dashboardxusr

$archivo = fopen("interfaces/ALLCONT_DASHBOARDXUSR.csv", "r");

$conteo = 0;

while (($datos=fgetcsv($archivo,1000,",")) == true) {
    echo "Datos para registro de archivo plano dashboardxusr.<br>";
    echo "id_dashboard:".$datos[0]."<br>";
    echo "Descripcion_Dashboard:".$datos[1]."<br>";
    echo "id_estado:".$datos[2]."<br>";
    
    $sql = "INSERT INTO dashboardxusr (Descripcion_Dashboard,id_estado) 
    values ('$datos[1]','$datos[2]')";
    $resultado= mysqli_query($conexion, $sql);
    echo $resultado;
    if ($resultado) {
      $conteo++;
        echo "se Adiciono registro dashboardxusr ok.<br>";
     }
        else {
            echo "no Adiciono registro dashboardxusr!!!.<br>";
        }
     echo "<br>";

}

$E_DASHBOARDXUSR = $conteo;


// importa perfilrol

$archivo = fopen("interfaces/ALLCONT_PERFILROL.csv", "r");

$conteo = 0;

while (($datos=fgetcsv($archivo,1000,",")) == true) {
    echo "Datos para registro de archivo plano perfilrol.<br>";
    echo "id_Perfil:".$datos[0]."<br>";
    echo "Descripcion:".$datos[1]."<br>";
    echo "id_Dashboard:".$datos[2]."<br>";
    echo "Estado_perfil:".$datos[3]."<br>";
    
    $sql = "INSERT INTO perfilrol (id_perfil,Descripcion_Perfil,id_Dashboard,Estado_perfil) 
    values ('$datos[0]','$datos[1]','$datos[2]','$datos[3]')";
    $resultado= mysqli_query($conexion, $sql);
    echo $resultado;
    if ($resultado) {
        $conteo++;
        echo "se Adiciono registro perfilrol ok.<br>";
     }
        else {
           echo "no Adiciono registro perfilrol!!!.<br>";
        }
     echo "<br>";

}

$E_PERFILROL = $conteo;

// importa tipotransaccion

$archivo = fopen("interfaces/ALLCONT_TIPOTRANSACCION.csv", "r");

$conteo = 0;

while (($datos=fgetcsv($archivo,1000,",")) == true) {
    echo "Datos para registro de archivo plano tipotransaccion.<br>";
    echo "Id_Tipo_Transaccion:".$datos[0]."<br>";
    echo "Descripcion_Transaccion:".$datos[1]."<br>";
    echo "Operador:".$datos[2]."<br>";
    echo "Id_EstadoTransaccion:".$datos[3]."<br>";
    
    $sql = "INSERT INTO tipotransaccion (Id_Tipo_Transaccion,Descripcion_Transaccion,Operador,Id_EstadoTransaccion) 
    values ('$datos[0]','$datos[1]','$datos[2]','$datos[3]')";
    $resultado= mysqli_query($conexion, $sql);
    echo $resultado;
    if ($resultado) {
         $conteo++;
        echo "se Adiciono registro tipotransaccion ok.<br>";
     }
        else {
           echo "no Adiciono registro tipotransaccion!!!.<br>";
        }
     echo "<br>";

}

$E_TIPOTRANSACCION = $conteo;

// importa cliente

$archivo = fopen("interfaces/ALLCONT_CLIENTE.csv", "r");

$conteo = 0;

while (($datos=fgetcsv($archivo,1000,",")) == true) {
    echo "Datos para registro de archivo plano cliente.<br>";
    echo "Id_Cliente:".$datos[0]."<br>";
    echo "DocIdentidad:".$datos[1]."<br>";
    echo "TipoDocumento:".$datos[2]."<br>";
    echo "Nombres:".$datos[3]."<br>";
    echo "Apellidos:".$datos[4]."<br>";
    echo "Direccion:".$datos[5]."<br>";
    echo "Telefono:".$datos[6]."<br>";
    echo "Id_Codigo_Postal:".$datos[7]."<br>";
    echo "correo:".$datos[8]."<br>";

    $sql = "INSERT INTO cliente (Id_Cliente,DocIdentidad,TipoDocumento,Nombres,Apellidos,Direccion,Telefono,Id_Codigo_Postal,correo) 
    values ('$datos[0]','$datos[1]','$datos[2]','$datos[3]','$datos[4]','$datos[5]','$datos[6]','$datos[7]','$datos[8]')";
    $resultado= mysqli_query($conexion, $sql);
    echo $resultado;
    if ($resultado) {
        $conteo++;
        echo "se Adiciono registro Cliente ok.<br>";
     }
        else {
            echo "no Adiciono registro Cliente!!!.<br>";
        }
     echo "<br>";

}

$E_CLIENTE = $conteo;


// importa usuario

$archivo = fopen("interfaces/ALLCONT_USUARIO.csv", "r");

$conteo = 0;
  
while (($datos=fgetcsv($archivo,1000,",")) == true) {
    echo "Datos para registro de archivo plano usuario.<br>";
    echo "id_usuario:".$datos[0]."<br>";
    echo "email_usuario:".$datos[1]."<br>";
    echo "nombre_usuario:".$datos[2]."<br>";
    echo "clave_usuario:".$datos[3]."<br>";
    echo "id_perfilusr:".$datos[4]."<br>";
    echo "bloqueo_usuario:".$datos[5]."<br>";
    echo "estado_usuario:".$datos[6]."<br>";
        
    $sql = "INSERT INTO usuario (email_usuario,nombre_usuario,clave_usuario,id_perfilusr,bloqueo_usuario,estado_usuario) 
    values ('$datos[1]','$datos[2]','$datos[3]','$datos[4]','$datos[5]','$datos[6]')";
    $resultado= mysqli_query($conexion, $sql);
    echo $resultado;
    if ($resultado) {
        $conteo++;
        echo "se Adiciono registro usuario ok.<br>";
     }
        else {
            echo "no Adiciono registro usuario!!!.<br>";
        }
     echo "<br>";

}

$E_USUARIO = $conteo;

// importa producto

$archivo = fopen("interfaces/ALLCONT_PRODUCTO.csv", "r");

$conteo = 0;

while (($datos=fgetcsv($archivo,1000,",")) == true) {
    echo "Datos para registro de archivo plano producto.<br>";
    echo "id_producto:".$datos[0]."<br>";
    echo "codigo_producto:".$datos[1]."<br>";
    echo "nombre_producto:".$datos[2]."<br>";
    echo "descripcion:".$datos[3]."<br>";
    echo "categoria:".$datos[4]."<br>";
    echo "img:".$datos[5]."<br>";
    echo "precio_compra:".$datos[6]."<br>";
    echo "precio_venta:".$datos[7]."<br>";
    echo "porcentaje_utilidad:".$datos[8]."<br>";
    echo "saldo_cantidad:".$datos[9]."<br>";
    echo "id_estadoproducto:".$datos[10]."<br>";

    $sql = "INSERT INTO producto (id_producto,codigo_producto,nombre_producto,descripcion,categoria,img,precio_compra,precio_venta,porcentaje_utilidad,saldo_cantidad,id_estadoproducto) 
    values ('$datos[0]','$datos[1]','$datos[2]','$datos[3]','$datos[4]','$datos[5]','$datos[6]','$datos[7]','$datos[8]','$datos[9]','$datos[10]')";
    $resultado= mysqli_query($conexion, $sql);
    echo $resultado;
    if ($resultado) {
        $conteo++;
        echo "se Adiciono registro producto ok.<br>";
     }
        else {
            echo "no Adiciono registro producto!!!.<br>";
        }
     echo "<br>";

}

$E_PRODUCTO = $conteo;

// importa
// transacciondeinv;usuario;pedidosxcliente;producto;proveedor;
// dashboardxusr;detallepedxcli;detallepedxcomp;factura;pedidosdecompra;

// importa transacciondeinv

$archivo = fopen("interfaces/ALLCONT_TRANSACCIONDEINV.csv", "r");

$conteo = 0;

while (($datos=fgetcsv($archivo,1000,",")) == true) {
    echo "Datos para registro de archivo plano transacciondeinv.<br>";
    echo "Id_Transaccion:".$datos[0]."<br>";
    echo "Id_Tipo_Transaccion:".$datos[1]."<br>";
    echo "Fecha_Creacion:".$datos[2]."<br>";
    echo "Fecha_Modificacion:".$datos[3]."<br>";
    echo "Id_Producto:".$datos[4]."<br>";
    echo "Cantidad:".$datos[5]."<br>";
    echo "Id_Usuario:".$datos[6]."<br>";
        
    $sql = "INSERT INTO transacciondeinv (Id_Transaccion,Id_Tipo_Transaccion,Fecha_Creacion,Fecha_Modificacion,Id_Producto,Cantidad,Id_Usuario) 
    values ('$datos[0]','$datos[1]','$datos[2]','$datos[3]','$datos[4]','$datos[5]','$datos[6]')";
    $resultado= mysqli_query($conexion, $sql);
    echo $resultado;
    if ($resultado) {
        $conteo++;
        echo "se Adiciono registro transacciondeinv ok.<br>";
     }
        else {
            echo "no Adiciono registro transacciondeinv!!!.<br>";
        }
     echo "<br>";

}

$E_TRANSACCIONDEINV = $conteo;


// importa pedidosxcliente

$archivo = fopen("interfaces/ALLCONT_PEDIDOSXCLIENTE.csv", "r");

$conteo = 0;

while (($datos=fgetcsv($archivo,1000,",")) == true) {
    echo "Datos para registro de archivo plano pedidosxcliente.<br>";
    echo "Id_Pedido:".$datos[0]."<br>";
    echo "Id_Usuario:".$datos[1]."<br>";
    echo "Id_Cliente:".$datos[2]."<br>";
    echo "Fecha_Pedido:".$datos[3]."<br>";
    echo "Fecha_Envio:".$datos[4]."<br>";
    echo "Id_Estado_Pedido:".$datos[5]."<br>";
        
   

    $sql = "INSERT INTO pedidosxcliente (Id_Pedido,Id_Usuario,Id_Cliente,Fecha_Pedido,Fecha_Envio,Id_Estado_Pedido) 
    values ('$datos[0]','$datos[1]','$datos[2]','$datos[3]','$datos[4]','$datos[5]')";
    $resultado= mysqli_query($conexion, $sql);
    echo $resultado;
    if ($resultado) {
        $conteo++;
        echo "se Adiciono registro pedidosxcliente ok.<br>";
     }
        else {
            echo "no Adiciono registro pedidosxcliente!!!.<br>";
        }
     echo "<br>";

}

$E_PEDIDOSXCLIENTE = $conteo;

// importa proveedor

$archivo = fopen("interfaces/ALLCONT_PROVEEDOR.csv", "r");

$conteo = 0;

while (($datos=fgetcsv($archivo,1000,",")) == true) {
    echo "Datos para registro de archivo plano proveedor.<br>";
    echo "id_provCedula:".$datos[0]."<br>";
    echo "dig_verificacionp:".$datos[1]."<br>";
    echo "nombre_proveedor:".$datos[2]."<br>";
    echo "razon_social:".$datos[3]."<br>";
    echo "email_proveedor:".$datos[4]."<br>";
    echo "direccion_prov:".$datos[5]."<br>";
    echo "tel_proveedor:".$datos[6]."<br>";
    echo "Fecha_inicio:".$datos[7]."<br>";
    echo "id_codigo_postal:".$datos[8]."<br>";
    echo "paginaweb:".$datos[9]."<br>";
    echo "id_estadoprov:".$datos[10]."<br>";

    $sql = "INSERT INTO proveedor (id_provCedula,dig_verificacionp,nombre_proveedor,razon_social,email_proveedor,direccion_prov,tel_proveedor,Fecha_inicio,id_codigo_postal,paginaweb,id_estadoprov) 
    values ('$datos[0]','$datos[1]','$datos[2]','$datos[3]','$datos[4]','$datos[5]','$datos[6]','$datos[7]','$datos[8]','$datos[9]','$datos[10]')";
    $resultado= mysqli_query($conexion, $sql);
    echo $resultado;
    if ($resultado) {
        $conteo++;
        echo "se Adiciono registro proveedor ok.<br>";
     }
        else {
            echo "no Adiciono registro proveedor!!!.<br>";
        }
     echo "<br>";

}


$E_PROVEEDOR = $conteo;

// importa
// dashboardxusr;detallepedxcli;detallepedxcomp;factura;pedidosdecompra;


// importa detallepedxcli

$archivo = fopen("interfaces/ALLCONT_DETALLEPEDXCLI.csv", "r");

$conteo = 0;

while (($datos=fgetcsv($archivo,1000,",")) == true) {
    echo "Datos para registro de archivo plano detallepedxcli.<br>";
    echo "Id_Detalle_Pedido:".$datos[0]."<br>";
    echo "Id_Pedido:".$datos[1]."<br>";
    echo "Id_Producto:".$datos[2]."<br>";
    echo "Cantidad:".$datos[3]."<br>";
    echo "Precio:".$datos[4]."<br>";
    echo "Descuento:".$datos[5]."<br>";
    echo "id_Estado_DetPed:".$datos[6]."<br>";
    
    $sql = "INSERT INTO detallepedxcli (Id_Detalle_Pedido,Id_Pedido,Id_Producto,Cantidad,Precio,Descuento,id_Estado_DetPed) 
    values ('$datos[0]','$datos[1]','$datos[2]','$datos[3]','$datos[4]','$datos[5]','$datos[6]')";
    $resultado= mysqli_query($conexion, $sql);
    echo $resultado;
    if ($resultado) {
        $conteo++;
        echo "se Adiciono registro detallepedxcli ok.<br>";
     }
        else {
            echo "no Adiciono registro detallepedxcli!!!.<br>";
        }
     echo "<br>";

}

$E_DETALLEPEDXCLI = $conteo;

// importa pedidosdecompra

$archivo = fopen("interfaces/ALLCONT_PEDIDOSDECOMPRA.csv", "r");

$conteo = 0;

while (($datos=fgetcsv($archivo,1000,",")) == true) {
    echo "Datos para registro de archivo plano pedidosdecompra.<br>";
    echo "id_pedido_compra:".$datos[0]."<br>";
    echo "id_proveedor:".$datos[1]."<br>";
    echo "id_usuario:".$datos[2]."<br>";
    echo "fecha_pedido:".$datos[3]."<br>";
    echo "fecha_recibido:".$datos[4]."<br>";
    echo "Valor_total_compra:".$datos[5]."<br>";
    echo "id_estado:".$datos[6]."<br>";
    
    $sql = "INSERT INTO pedidosdecompra (id_pedido_compra,id_proveedor,id_usuario,fecha_pedido,fecha_recibido,Valor_total_compra,id_estado) 
    values (NULL,'$datos[1]','$datos[2]','$datos[3]','$datos[4]','$datos[5]','$datos[6]')";
    $resultado= mysqli_query($conexion, $sql);
    echo $resultado;
    if ($resultado) {
        $conteo++;
        echo "se Adiciono registro pedidosdecompra ok.<br>";
     }
        else {
            echo "no Adiciono registro pedidosdecompra!!!.<br>";
        }
     echo "<br>";

}

$E_PEDIDOSDECOMPRA = $conteo;

// importa detallepedxcomp

$archivo = fopen("interfaces/ALLCONT_DETALLEPEDXCOMP.csv", "r");

$conteo = 0;

while (($datos=fgetcsv($archivo,1000,",")) == true) {
    echo "Datos para registro de archivo plano detallepedxcomp.<br>";
    echo "id_detalle_ped_comp:".$datos[0]."<br>";
    echo "id_pedido_compra:".$datos[1]."<br>";
    echo "id_producto:".$datos[2]."<br>";
    echo "cantidad:".$datos[3]."<br>";
    echo "costo_unitario:".$datos[4]."<br>";
    
    $sql = "INSERT INTO detallepedxcomp (id_detalle_ped_comp,id_pedido_compra,id_producto,cantidad,costo_unitario) 
    values ('$datos[0]','$datos[1]','$datos[2]','$datos[3]','$datos[4]')";
    $resultado= mysqli_query($conexion, $sql);
    echo $resultado;
    if ($resultado) {
      $conteo++;
        echo "se inserto registros en detallepedxcomp ok.<br>";
     }
        else {
            echo "no inserto registro en detallepedxcomp.<br>";
        }
     echo "<br>";

}

$E_DETALLEPEDXCOMP = $conteo;


// importa FACTURA

$archivo = fopen("interfaces/ALLCONT_FACTURA.csv", "r");

$conteo = 0;

while (($datos=fgetcsv($archivo,1000,",")) == true) {
    echo "Datos para registro de archivo plano factura.<br>";
    echo "Id_Factura:".$datos[0]."<br>";
    echo "Id_Pedido:".$datos[1]."<br>";
    echo "Fecha_Factura:".$datos[2]."<br>";
    echo "Fecha_Vencimiento:".$datos[3]."<br>";
    echo "Valor_Envio:".$datos[4]."<br>";
    echo "Valor_Total:".$datos[5]."<br>";
    echo "Id_EstadodeFactura:".$datos[6]."<br>";
      
    $sql = "INSERT INTO factura (Id_Factura,Id_Pedido,Fecha_Factura,Fecha_Vencimiento,Valor_Envio,Valor_Total,Id_EstadodeFactura) 
    values ('$datos[0]','$datos[1]','$datos[2]','$datos[3]','$datos[4]','$datos[5]','$datos[6]')";
    $resultado= mysqli_query($conexion, $sql);
    echo $resultado;
    if ($resultado) {
      $conteo++;
        echo "se inserto registros en Factura ok.<br>";
     }
        else {
            echo "no inserto registro en Factura.<br>";
        }
     echo "<br>";
     $E_FACTURA = $conteo;
     
}
echo "RESUMEN DE REGISTROS IMPORTADOS A ENTIDADES DE LA B.D. ALLCONTROL <br>";
echo "<br>";
echo "TOTAL DE REGITROS ADICIONADOS A ENTIDAD --> ENTIDAD:".$E_ENTIDAD."<br>";
echo "TOTAL DE REGITROS ADICIONADOS A ENTIDAD --> CIUDAD:".$E_CIUDAD."<br>";
echo "TOTAL DE REGITROS ADICIONADOS A ENTIDAD --> CLIENTE:".$E_CLIENTE."<br>";
echo "TOTAL DE REGITROS ADICIONADOS A ENTIDAD --> CODIGOPOSTAL:".$E_CODIGOPOSTAL."<br>";
echo "TOTAL DE REGITROS ADICIONADOS A ENTIDAD --> DASHBOARDXUSR:".$E_DASHBOARDXUSR."<br>";
echo "TOTAL DE REGITROS ADICIONADOS A ENTIDAD --> DETALLEPEDXCLI:".$E_DETALLEPEDXCLI."<br>";
echo "TOTAL DE REGITROS ADICIONADOS A ENTIDAD --> DETALLEPEDXCOMP:".$E_DETALLEPEDXCOMP."<br>";
echo "TOTAL DE REGITROS ADICIONADOS A ENTIDAD --> ESTADO:".$E_ESTADO."<br>";
echo "TOTAL DE REGITROS ADICIONADOS A ENTIDAD --> FACTURA:".$E_FACTURA."<br>";
echo "TOTAL DE REGITROS ADICIONADOS A ENTIDAD --> PAIS:".$E_PAIS."<br>";
echo "TOTAL DE REGITROS ADICIONADOS A ENTIDAD --> PEDIDOSDECOMPRA:".$E_PEDIDOSDECOMPRA."<br>";
echo "TOTAL DE REGITROS ADICIONADOS A ENTIDAD --> PEDIDOSXCLIENTE:".$E_PEDIDOSXCLIENTE."<br>";
echo "TOTAL DE REGITROS ADICIONADOS A ENTIDAD --> PERFILROL:".$E_PERFILROL."<br>";
echo "TOTAL DE REGITROS ADICIONADOS A ENTIDAD --> PRODUCTO:".$E_PRODUCTO."<br>";
echo "TOTAL DE REGITROS ADICIONADOS A ENTIDAD --> PROVEEDOR:".$E_PROVEEDOR."<br>";
echo "TOTAL DE REGITROS ADICIONADOS A ENTIDAD --> TIPOTRANSACCION:".$E_TIPOTRANSACCION."<br>";
echo "TOTAL DE REGITROS ADICIONADOS A ENTIDAD --> TRANSACCIONDEINV:".$E_TRANSACCIONDEINV."<br>";
echo "TOTAL DE REGITROS ADICIONADOS A ENTIDAD --> USUARIO:".$E_USUARIO."<br>";

$conteo = $E_ENTIDAD+$E_CIUDAD+$E_CLIENTE+$E_CODIGOPOSTAL+$E_DASHBOARDXUSR+$E_DETALLEPEDXCLI+$E_DETALLEPEDXCOMP+$E_ESTADO+$E_FACTURA+$E_PAIS+$E_PEDIDOSDECOMPRA+$E_PEDIDOSXCLIENTE+$E_PERFILROL+$E_PRODUCTO+$E_PROVEEDOR+$E_TIPOTRANSACCION+$E_TRANSACCIONDEINV+$E_USUARIO;
echo "TOTAL DE REGITROS ADICIONADOS A LA B.D. --> MEGASPORT:".$conteo."<br>";
mysqli_close($conexion);

?>
<a href="../admin/plantilla.php" class="btn btn-primary btn-lg btn-block">Volver al Dashboard</a>
