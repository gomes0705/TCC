<?php
session_start();
include "../../Conexao/conexao.php";
$seguranca = isset( $_SESSION['id_usuario'] ) ? TRUE : header('Location: ../html/pinicial.html');

if ($seguranca){ 
 $codusuario = $_SESSION['id_usuario'];
 $codigo = mysqli_query($con,"select * from tb_usuario where id_usuario=$codusuario");
 $infobd = 0;
mysqli_query($con,"SET NAMES 'utf8'");  
mysqli_query($con,'SET character_set_connection=utf8');  
mysqli_query($con,'SET character_set_client=utf8');  
mysqli_query($con,'SET character_set_results=utf8');
}

$resulta = mysqli_query($con,"select * from tb_usuario where id_usuario=".$_SESSION['id_usuario']);
$p=0;
while($registro = mysqli_fetch_array($resulta))
{
     echo "<form name=fox action=perfilusu2.php  method=POST>";
     echo "<input name=txtcod2 id=codx  type=hidden value=".$_SESSION['id_usuario']."></p>";




echo '
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" type="text/css" href="../css/perfil.css">
  <script type="text/javascript" src="../java/popup.js"></script>
  <script type="text/javascript" src="../java/navbar.js"></script>
  <script src="perfil.js"></script>
  <script src="https://unpkg.com/scrollreveal"></script>
  <link rel="icon" type="image/png" href="../BancoImagens/logow4.png"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
  <title>Meu Perfil</title>
</head>
<body>

<!--Cabeçalho-->
  <header>
 <nav id="navbar">
    <a href="../../PaginaInicialLogada/php/pinilog.php" class="logo"><img src="../BancoImagens/loginho.png" alt="Logo da empresa"></a>
    <div class="header-direita">
    <div class=user onclick="menuToggle();">
   <img class="avatar" src=../../FotosUsu/' . htmlspecialchars($registro[4]) .' alt="Foto do avatar">
   </div>
</div>


   
   <div id="popup" class="popup">
   <span class="overlay"></span> 
     <img id=um src=../../FotosUsu/' . htmlspecialchars($registro[4]) .'>
     <h3>' . htmlspecialchars($registro[1]) .'<br>
     <span>' . htmlspecialchars($registro[2]) .'</span><br>
     <span>' . htmlspecialchars($registro[5]) .'</span>
     </h3>  
   <ul>
   <li><img src="../BancoImagens/logow2.png"> <a href="../../Anuncio/php/anuncio.php"> Anunciar um Bico </a></li>
   <li><img src="../BancoImagens/premium.png"> <a href="../../Assinatura/assinatura.php"> Assinar o site </a></li>
    <li><img src="../BancoImagens/search.png"> <a href="../../Listagem/php/escolha.php"> Procurar um Bico </a></li>
    <li><img src="../BancoImagens/edit.png"> <a href="../../Corp/php/criarempresa.php">Fazer Bico</a></li>
    <li><img src="../BancoImagens/user.png"> <a href="../../Perfil/php/perfil.php">Acessar seu perfil</a></li>
    <li><img src="../BancoImagens/log-out.png"> <a href="../../PaginaInicialLogada/php/logout.php">Efetuar Logout</a></li>
    </ul>
   </div>
   
 
  
 </div>
    
 
  </nav>
  </header>
' ; } ?>



<script>
      function menuToggle() {
        const toggleMenu = document.querySelector(".popup");
        toggleMenu.classList.toggle("active");
      }
    
      var lastScrollTop = 0;
      var navbar = document.getElementById("navbar");
    
      window.addEventListener("scroll", function() {
        var scrollTop = window.pageYOffset || document.documentElement.scrollTop;
    
        if (scrollTop > lastScrollTop) {
          navbar.style.top = "-80px";
    
          // Desativa o popup quando o usuário mexer para baixo
          const toggleMenu = document.querySelector(".popup");
          if (toggleMenu.classList.contains("active")) {
            menuToggle(); // Chama a função para fechar o popup
          }
        } else {
          navbar.style.top = "0";
        }
    
        lastScrollTop = scrollTop;
      });
    </script>


<?php





    $comando= "select * from tb_usuario where id_usuario='$codusuario'";
    $resulta = mysqli_query($con, $comando);
    $registro = mysqli_fetch_array($resulta);

    $comando2= "select * from tb_anuncio where id_usuario='$codusuario'";
    $resulta2 = mysqli_query($con, $comando2);
    $registro2 = mysqli_fetch_array($resulta2);



echo "<div class='header__wrapper'>
<header></header>
<div class=cols__container>
<div class=left__col>
  <div class=img__container> 
  <img src=../../FotosUsu/".htmlspecialchars($registro[4]).">
  <span></span>
          </div> ";




 
    //echo "Codigo:".$registro[0]."<br>";
        echo "<h2>".$registro[1]."</h2>";
        echo "<p>".$registro2[2]."</p>";
        echo "<p>".$registro[2]. "</p>";
     
    
        $comando3= "select * from tb_perfil where id_usuario='$codusuario'";
        $resulta3 = mysqli_query($con, $comando3);
        $registro3 = mysqli_fetch_array($resulta3);





echo "<ul class=about>";
/*<li><span>23</span>Trabalhos Feitos</li>
<li><span>233</span>Pessoas Contratadas</li>
<li><span>233</span>Avaliações</li>*/
echo "</ul>";

echo "<div class=content>
<h2>Descrição do Serviço </h2>
<p>
".$registro2[4]."
<p>
<ul>
              <li><i class='fab fa-instagram'></i></li>
              <i class='fab fa-linkedin'></i>
              <i class='fab fa-x'></i>

            </ul>
           
";



echo "<form action='../../Perfil/perfilusu2.php' method=GET method=POST>";
echo"<input type=submit name=botcomprarf  value='Atualizar Perfil' class='FB'> ";
echo "</form>";
echo "
</div>
</div>

<div class=right__col>
<div class=icc>
  <ul>
  <li><button class='btns'onclick='showInfo(event)'>Info</button></li>
    <li><button class='btns'onclick='showContato(event)'>Contatos</button></li>
  </ul>
</div>

<div class='info' id='info' >
<i class='fa-solid fa-quote-left'></i><p>".$registro3[2]."</p></i>
<img class='photos'src=../../FotosAnun/".htmlspecialchars($registro2[5]).">
</div>

<div class=contatos id='contatos'>
<style>
    .contatos {
      display: none;

    
    }
</style>
<div class='imgcontatos'>
<img src='../BancoImagens/contatos.png'>
</div>
<div class='redes-sociais'>
  <div class='barra'><i class='fab fa-whatsapp'></i><p>".$registro3[3]."</p></div>
  <div class='barra'><i class='fab fa-linkedin'></i><p>".$registro3[4]."</p></div>
  <div class='barra'><i class='fab fa-instagram'></i><p>".$registro3[5]."</p></div>
  <div class='barra'><i class='fab fa-x'></i><p>".$registro3[6]."</p></div>
</div>


</div>
</div>
</div>
</div>
;"







    
?>


<!--Rodapé-->
<!--"col-sm-12 col-md-6" ->Bootstrap-->
  <footer class="site-footer">
      <div class="container">
        <div class="row">
          <br>
        <hr>
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-sm-6 col-xs-12">
            <p class="copyright-text"><img src="../BancoImagens/logow2.png"> &copy; 2023 Todos os direitos reservados por <a href="#">Tucas Enterprise</a> 
            </p>
          </div>

          <div class="col-md-4 col-sm-6 col-xs-12">
            <ul class="social-icons">
              <li><a class="facebook" href="#"><img src="..//BancoImagens/logoface.png"></a></li>
              <li><a class="discord"><img src="..//BancoImagens/logodisc.png"></a></li>
              <li><a class="instagram" href="https://www.instagram.com/tucas_enterprise/"  target="_blank"><img src="..//BancoImagens/logoinsta.png"></a></li> 
            </ul>
          </div>
        </div>
      </div>
      
</footer>

</body>
</html>