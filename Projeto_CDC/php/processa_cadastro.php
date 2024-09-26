<?php 
   include_once("conexao.php");
   include_once("buscador.php");

   session_start();
   $_SESSION["usuario"] = $_POST["usuario"]; 

   $login = $_POST["usuario"];
   $senha = $_POST["senha"];
   md5($_POST["senha"]);
   $senha_md5 = md5($senha);

   $sql = "SELECT * FROM usuarios WHERE login='$login' AND senha ='$senha_md5'";
     if ($result=mysqli_query($mysqli,$sql)){
    // Return the number of rows in result set
    $rowcount=mysqli_num_rows($result); 
    if($rowcount > 0){
      echo "MAS O USUÁRIO INFORMADO JÁ EXISTE! Por favor, Tente novamente inserindo outros dados para usuário";
    }else {
      $sql = "INSERT INTO usuarios (login, senha) VALUES ('$login', '$senha_md5')";
      $result=mysqli_query($mysqli,$sql);
      //echo "PARABÉNS, USUÁRIO CRIADO COM SUCESSO! Use os serviços dessa plataforma da melhor maneira possível";

      if($_SESSION["usuario"] == $_POST["usuario"]){
        $_SESSION["usuario"] = $_POST["usuario"]; 
        header ("Location: login.php");
      }
    }
       
   }

  ?>