
<?php
  if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['client_name'];
    $nickname = $_POST['client_nickname'];
    $mail = $_POST['client_mail'];

    if(empty($name)){
      echo"Vous n'avez pas renseignez votre nom.";
    }else{
      echo "<h1>Merci, $name $nickname nous vous repondrons le plus tôt possible !<h1>";
    }
  }
 ?>
