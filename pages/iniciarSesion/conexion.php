<?php
   $conexion = mysqli_connect("localhost","root","",);
mysqli_select_db($conexion,'pruebas');

if($conexion){
    echo "conectado correctamente";
}else{
    echo "Nose pudo conectar";
}
?>