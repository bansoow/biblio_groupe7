<?php
require "header.php";
require "config.php";
$biblio = $bdd->query('SELECT * FROM livre JOIN auteur ON auteur.idPersonne=livre.auteur
                                           JOIN personne ON personne.id=auteur.idPersonne');
$biblio->setFetchmode(PDO::FETCH_ASSOC);
?>
<link rel="stylesheet" href="<?php echo $CONFIG['root_path']; ?>css/ecrivains.css">
<body>
  <h1 class="titre">Nos écrivains<h1>
    <?php foreach ($biblio as $row){
      $couverture = "image/ecrivains/". $row['idPersonne'].".jpg";
      ?>
      <div class="container">
      <a href="livre.php?isbn=<?php echo $row['isbn'];?>"><img class="img1" src="<?php echo $couverture ?>"></a>
      <div class="texte">
      <p><?php echo $row['nom']." ".$row['prenom'];?></p>
      <div class=texte2>
      <p>Née le : <?php echo $row['ddn'];?></p>
      </div>
      </div>
      </div>
    <?php }?>
</body>
<?php
require "footer.php";
 ?>
 </html>
