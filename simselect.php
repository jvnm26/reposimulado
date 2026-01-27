<?php
    session_start();
    // include('verificalogin.php');
    include('connect.php');

    $sql = "select s.id, s.nome simulado, p.nome professor, s.data data from simulado s
    inner join professor p on p.id = s.idprofessor";

    $result = mysqli_query($con, $sql);
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
    <h1>Simulados</h1>
  </header>
  <main>
    <div class="menuOptions">
      <button type="button" class="btnInsertMenu" data-bs-toggle="modal" data-bs-target="#exampleModal">
        Novo Simulado
      </button>

      <!-- Modal -->
      <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Vamos lá!</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
            <input type="text" class="form-control" placeholder="Digite o nome da prova" aria-describedby="basic-addon1">
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Não, fechar</button>
                <button type="button" class="btn btn-primary" id="btniniciar">Iniciar novo
                  simulado</button>
            </div>
          </div>
        </div>
      </div>
      <!-- Modal -->
      <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              ...
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary">Save changes</button>
            </div>
          </div>
        </div>
      </div>
    </div>
    <hr>
    <div class="menuItens">
      <!-- Container de simulado -->
      <!-- Utilizar como a "linha da tabela" -->
      <div class="menuContainer">
        <div class="container-fluid">
          <table>
            <thead>
              <tr>
                <?php
                  $lista = ['Id', 'Nome', 'Professora', 'Data', 'Componentes'];
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
                <td>{$row['id']}</td>
                <td>{$row['simulado']}</td>
                <td>{$row['professor']}</td>
                <td>{$data}</td>
                <td>
                <div class='buttonOptions'>
                <a href='simupdate.php?updateid={$row['id']}'<button class='btnUpdate'><i class='bi bi-pencil-square'></i></button></a>
                  <a href='simdelete.php?deleteid={$row['id']}'><button class='btnDelete'><i class='bi bi-trash-fill'></i></button></a>
                  <button class='btnExecute'><i class='bi bi-play-fill'></i></button>
                </div>
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
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
</body>

</html>