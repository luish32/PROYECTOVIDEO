<?php 
	// Conexion a la base de datos
	try {
		$conexion = new PDO('mysql:host=localhost;dbname=programacion_trimestral','root','');
		// echo "Conexion exitosa!";

	} catch (Exception $e) {
		echo "Error de conexion a  la base de datos" .$e->getMessage();
	}

 ?>