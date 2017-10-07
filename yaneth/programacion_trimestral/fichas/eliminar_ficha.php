<?php 

	if ($_GET) {
		$id = $_GET['id'];

		$conex = mysqli_connect("localhost","root","","programacion_trimestral");
		$query = mysqli_query($conex,"DELETE FROM fichas WHERE id=$id");

		if($query){
			echo "<script>window.location.replace('index_ficha.php?val=elimino')</script>";
		}else{
			echo "<script>window.location.replace('index_ficha.php?val=noelimino')</script>";
		}
	}

 ?>