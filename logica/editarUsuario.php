<?php 
  include ("conexion.php");

  $id = $_POST['id'];
  $nombre = $_POST ['nombre'];
  $email = $_POST ['email'];
  $rol = $_POST ['rol'];
  $bloqueo = $_POST['bloqueo'];
  $estado = $_POST['estado'];

  //actualizar datos

  $editar ="UPDATE usuario SET email_usuario='$email', nombre_usuario='$nombre',  id_perfilusr='$rol', bloqueo_usuario='$bloqueo', estado_usuario ='$estado' WHERE id_usuario='$id'";

  $resu = $conexion->query($editar);

  if($resu){
    header("location: ../admin/usuarios.php");
  }else{
    header("location: ../admin");
  }
?>