<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
	<link rel="stylesheet" href="../css/iniciarSesion.css">
	<title>Iniciar sesion</title>
</head>
<body>
	<div class="container w-75 mt-5 bg-primary rounded shadow">
		<div class="row align-items-stretch">
			<div class="col bg d-none d-lg-block  col-md-5 col-lg-5 col-xl-6 rounded">

			</div>
			<div class="col bg-white rounded-end p-3">
				<div class="text-end">
					<img src="../img/isologo_mg.png" width="48px">
				</div>

				<h2 class="fw-bold text-center py-1">Bienvenido</h2>

				<?php
				  if(isset($_REQUEST['login'])){
					  session_start();
					  $email=$_REQUEST['email']??'';
					  $pass=$_REQUEST['password']??'';
					  $pass=md5($pass);
					  include_once "../logica/conexion.php";
					  $query="SELECT * from usuario where email_usuario='$email' and clave_usuario='$pass' ";
					  $res=mysqli_query($conexion,$query);
					  $row=mysqli_fetch_array($res);
					  if($row){
						  $_SESSION['id_usuario']=$row['id_usuario'];
						  $_SESSION['email']=$row['email_usuario'];
						  $_SESSION['usuario']=$row['nombre_usuario'];
						  header("location: ../index.php");
						  /* dasboard de administrador principal  */
						  if($row['id_perfilusr']==1){
							header("location: ../admin/plantilla.php");
							 /* dasboard de Ventas  */
						  }else if($row['id_perfilusr']==2){
							header("location: ../ventas/plantilla.php");
						  }else if($row['id_perfilusr']==3){
							  /* dasboard de inventarios */
							  header("location: ../inventario/plantilla.php");
						  }else if($row['id_perfilusr']==4){
						  /* dasboard de Clientes 
						header("location: ../clientes/plantilla.php"); */
						header("location: ../index.php");
					  }else if($row['id_perfilusr']==5){
						/* dasboard de Registro y/o administrador secundario Proveedores y Clientes  */
					  header("location: ../registro/plantilla.php");
					  }else  {
						  ?>
						     <div class="alert alert-danger" role="alert">
								 Usuario o contraseña incorrectos
							 </div>
						  <?php
					  }
				    }
				  }
				?>
				<!--Login-->

				<form action="" method="post">
					<div class="mb-1">
						<label for="email" class="form-label">Correo electrónico</label>
						<input type="email" class="form-control" name="email">
					</div>
					<div class="mb-2">
						<label for="Password" class="form-label">Password</label>
						<input type="password" class="form-control" name="password">
					</div>

					<div class="d-grid">
						<button type="submit" class="btn btn-primary" name="login">Iniciar Sesion</button>
					</div>

					<div class="mt-3">
						<span>¿No tienes cuenta? <a href="registrar.php">Registrate</a></span>
						<br>
						<span><a href="#">Recuperar password</a></span>
					</div>
				</form>

				<!--Siguenos en nuestras redes-->

				<div class="container w-100 mt-3">
					<div class="row text-center">
						<div class="col-12">
							Siguenos en nuestras redes
						</div>
						<div class="row">
							<div class="col">
								<a class="btn btn-outline-primary w-100 my-1" href="https://www.facebook.com/Mega-Sport-258833545987703/">
									<div class="row align-items-center">
										<div class="col-2 d-none d-md-block ">
											<i class="fab fa-facebook"></i>
										</div>
										<div class="col-12 col-md-10  text-center">
											Facebook
										</div>
									</div>
				                </a>
							</div>
							<div class="col">
								<a class="btn btn-outline-danger w-100 my-1" href="https://www.instagram.com/mega_sportofi/">
									<div class="row align-items-center">
										<div class="col-2 d-none d-md-block">
											<i class="fab fa-instagram"></i>
										</div>
										<div class="col-12 col-md-10 text-center">
											Instagram
										</div>
									</div>
				                </a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="https://kit.fontawesome.com/64b3159798.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.7.1/gsap.js"></script>
</html>