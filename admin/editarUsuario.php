<!DOCTYPE html>
<html lang="en">
<?php
    session_start();
    include_once "../logica/conexion.php";
    if(isset($_SESSION['id_usuario'])==false ){
      header("location: ../pages/iniciarSesion.php");
    }
    $id = $_GET["id"];
    $edit = "SELECT * FROM usuario WHERE id_usuario = '$id'";
?>

<head>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Administracion | MegaSport</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="vista/plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bootstrap 4 -->
    <link rel="stylesheet" href="vista/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="vista/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- JQVMap -->
    <link rel="stylesheet" href="vista/plugins/jqvmap/jqvmap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="vista/dist/css/adminlte.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="vista/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="vista/plugins/daterangepicker/daterangepicker.css">
    <!-- summernote -->
    <link rel="stylesheet" href="vista/plugins/summernote/summernote-bs4.min.css">
    <!-- jQuery -->
    <script src="vista/plugins/jquery/jquery.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="vista/plugins/jquery-ui/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
    $.widget.bridge('uibutton', $.ui.button)
    </script>
    <!-- Bootstrap 4 -->
    <script src="vista/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- ChartJS -->
    <script src="vista/plugins/chart.js/Chart.min.js"></script>
    <!-- Sparkline -->
    <script src="vista/plugins/sparklines/sparkline.js"></script>
    <!-- JQVMap -->
    <script src="vista/plugins/jqvmap/jquery.vmap.min.js"></script>
    <script src="vista/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
    <!-- jQuery Knob Chart -->
    <script src="vista/plugins/jquery-knob/jquery.knob.min.js"></script>
    <!-- daterangepicker -->
    <script src="vista/plugins/moment/moment.min.js"></script>
    <script src="vista/plugins/daterangepicker/daterangepicker.js"></script>
    <!-- Tempusdominus Bootstrap 4 -->
    <script src="vista/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
    <!-- Summernote -->
    <script src="vista/plugins/summernote/summernote-bs4.min.js"></script>
    <!-- overlayScrollbars -->
    <script src="vista/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
    <!-- AdminLTE App -->
    <script src="vista/dist/js/adminlte.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="vista/dist/js/demo.js"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="vista/dist/js/pages/dashboard.js"></script>
</head>

<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">

        <!-- Preloader -->
        <div class="preloader flex-column justify-content-center align-items-center">
            <img class="animation__shake" src="../img/isologo_mg.png" alt="AdminLTELogo" height="60" width="60">
        </div>

        <?php

  include "vista/modulos/encabezado.php";
  include "vista/modulos/menu.php";
  ?>
        <div class="contenido_principal">
            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <div class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1 class="m-0">Editar </h1>
                            </div><!-- /.col -->
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item"><a href="#">Megasport</a></li>
                                    <li class="breadcrumb-item active">Editar Usuario</li>
                                </ol>
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div>
                <!-- /.content-header -->

                <!-- Main content -->
                <section class="content">
                    <div class="container">

                        <form action="" method="post">
                            <?php 
          $r = $conexion->query($edit);
          if($r->num_rows > 0){
            while($row = $r->fetch_assoc()){
              ?>

                            <div class="form-group">
                                <label for="nombre">ID</label>
                                <input type="text" class="form-control" name="id"
                                    value="<?php echo $row["id_usuario"] ?> " readonly>
                            </div>
                            <div class="form-group">
                                <label for="nombre">Nombre</label>
                                <input type="text" class="form-control" name="nombre"
                                    value="<?php echo $row["nombre_usuario"] ?> ">
                            </div>
                            <div class="form-group">
                                <label for="">Email</label>
                                <input type="text" class="form-control" name="email"
                                    value="<?php echo $row["email_usuario"] ?>">
                            </div>
                            <div class="form-group">
                                <label for="">Rol</label>
                                <input type="text" class="form-control" name="rol"
                                    value="<?php echo $row["id_perfilusr"] ?>">
                            </div>
                            <div class="form-group">
                                <label for="">Bloqueo de usuario</label>
                                <input type="text" class="form-control" name="bloqueo"
                                    value="<?php echo $row["bloqueo_usuario"] ?>">
                            </div>
                            <div class="form-group">
                                <label for="">Estado</label>
                                <input type="text" class="form-control" name="estado"
                                    value="<?php echo $row["estado_usuario"] ?>">
                            </div>
                            <?php 
                } mysqli_free_result($r);
              }
              ?>
                            <button class="btn btn-success" href="usuarios.php" name="Editar" type="submit">
                                Editar
                            </button>
                            <!-- <input type="submit" value="Editar" name = "Editar" class="btn btn-warning"> -->
                            <a class="btn btn-danger" href="usuarios.php">Cancelar/Regresar</a>
                        </form>
                        <?php 
                 
                 if (isset($_POST['Editar'] ) ){
                  $id = $_POST['id'];
                  $usuario = $_POST['nombre'];
                  $correo = $_POST['email'];
                  $rol = $_POST['rol'];
                  $bloqueo = $_POST['bloqueo'];
                  $estado = $_POST['estado'];

               $registro = "UPDATE usuario SET nombre_usuario = '$usuario', email_usuario = '$correo', id_perfilusr = '$rol', bloqueo_usuario = '$bloqueo', estado_usuario = '$estado'  WHERE id_usuario = '$id' ";
               // echo $registro;
               $ok = mysqli_query($conexion,$registro);
               //echo $ok;
               
               if(mysqli_query($conexion,$registro)){
                ?>

                        <script type="text/javascript">
                        alert("Usuario editado correctamente");
                        </script>
                        <?php
                
                echo "<script> window.location='/megasport/admin/usuarios.php';</script>";
                
               } else {
                echo "ERROR: No se ejecuto Prueba Logica: $ok, : mysqli_error($registro)";
               }
  

               if ($ok) { 
                echo "<script> window.location='/megasport/admin/usuarios.php';</script>";?>
                        <div class="alert alert-success" role="alert">
                            Registro Actualizado con exito en entidad usuario
                        </div>
                        <?php
               } else { ?>
                        <div class="alert alert-success" role="alert">
                            El Registro NO se pudo actualizar en entidad usuario
                        </div> <?php
               }  
              }   
              ?>
                        <!-- <a class="btn btn-danger" href="usuarios.php">Regresar</a> -->

                        <!--  si se confirma actualizar el usuario se actualiza bd-->
                        <!--  si se confirma editar usuario se actualiza bd
   fin de if (isset($_REQUEST['Editar'] ) ) -->

                    </div>
                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
        </div>
        <?php
  include "vista/modulos/footer.php";

  ?>




        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->
</body>

</html>