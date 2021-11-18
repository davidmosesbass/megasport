<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
	<link rel="stylesheet" href="../css/registrar.css">
	<title>Iniciar sesion</title>
</head>
<body>
	<div class="container w-75 bg-primary rounded shadow mt-5">
		<div class="row align-items-stretch">
			
			<div class="col bg-white rounded-end p-3">
				<div class="text-end">
					<img src="../img/isologo_mg.png" width="48px">
				</div>

				<h2 class="fw-bold text-center py-1">Bienvenido</h2>

				<?php
				  if(isset($_POST['registrar'])){
					
					include_once "../logica/conexion.php";
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
								 Ya tiene una cuenta registrada
						</div>

						<?php
					}else{
						$registro = "INSERT INTO usuario(email_usuario, nombre_usuario, clave_usuario, id_perfilusr, bloqueo_usuario, estado_usuario) values ('$correo','$usuario','$pass',2,0,3)";
						mysqli_query($conexion,$registro);
						?>
						<div class="alert alert-success" role="alert">
								 Registrado con exito
						</div>
						<?php

					}
				}
					
					
				?>
				<!--Login-->

				<form action="" method="post">
				    <div class="">
						<label for="email" class="form-label">Nombre</label>
						<input type="text" class="form-control" name="nombre">
					</div>
				    <div class="">
						<label for="email" class="form-label">Correo electrónico</label>
						<input type="email" class="form-control" name="email">
					</div>
					<div class="mb-2">
						<label for="Password" class="form-label">Password</label>
						<input type="password" class="form-control" name="password">
					</div>
					<div class="d-grid">
						<button type="submit" class="btn btn-primary" name="registrar">Registrarse</button>
					</div>
					<div class="mt-3">
						<span>¿Ya tienes cuenta? <a href="iniciarSesion.php">Iniciar sesion</a></span>
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

			<div class="col bg2 d-none d-lg-block col-md-5 col-lg-5 col-xl-6 rounded">

			</div>

		</div>
	</div>
</body>
<script src="https://kit.fontawesome.com/64b3159798.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.7.1/gsap.js"></script>
</html>