<?php 
	
	
	$val = $_GET['val'];
	if ($val=='si') {
	$conexion = mysqli_connect("localhost","root","","programacion_trimestral");
	$delete = mysqli_query($conexion,"DELETE FROM eventos");
	$delete = mysqli_query($conexion,"DELETE FROM externo");
	$delete = mysqli_query($conexion,"DELETE FROM valfic");
	$delete = mysqli_query($conexion,"DELETE FROM valins");


	

	echo "<script>window.location.replace('ambientes.php?val=elimino1')</script>";
	}else{
		echo "<script >alert('hola')</script>";
	}
	

 ?>