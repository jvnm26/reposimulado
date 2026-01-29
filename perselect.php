<?php
session_start();
include("verificalogin.php");
include("connect.php");

$idsimulado = isset($_GET['simid']) ? (int)$_GET['simid'] : 0;


?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perguntas Simulado</title>
    <link rel="stylesheet" href="assets/css/style.css"> <!-- CSS Principal -->
    <link rel="stylesheet" href="assets/css/button.css"> <!-- CSS dos Botões e Inputs -->
    <link rel="stylesheet" href="assets/css/icon.css"> <!-- CSS dos Icones -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
    <!-- Link dos Icones do Bootstrap -->
</head>

<body>
    <header>
        <h1>Atualizar Simulado</h1>
    </header>
    <main>
        <section class="updateOptions">
            <div>
                <a href="simselect.php">
                <button type="button" class="btnBack">
                    <i class="bi bi-escape"> Voltar</i>
                </button></a>
            </div>
            <div>
                <button type="button" class="btnUpdateSimu">
                    Modificar Simulado
                </button>
                <?php
                echo '<a href="exportar_pdf_simulado.php?ids='.$idsimulado.'">
                <button type="button" class="btnPrintSimu">
                    Imprimir Simulado
                </button></a>';?>
            </div>
        </section>
        <hr>
        <section class="simu">
            <div class="questionContainer">
                <div class="questionNumber">Numero da Questão</div>
                <div class="questionText">
                    Questão<br>
                    Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magni obcaecati repellendus, unde
                    inventore perspiciatis fugiat doloribus nam! Quas porro voluptate cumque velit minus necessitatibus
                    aut atque, quis veritatis error nulla!
                </div>
                <div class="questionOptions">
                    <div>
                        <label for="option">
                            <input type="radio" name="option">Resposta A</label>
                        <label for="option">
                            <input type="radio" name="option">Resposta B</label>
                    </div>
                    <div>
                        <label for="option">
                            <input type="radio" name="option">Resposta C</label>
                        <label for="option">
                            <input type="radio" name="option">Resposta D</label>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <footer>
        <h6>by 061 Senac</h6>
    </footer>
</body>

</html>