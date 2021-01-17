-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 17 jan. 2021 à 15:29
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `biblio_groupe7`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

DROP TABLE IF EXISTS `auteur`;
CREATE TABLE IF NOT EXISTS `auteur` (
  `idPersonne` int(11) NOT NULL,
  `idLivre` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`idPersonne`, `idLivre`) VALUES
(1, '9782843449260'),
(2, '9782843449253'),
(3, '9782843449246'),
(4, '9782370490476'),
(5, '9782370490506'),
(6, '97822090172841'),
(7, '9782361833619'),
(8, '9782277124276'),
(9, '9791035801823'),
(10, '978-2290227268');

-- --------------------------------------------------------

--
-- Structure de la table `editeur`
--

DROP TABLE IF EXISTS `editeur`;
CREATE TABLE IF NOT EXISTS `editeur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `editeur`
--

INSERT INTO `editeur` (`id`, `libelle`) VALUES
(1, 'LeBelial'),
(2, 'La Volte'),
(3, 'J\'ai Lu'),
(4, 'Pocket'),
(5, 'Moutons électrique'),
(6, 'Gallimard'),
(7, 'Folio Théâtre'),
(8, 'Philippe Picquier'),
(9, 'Guardian');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `libelle` (`libelle`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id`, `libelle`) VALUES
(1, 'Théâtre'),
(2, 'Roman'),
(3, 'Nouvelle'),
(5, 'Poésie');

-- --------------------------------------------------------

--
-- Structure de la table `langue`
--

DROP TABLE IF EXISTS `langue`;
CREATE TABLE IF NOT EXISTS `langue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `langue`
--

INSERT INTO `langue` (`id`, `libelle`) VALUES
(1, 'Anglais'),
(2, 'Français'),
(3, 'Japonais'),
(4, 'Espagnol'),
(5, 'Italien');

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

DROP TABLE IF EXISTS `livre`;
CREATE TABLE IF NOT EXISTS `livre` (
  `isbn` varchar(15) NOT NULL,
  `titre` varchar(500) NOT NULL,
  `editeur` int(11) NOT NULL,
  `annee` int(11) DEFAULT NULL,
  `genre` int(11) DEFAULT NULL,
  `langue` int(11) DEFAULT NULL,
  `nbpages` int(11) DEFAULT NULL,
  `auteur` int(11) NOT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`isbn`, `titre`, `editeur`, `annee`, `genre`, `langue`, `nbpages`, `auteur`) VALUES
('9782843449246', '24 vues du Mont Fuji', 1, 2017, 2, 2, 136, 3),
('97822090172841', 'La Cinquième Saison', 3, 2019, 2, 2, 480, 6),
('9782277124276', 'Des fleurs pour Algernon', 3, 2012, 2, 2, 252, 8),
('9791035801823', 'Fahrenheit 451 ', 6, 2018, 2, 2, 256, 9),
('9782370490476', 'Le Cinquième Principe', 2, 2017, 2, 2, 564, 4),
('9782843449260', 'Le Crépuscule des dieux', 4, 2019, 2, 2, 480, 1),
('9782843449253', 'Le Sultan des nuages', 1, 2017, 2, 2, 120, 2),
('9782290227268', 'Les Robots', 3, 2020, 2, 2, 285, 10),
('9782370490506', 'On est bien seul dans l\'univers', 2, 2017, 2, 2, 508, 5),
('9782361833619', 'Pierre Fendre', 5, 2017, 2, 2, 270, 7);

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

DROP TABLE IF EXISTS `personne`;
CREATE TABLE IF NOT EXISTS `personne` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(150) NOT NULL,
  `prenom` varchar(150) DEFAULT NULL,
  `ddn` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id`, `nom`, `prenom`, `ddn`) VALUES
(1, 'Stéphane', 'Przybylski', '1970'),
(2, 'Geoffrey A', 'Landis', '28 mai 1955'),
(3, 'Roger', 'Zelazny', '13 mai 1937'),
(4, 'Vittorio', 'Catani', '17 juillet 1940'),
(5, 'Philippe', 'Curval', '27 décembre 1929'),
(6, 'NK', 'Jemisin', '19 septembre 1972'),
(7, 'Brice', 'Tarvel', '5 août 1946'),
(8, 'Daniel', 'Keyes', '9 août 1927'),
(9, 'Ray', 'Bradbury', '22 août 1920'),
(10, 'Isaac', 'Asimov', '2 janvier 1920');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id`, `libelle`) VALUES
(1, 'Ecrivain'),
(2, 'Illustrateur'),
(3, 'Traducteur'),
(4, 'Préface');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
