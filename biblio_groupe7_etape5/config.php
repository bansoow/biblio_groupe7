<?php
try{
  $bdd = new PDO('mysql:host=localhost;dbname=biblio_groupe7;charset=UTF8','root', '');
  $bdd->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
}
  catch (PDOException $e){
    echo "Erreur: " .$e->getMessage()."<br/>";
    die();
  }
?>
