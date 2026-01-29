<?php
session_start();
include('verificalogin.php');
include('connect.php');

// Obter o ID do venda a ser excluído
$id = $_POST['deleteid'];

    $sql = "select s.id, s.nome simulado, p.nome professor, s.data data from simulado s
    inner join professor p on p.id = s.idprofessor where s.id = $id";

    $result = mysqli_query($con, $sql);
    if (isset($_POST['submit'])) {

      // Aqui é a área de excluir alternativas:
        $sql = "select a.id from alternativa a
        inner join pergunta q on q.id = a.idpergunta
        inner join simulado s on s.id = q.idsimulado
        where s.id = $id"; 
        $alternativas = [];
        $result = mysqli_query($con, $sql);
       while ($sqlalternativas = mysqli_fetch_assoc($result)) {
        $alternativas[] = $sqlalternativas['id'];
       }
        foreach ($alternativas as $idalternativa) { 
          $sql = "delete from alternativa where id = $idalternativa";
          $result = mysqli_query($con, $sql);

        }
      
        // Aqui é a área de excluir perguntas
        $sql = "select q.id from pergunta q
        inner join simulado s on s.id = q.idsimulado
        where s.id = $id";
        $pergunta = [];
        $result = mysqli_query($con, $sql);
        
        while ($sqlpergunta = mysqli_fetch_assoc($result)) {
          $pergunta[] = $sqlpergunta['id'];
         }
        foreach ($pergunta as $idpergunta) { 
          $sql = "delete from pergunta where id = $idpergunta";
          $result = mysqli_query($con, $sql);  

        }
        
          $sql = "delete from simulado where id = $id";
          $result = mysqli_query($con, $sql);

    if ($result) {
        header('location: simselect.php');
    } else {
        die(mysqli_error($con));
    }
    }
?>
