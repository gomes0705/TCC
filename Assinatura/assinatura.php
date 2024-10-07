<?php  
session_start();
include "../Conexao/conexao.php";

$seguranca = isset( $_SESSION['id_usuario'] ) ? TRUE : header('Location: ../../PaginaInicial/html/pinicial.html');


  if ($seguranca){ 
  $codusuario = $_SESSION['id_usuario'];
  $codigo = mysqli_query($con,"select * from tb_usuario where id_usuario=$codusuario");
  $infobd = 0;
  while ($userinfo = mysqli_fetch_array($codigo)){
    $infobd++;
    if ($infobd>4)
    { 
     $infobd=1;
    }


echo "$userinfo[2]";

/*   
*/}}
 ?>



<!DOCTYPE html>
<html>
<head>
	<title>Assinatura</title>
</head>
<body>
<form action="enviar_assinatura.php" method="POST">
<h2>Você quer assinar nossa assinatura?</h2>
<p>Com ela você:</p>
<li>- Destaque no seu perfil, facilitando sua participação no bico desejado</li>
<li>- Como empresa, seus posts aparecem com mais frequência aos usuários</li>
<p>Interessado? Clique abaixo para assinar!</p>
<input type="submit" value="Assinar">
</form>
</body>
</html>


<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="../Css/anuncio.css">
  <link rel="icon" type="image/png" href="../BancoImagens/logow4.png"/>
  <script type="text/javascript" src="../java/javainicio.js"></script>
  <script type="text/javascript" src="../java/popup.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> 
    <link
    href="https://cdn.jsdelivr.net/npm/remixicon@3.2.0/fonts/remixicon.css"
    rel="stylesheet"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">

  <title>Página Inicial</title>
