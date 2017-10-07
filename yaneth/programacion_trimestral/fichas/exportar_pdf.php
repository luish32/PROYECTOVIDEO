
<?php
require('../fpdf/fpdf.php');



if ($_GET) {
	$con = mysqli_connect("localhost","root","","programacion_trimestral");

	$boolean=false;
	
	if($centro == "Industria" and $boolean=false){
		
		$qry = mysqli_query($con, "SELECT * FROM eventos WHERE ficha = '$ficha' and centro = '$centro'");
		
		
	}else if($centro == "automatizacion"){
	
		$qry = mysqli_query($con, "SELECT * FROM eventos WHERE ficha = '$ficha' and centro = '$centro'");
	}else if($centro == "Externo"){
		
		$qry = mysqli_query($con ,"SELECT * FROM externo WHERE ficha = '$ficha' and centro ='$centro'");

	}else{
		echo "<script>alert('Los datos que ingreso son incorrectos!')</script>";
		echo "<script>window.location.replace('interfazi.php')</script>";
	}


	$qry_ins = mysqli_query($con , "SELECT * FROM fichas WHERE ficha = '$ficha'");
	$qry_ins2 = mysqli_fetch_array($qry_ins);
	
	
	




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
$pdf->Cell(100, 8, 'HORARIO FICHAS', 'C');
$pdf->Ln(30);
$pdf->SetFont('Arial', 'B', 12);
$pdf->Cell(50, 10, 'Instructor',0);
$pdf->SetX(60, 40);
$pdf->Cell(40, 10, 'Ficha', 0);
$pdf->SetX(100, 40);
$pdf->Cell(40, 10, 'Especialidad', 0);
$pdf->SetX(140, 40);
$pdf->Cell(40, 10, '', 0);
$pdf->SetX(180, 40);
$pdf->Cell(65, 10, 'Area', 0);
$pdf->Cell(40, 10, 'Ambiente',0);


if($centro == 'Industria' || $centro == 'automatizacion'){
	$pdf->Ln(5);
$pdf->SetFont('Arial', '', 8);
	
	 
	 while($qry2 = mysqli_fetch_array($qry)){
	 
	 $pdf->Cell(20,5,'',5,1);
	 
	 
	 $pdf->Cell(50,10,$qry2['instructori'],0);
	 $pdf->SetX(60, 40);
	 $pdf->Cell(40,10,$qry2['ficha'],0);
	 $pdf->SetX(100, 40);
	 $pdf->Cell(40,10,$qry_ins2['nombre'],0);
	 $pdf->SetX(100, 40);
	 $pdf->Cell(40,10,'',0);
	 $pdf->SetX(180, 40);
	 $pdf->Cell(40,10,$qry2['area'],0);
	 $pdf->SetX(245, 40);
	 $pdf->Cell(40,10,$qry2['ambientei'],0);

	 
	 
	 }
	 $pdf->Cell(40,10,$qry_ins2['horario'],0);

	 
//CONSULTA

$pdf->Output();
}else{
		$pdf->Ln(5);
$pdf->SetFont('Arial', '', 8);
	
	 
	 while($qry2 = mysqli_fetch_array($qry)){
	 
	 $pdf->Cell(20,5,'',5,1);
	 
	 
	$pdf->Cell(50,10,$qry2['instructora'],0);
	 $pdf->SetX(60, 40);
	 $pdf->Cell(40,10,$qry2['ficha'],0);
	 $pdf->SetX(100, 40);
	 $pdf->Cell(40,10,$qry_ins2['nombre'],0);
	 $pdf->SetX(100, 40);
	 $pdf->Cell(40,10,'',0);
	 $pdf->SetX(180, 40);
	 $pdf->Cell(40,10,$qry2['area'],0);
	 $pdf->SetX(250, 40);
	 $pdf->Cell(40,10,$qry2['ambientea'],0);

	 
	 
	 }
	 $pdf->Cell(40,10,$qry_ins2['ambientea'],0);

	 
//CONSULTA

$pdf->Output();
}






?>