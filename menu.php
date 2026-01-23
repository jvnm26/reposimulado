<?php
    session_start();
    // include('verificalogin.php');
    include('connect.php');

    $sql = "select s.nome simulado, p.nome professor, s.data data from simulado s
    inner join professor p on p.id = s.idprofessor";

    // Área que vai efetuar a pesquisa pelo nome do cliente
    $pesqnome = '';
    if (isset($_POST['submit'])) {
        $pesqnome = mysqli_real_escape_string($con, $_POST['pesqnome']);
        // Consulta para buscar usuários com base no nome fornecido
        $sql = "select s.nome Simulado, p.nome Professor, s.data Quando from simulado s
        inner join professor p on p.id = s.idprofessor WHERE snome LIKE '%$pesqnome%' ORDER BY nome ASC";
    }
    $result = mysqli_query($con, $sql);
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
        <h1>Simulados</h1>
    </header>
    <main>
        <div class="menuOptions">
            <button class="btnInsertMenu">
                <i class="bi bi-clipboard2-plus-fill"> Novo Simulado</i>
            </button>
        </div>
        <hr>
        <div class="menuItens">
            <!-- Container de simulado -->
            <!-- Utilizar como a "linha da tabela" -->
            <div class="menuContainer">
                <!-- <div class="simuName">Nome do Simulado</div>
                <div class="questCount">Número de Questões</div>
                <div class="buttonOptions">
                    <button class="btnUpdate"><i class="bi bi-pencil-square"></i></button>
                    <button class="btnDelete"><i class="bi bi-trash-fill"></i></button>
                    <button class="btnExecute"><i class="bi bi-play-fill"></i></button>
                </div> -->

                <div class="container">
                    <table style="padding: 25px; border-radius: 5px;">
                        <thead>
                            <tr>
                                <?php
                                $lista = ['Nome', 'Professora', 'Data', 'Componentes'];
                                for ($lc=0; $lc < count($lista); $lc++) { 
                                    echo"<th scope='col'>" . $lista[$lc] . "</th>";
                                }
                                ?>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
    if($result && mysqli_num_rows($result)>0){
        while ($row = mysqli_fetch_assoc($result)){
            $data = !empty($row['data']) ? date("d/m/Y", strtotime($row['data'])) : "-";
            echo "<tr>
            <td>{$row['simulado']}</td>
            <td>{$row['professor']}</td>
            <td>{$data}</td>
            <td>
            <a href='alterar.php?deleteid={$row['id']}'<button class='btnUpdate'><i class='bi bi-pencil-square'></i></button></a>
            <a href='insert.php?deleteid={$row['id']}'<button class='btnDelete'><i class='bi bi-trash-fill'></i></button></a>
            <button class='btnExecute'><i class='bi bi-play-fill'></i></button>
            </td>";
        }
    } else {
        echo "<tr><td colspan='9' class='text-center'>Nenhuma prova encontrada.</td></tr>";
    }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </main>
    <footer>
        <h6>by 061 Senac</h6>
    </footer>
</body>

</html>