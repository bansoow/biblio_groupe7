<?php
require 'config.php';
if (isset($_GET['isbn'])) {
    $biblio = $bdd->query("SELECT * FROM livre WHERE isbn =".$_GET['isbn']);
    $biblio->setFetchMode(PDO::FETCH_ASSOC);
}
