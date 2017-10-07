
<?php
require('../fpdf/fpdf.php');



if ($_GET) {
	
	
	$conexion = mysqli_connect("localhost","root","","programacion_trimestral");
	$qry = mysqli_query($conexion,"SELECT * FROM externo");



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
$pdf->Cell(100, 8, 'CONSULTA INSTRUCTORES', 'C');
$pdf->Ln(30);
$pdf->SetFont('Arial', 'B', 12);
$pdf->Cell(50, 10, 'Instructor',0);
$pdf->SetX(90, 40);
$pdf->Cell(40, 10, 'Horas', 0);
$pdf->SetX(130, 40);	
$pdf->Cell(40, 10, 'Especialidad', 0);	
$pdf->SetX(180, 40);
$pdf->Cell(65, 10, 'Area', 0);
$pdf->Cell(40, 10, 'Tipo de Contrato',0);



	$pdf->Ln(5);
$pdf->SetFont('Arial', '', 8);
	
	 
	 while($qry2 = mysqli_fetch_array($qry)){
	 
	 $pdf->Cell(20,5,'',5,1);
	 
	 
	 
	 $pdf->Cell(50,10,$qry2['nombres'].$qry2['apellidos'],0);
	 $pdf->SetX(90, 40);
	 $pdf->Cell(40,10,$qry2['horas'],0);
	 $pdf->SetX(130, 40);
	 $pdf->Cell(40,10,$qry2['especialidad'],0);
	 $pdf->SetX(180, 40);
	 $pdf->Cell(40,10,$qry2['area'],0);
	 $pdf->SetX(245, 40);
	 $pdf->Cell(40,10,$qry2['tipocontrato'],0);

	 
	 
	 }


	 
//CONSULTA

$pdf->Output();







?>