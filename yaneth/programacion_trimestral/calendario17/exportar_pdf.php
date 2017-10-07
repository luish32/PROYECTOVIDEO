
<?php
require('../fpdf/fpdf.php');



if ($_GET) {
	$id=$_GET['id'];
	$con = mysqli_connect("localhost","root","","programacion_trimestral");
	$qry = mysqli_query($con, "SELECT * FROM eventos WHERE id=$id");
	$row = mysqli_fetch_array($qry);




}

$pdf = new FPDF();
$pdf->AddPage();

$pdf->SetFont('Arial', '', 10);
$pdf->Image('imgs/SENA.gif' , 10 ,8, 10 , 13,'GIF');
$pdf->Cell(18, 10, '', 0);
$pdf->Cell(150, 10, '', 0);
$pdf->SetFont('Arial', '', 9);
$pdf->Cell(50, 10, 'Fecha: '.date('d-m-Y').'', 0);
$pdf->Ln(15);
$pdf->SetFont('Arial', 'B', 11);
$pdf->Cell(70, 8, '', 0);
$pdf->Cell(100, 8, 'HORARIO INSTRUCTOR', 0);
$pdf->Ln(23);
$pdf->SetFont('Arial', 'B', 11);
$pdf->Cell(30, 8, 'Hora', 0);
$pdf->Cell(30, 8, 'Lunes', 0);
$pdf->Cell(30, 8, 'Martes', 0);
$pdf->Cell(30, 8, 'Miercoles', 0);
$pdf->Cell(30, 8, 'Jueves', 0);
$pdf->Cell(30, 8, 'Viernes', 0);
$pdf->Cell(30, 8, 'Sabado', 0);
$pdf->Ln(8);
$pdf->SetFont('Arial', '', 8);

	$pdf->Cell(30,10,$row['centro'],0);
	$pdf->Cell(5,10,$row['inicio_normal'],0);



//CONSULTA

$pdf->Output();




?>