<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"> <!-- Para que se maneje de manera RESPONSIVE-->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/css/style.css">
	<title>Programacion Trimestral</title>
</head>
<body>
<hr>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<section class="header">
					<h1>Inicio sesion</h1>
				</section>
				
				<form action="index.php" method="post">
				<section class="body">
					<div class="input-group margin-bottom-sm">
					 	<span class="input-group-addon"><i class="fa fa-user-o fa-fw"></i></span>
					 	<input class="form-control" type="text" placeholder="Nombre de Usuario" name="nombre">	
					</div><br>
					<div class="input-group">
					  	<span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
					  	<input class="form-control" type="password" placeholder="Contraseña" name="password">
					</div><br>
					<input type="submit" name="ingresar" class="btn btn-outline-primary btn-block">
				</section>
				</form>
				<section class="footer">
				<?php if (!empty($error)): ?>
					<div class="alert alert-warning alert-dismissible fade show" role="alert">
					  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
					    <span aria-hidden="true">&times;</span>
					  </button>
					  <strong>Error!</strong> <?php echo $error ?>
					</div>
				<?php endif ?>
				<span>No tienes cuenta?</span>
				<a href="registro">Registrate!</a>

				</section>
			</div>
		</div>
	</div>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.js"></script>
</body>
</html>