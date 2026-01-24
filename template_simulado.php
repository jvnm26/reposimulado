<?php
session_start();
include("verificalogin.php");
include("connect.php");

$idsimulado = isset($_GET['ids']) ? (int)$_GET['ids'] : 0;

/* ===============================
   DADOS DO SIMULADO + PROFESSOR
================================ */
$sqlSimulado = "
SELECT s.nome AS simulado, s.data, p.nome AS professor
FROM simulado s
INNER JOIN professor p ON p.id = s.idprofessor
WHERE s.id = {$idsimulado}
";
$resSimulado = mysqli_query($con, $sqlSimulado);
$simulado    = mysqli_fetch_assoc($resSimulado);

$dataProva = '';
if (!empty($simulado['data'])) {
    $dataProva =
        substr($simulado['data'], 8, 2) . '/' .
        substr($simulado['data'], 5, 2) . '/' .
        substr($simulado['data'], 0, 4);
}

/* ===============================
   PERGUNTAS DO SIMULADO
================================ */
$sqlPerguntas = "
SELECT id, texto
FROM pergunta
WHERE idsimulado = {$idsimulado}
ORDER BY id
";
$resPerguntas = mysqli_query($con, $sqlPerguntas);

/* ===============================
   ORGANIZA PERGUNTAS + ALTERNATIVAS
================================ */
$perguntas = [];

while ($p = mysqli_fetch_assoc($resPerguntas)) {

    $sqlAlt = "
    SELECT texto
    FROM alternativa
    WHERE idpergunta = {$p['id']}
    ORDER BY id
    ";
    $resAlt = mysqli_query($con, $sqlAlt);

    $alternativas = [];
    while ($a = mysqli_fetch_assoc($resAlt)) {
        $alternativas[] = $a['texto'];
    }

    $perguntas[] = [
        'texto' => $p['texto'],
        'alternativas' => $alternativas
    ];
}
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<title><?php echo htmlspecialchars($simulado['simulado']); ?></title>

<style>
@page {
    margin: 20px;
}

body {
    font-family: Arial, Helvetica, sans-serif;
    font-size: 12px;
    color: #000;
}

h1, h2 {
    margin: 0;
    text-align: center;
}

hr {
    margin: 10px 0;
}

.cabecalho {
    border: 1px solid #000;
    padding: 10px;
}

.info {
    width: 100%;
    border-collapse: collapse;
    margin-top: 10px;
}

.info td {
    border: 1px solid #000;
    padding: 6px;
}

.questao {
    margin-top: 15px;
    page-break-inside: avoid;
}

.questao p {
    margin: 0 0 6px 0;
    font-weight: bold;
}

.alternativa {
    margin-left: 15px;
    margin-bottom: 4px;
}

.rodape {
    margin-top: 20px;
    font-size: 10px;
    text-align: center;
}
</style>
</head>

<body>

<!-- CABEÇALHO -->
<div class="cabecalho">
    <h1>AVALIAÇÃO / SIMULADO</h1>
    <h2><?php echo htmlspecialchars($simulado['simulado']); ?></h2>

    <table class="info">
        <tr>
            <td><strong>Professor:</strong> <?php echo htmlspecialchars($simulado['professor']); ?></td>
            <td><strong>Data:</strong> <?php echo $dataProva; ?></td>
        </tr>
        <tr>
            <td colspan="2"><strong>Aluno:</strong> ________________________________________________</td>
        </tr>
        <tr>
            <td><strong>Série/Turma:</strong> ____________________</td>
            <td><strong>Nota:</strong> ________</td>
        </tr>
    </table>
</div>

<hr>

<!-- QUESTÕES -->
<?php
$numero = 1;
$letras = ['A', 'B', 'C', 'D', 'E'];

foreach ($perguntas as $q):
?>
<div class="questao">
    <p><?php echo $numero . ') ' . htmlspecialchars($q['texto']); ?></p>

    <?php foreach ($q['alternativas'] as $i => $alt): ?>
        <div class="alternativa">
            (<?php echo $letras[$i]; ?>) <?php echo htmlspecialchars($alt); ?>
        </div>
    <?php endforeach; ?>
</div>
<?php
$numero++;
endforeach;
?>

<div class="rodape">
    Boa prova!
</div>

</body>
</html>
