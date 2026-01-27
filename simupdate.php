<?php
    session_start();
    include('verificalogin.php');
    include('connect.php');
    
    $id = $_GET['updateid'];
    $sql = "select s.id, p.id idp, s.nome simulado, s.data data from simulado s
          inner join professor p on
          p.id = s.idprofessor 
          where s.id = $id";
    
    $result = mysqli_query($con, $sql);
    $row = mysqli_fetch_assoc($result);

    $simulado = $row['simulado'];
    $idp = $row['idp'];
    $data = $row['data'];
    if (isset($_POST['submit'])) {
        $simulado = $_POST['simulado'];
        $idp =  $_POST['idp'];
        $data =  $_POST['data'];
        $sql = "UPDATE simulado SET idprofessor=$idp , nome='$simulado', data = '$data' WHERE id = $id";
        $result = mysqli_query($con, $sql);
        if ($result) {
            header('location: simselect.php');
        } else {
            die(mysqli_error($con));
        }
    }
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Simulado</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">

  <link rel="stylesheet" href="./assets/css/style.css"> <!-- CSS Principal -->
  <link rel="stylesheet" href="./assets/css/button.css"> <!-- CSS dos Botões e Inputs -->
  <link rel="stylesheet" href="./assets/css/icon.css"> <!-- CSS dos Icones -->

</head>

<body>
  <header>
    <h1>Alterar Simulados</h1>
  </header>
  <main>
    <div class="menuOptions">
    </div>
    <br>
      <div class="menuContainer">
        <div class="container-fluid">
        <div class="container" >
            <form method="post">
                <input type="hidden" name="id" value="<?php echo $user['id']; ?>">
                <div class="row">
                   
                    <!-- Nome -->
                    <div class="col"> <br><br>
                        <div class="form-floating" style="width: 400px;">
                            <h5 style="color: black;">Nome do Simulado:</h5>
                        </div>
                    </div>
                    <div class="col" style="margin-right: 520px;"> <br><br>
                        <input type="text" class="form-control" name="simulado" id="simulado" value="<?php echo $simulado; ?>" required style="width: 350px;">
                    </div>
                    <!-- Nome do Professor -->
                    <div class="col"> <br><br>
                        <div class="form-floating" style="width: 400px;">
                            <h5 style="color: black;">Nome do Professor:</h5>
                        </div>
                    </div>
                    <div class="col" style="margin-right: 520px;"> <br><br>
                        <?php
                        $sqll = 'select * from professor order by id';
                        $result = mysqli_query($con, $sqll);
                        if ($result) {
                            echo '<select  name="idp" class="form-control">';
                            while ($row = mysqli_fetch_assoc($result)) {
                                if ($idproduto == $row['id']) {
                                    echo '<option value="' . $row['id'] . '" selected>' .
                                        $row['nome'] . '</option>';
                                } else {
                                    echo '<option value="' . $row['id'] . '" >' .
                                        $row['nome'] . '</option>';
                                }
                            }
                            echo '</select>';
                        }
                        ?>
                    </div>
                    <!-- Data de Venda -->
                    <div class="col"> <br><br>
                        <div class="form-floating" style="width: 400px;">
                            <h5 style="color: white;">Data do Simulado:</h5>
                        </div>
                    </div>
                    <div class="col" style="margin-right: 520px;"> <br><br>
                        <input type="date" class="form-control" name="data" id="data" value="<?php echo $data; ?>" required style="width: 350px;">
                    </div>
                    <div class="col">
                        <br>
                            <?php
                            echo
                            "<a href='simselect.php'color:white;'>
                                <button type='button' style='padding: 9px; width: 100px;'
                                class='btn btn-dark'>Não, Voltar</button></a>";
                            ?>
                            <button class="btn btn-secondary rounded-pill py-3 px-5" type="submit" name="submit">Atualizar</button>
                        <br><br>
                    </div>
            </form>
        </div>
        </div>
      </div>
  </main>
  <footer>
    <h6>by 061 Senac</h6>
  </footer>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
</body>

</html>