<?php

require __DIR__ . "/assets/dompdf/vendor/autoload.php";

use Dompdf\Dompdf;
use Dompdf\Options;


//$html = '<h1 style="color: green">Example</h1>';
//$html .= "Hello <em>$name</em>";
//$html .= '<img src="example.png">';
//$html .= "Quantity: $quantity";

/**
 * Set the Dompdf options
 */
$options = new Options;
$options->setChroot(__DIR__);
$options->setIsRemoteEnabled(true);

ob_start();

// Inclui o arquivo PHP (ele será executado e seu conteúdo ficará no buffer)
include 'template_simulado.php';

// Pega o conteúdo gerado pelo PHP
$html = ob_get_clean();

$dompdf = new Dompdf($options);

/**
 * Set the paper size and orientation
 */
$dompdf->setPaper("A4", "portrait");

/**
 * Load the HTML and replace placeholders with values from the form
 */

$dompdf->loadHtml($html);
//$dompdf->loadHtmlFile("template.html");

/**
 * Create the PDF and set attributes
 */
$dompdf->render();

$dompdf->addInfo("Title", "Relatório Simulado"); // "add_info" in earlier versions of Dompdf

/**
 * Send the PDF to the browser
 */
$dompdf->stream("relatorio_simulado.pdf", ["Attachment" => 0]);

/**
 * Save the PDF file locally
 */
$output = $dompdf->output();
file_put_contents("/file.pdf", $output);