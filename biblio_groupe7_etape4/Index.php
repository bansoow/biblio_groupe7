<?php
$page_title = "Library 404";
require "header.php";
<<<<<<< HEAD
require "config.php";
$biblio = $bdd->query('SELECT * FROM livre');
$biblio->setFetchmode(PDO::FETCH_ASSOC);
$bdd->query('SELECT * FROM livre JOIN auteur ON livre.auteur = auteur.idPersonne;');
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
       <a href="978-2843449246.php"><img class="img" src="<?php echo $couverture ?>"></a>
       <h3><?php echo $row['titre'];?></h3>
      <p><strong>De:</strong> <?php echo $row['auteur'];?><br>
     <strong>Edition:</strong> <?php echo $row['editeur'];?>,<?php echo $row['annee'];?><br>
   <strong>ISBN:</strong> <?php echo $row['isbn'];?></p>
   </div>
      <?php } ?>
 </div> 
=======
?>
<link rel="stylesheet" href="/biblio_groupe7_etape3/css/style.css">
<body>
  <img class="livre3" src="image/livre-3.jpg" alt="livre 3" >
  <p class="texte1">Notre séléction</p>
<div class="container">
     <div class="textcenter">
       <div class="img">
       <a href="978-2843449246.php"><img src="image/couverture/24-Vues-du-Mont-Fuji.jpg" title="24 Vues du Mont Fuji"></a>
       <h3 class="titre">24 Vues du Mont Fuji</h3>
      <p><strong>De:</strong> Roger Zelazny <br>
     <strong>Edition:</strong> J'ai lu, <time datetime="2017-08-31">31 Août 2017</time><br>
   <strong>ISBN:</strong> 978-2843449246</p>
     </div>
     <div class="img">
       <a href="978-22090172841.php"><img src="image/couverture/cinquieme-saison.jpg" title="La Cinquieme saison"></a>
       <h3 class="titre">La Cinquième saison</h3>
         <p><strong>De:</strong> NK Jemisin<br>
         <strong>Edition:</strong> J'ai lu, <time datetime="2019-08-28">28 Août 2019</time><br>
         <strong>ISBN:</strong> 978-22090172841</p>
       </div>
       <div class="img">
         <a href="978-2277124276.php"><img src="image/couverture/des-fleurs-pour-algernon.jpg" title="Des fleurs pour Algernon"></a>
         <h3 class="titre">Des fleurs pour Algernon</h3>
           <p><strong>De:</strong> Daniel Keyes<br>
           <strong>Edition:</strong> J'ai lu, <time datetime="2012-08-25">25 Août 2012</time><br>
           <strong>ISBN:</strong> 978-2277124276</p>

         </div>
         <div class="img">
          <a href="979-1035801823.php"><img src="image/couverture/fahrenheit-451.jpg" title="Fahrenheit 451"></a>
           <h3 class="titre">Fahrenheit 451</h3>
            <p><strong>De:</strong> ray bradbury<br>
             <strong>Edition:</strong> Gallimard, <time datetime="2018-08-22">22 Août 2018</time><br>
             <strong>ISBN:</strong> 979-1035801823</p>
           </div>
           <div class="img">
             <a href="978-2370490476.php"><img src="image/couverture/Le-Cinquieme-Principe.jpg" title="Le Cinquième Principe"></a>
             <h3 class="titre">Le Cinquième Principe</h3>
               <p><strong>De:</strong> Vittorio Catani<br>
               <strong>Edition:</strong> La Volte, <time datetime="2017-09-21">21 Septembre 2017</time><br>
               <strong>ISBN:</strong> 978-2370490476</p>
             </div>
           </div>

      <br>
      <br>

           <div class="textcenter">
             <div class="img">
             <a href="978-2-84344-926-0.php"><img src="image/couverture/Le-Crepuscule-des-Dieux.jpg" title="Le Crépuscule des Dieux"></a>
             <h3 class="titre">Le Crépuscule des Dieux </h3>
             <p><strong>De:</strong> Stéphane Przybylski<br>
           <strong>Edition:</strong> Pocket, <time datetime="2019-01-10">10 Janvier 2019</time><br>
         <strong>ISBN:</strong> 978-2-84344-926-0</p>
           </div>
           <div class="img">
             <a href="978-2-84344-925-3.php"><img src="image/couverture/Le-Sultan-des-Nuages.jpg" title="Le Sultan des Nuages"></a>
             <h3 class="titre">Le Sultan des Nuages</h3>
               <p><strong>De:</strong> Geoffrey A. Landis<br>
               <strong>Edition:</strong> Le Bilial, <time datetime="2017-08-31">31 Août 2017</time><br>
               <strong>ISBN:</strong> 978-2-84344-925-3</p>
             </div>
             <div class="img">
               <a href="978-2290227268.php"><img src="image/couverture/les-robots.jpg" title="Les Robots"></a>
               <h3 class="titre">Les Robots</h3>
              <p><strong>De:</strong> Isaac Asimov<br>
                 <strong>Edition:</strong> J'ai lu, <time datetime="2020-01-08">8 Janvier 2020</time><br>
                 <strong>ISBN:</strong> 978-2290227268</p>
               </div>
               <div class="img">
                 <a href="978-2370490506.php"><img src="image/couverture/On-est-bien-seul-dans-l'univers.jpg" title="On est bien seul dans l'univers"></a>
                 <h3 class="titre">On est bien seul dans l'univers</h3>
                  <p> <strong>De:</strong> Philippe Curval<br>
                   <strong>Edition:</strong> La Volte, <time datetime="2017-09-21">21 Septembre 2017</time><br>
                   <strong>ISBN:</strong> 978-2370490506</p>
                 </div>
                 <div class="img">
                   <a href="978-2361833619.php"><img src="image/couverture/pierre-fendre.jpg" title="Pierre Fendre"></a>
                   <h3 class="titre">Pierre fendre</h3>
                     <p><strong>De:</strong> Brice Tarvel<br>
                     <strong>Edition:</strong> Moutons électriques, <time datetime="2017-08-24">24 Août 2017</time><br>
                     <strong>ISBN:</strong> 978-2370490476</p>
                   </div>
                 </div>
               </div>
>>>>>>> maxime
  </body>
    <?php
    require "footer.php";
    ?>
</html>
