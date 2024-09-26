<?php 
    //$servidor = "localhost:3307";
    $servidor = "localhost:3306";
    $usuario = "root";
    $senha = "";
    $dbname = "cdcbanco";

    $mysqli = new mysqli($servidor, $usuario, $senha, $dbname);

    if($mysqli->connect_errno){
        die("falha na conexão com o banco de dados");
    }
    else{
        echo "";
    }
?>

