<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="images/pngkey.com-graduate-hat-png-3994652.png">

    <title> Encontre mais cursos </title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="./../css/style.css">

    <!-- custom js file link  -->
    <script src="js/script.js" defer></script>

    <style>
/* Tooltip container */
.tooltip {
  position: relative;
  display: inline-block;
  border-bottom: 1px dotted black; /* If you want dots under the hoverable text */
}

/* Tooltip text */
.tooltip .tooltiptext {
  visibility: hidden;
  width: 100px;
  background-color: black;
  color: #fff;
  text-align: center;
  padding: 5px 0;
  border-radius: 6px;
  /* Position the tooltip text - see examples below! */
  position: absolute;
  left: -100%;
  bottom: 100%;
  z-index: 1;
}

/* Show the tooltip text when you mouse over the tooltip container */
.tooltip:hover .tooltiptext {
  visibility: visible;
}

</style>

</head>
<body>
 
<!-- adição de conteúdo
-->

<!-- header section starts  -->

<div id="menu-btn" class="fas fa-bars"></div>

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
    </nav>

    

</header>

<!-- header section ends -->


<!-- about section starts  -->

<section class="about" id="about">

    <div class="content">
        <span> Buscar cursos diversos </span>
        <h3> Procure por cursos em áreas do conhecimento que te agradam! </h3>
        <p>  Em seguida, há um campo para inserir uma área do conhecimento que te chama atenção. Ao acionar o botão "Pesquisar", aparecerão 5 cursos online e gratuitos que atendem à procura feita. </p>
        
        <form method = "POST"> 
          
         <div> 
            <input type = "text" name = "buscar" placeholder = "DIGITE UMA ÁREA">
          </div>

           <br>   </br>
    
         <button type = "submit" id = "procurar" class = "btn" onclick = "contar();"> Pesquisar </button>
         <br/>
         <br/>
         <br/>
      </form>    

      <table width = "1000px;"> 

       <tr> 
         <th style="width:550px;"> Nome  </th>
         <th style="width:250px;"> Descrição  </th>
         <th style="width:250px;"> Carga Horária  </th>
         <th style="width:250px;"> Link do curso  </th>
        </tr>

        <?php
         include_once("conexao.php");

         if(!isset($_POST['buscar'])){
          ?>

        <tr style="text-align:center;">
          <td colspan="4" >Seu resultado aparecerá aqui!  </td>
       </tr>

       <?php 
        } else {
          $pesquisa = $mysqli->real_escape_string($_POST['buscar']);
          $sql = "SELECT * FROM cursos WHERE nome LIKE '%$pesquisa%' OR descricao LIKE '%$pesquisa%' OR cargahoraria LIKE '%$pesquisa%' OR link LIKE '%$pesquisa%'; ";

          

          $sql_query = $mysqli->query($sql) or die ($mysqli->error);

          if($sql_query->num_rows == 0){
          ?> 
           
           
        <tr style="text-align:center;">
          <td colspan="4" > Nenhum resultado encontrado... Tente outra área do conhecimento </td>
       </tr>

       
        <?php
          } else{
            while($dados = $sql_query->fetch_assoc()){
           ?>

            <tr>
             <td class="colunas" style="width:200px;"> <?php echo $dados['nome']; ?></td>
             <td class="colunas" style="width:1250px;"> <?php echo $dados['descricao']; ?>  </td>
             <td class="colunas" style="width:20px;text-align:center;"> <?php echo $dados['cargahoraria']; ?> </td>
             <td class="colunas" style="width:10px;">  <div class="tooltip">
         <a href="<?php echo $dados['link']; ?>" target="_blank"><img src="../images/link.png" alt="" width="20"></a>
       <span class="tooltiptext" style="font-size: 8pt;"> Acessar link</span>
       </div> </td>
            </tr>
            <tr>
              <td colspan="4"> &nbsp;</td>
            </tr>

           <?php
          }
         } 
        ?>


       <?php
         }
       ?>  

      </table>

    </div>

</section>

<!-- about section ends -->

</body>
</html>