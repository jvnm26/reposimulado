<?php
session_start();
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Projeto Indiano</title>
    <link rel="stylesheet" href="assets/css/style.css"> <!-- CSS Principal -->
    <link rel="stylesheet" href="assets/css/button.css"> <!-- CSS dos Botões e Inputs -->
    <link rel="stylesheet" href="assets/css/icon.css"> <!-- CSS dos Icones -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
    <!-- Link dos Icones do Bootstrap -->
</head>

<body>
    <header>
        <h1>Tela de Login</h1>
    </header>
    <main>
    <form action="login.php" method="POST">
        <div class="indexContainer">
            <div class="indexInputs">

                    <label class="labelLogin" for="username">Colaborador:
                    <input class="inputLogin" type="text" name="username" id="username">
                    </label>
                    <label class="labelLogin" for="password">Senha:
                    <input class="inputLogin" type="password" name="password" id="password">
                    </label>
            </div>
            <div class="indexButtons">
                <button class="btnLogin" type="submit" name="acess" id="acess">Log In</button>
            </div>
        </div>
    </form>
    </main>
    <footer>
        <h6>by 061 Senac</h6>
    </footer>
</body>

</html>