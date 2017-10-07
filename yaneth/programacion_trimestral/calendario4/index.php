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

// Definimos nuestra zona horaria
date_default_timezone_set("America/Santiago");

// incluimos el archivo de funciones
include 'funciones.php';

// incluimos el archivo de configuracion
include 'config.php';

// Verificamos si se ha enviado el campo con name from
if (isset($_POST['from'])) 
{

    // Si se ha enviado verificamos que no vengan vacios
    if ($_POST['from']!="" AND $_POST['to']!="") 
    {

        // Recibimos el fecha de inicio y la fecha final desde el form

        $inicio = _formatear($_POST['from']);

        // y la formateamos con la funcion _formatear

        $final  = _formatear($_POST['to']);

        // Recibimos el fecha de inicio y la fecha final desde el form

        // $inicio_normal = $_POST['from'];

        // y la formateamos con la funcion _formatear
        

        $titulo  = evaluar($_POST['title']);
        // reemplazamos los caracteres no permitidos
        $clase  = evaluar($_POST['class']);

        $centro = evaluar($_POST['centro']);
        $ambientei = evaluar($_POST['ambientei']);
        $instructori = $_POST['instructori'];
        // $ambientea = $_POST['ambientea'];
        // $instructora = $_POST['instructora'];
        $area = $_POST['area'];
        $nueva_area = $_POST['nueva_area'];
        $ficha = $_POST['ficha'];
        $especialidad = $_POST['especialidad'];
        $horas = $_POST['horas'];
      



        if (!empty($_GET['id'])) {
            $id = $_GET['id'];
        }  

      
                      $conexion = mysqli_connect("localhost","root","","programacion_trimestral");  

                     //consulta si contador fue iniciado

                     $session = mysqli_query($conexion,"SELECT * FROM contador");
                     $session_row = mysqli_fetch_array($session);
                     if(empty($session_row['contador'])){
                        $verdadero = true;
                     }else{
                        $verdadero = false;
                     }


                     $fecha_inicio=mysqli_query($conexion,"SELECT inicio_normal FROM eventos");
                     $inicio_normal = $_POST['from'];
                     $final_normal  = $_POST['to'];


                     //validaciones que no se crucen --INSTRUCTORES

                      $insval = mysqli_query($conexion , "SELECT * FROM valins
                         where inicio >= '$inicio_normal' and fin <= '$final_normal' and  nombre ='$instructori'");

                      $insval1 = mysqli_fetch_array($insval);

                    //validaciones que no se crucen --FICHAS

                      $ficval = mysqli_query($conexion , "SELECT * FROM valfic WHERE inicio >= '$inicio_normal' and fin <= '$final_normal' and ficha = '$ficha'");

                      $ficval1 = mysqli_fetch_array($ficval);

                     //validaciones para que no se crucen -- AMBIENTES

                    $validacion1 = mysqli_query($conexion,"SELECT * FROM eventos 
                    where inicio_normal >= '$inicio_normal' and final_normal <= '$final_normal' and ambientei ='AUTOCAD' ");

                    $val = mysqli_fetch_array($validacion1);

                    //validacion2 -- fichas

                        $ficq = "INSERT INTO valfic VALUES('','$ficha','$inicio_normal','$final_normal','')";
                        $conexion->query($ficq);
                           
                           $limitqfic = mysqli_query($conexion,"SELECT COUNT(id) FROM valfic where ficha = '$ficha'");
                           $limitqfic2 = mysqli_fetch_array($limitqfic);
                           $numberfic = $limitqfic2['COUNT(id)'];
                           $numberfic-=1;
                           $traerdatosfic = mysqli_query($conexion,"SELECT * FROM valfic WHERE ficha = '$ficha' limit $numberfic");
                           $boolfic = false;

                  

                            while ($rowfic = mysqli_fetch_array($traerdatosfic)) {
                            echo "<h1>".var_dump($rowfic)."</h1>";

                                $rowfic1 = $rowfic['inicio'];
                                $rowfic2 = $rowfic['fin'];

                            

                               $validar2fic = mysqli_query($conexion,"SELECT COUNT(id) FROM valfic WHERE inicio >= '$rowfic1' AND fin <= '$rowfic2' AND ficha = '$ficha';");
                               $validar2fic2 = mysqli_fetch_array($validar2fic);




                           if($validar2fic2['COUNT(id)']>1){
                               echo "<h1>soy verdadero</h1>";
                                   $boolfic = true;
                             }


                           }

                    //validacion2 -- instructores

                      $insq = "INSERT INTO valins VALUES('','$instructori','$inicio_normal','$final_normal','')";
                      $conexion->query($insq);
                      $limitqins = mysqli_query($conexion,"SELECT COUNT(id) FROM valins where nombre = '$instructori'");
                      $limitqins2 = mysqli_fetch_array($limitqins);
                      $numeroq = $limitqins2['COUNT(id)'];
                      $numeroq-=1;
                      $traerdatosins = mysqli_query($conexion,"SELECT * FROM valins WHERE nombre = '$instructori' limit $numeroq");

                      $boolq = false;

                      while($rowins = mysqli_fetch_array($traerdatosins)){
                       $inicioq = $rowins['inicio'];
                       $finq = $rowins['fin'];

                       echo "<h1>".$inicioq."</h1>";
                       echo "<h1>".$finq."</h1>";

                       $validar2ins = mysqli_query($conexion,"SELECT COUNT(id) FROM valins WHERE inicio >= '$inicioq' and fin <= '$finq' and nombre = '$instructori'");
                       $validar2ins2 = mysqli_fetch_array($validar2ins);


                       if($validar2ins2['COUNT(id)']>1){
                           echo "<h1> la validacion entro en if ".$validar2ins2['COUNT(id)']." </h1>"; 
                           $boolq = true;

                       }




                      } 

                      
                    //validacion2 -- AMBIENTES

                      $horas_ins=mysqli_query($conexion , "SELECT * FROM instructores WHERE nombres ='$instructori' || nombres='$instructora' ");
                      $horas_ins2 = mysqli_fetch_array($horas_ins);
                      $horas_sql = $horas_ins2['horas'];
                      $horas_sql += $horas;

                      $conexion->query("UPDATE instructores SET horas='$horas_sql' where nombres ='$instructori' || nombres='$instructora' ");





                      $query="INSERT INTO eventos VALUES(null,'$centro','$ambientei','$instructori','$ambientea','$instructora','$area', '$nueva_area','$ficha','$especialidad','$titulo','','','$clase','$inicio','$final','$inicio_normal','$final_normal')";             
                      $conexion->query($query); 
                      $limit = mysqli_query($conexion,"SELECT COUNT(id) FROM eventos WHERE ambientei ='AUTOCAD' ");
                      $limit2 = mysqli_fetch_array($limit);
                      $numero = $limit2['COUNT(id)'];
                      $numero -=1;
                      $traer_datos = mysqli_query($conexion,"SELECT * FROM eventos WHERE ambientei = 'AUTOCAD' limit $numero"); 
                      $boolean = false;
                      while($traer_datos2 = mysqli_fetch_array($traer_datos)){
        

        $inicio = $traer_datos2['inicio_normal'];
        $final = $traer_datos2['final_normal'];

        echo "<h1>".$inicio."</h1>";
        echo "<h1>".$final."</h1>";

        $VALIDAR2 = mysqli_query($conexion,"SELECT COUNT(id) FROM eventos WHERE inicio_normal >= '$inicio'
        and final_normal <= '$final'");

        $VALIDAR22 = mysqli_fetch_array($VALIDAR2);
        
        if($VALIDAR22['COUNT(id)'] > 1){
                echo "<h1> la validacion ".$VALIDAR22['COUNT(id)']."</h1>"; 
                $boolean = true;     
        }


     }    


                     //validaciones del formulario


                     $xYear = substr($inicio_normal, 0,4);
                     $yYear = substr($final_normal, 0,4);

                     $xMonth = substr($inicio_normal, 5,2);
                     $yMonth = substr($final_normal, 5,2);

                     $xDay = substr($inicio_normal, 8,2);
                     $yDay = substr($final_normal, 8,2);


                    $select = mysqli_query($conexion,"SELECT * FROM eventos WHERE inicio_normal BETWEEN '$inicio_normal'
                    AND '$final_normal' AND final_normal BETWEEN '$final_normal' AND '$inicio_normal'");

                         
                    if (empty($val)) {                                                               
                       if($xYear == $yYear  ){
                            if($xMonth <= $yMonth ) {
                                    if ($boolean == false) {  
                                      if(empty($insval1)){ 
                                        if($boolq == false) {
                                            if(empty($ficval1)){
                                                if ($boolfic == false) {

                                


                                //fichas

                                $ficha = "INSERT INTO valfic VALUES('','$ficha','$inicio_normal','$final_normal','si')";
                                if ($conexion->query($ficha)) {
                                    echo "<h1>ingreso</h1>";
                                }else{
                                    echo "<h1>no ingreso</h1>";
                                }                                
                                //instructores


                                $insins = "INSERT INTO valins VALUES('','$instructori','$inicio_normal','$final_normal','si')";
                                if($conexion->query($insins)){
                                   echo "<h1>ingreso</h1>";
                                }else{
                                echo "<h1>no ingreso</h1>";
                                }   


                                $inicio4 = _formatear($_POST['from']);    

                                $final4  = _formatear($_POST['to']);                    
                           
                                $query="INSERT INTO eventos VALUES(null,'$centro','$ambientei','$instructori','$ambientea','$instructora','$area','$ficha','$especialidad','$titulo','','','$clase','$inicio4','$final4','$inicio_normal','$final_normal')";


                   
                                 // Ejecutamos nuestra sentencia sql
                                 $conexion->query($query); 
                                 $im=$conexion->query("SELECT MAX(id) AS id FROM eventos");
                                 $row = $im->fetch_row();  
                                 $id = trim($row[0]);

                                 // para generar el link del evento
                                 $link = "$base_url"."descripcion_evento.php?id=$id";

                                 // y actualizamos su link
                                 $query="UPDATE eventos SET url = '$link' WHERE id = $id";

                                 // Ejecutamos nuestra sentencia sql
                                 $conexion->query($query); 


                                 // redireccionamos a nuestro calendario
                                 header("Location:http://localhost/yaneth/programacion_trimestral/calendario4?men=ver&&id=$id"); 
                               }else{
                                    $conexion->query($query); 
                                    $im=$conexion->query("SELECT MAX(id) AS id FROM eventos");
                                    $row = $im->fetch_row();  
                                    $id = trim($row[0]);
                                    header("Location:http://localhost/yaneth/programacion_trimestral/calendario4?men=fal31&&id=$id");
                               }
                               }else{
                                $conexion->query($query); 
                                    $im=$conexion->query("SELECT MAX(id) AS id FROM eventos");
                                    $row = $im->fetch_row();  
                                    $id = trim($row[0]);
                                    header("Location:http://localhost/yaneth/programacion_trimestral/calendario4?men=fal30&&id=$id");
                               }
                               }else{
                                    $conexion->query($query); 
                                    $im=$conexion->query("SELECT MAX(id) AS id FROM eventos");
                                    $row = $im->fetch_row();  
                                    $id = trim($row[0]);
                                    header("Location:http://localhost/yaneth/programacion_trimestral/calendario4?men=fal21&&id=$id");
                               }
                               }else{
                                    $conexion->query($query); 
                                    $im=$conexion->query("SELECT MAX(id) AS id FROM eventos");
                                    $row = $im->fetch_row();  
                                    $id = trim($row[0]);
                                    header("Location:http://localhost/yaneth/programacion_trimestral/calendario4?men=fal20&&id=$id");
                               }
                                }else{
                                    $conexion->query($query); 
                                    $im=$conexion->query("SELECT MAX(id) AS id FROM eventos");
                                    $row = $im->fetch_row();  
                                    $id = trim($row[0]);
                                    header("Location:http://localhost/yaneth/programacion_trimestral/calendario4?men=fal12&&id=$id");

                         
                                }

                            }else{
                                    $conexion->query($query); 
                                     $im=$conexion->query("SELECT MAX(id) AS id FROM eventos");
                                     $row = $im->fetch_row();  
                                     $id = trim($row[0]);
                                     header("Location:http://localhost/yaneth/programacion_trimestral/calendario4?men=fal3&&id=$id");

                                    
                            }
                        }else{
                                     $conexion->query($query); 
                                     $im=$conexion->query("SELECT MAX(id) AS id FROM eventos");
                                     $row = $im->fetch_row();  
                                     $id = trim($row[0]);
                                     header("Location:http://localhost/yaneth/programacion_trimestral/calendario4?men=fal4&&id=$id");

   
           
                        }
                    }else{
                     $conexion->query($query); 
                     $im=$conexion->query("SELECT MAX(id) AS id FROM eventos");
                     $row = $im->fetch_row();  
                     $id = trim($row[0]);
                     header("Location:http://localhost/yaneth/programacion_trimestral/calendario4?men=fal&&id=$id");

                    
                    }
              
    }
}

 ?>

<!DOCTYPE html>
<html lang="es">
<head>
        <meta charset="utf-8">
        <title>Calendario</title>
        <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="<?=$base_url?>css/calendar.css">
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
        <script type="text/javascript" src="<?=$base_url?>js/es-ES.js"></script>
        <script src="<?=$base_url?>js/jquery.min.js"></script>
        <script src="<?=$base_url?>js/moment.js"></script>
        <script src="<?=$base_url?>js/bootstrap.min.js"></script>
        <script src="<?=$base_url?>js/bootstrap-datetimepicker.js"></script>
        <link rel="stylesheet" href="<?=$base_url?>css/bootstrap-datetimepicker.min.css" />
       <script src="<?=$base_url?>js/bootstrap-datetimepicker.es.js"></script>
        <link rel="icon" href="../instructores/imgs/logoSena.png">
    </head>

</head>
<body style="background: white;">
<div class="alert alert-info alert-dismissable">
            <strong>¡Atento!</strong> Para añadir una nueva programacion dar click en el boton <strong>Añadir Formacion</strong> y diligenciar los campos requeridos,
            para ver en detalle la programacion dar click en el dia agendado y dar click en
            <i class="glyphicon glyphicon-adjust"></i>,clasificacion de colores segun <strong>tipo de formacion</strong>Diurna:azul,Mixta:Verde,Nocturna:Rojo,Nocturna-Dual:amarilla,Dual:Morado,Por defecto:gris,
            para regresar dar click en el boton <strong>Volver</strong>.
    </div>
<?php       
                    
                    //Borrar ficha
                    $borrar_fic = mysqli_query($conexion,"SELECT * FROM valfic where url='' ");

                    while($borrar2 = mysqli_fetch_array($borrar_fic)){
                        $borrar_fic_id = $borrar2['id'];
                  
                        $borrar_u2 = mysqli_query($conexion, "DELETE FROM valfic WHERE id='$borrar_fic_id'");
                    }

                    //Borrar instructores
                    $borrar_ins = mysqli_query($conexion,"SELECT * FROM valins where url='' ");

                    while($borrar_url2 = mysqli_fetch_array($borrar_ins)){
                          $borrar_ins_id = $borrar_url2['id'];
                      
                          $borrar_ul2 = mysqli_query($conexion,"DELETE FROM valins WHERE id='$borrar_ins_id'");                      
                     }

                    $borrar_url =  mysqli_query($conexion,"SELECT * FROM eventos WHERE url ='' ");  

                     while($borrar_url1 = mysqli_fetch_array($borrar_url)){
                          $borrar_id1 = $borrar_url1['id'];
                      
                          $borrar_ul = "DELETE FROM eventos WHERE id='$borrar_id1'";   
                          $conexion->query($borrar_ul);
                     }

?>



        <?php  if ($_GET) {

                    
             if (!empty($_GET['men'])) {
                 $valor = $_GET['men'];
             }
                    //fichas
                    if ($valor == 'fal30') {
                        echo "<div class='alert alert-danger alert-dismissible' role='alert'>
                      <button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
                      <strong>IMPORTANTE!</strong> La ficha se encuentra ocupada! 
                    </div>";
                    }
                    if ($valor == 'fal31') {
                        echo "<div class='alert alert-danger alert-dismissible' role='alert'>
                      <button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
                      <strong>IMPORTANTE!</strong>**La ficha se encuentra ocupada!
                    </div>";
                    }
                   //instructores
                  if ($valor == 'fal20') {
                         echo "<div class='alert alert-danger alert-dismissible' role='alert'>
                      <button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
                      <strong>IMPORTANTE!</strong> El instructor se encuentra ocupado! 
                    </div>";
                    }

                    if ($valor == 'fal21') {
                         echo "<div class='alert alert-danger alert-dismissible' role='alert'>
                      <button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
                      <strong>IMPORTANTE!</strong>**El instructor se encuentra ocupado!
                    </div>";
                    }
                   //ambientes

                    if ($valor == 'fal') {
                         echo "<div class='alert alert-danger alert-dismissible' role='alert'>
                      <button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
                      <strong>IMPORTANTE!</strong> La hora que usted intenta agregar ya se encuentra ocupada en este ambiente!
                    </div>";
                    }

                    if ($valor == 'fal12') {
                         echo "<div class='alert alert-danger alert-dismissible' role='alert'>
                      <button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
                      <strong>IMPORTANTE!</strong> **La hora que usted intenta agregar ya se encuentra ocupada en este ambiente!
                    </div>";
                    }


                    if ($valor == 'fal10') {
                         echo "<div class='alert alert-danger alert-dismissible' role='alert'>
                      <button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
                      <strong>IMPORTANTE!</strong> La hora ya se encuentra ocupada!
                    </div>";
                    }

                      if ($valor == 'fal3') {
                         echo "<div class='alert alert-danger alert-dismissible' role='alert'>
                          <button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
                          <strong>IMPORTANTE!</strong> El mes de fecha final esta antes de la de inicio!
                        </div>";
                    }

                      if ($valor == 'fal4') {
                         echo "<div class='alert alert-danger alert-dismissible' role='alert'>
                      <button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
                      <strong>IMPORTANTE!</strong> El año de fecha final esta antes de la de inicio!
                    </div>";
                    }

                    if ($valor == 'ver') {
                         echo "<div class='alert alert-success alert-dismissible' role='alert'>
                      <button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
                      <strong>Exito!</strong> La hora se ha agregado correctamente!
                    </div>";
                    }
                    if($valor == 'bien'){
                         echo "<div class='alert alert-success alert-dismissible' role='alert'>
                      <button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
                      <strong>Exito!</strong> Bienvenido!
                    </div>";
                    }

                    
                    
        if (!empty($_GET['id'])) {
            $id = $_GET['id'];
        }         
      
                    
                      
        }

        
            


        ?>

        <div class="container">
                <div class="row">
                        <div class="page-header"><h2></h2></div>
                        <?php $ambientes = mysqli_query($conexion,"SELECT * from ambientes where id=4"); 
                              $row = mysqli_fetch_array($ambientes);
                        ?>
                        <h1><?= $row['nombre']?></h1>


                                <div class="pull-left form-inline"><br>
                                        <div class="btn-group">
                                            <button class="btn btn-primary" data-calendar-nav="prev"><< Anterior</button>
                                            <button class="btn" data-calendar-nav="today">Hoy</button>
                                            <button class="btn btn-primary" data-calendar-nav="next">Siguiente >></button>
                                        </div>
                                        <div class="btn-group">
                                            <button class="btn btn-warning" data-calendar-view="year">Año</button>
                                            <button class="btn btn-warning active" data-calendar-view="month">Mes</button>
                                            <button class="btn btn-warning" data-calendar-view="week">Semana</button>
                                            <button class="btn btn-warning" data-calendar-view="day">Dia</button>
                                        </div>

                                </div>
                                    <div class="pull-right form-inline"><br>
                                        <a class="btn btn-primary" href="../ambientes/ambientes.php">Volver</a>
                                        <button class="btn btn-info" data-toggle='modal' data-target='#add_evento'>Añadir Formación</button>
                                    </div>

                </div><hr>

                <div class="row">
                        <div id="calendar"></div> <!-- Aqui se mostrara nuestro calendario -->
                        <br><br>
                </div>

                <!--ventana modal para el calendario-->
                <div class="modal fade" id="events-modal">
                    <div class="modal-dialog">
                            <div class="modal-content">
                                    <div class="modal-body" style="height: 400px">
                                        <p>One fine body&hellip;</p>
                                    </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                </div>
                            </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                </div><!-- /.modal -->
        </div>

    <script src="<?=$base_url?>js/underscore-min.js"></script>
    <script src="<?=$base_url?>js/calendar.js"></script>
    <script type="text/javascript">
        (function($){
                //creamos la fecha actual
                var date = new Date();
                var yyyy = date.getFullYear().toString();
                var mm = (date.getMonth()+1).toString().length == 1 ? "0"+(date.getMonth()+1).toString() : (date.getMonth()+1).toString();
                var dd  = (date.getDate()).toString().length == 1 ? "0"+(date.getDate()).toString() : (date.getDate()).toString();

                //establecemos los valores del calendario
                var options = {

                    // definimos que los eventos se mostraran en ventana modal
                        modal: '#events-modal', 

                        // dentro de un iframe
                        modal_type:'iframe',    

                        //obtenemos los eventos de la base de datos
                        events_source: '<?=$base_url?>obtener_eventos.php', 

                        // mostramos el calendario en el mes
                        view: 'month',             

                        // y dia actual
                        day: yyyy+"-"+mm+"-"+dd,   


                        // definimos el idioma por defecto
                        language: 'es-ES', 

                        //Template de nuestro calendario
                        tmpl_path: '<?=$base_url?>tmpls/', 
                        tmpl_cache: false,


                        // Hora de inicio
                        time_start: '07:00', 

                        // y Hora final de cada dia
                        time_end: '22:00',   

                        // intervalo de tiempo entre las hora, en este caso son 30 minutos
                        time_split: '30',    

                        // Definimos un ancho del 100% a nuestro calendario
                        width: '100%', 

                        onAfterEventsLoad: function(events)
                        {
                                if(!events)
                                {
                                        return;
                                }
                                var list = $('#eventlist');
                                list.html('');

                                $.each(events, function(key, val)
                                {
                                        $(document.createElement('li'))
                                                .html('<a href="' + val.url + '">' + val.ficha + '</a>')
                                                .appendTo(list);
                                });
                        },
                        onAfterViewLoad: function(view)
                        {
                                $('.page-header h2').text(this.getTitle());
                                $('.btn-group button').removeClass('active');
                                $('button[data-calendar-view="' + view + '"]').addClass('active');
                        },
                        classes: {
                                months: {
                                        general: 'label'
                                }
                        }
                };


                // id del div donde se mostrara el calendario
                var calendar = $('#calendar').calendar(options); 

                $('.btn-group button[data-calendar-nav]').each(function()
                {
                        var $this = $(this);
                        $this.click(function()
                        {
                                calendar.navigate($this.data('calendar-nav'));
                        });
                });

                $('.btn-group button[data-calendar-view]').each(function()
                {
                        var $this = $(this);
                        $this.click(function()
                        {
                                calendar.view($this.data('calendar-view'));
                        });
                });

                $('#first_day').change(function()
                {
                        var value = $(this).val();
                        value = value.length ? parseInt(value) : null;
                        calendar.setOptions({first_day: value});
                        calendar.view();
                });
        }(jQuery));
    </script>

<div class="modal fade" id="add_evento" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">Agregar Formaciòn</h4>
      </div>
      <div class="modal-body">
        <form action="" method="post">
                    <label for="from">Inicio</label>
                    <div class='input-group date' id='from'>
                        <input type='datetime' id="from" name="from" class="form-control">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
                    </div>

                    <br>

                    <label for="to">Final</label>
                    <div class='input-group date' id='to'>
                        <input type='datetime' name="to" id="to" class="form-control">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
                    </div>

                    <br>

                    <label for="tipo">Centro</label>
                    <select class="form-control" name="centro">
                        <option value="Industria">Industria</option>
                    </select>

                    <br>
                    <?php 

                    $con= mysqli_connect("localhost","root","","programacion_trimestral");
                    $qry5=mysqli_query($con, "SELECT * FROM fichas");
                    $qry4=mysqli_query($con, "SELECT * FROM instructores WHERE centro='Automatizacion' ");
                    $qry3=mysqli_query($con, "SELECT * FROM ambientes WHERE centro='automatizacion' ");
                    $qry2=mysqli_query($con, "SELECT * FROM instructores WHERE centro='Industria' ");
                    $qry= mysqli_query($con,"SELECT * FROM ambientes WHERE centro='industria'");
                    $contador=0;
                 

                     ?>

                    <label for="title">Ambiente</label>
                    <select class="form-control" name="ambientei">
                        <option value="AUTOCAD">AUTOCAD</option>
                    </select>

                     
                    <br>


                    <label for="">Instructor</label>
                    <select class="form-control" name="instructori">
                    <option value="">Seleccione...</option>

                        <?php while($row = mysqli_fetch_array($qry2)) { ?>  

                    <option value="<?= $row['nombres'] ?>"><?= $row['nombres'] ?></option>            
                    <?php }?>
                    <option value=""></option>
                    </select>

                    <br>
                     <label for="">horas del instructor</label>
                    <input type="text" class="form-control" name="horas">

                    <br>


                     <label for="">Area</label>
                     <select  name="area" class="form-control">
                         <option value="">Seleccione...</option>
                         <option value="Ambiental">Ambiental</option>
                         <option value="Automotriz">Automotriz</option>
                         <option value="Etica y Comunicacion">Etica y Comunicacion</option>
                         <option value="Confeccion">Confeccion</option>
                         <option value="Construccion">Construccion</option>
                         <option value="Redes para Gas">Redes para Gas</option>
                         <option value="Salud Ocupacional">Salud Ocupacional</option>
                         <option value="Soldadura">Soldadura</option>
                         <option value="Ingles Presencial">Ingles Presencial</option>
                         <option value="Ingles Voluntarios">Ingles Voluntarios</option>
                         <option value="Equipo Tecnico pedagogico">Equipo Tecnico pedagogico</option>
                         <option value="Cultura Fisica">Cultura Fisica</option>
                         <option value="Diseño Mecanico">Diseño Mecanico</option>
                         <option value="Electricidad">Electricidad</option>
                         <option value="Gestion Integrada de la Calidad">Gestion Integrada de la Calidad</option>
                         <option value="Informatica y Sistemas">Informatica y Sistemas</option>
                         <option value="Joyeria">Joyeria</option>
                         <option value="Mantenimiento">Mantenimiento</option>
                         <option value="Motos">Motos</option>
                         <option value="Mobiliario y Maderas">Mobiliario y Maderas</option>
                         <option value="Proyectos y Emprendimiento">Proyectos y Emprendimiento</option>
                     </select>
                    <br>
                    <label for="nueva area">Nueva Area</label>
                    <input type="text" name="nueva_area" class="form-control" placeholder="Nueva Area">
                    <br>

                    <label for="title">Ficha</label>
                    <select class="form-control" name="ficha" id="">
                    <option value="">Seleccione...</option>

                    <?php while($row5 = mysqli_fetch_array($qry5)) { ?>
                       
                    <option value="<?= $row5['ficha'] ?>"><?= $row5['ficha'] ?></option>         
                    <?php } ?>
                    </select>

                    <br>

                    <label>Especialidad</label>
                    <select name="especialidad" class="form-control" id="espe">
                        <option>Seleccione...</option>
                        <option value="Eectricidad">Electricidad</option>
                        <option value="Informatica">Informatica</option>
                        <option value="Salud Ocupacional">Salud Ocupacional</option>
                        <option value="Mecanica">Mecanica</option>
                        <option value="Automotriz">Automotriz</option>
                        <option value="Construccion">Construccion</option>
                        <option value="Confeccion">Confeccion</option>
                        <option value="Ambiental">Ambiental</option>
                    </select>
                    
                    <br>

                    <label for="">Tipo de formacion</label>
                    <select name="class" class="form-control" id="tipo">
                        <option value="">Seleccione...</option> 
                        <option value="event-info">Diurna</option>
                        <option value="event-success">Mixta</option>
                        <option value="event-important">Nocturna</option>
                        <option value="event-warning">Nocturna-Dual</option>
                        <option value="event-special">Dual</option>
                    </select>
                    
                    <br>

                    <label for="title">Titulo</label>
                     <input type="text" class="form-control" name="title" id="title">

  <script>
        $(function () {
            $('#from').datetimepicker({ 
                format: "YYYY-MM-DD HH:mm",
                language: 'es',
                minDate: new Date(),
                daysOfWeekDisabled: '0'
            });
            $('#to').datetimepicker({
                format: "YYYY-MM-DD HH:mm",
                language: 'es',
                minDate: new Date(),
                daysOfWeekDisabled: '0'
            });
            

        });
    </script>
      </div>
      <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> Cancelar</button>
          <button type="submit" class="btn btn-success"><i class="fa fa-check"></i> Agregar</button>
        </form>
    </div>
  </div>
</div>
</div>
</body>
</html>