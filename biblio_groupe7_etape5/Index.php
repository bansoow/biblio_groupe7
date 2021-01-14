<?php
$page_title = "Library 404";
require "header.php";
require "config.php";
$biblio = $bdd->query('SELECT * FROM livre');
$biblio->setFetchmode(PDO::FETCH_ASSOC);
$bdd->query('SELECT * FROM livre INNER JOIN auteur ON livre.auteur = auteur.idPersonne;');
$bdd->query('SELECT * FROM livre INNER JOIN editeur ON livre.editeur = editeur.id;');
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
      <p><strong>De:</strong> <?php echo $row['auteur'];?><br>
     <strong>Edition:</strong> <?php echo $row['editeur'];?>,<?php echo $row['annee'];?><br>
   <strong>ISBN:</strong> <?php echo $row['isbn'];?></p>
   </div>
      <?php } ?>
 </div>
  </body>
    <?php
    require "footer.php";
    ?>
</html>
