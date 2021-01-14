<?php
require 'config.php';
if (isset($_GET['isbn'])) {
    $biblio = $bdd->query("SELECT *, editeur.libelle AS editeurs, genre.libelle AS genres FROM livre JOIN auteur ON auteur.idPersonne=livre.auteur
                                               JOIN personne ON personne.id=auteur.idPersonne
                                               JOIN editeur ON editeur.id=livre.editeur
                                               JOIN genre ON genre.id=livre.genre
                                               WHERE isbn =".$_GET['isbn'] );
    $biblio->setFetchMode(PDO::FETCH_ASSOC);
}
