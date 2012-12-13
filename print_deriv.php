<?php
include('word/dbclass.php');
$dbh=New db();
$id=$_GET['id'];
$p=$_GET['p'];
$stmt = $dbh->prepare("SELECT s.id, n.nur,d.codigo,d.referencia,s.nombre_receptor,s.cargo_receptor,s.a_oficina,s.fecha_emision,s.proveido FROM seguimiento s
            INNER JOIN nurs n ON s.nur=n.nur
            INNER JOIN users u ON s.derivado_a=u.id
            INNER JOIN oficinas o ON u.id_oficina=o.id
            INNER JOIN documentos d ON d.nur=s.nur
            WHERE s.id='$id'
            and d.original='1'");        
$stmt->execute();        
while ($rs = $stmt->fetch(PDO::FETCH_OBJ)) {   
    require('libs/fpdf17/fpdf.php');    
    $pdf = new FPDF('P','mm','Letter');
    $pdf->AddPage();    
     $p=($p*42)+10;
     $pdf->SetFont('Arial', 'B', 14);   
     $pdf->SetY($p); 
     $pdf->Cell(35, 15, $rs->nur,'LTR',0,'C');  
     $pdf->ln();
     $pdf->SetFont('Arial', '', 8); 
     $fecha=date('d-m-Y H:i:s',  strtotime($rs->fecha_emision));
     $pdf->Cell(35, 10, $fecha,'LR',0,'C');
     $pdf->ln();     
     $pdf->SetFont('Arial', '', 6); 
     $pdf->Cell(35, 10, $rs->codigo,'LBR',0,'C');
     $pdf->SetXY(45,$p);
     $pdf->MultiCell(70, 35, 'Proveido: '. $rs->proveido,1,'L');
     $pdf->SetXY(115,$p);     
     $pdf->SetFont('Arial', '', 10); 
     $pdf->Cell(50, 10, 'Derivado a',1,0,'C');
     $pdf->SetXY(115,$p+10);
     $pdf->SetFont('Arial', '', 8); 
     $pdf->Cell(50, 5, '','LR',0,'C');
     $pdf->SetXY(115,$p+15);
     $pdf->Cell(50, 5, $rs->a_oficina,'LR',0,'C');
     $pdf->SetXY(115,$p+20);
     $pdf->Cell(50, 5, $rs->nombre_receptor,'LR',0,'C');
     $pdf->SetXY(115,$p+25);
     $pdf->Cell(50, 5, $rs->cargo_receptor,'LR',0,'C');
     $pdf->SetXY(115,$p+30);
     $pdf->Cell(50, 5, '','LBR',0,'C');
     $pdf->SetXY(165,$p);
     $pdf->Cell(45, 35, '',1,0,'C');
$pdf->Output();
}
