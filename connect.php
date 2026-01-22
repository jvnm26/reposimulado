<?php
  $local=$_SERVER['HTTP_HOST'];
  if($local=='localhost'){
    $con= new mysqli('localhost','root','','simulado');
  } else {
    $con= new mysqli('108.179.192.85','avisnetc_simulado','My968574@','avisnetc_simulado');
  }


  if (!$con) {
     die(mysqli_error($con));
  }
?>
