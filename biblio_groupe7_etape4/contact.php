<?php
$page_title = "Library 404";
require "header.php";
?>
<link rel="stylesheet" href="<?php echo $CONFIG['root_path']; ?>css\contactstyle.css">
  <body>
    <form method="post" action="receive.php">
    <h1><strong>Contact</strong></h1><br>
    <h2>Vous voulez nous Contacter ? remplissez ce formulaire et envoyer votremessage juste en dessous !</h2><br>
  <div class="all">

    <label  for="name">Nom :</label>
          <input type="text" id="name" name="client_name" autofocus required><br><br>
    <label  for="nickname">Prénom :</label>
          <input type="text" id="nickname" name="client_nickname" autofocus required><br><br>
          <label  for="mail">Mail :</label>
                <input type="email" id="mail" name="client_mail" autofocus required><br><br>
      <label for="message">Message :</label><br>
            <textarea id="message" name="message" autofocus required></textarea><br><br>
        <button type="submit">S'inscrire</button><br><br>

    </div>
      </form>
  </body>
  <?php
  require "footer.php";
  ?>
