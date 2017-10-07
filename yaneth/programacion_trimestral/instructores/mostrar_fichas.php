
<?php
require('../fpdf/fpdf.php');



if ($_GET) {
	
	
	$conexion = mysqli_connect("localhost","root","","programacion_trimestral");
	$qry = mysqli_query($conexion,"SELECT * FROM fichas");



}
//Horientacion pagina
$pdf = new FPDF('L','mm','A4');

$pdf->AddPage();

$pdf->SetFont('Arial', '', 10);
$pdf->Image('imgs/logoSena.png' , 30, 10, 20, 20,'png');
$pdf->Cell(18, 10, '', 0);
$pdf->Cell(215, 10, '', 0);
$pdf->SetFont('Arial', 'U', 12);
$pdf->Cell(50, 10, 'Fecha: '.date('d-m-Y').'', 0);
$pdf->Ln(15);
$pdf->SetFont('Arial', 'B', 14);
$pdf->Cell(100, 8, '', 0);
$pdf->Cell(100, 8, 'CONSULTA FICHAS', 'C');
$pdf->Ln(30);
$pdf->SetFont('Arial', 'B', 12);
$pdf->Cell(50, 10, 'Nombre',0);
$pdf->SetX(120, 40);
$pdf->Cell(40, 10, 'Ficha', 0);
$pdf->SetX(150, 40);	
$pdf->Cell(40, 10, 'Especialidad', 0);	
$pdf->SetX(190, 40);
$pdf->Cell(65, 10, 'Instructor', 0);
$pdf->Cell(40, 10, 'Horario',0);



	$pdf->Ln(5);
$pdf->SetFont('Arial', '', 8);
	
	 
	 while($qry2 = mysqli_fetch_array($qry)){
	 
	 $pdf->Cell(20,5,'',5,1);
	 
	 
	 
	 $pdf->Cell(50,10,$qry2['nombre'],0);
	 $pdf->SetX(120, 40);
	 $pdf->Cell(40,10,$qry2['ficha'],0);
	 $pdf->SetX(150, 40);
	 $pdf->Cell(40,10,$qry2['especialidad'],0);
	 $pdf->SetX(190, 40);
	 $pdf->Cell(40,10,$qry2['instructor'],0);
	 $pdf->SetX(255, 40);
	 $pdf->Cell(40,10,$qry2['horario'],0);

	 
	 
	 }


	 
//CONSULTA

$pdf->Output();







?>s