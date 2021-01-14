<?php
$page_title = "Library 404";
require "header.php";
require "livre_config.php";

?>

<link rel="stylesheet" href="\biblio_groupe7_etape4\css\style_isbn">
  <body>
    <?php foreach ($biblio as $row){
      $couverture = "image/couverture/". $row['isbn'].".jpg";
      ?>
  <div class="img">
    <div class="position">
    <img class="img1" src="<?php echo $couverture ?>">
    </div>
    <div class="texte">
      <p><em><?php echo $row['titre'];?></em>, <?php echo $row['nom']." ".$row['prenom'];?></p>
      <p>Isbn : <?php echo $row['isbn'];?></p>
      <p>Editeur : <?php echo $row['editeurs'];?></p>
      <p>Année de sortie : <?php echo $row['annee'];?></p>
      <p>Genre : <?php echo $row['genres'];?></p>
      <p>Nombre de pages : <?php echo $row['nbpages'];?></p>
    </div>
  </div>
<?php } ?>
  </body>
<?php
require "footer.php";
?>
</html>
