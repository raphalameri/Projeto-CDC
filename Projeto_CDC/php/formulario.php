<!DOCTYPE html>
<html lang="pt-br">
  <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
      <link rel = "stylesheet" href = "./../css/style.css">
      <script src="./../js/script.js" defer>  </script>
      <link rel="icon" type="image/x-icon" href="images/pngkey.com-graduate-hat-png-3994652.png">

      <title> Cadastro </title>   
  </head>

  <body>

    <div id="menu-btn" class="fas fa-bars"> </div>

      <header class="header">

      <a href="index.html" class="logo"> <i class="fas fa-graduation-cap"></i> CDC </a>

         <nav class="navbar">
            <a href="../index.html"> <i class="fas fa-angle-right"></i> Início </a>
            <a href="../index.html#category"> <i class="fas fa-angle-right"></i> Cursos  </a>
            <a href="buscador.php"> <i class="fas fa-angle-right"></i> Explorar cursos </a>
            <a href="../sobrenos.html"> <i class="fas fa-angle-right"></i> Sobre nós </a>
            <a href="../mercado.html"> <i class="fas fa-angle-right"></i> Mercado </a>
            <a href="../contact.html"> <i class="fas fa-angle-right"></i> Contato </a>
            <a href="formulario.php"> <i class="fas fa-angle-right"></i> Cadastro </a>
            <a href="login.php"> <i class="fas fa-angle-right"></i> Login </a>
         </nav> 

</header>

  <section class = "about" id = "about"> 

    <div class = "content"> 
          <span>  Faça seu Cadastro para ter acesso ao explorador de cursos!  </span>
          <h3> Cadastre-se nos campos abaixo: </h3>
          <br/>
          <br/>
           <div>
              <form action = "processa_cadastro.php" method='POST'>
                <h2> E-mail do usuário: </h2>
                <br/>

                <div> 
                 <input type = "text" id = "fname" name = "usuario" placeholder = "Digite seu usuário...">
                </div>
           
               <br/>
               <br/>
               <h2> Senha: </h2>
               <br/>

               <div>
                 <input type = "password" id = "lname" name = "senha" placeholder = "Digite sua senha...">
               </div>

               <br/>
               <br/>
               <button type = "submit" class = "btn" name="submit"> Enviar </button>
               
             </form>
           </div>


    </div>

</section>


  </body>
</html>