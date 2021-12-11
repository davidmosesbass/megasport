<!DOCTYPE html>
<html lang="en">
<?php
    session_start();
    include_once "../logica/conexion.php";
    if(isset($_SESSION['id_usuario'])==false ){
      header("location: ../pages/iniciarSesion.php");
    }
    
?>
<head>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Administracion | MegaSport</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
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
  <!-- Content Wrapper. Contains page content -->
 <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Usuarios</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Megasport</a></li>
              <li class="breadcrumb-item active">Usuarios</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
    <section class="content">
    <form action="" method="post" class="mb-3 bg-dark p-2">
      <div class="row">
        <div class="col">
          <input type="text" placeholder="Nombre de usuario" name="nombre">
        </div>
        <div class="col">
          <input type="email" name="email" placeholder="Email">
        </div>
        <div class="col">
          <input type="password" name="password" placeholder="Password">
        </div>
        <div class="col">
          <button class="btn btn-success" name = "addusr" type = "submit">
            Añadir
          </button>
          <!--  si se confirma añadir usuario se actualiza bd-->
          <?php if (isset($_POST['addusr'] ) ){

          $usuario = $_POST['nombre'];
					$correo = $_POST['email'];
					$pass = $_POST['password'];
					$pass=md5($pass);
					
					$consulta = "SELECT * FROM usuario WHERE email_usuario = '$correo'";
					$resultado = mysqli_query($conexion,$consulta);
					$num = mysqli_num_rows($resultado);
					
					if($num == 1){
						?>

						<div class="alert alert-danger" role="alert">
								 El usuario ya esta registrado
						</div>

						<?php
					}else{
						$registro = "INSERT INTO usuario(email_usuario, nombre_usuario, clave_usuario, id_perfilusr, bloqueo_usuario, estado_usuario) values ('$correo','$usuario','$pass',4,0,3)";
						mysqli_query($conexion,$registro);
						?>
						<div class="alert alert-success" role="alert">
								 Registrado con exito
						</div>
						<?php

					}
          
          }  ?>
          <!--  si se confirma añadir usuario se actualiza bd
             fin de if (isset($_REQUEST['addusr'] ) ) -->
        </div>
      </div>
    </form>
    <!-- Main content -->
    <div>
    <table class="table">
  <thead>
    <tr>
      <th scope="col">id</th>
      <th scope="col">Nombre</th>
      <th scope="col">Email</th>
      <th scope="col">Perfil</th>
      <th scope="col">Editar</th>
      <th scope="col">Eliminar</th>
    </tr>
  </thead>
  <tbody>
            <?php
                
              $sql = "SELECT * FROM usuario";
              $resultado = $conexion->query($sql);
              if($resultado->num_rows > 0){
                  while($row = $resultado->fetch_assoc()){
                      ?>
                        <tr>
                           <td> <?php echo $row["id_usuario"] ?> </td>
                           <td> <?php echo $row["nombre_usuario"] ?> </td>
                           <td> <?php echo $row["email_usuario"] ?> </td>
                           <td> <?php echo $row["id_perfilusr"] ?> </td>
                           <td> <a  href="editarUsuario.php?id=<?php echo $row["id_usuario"]; ?>" class="btn btn-warning" color="black" >Editar</a></td>
                           <td> 
                           <a  href="Borrarusuario.php?id=<?php echo $row["id_usuario"]; ?>" class="btn btn-danger" name = "Eliminar" type = "submit"  >Eliminar</a>  
                             <!--  <button class="btn btn-danger" href="Borrarusuario.php?id=<?php echo $row["id_usuario"]; ?>" name = "Eliminar" type = "submit">
                             Eliminar </button>  -->
                          </td>
                        </tr> 
                      <?php
                  }
              }
            ?>
  </tbody>
</table>


    </div>
    <!-- /.content -->
    </section>
  </div>
  <!-- /.content-wrapper -->

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
  

  
 