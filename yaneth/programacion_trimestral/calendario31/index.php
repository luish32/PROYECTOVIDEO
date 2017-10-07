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

        $final1  = $_POST['from'];
        $final2  = $_POST['to'];


        // Recibimos el fecha de inicio y la fecha final desde el form

        // $inicio_normal = $_POST['from'];

        // y la formateamos con la funcion _formatear
        

        $titulo  = evaluar($_POST['title']);
        // reemplazamos los caracteres no permitidos
        $clase  = evaluar($_POST['class']);

        $centro = $_POST['centro'];
        $ambiente = evaluar($_POST['ambiente']);
        $instructor = $_POST['instructor'];
        // $ambientea = $_POST['ambientea'];
        // $instructora = $_POST['instructora'];
        $area = $_POST['area'];
        $nueva_area = $_POST['nueva_area'];
        $ficha = $_POST['ficha'];
        $especialidad = $_POST['especialidad'];
        $horas = $_POST['horas'];


        // insertamos el evento
         $horas_ins=mysqli_query($conexion , "SELECT * FROM instructores WHERE nombres ='$instructor' ");
                      $horas_ins2 = mysqli_fetch_array($horas_ins);
                      $horas_sql = $horas_ins2['horas'];
                      $horas_sql += $horas;

                      $conexion->query("UPDATE instructores SET horas='$horas_sql' where nombres ='$instructor' ");
        $conexion = mysqli_connect("localhost","root","","programacion_trimestral");
        $query=mysqli_query($conexion,"INSERT INTO externo VALUES('','$centro','$ambiente','$instructor','$area', '$nueva_area', '$ficha','$especialidad ','$titulo','','','$clase','$inicio','$final','$final1','$final2')");             
      
        
         //    $query=mysqli_query($conexion,"INSERT INTO externo VALUES ('','','','','','','','','','','','','','','')");
        // Ejecutamos nuestra sentencia sql
        


        // Obtenemos el ultimo id insetado
        $im=$conexion->query("SELECT MAX(id) AS id FROM externo");
        $row = $im->fetch_row();  
        $id = trim($row[0]);

        // para generar el link del evento
        $link = "$base_url"."descripcion_evento.php?id=$id";

        // y actualizamos su link
        $query="UPDATE externo SET url = '$link' WHERE id = $id";

        // Ejecutamos nuestra sentencia sql
        $conexion->query($query); 

        // redireccionamos a nuestro calendario
           header("Location:http://localhost/yaneth/programacion_trimestral/calendario31?men=ver&&id=$id");
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
    </head>

</head>
<body style="background: white;">
<div class="alert alert-info alert-dismissable">
            <strong>¡Atento!</strong> Para añadir una nueva programacion dar click en el boton <strong>Añadir Formacion</strong> y diligenciar los campos requeridos,
            para ver en detalle la programacion dar click en el dia agendado y dar click en
            <i class="glyphicon glyphicon-adjust"></i>,clasificacion de colores segun <strong>tipo de formacion</strong>Diurna:azul,Mixta:Verde,Nocturna:Rojo,Nocturna-Dual:amarilla,Dual:Morado,Por defecto:gris,
            para regresar dar click en el boton <strong>Volver</strong>.
    </div>

                     <?php  if ($_GET) {

                    
             if (!empty($_GET['men'])) {
                 $valor = $_GET['men'];
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
                         <?php $ambientes = mysqli_query($conexion,"SELECT * from ambientes where id=31"); 
                              $row = mysqli_fetch_array($ambientes);
                              echo "<h1>".$row['nombre']."</h1>";
                        ?>
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
                        <option value="Externo">Externo</option>
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
                    <select class="form-control" name="ambiente">
                        <option value="AMBIENTE EXTERNO">AMBIENTE EXTERNO</option>
                    </select>

                     
                    <br>


                    <label for="">Instructor</label>
                    <select class="form-control" name="instructor">
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
                     <input type="text" class="form-control" name="title" id="title" onkeyup="javascript:this.value=this.value.toUpperCase();">

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