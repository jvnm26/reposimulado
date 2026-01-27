<?php
    session_start();
    // include('verificalogin.php');
    include('connect.php');

    if (isset($_POST['submit'])) {
        $pesqnome = mysqli_real_escape_string($con, $_POST['pesqnome']);
    }
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simulado</title>
    <link rel="stylesheet" href="assets/css/style.css"> <!-- CSS Principal -->
    <link rel="stylesheet" href="assets/css/button.css"> <!-- CSS dos Botões e Inputs -->
    <link rel="stylesheet" href="assets/css/icon.css"> <!-- CSS dos Icones -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
    <!-- Link dos Icones do Bootstrap -->
</head>

<body>
    <header>
        <h1>Novo Simulado</h1>
    </header>
    <main>
        <!-- Função Banckend -->
        <!-- Adicione uma forma que apareça o local para por a pergunta, as respostas e um botão para adicionar outra pergunta -->
        <div class="insertContainer">
            <div class="numberQuest">Numero da pergunta</div>
            <textarea class="question"></textarea>
            <div class="aswers">
                <div>
                    <label for="aswer">
                    <input type="radio" name="aswer"><Textarea class="alt"></Textarea></label>
                    <label for="aswer">
                    <input type="radio" name="aswer"><Textarea class="alt"></Textarea></label>
                </div>
                <div>
                    <label for="aswer">
                    <input type="radio" name="aswer"><Textarea class="alt"></Textarea></label>
                    <label for="aswer">
                    <input type="radio" name="aswer"><Textarea class="alt"></Textarea></label>
                </div>
            </div>
        </div>
        <div class="insertButton">
            <button class="btnAddQuest"><i class="bi bi-plus-square-fill"> Adicionar Pergunta</i></button>
        </div>
    </main>
    <footer>
        <h6>by 061 Senac</h6>
    </footer>
</body>

</html>