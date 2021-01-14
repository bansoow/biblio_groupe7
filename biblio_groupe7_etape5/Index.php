<?php
$page_title = "Library 404";
require "header.php";
require "config.php";
$biblio = $bdd->query('SELECT * FROM livre JOIN auteur ON auteur.idPersonne=livre.auteur
                                           JOIN personne ON personne.id=auteur.idPersonne
                                           JOIN editeur ON editeur.id=livre.editeur');
$biblio->setFetchmode(PDO::FETCH_ASSOC);
?>
<link rel="stylesheet" href="/biblio_groupe7_etape4/css/style.css">
<body>
  <img class="livre3" src="image/livre-3.jpg" alt="livre 3" >
  <p class="texte1">Notre séléction</p>

<div class="container">
  <?php foreach ($biblio as $row){
    $couverture = "image/couverture/". $row['isbn'].".jpg";
    ?>
    <div class="position">
       <a href="livre.php?isbn=<?php echo $row['isbn'];?>"><img class="img" src="<?php echo $couverture ?>"></a>
       <h3><?php echo $row['titre'];?></h3>
      <p><strong>De:</strong> <?php echo $row['nom']." ".$row['prenom'];?><br>
     <strong>Edition:</strong> <?php echo $row['libelle'];?>, <?php echo $row['annee'];?><br>
   <strong>ISBN:</strong> <?php echo $row['isbn'];?></p>
   </div>
      <?php } ?>
 </div>
  </body>
    <?php
    require "footer.php";
    ?>
</html>
