<?php
        

/**
**
**  BY iCODEART
**
**********************************************************************
**                      REDES SOCIALES                            ****
**********************************************************************
**                                                                ****
** FACEBOOK: https://www.facebook.com/icodeart                    ****
** TWIITER: https://twitter.com/icodeart                          ****
** YOUTUBE: https://www.youtube.com/c/icodeartdeveloper           ****
** GITHUB: https://github.com/icodeart                            ****
** TELEGRAM: https://telegram.me/icodeart                         ****
** EMAIL: info@icodeart.com                                       ****
**                                                                ****
**********************************************************************
**********************************************************************
**/
    
    //incluimos nuestro archivo config
    include 'config.php'; 

    // Incluimos nuestro archivo de funciones
    include 'funciones.php';

    // Obtenemos el id del evento
    $id  = evaluar($_GET['id']);

    // y lo buscamos en la base de dato
    $bd  = $conexion->query("SELECT * FROM eventos WHERE id=$id");

    // Obtenemos los datos
    $row = $bd->fetch_assoc();
  

    // titulo 
    $titulo=$row['title'];

    // cuerpo
    $evento=$row['body'];

    $centro=$row['centro'];
    $ambientei=$row['ambientei'];
    $ambientea=$row['ambientea'];
    $area=$row['area'];
    $nueva_area=$row['nueva_area'];
    $ficha=$row['ficha'];
    $especialidad=$row['especialidad'];
    $instructori=$row['instructori'];
    $instructora=$row['instructora'];




    // Fecha inicio
    $inicio=$row['inicio_normal'];

    // Fecha Termino
    $final=$row['final_normal'];

// Eliminar evento
if (isset($_POST['eliminar_evento'])) 
{
    $id  = evaluar($_GET['id']);
    $sql = "DELETE FROM eventos WHERE id = $id";
    if ($conexion->query($sql)) 
    {
        echo "Evento eliminado";
    }
    else
    {
        echo "El evento no se pudo eliminar";
    }
}
 ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title><?=$titulo?></title>
    <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
    
<body>
	 <h3><?=$instructori?></h3><h3><?=$instructora?></h3>
	 <hr>
     <b>Fecha inicio:</b> <?=$inicio?>
     <br>
     <b>Fecha termino:</b> <?=$final?>
     <br>
     <b>Centro:</b> <?=$centro?>
     <br>
     <b>Ambiente:</b> <?=$ambientei?><?=$ambientea?>
     <br>
     <b>Area:</b> <?=$area?>
     <br>
      <b>Nueva Area:</b> <?=$nueva_area?>
     <br>
     <b>Ficha:</b> <?=$ficha?>
     <br>
     <b>Especialidad:</b> <?=$especialidad?>
        
    <br>
    <br>
    <br>


</body>
<form action="" method="post">
    <button type="submit" class="btn btn-danger" name="eliminar_evento">Eliminar</button>
</form>
</html>



