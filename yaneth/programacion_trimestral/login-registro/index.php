<?php session_start(); //Trabajar con sesiones
	require 'conexion.php';

	$error='';
	if (isset($_POST['ingresar'])) {
		$nombre = $_POST['nombre'];
		$password = $_POST['password'];
		$pass = md5($password);
		$sql = $conexion->prepare("SELECT * FROM usuarios WHERE nombre = :nombre AND password = :password");
		$sql->execute(array(':nombre'=>$nombre,
							'password'=>$pass));
		$resultado = $sql->fetchall();
			if ($resultado) {
				$_SESSION['nombre'] = $nombre;
				header('location:../index_2.php');
			} else {
				$error = 'Los datos ingresados no son correctos!';
			}
	}

	require 'views/index.view.php';

 ?>
 