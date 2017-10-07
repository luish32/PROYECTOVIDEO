<style>
	.table-pagination{
		display: block;
		margin-left: 250px;
	}
	.horario{
		width: 400px;
		text-align: center;
		color:rgba(0,0,0,0.8);
		cursor: pointer;
	}
	.horario:hover{
		
		color:rgba(0,0,0,1);
		font-size:16px;
		transition: all 1s;
	
	}
</style>

<?php
/*-----------------------
Autor: Obed Alvarado
http://www.obedalvarado.pw
Fecha: 12-06-2015
Version de PHP: 5.6.3
----------------------------*/

	# conectare la base de datos
    $con=@mysqli_connect('localhost', 'root', '', 'programacion_trimestral');
    if(!$con){
        die("imposible conectarse: ".mysqli_error($con));
    }
    if (@mysqli_connect_errno()) {
        die("Connect failed: ".mysqli_connect_errno()." : ". mysqli_connect_error());
    }
	$action = (isset($_REQUEST['action'])&& $_REQUEST['action'] !=NULL)?$_REQUEST['action']:'';
	if($action == 'ajax'){
		include 'pagination.php'; //incluir el archivo de paginación
		//las variables de paginación
		$page = (isset($_REQUEST['page']) && !empty($_REQUEST['page']))?$_REQUEST['page']:1;
		$per_page = 10; //la cantidad de registros que desea mostrar
		$adjacents  = 4; //brecha entre páginas después de varios adyacentes
		$offset = ($page - 1) * $per_page;
		//Cuenta el número total de filas de la tabla*/
		$count_query   = mysqli_query($con,"SELECT count(*) AS numrows FROM ambientes ");
		if ($row= mysqli_fetch_array($count_query)){$numrows = $row['numrows'];}
		$total_pages = ceil($numrows/$per_page);
		$reload = 'ambientes.php';
		//consulta principal para recuperar los datos
		$query = mysqli_query($con,"SELECT * FROM ambientes  order by id LIMIT $offset,$per_page");
		
		if ($numrows>0){
			?>
		<table class="table table-bordered text-center">
			  <thead>
				<tr>

				  <th class="text-center">Nombre</th>
				  <th class="text-center">Acciones</th>

				</tr>
			</thead>
			<tbody>
			<?php
			while($row = mysqli_fetch_array($query)){ ?>
			<tr>
					<td><?php echo $row['nombre'] ?></td>
					<td>
			
						<a class='btn btn-info' href='consultar_ambiente.php?id=<?php echo $row['id'] ?>'>
							<i data-toggle='tooltip' data-placement='top' title='Consultar'  class='glyphicon glyphicon-search' ></i>
						</a>
						
						<a class='btn btn-success' href='modificar_ambiente.php?id=<?php echo $row['id'] ?>'>
							<i data-toggle='tooltip' data-placement='top' title='Modificar' class='glyphicon glyphicon-pencil' ></i>
						</a>
						<a class='btn btn-danger btn-delete' data-delete="<?=$row['id']?>">
							<i data-toggle='tooltip' data-placement='top' title='Eliminar' class='glyphicon glyphicon-trash' ></i>

						</a>
							<a class='btn btn-default' href="../calendario<?=$row['id']?>/index.php?id=<?php echo $row['id'] ?>&&men=bien">
							<i data-toggle='tooltip' data-placement='top' title='Horario' class='glyphicon glyphicon-time' ></i>
						</a>
						
					</td>
				</tr>

		<?php } ?>
			

			</tbody>
		</table>
		<div class="table-pagination" >
			<?php echo paginate($reload, $page, $total_pages, $adjacents);?>
		</div>
		
			<?php
			
		} else {
			?>
			<div class="alert alert-warning alert-dismissable">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
              <h4>Aviso!!!</h4> No hay datos para mostrar
            </div>
			<?php
		}
	}
?>
	<script>
		$(document).ready(function() {
			$('.btn-delete').click(function(event) {
				
				if (confirm('Realmente desea eliminar este ambiente?')){
					$id = $(this).attr('data-delete');
					window.location.replace('eliminar_ambientes.php?id='+$id);
			}
			});
		});
