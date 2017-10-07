<?php session_start(); //Trabajar con sesiones
	require 'conexion.php';
	$error = '';
	if (isset($_POST['registro'])) {
		$nombre = $_POST['nombre'];
		$password = $_POST['password'];
		$password1 = $_POST['password1'];

		if ($password === $password1) {
			$pass = md5($password);
			$sql = $conexion->prepare("INSERT INTO usuarios(nombre,password)VALUES(:nombre,:password)");
			$sql->execute(array(':nombre'=>$nombre,
								'password'=>$pass));

			header('location:index.php');
		} else {
			$error = 'Las contraseñas no son iguales';
		}


	}

	require 'views/registro.view.php';

 ?>