-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 17 jan. 2021 à 15:32
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
-- Base de données : `bibliotheque`
--
CREATE DATABASE IF NOT EXISTS `bibliotheque` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bibliotheque`;

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

DROP TABLE IF EXISTS `auteur`;
CREATE TABLE IF NOT EXISTS `auteur` (
  `idPersonne` int(11) NOT NULL,
  `idLivre` varchar(15) NOT NULL,
  `idRole` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`idPersonne`, `idLivre`, `idRole`) VALUES
(1, '2264069112', 1),
(3, '2264069112', 2),
(4, '2264069112', 3),
(1, '2264069112', 1),
(1, '2264069112', 1),
(6, '203585573X', 1),
(5, '208127857X', 1),
(5, '2253163503', 1),
(6, '2253041475', 1),
(8, '2253160466', 1),
(8, '2253038741', 1),
(18, '9782843449260', 1),
(2, '2035867916', 1),
(9, '2070373096', 1),
(10, '2081219972', 1),
(11, '2266152182', 1),
(12, '2266152182', 3),
(13, '2809710562', 1),
(14, '2809710562', 3),
(15, '2809710562', 3),
(16, '2266203533', 4),
(17, '096573840X', 1);

-- --------------------------------------------------------

--
-- Structure de la table `editeur`
--

DROP TABLE IF EXISTS `editeur`;
CREATE TABLE IF NOT EXISTS `editeur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `editeur`
--

INSERT INTO `editeur` (`id`, `libelle`) VALUES
(1, 'Belfond'),
(2, 'Flammarion'),
(3, 'Librio'),
(4, 'Pocket'),
(5, 'Larousse'),
(6, 'Le livre de poche'),
(7, 'Folio Théâtre'),
(8, 'Philippe Picquier'),
(9, 'Guardian'),
(10, 'Pocket');

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
(4, 'Espagnol');

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
  PRIMARY KEY (`isbn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`isbn`, `titre`, `editeur`, `annee`, `genre`, `langue`, `nbpages`) VALUES
('2264056002', 'La ballade de l\'impossible', 1, 2002, 2, 2, 456),
('2264056169', 'Kafka sur le rivage', 1, 2002, 2, 2, 648),
('2264069112', 'L\'étrange bibliothèque', 1, 2015, 3, 2, 80),
('2266152181', 'Le Cid', 2, 1637, 1, 2, 208),
('203585573X', 'Ruy Blas', 2, 1838, 1, 2, 270),
('208127857X', 'Un fil à la patte', 7, 1894, 1, 2, 208),
('2253163503', 'Le Dindon', 6, 1989, 1, 2, 107),
('2253041475', 'Hernani', 6, 1830, 1, 2, NULL),
('2253160466', 'Les précieuses ridicules', 6, 1660, 1, 2, NULL),
('2253038741', 'Les femmes savantes', 6, 1672, 1, 2, NULL),
('9782843449260', 'Le Crépuscule des dieux', 10, 2019, 2, 2, 480),
('2035867916', 'L\'illusion comique', 6, 1639, 1, 2, NULL),
('2070373096', 'Les Paravents', 7, 1961, 1, 2, NULL),
('2081219972', 'Le Comédien désincarné', 2, 2009, 2, 2, 390),
('2266152182', 'L\'art de la guerre', 2, 1963, 4, 2, NULL),
('2809710562', 'La tombe des lucioles', 8, 1967, 2, 2, 143),
('2266203533', 'Les Contemplations', 4, 1856, 5, 2, 672),
('2253040156', 'Poètes français des XIXe et XXe sciècles', 6, 2009, 5, 2, NULL),
('096573840X', 'A short history of Nearly Everything', 9, 2003, 4, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

DROP TABLE IF EXISTS `personne`;
CREATE TABLE IF NOT EXISTS `personne` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(150) NOT NULL,
  `prenom` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id`, `nom`, `prenom`) VALUES
(1, 'Murakami', 'Haruki'),
(2, 'Corneille', 'Pierre'),
(3, 'Menschik', 'Kat'),
(4, 'Morita', 'Helene'),
(5, 'Feydeau', 'Georges'),
(6, 'Hugo', 'Victor'),
(7, 'Chedeville', 'Elise'),
(8, 'Molière', NULL),
(9, 'Genet', 'Jean'),
(10, 'Jouvet', 'Louis'),
(11, 'Tzu', 'Sun'),
(12, 'Amiot', 'Joseph-Marie'),
(13, 'Nosaka', 'Akiyuki'),
(14, 'De Vos', 'Patrick'),
(15, 'Gossot', 'Anne'),
(16, 'Chamarat-Malandain', 'Gabrielle'),
(17, 'Bryson', 'Bill'),
(18, 'Stéphane', 'Przybylski');

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
--
-- Base de données : `biblio_groupe7`
--
CREATE DATABASE IF NOT EXISTS `biblio_groupe7` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `biblio_groupe7`;

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
--
-- Base de données : `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `auteur` int(11) NOT NULL,
  `date` date NOT NULL,
  `contenu` text NOT NULL,
  `nbCommentaires` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `titre`, `auteur`, `date`, `contenu`, `nbCommentaires`) VALUES
(1, 'Edito du 14/01/2019', 1, '2019-01-14', 'Vous ne l’avez sans doute pas remarqué, mais la semaine dernière j’ai fait un webencéphalocardiogramme plat.', 3),
(2, 'Les liens de la semaine 3', 1, '2019-01-18', '\r\n\r\nJe poste pas mal de liens sur Twitter / Facebook depuis des années, et je trouve dommage que tout cela ne vous profite pas si vous ne me suivez pas sur les médias sociaux.\r\n\r\nAlors pour remédier à cela, je vais publier ces liens régulièrement ici. Disons en fin de semaine ? Je vais essayer d’automatiser ça avec IFTTT. Et évidemment, la plupart des liens seront en anglais. Ne m’en voulez pas, c’est comme ça ;-).\r\n\r\nComme chaque expérimentation, on verra bien si je tiens sur la durée. (D’où l’intérêt d’automatiser ça)\r\n\r\n    Disagree and Commit: The Importance of disagreement in decision making\r\n    South Korea Had Advanced Weapons Servers Hacked\r\n    Product Hunt: Is it worth the hype?\r\n    Tu mourras moins bête: Vendredi Psycho-Gamerie\r\n    Find Your Calling [Comic]\r\n    ???? Hey les copains, copines ! @YesWeHack recrute à fond en 2019 alors n’hésitez pas à postuler à nos offres d’emploi d’Admin sys, Assistant(e) de direction, Dev, R&D et Devops. Vos RT seront grandement appréciés ! #job #emploi #devops\r\n    charlax/professional-programming: A collection of full-stack resources for programmers.\r\n    Dark Souls III – The Movie – YouTube\r\n    C’est old mais beau\r\n    hmm…. ? « Les chefs d’entreprise US s’inquièteraient plus de la cybersécurité que d’une possible récession, à l’inverse de leurs homologues européens »\r\n    La fin des pranks dangereux sur Youtube ? Enfin…\r\n    Quelques nouvelles astuces à exploiter sur Firefox\r\n    Interview passionnante du fonctionnaire de police d’Alexandre Langlois \r\n\r\n', 10),
(4, 'Pour faire des économies d’eau…', 1, '2019-01-18', 'Grâce à la magie de la sérendipité, je suis tombé sur cette vidéo du Youtubeur Barnabé qui est spécialisé en tutos bricolage sur sa chaine. Et dans cette vidéo qui a retenu mon attention, il explique comment avec une pièce de 2 centimes, il réduit le débit d’eau de sa douche.', 6),
(5, 'mStream – Un serveur de streaming léger et puissant pour écouter votre musique depuis n’importe où', 1, '2019-01-18', 'Si vous voulez vous monter votre petit serveur de streaming musical à la maison, afin de pouvoir écouter votre musique de n’importe où, vous connaissez sans doute déjà :', 20),
(6, 'Comment bloquer la mise à jour des drivers sous Windows 10 ?', 1, '2019-01-18', 'Windows 10 est super, notamment en ce qui concerne la gestion de ses mises à jour. Et en plus des correctifs traditionnels, celui-ci met également à jour les pilotes pour votre matériel.', 3),
(7, 'Méditez avec votre Mac', 1, '2019-01-17', 'Si vous êtes un adepte des bienfaits de la méditation et que vous souhaitez continuer à « Enlarge Your Telomere » même quand vous bossez, c’est le moment d’installer Mind Dot.', 33),
(8, 'Un déchiffreur pour le ransomware PyLocky', 1, '2019-01-17', 'Ils sont un peu moins visibles dans les médias en ce moment, mais les ransomwares ont toujours le vent en poupe.', 12),
(9, 'GameHub – Un soft sous Linux pour unifier votre bibliothèque de jeux', 1, '2019-01-16', 'Si vous êtes sous Linux et que vous aimez jouer, voici GameHub, une application permettant de centraliser dans une bibliothèque tous vos jeux en provenance de Steam, GoG, Humble Bundle, Humble Trove ainsi que les jeux installés de manière indépendante en local.', 29),
(10, 'Le danger des contrôleurs RF dans les applications industrielles', 1, '2019-01-16', 'Quand on pense « sécurité + systèmes industriels » d’un point de vue grand public, le premier truc qui vient à l’esprit est en général SCADA en place dans les usines, et qu’on peut parfois croiser au détour d’un Shodan ou autre. ', 17);

-- --------------------------------------------------------

--
-- Structure de la table `articlecategorie`
--

DROP TABLE IF EXISTS `articlecategorie`;
CREATE TABLE IF NOT EXISTS `articlecategorie` (
  `idArticle` int(11) NOT NULL,
  `idCategorie` int(11) NOT NULL,
  PRIMARY KEY (`idArticle`,`idCategorie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `articlecategorie`
--

INSERT INTO `articlecategorie` (`idArticle`, `idCategorie`) VALUES
(1, 2),
(2, 47),
(5, 34),
(5, 36),
(5, 38),
(5, 52),
(6, 25),
(6, 52),
(7, 36),
(8, 44),
(9, 30),
(9, 34),
(10, 44);

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

DROP TABLE IF EXISTS `auteur`;
CREATE TABLE IF NOT EXISTS `auteur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(255) NOT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`id`, `pseudo`, `prenom`, `nom`) VALUES
(1, 'Korben', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `libelle`) VALUES
(2, 'Edito'),
(3, 'Société'),
(4, 'Administration Système Réseau'),
(5, 'Aéronautique'),
(6, 'Android'),
(7, 'Automobile'),
(8, 'BlockChain'),
(9, 'Concours'),
(10, 'Copuright'),
(11, 'Culture internet'),
(12, 'Décentralisation'),
(13, 'Design'),
(14, 'Dessin'),
(15, 'Développement'),
(16, 'DIY'),
(17, 'Domotique'),
(18, 'Download'),
(19, 'Droke'),
(20, 'Ebook'),
(21, 'Email'),
(22, 'Espace'),
(23, 'FAI'),
(24, 'Film'),
(25, 'Hardware'),
(26, 'Impression 3D'),
(27, 'Infographie'),
(28, 'Intelligence Artificielle'),
(29, 'iOS'),
(30, 'Jeux vidéo'),
(31, 'Korben'),
(32, 'Liberté'),
(33, 'Libre'),
(34, 'Linux'),
(35, 'Littérature'),
(36, 'MacOS'),
(37, 'Mobile'),
(38, 'Musique'),
(39, 'Navigateurs'),
(40, 'Objet Connecté'),
(41, 'Raspberry'),
(42, 'Robotique'),
(43, 'Science'),
(44, 'Sécurité'),
(45, 'Série'),
(46, 'Service web'),
(47, 'Société'),
(48, 'Survivalisme'),
(49, 'TV'),
(50, 'Vidéo'),
(51, 'Voyage'),
(52, 'Windows');
--
-- Base de données : `film_db`
--
CREATE DATABASE IF NOT EXISTS `film_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `film_db`;

-- --------------------------------------------------------

--
-- Structure de la table `artiste`
--

DROP TABLE IF EXISTS `artiste`;
CREATE TABLE IF NOT EXISTS `artiste` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) COLLATE utf8_bin NOT NULL,
  `prenom` varchar(30) COLLATE utf8_bin NOT NULL,
  `annee_naissance` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nom` (`nom`,`prenom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `artiste`
--

INSERT INTO `artiste` (`id`, `nom`, `prenom`, `annee_naissance`) VALUES
(1, 'Coppola', 'Sofia', 1971),
(2, 'Dunst', 'Kirsten', NULL),
(3, 'Hitchcock', 'Alfred', 1899),
(4, 'Scott', 'Ridley', 1937),
(5, 'Weaver', 'Sigourney', 1949),
(6, 'Cameron', 'James', 1954),
(9, 'Tarkovski', 'Andrei', 1932),
(10, 'Woo', 'John', 1946),
(11, 'Travolta', 'John', 1954),
(12, 'Cage', 'Nicolas', 1964),
(13, 'Burton', 'Tim', 1958),
(14, 'Depp', 'Johnny', 1964),
(15, 'Stewart', 'James', 1908),
(16, 'Novak', 'Kim', 1925),
(17, 'Mendes', 'Sam', 1965),
(18, 'Spacey', 'Kevin', 1959),
(19, 'Bening', 'Anette', 1958),
(20, 'Eastwood', 'Clint', 1930),
(21, 'Hackman', 'Gene', 1930),
(22, 'Freeman', 'Morgan', 1937),
(23, 'Crowe', 'Russell', 1964),
(24, 'Ford', 'Harrison', 1942),
(25, 'Hauer', 'Rutger', 1944),
(26, 'McTierman', 'John', 1951),
(27, 'Willis', 'Bruce', 1955),
(28, 'Harlin', 'Renny', 1959),
(29, 'Pialat', 'Maurice', 1925),
(30, 'Dutronc', 'Jacques', 1943),
(31, 'Fincher', 'David', 1962),
(32, 'Pitt', 'Brad', 1963),
(33, 'Gilliam', 'Terry', 1940),
(34, 'Annaud', 'Jean-Jacques', 1943),
(35, 'Connery', 'Sean', 1930),
(36, 'Slater', 'Christian', 1969),
(37, 'Tarantino', 'Quentin', 1963),
(38, 'Jackson', 'Samuel L.', 1948),
(39, 'Arquette', 'Rosanna', 1959),
(40, 'Thurman', 'Uma', 1970),
(41, 'Farrelly', 'Bobby', 1958),
(42, 'Diaz', 'Cameron', 1972),
(43, 'Dillon', 'Mat', 1964),
(44, 'Schwartzenegger', 'Arnold', 1947),
(45, 'Spielberg', 'Steven', 1946),
(46, 'Scheider', 'Roy', 1932),
(47, 'Shaw', 'Robert', 1927),
(48, 'Dreyfus', 'Richard', 1947),
(49, 'Demme', 'Jonathan', 1944),
(50, 'Hopkins', 'Anthony', 1937),
(51, 'Foster', 'Jodie', 1962),
(53, 'Kilmer', 'Val', 1959),
(54, 'Fiennes', 'Ralph', 1962),
(55, 'Pfeiffer', 'Michelle', 1957),
(56, 'Bullock', 'Sandra', 1964),
(57, 'Goldblum', 'Jeff', 1952),
(58, 'Emmerich', 'Roland', 1955),
(59, 'Broderick', 'Matthew', 1962),
(60, 'Reno', 'Jean', 1948),
(61, 'Wachowski', 'Andy', 1967),
(62, 'Reeves', 'Keanu', 1964),
(63, 'Fishburne', 'Laurence', 1961),
(64, 'De Palma', 'Brian', 1940),
(65, 'Cruise', 'Tom', 1962),
(66, 'Voight', 'John', 1938),
(67, 'Bart', 'Emmanuelle', 1965),
(68, 'Kurozawa', 'Akira', 1910),
(69, 'Harris', 'Ed', 1950),
(70, 'Linney', 'Laura', 1964),
(71, 'Girault', 'Jean', 1924),
(72, 'De Funs', 'Louis', 1914),
(73, 'Galabru', 'Michel', 1922),
(75, 'Balasko', 'Josiane', 1950),
(76, 'Lavanant', 'Dominique', 1944),
(77, 'Lanvin', 'Grard', 1950),
(78, 'Villeret', 'Jacques', 1951),
(79, 'Levinson', 'Barry', 1942),
(80, 'Hoffman', 'Dustin', 1937),
(81, 'Scott', 'Tony', 1944),
(82, 'McGillis', 'Kelly', 1957),
(83, 'Leconte', 'Patrice', 1947),
(84, 'Blanc', 'Michel', 1952),
(85, 'Clavier', 'Christian', 1952),
(86, 'Lhermite', 'Thierry', 1952),
(88, 'Perkins', 'Anthony', 1932),
(89, 'Miles', 'Vera', 1929),
(90, 'Leigh', 'Janet', 1927),
(91, 'Marquand', 'Richard', 1938),
(92, 'Hamill', 'Mark', 1951),
(93, 'Fisher', 'Carrie', 1956),
(94, 'Taylor', 'Rod', 1930),
(95, 'Hedren', 'Tippi', 1931),
(96, 'Ricci', 'Christina', 1980),
(97, 'Walken', 'Christopher', 1943),
(98, 'Keitel', 'Harvey', 1939),
(99, 'Roth', 'Tim', 1961),
(100, 'Penn', 'Chris', 1966),
(101, 'Kubrick', 'Stanley', 1928),
(102, 'Kidman', 'Nicole', 1967),
(103, 'Nicholson', 'Jack', 1937),
(104, 'Kelly', 'Grace', 1929),
(105, 'Grant', 'Cary', 1904),
(106, 'Saint', 'Eva Marie', 1924),
(107, 'Mason', 'James', 1909),
(109, 'Winslet', 'Kate', 1975),
(110, 'DiCaprio', 'Leonardo', 1974),
(111, 'Besson', 'Luc', 1959),
(112, 'Jovovich', 'Milla', 1975),
(113, 'Dunaway', 'Fane', 1941),
(114, 'Malkovitch', 'John', 1953),
(115, 'Karyo', 'Tchky', 1953),
(116, 'Oldman', 'Gary', 1958),
(117, 'Holm', 'Ian', 1931),
(118, 'Portman', 'Natalie', 1981),
(119, 'Parillaud', 'Anne', 1960),
(120, 'Anglade', 'Jean-Hughes', 1955),
(121, 'Barr', 'Jean-Marc', 1960),
(122, 'Ferrara', 'Abel', 1951),
(123, 'Caruso', 'David', 1956),
(124, 'Snipes', 'Wesley', 1962),
(125, 'Sciora', 'Annabella', 1964),
(126, 'Rosselini', 'Isabella', 1952),
(127, 'Gallo', 'Vincent', 1961),
(128, 'von Trier', 'Lars', 1956),
(129, 'Gudmundsdottir', 'Bjork', 1965),
(130, 'Deneuve', 'Catherine', 1943),
(131, 'Kassowitz', 'Matthieu', 1967),
(132, 'Cassel', 'Vincent', 1966),
(133, 'Gray', 'James', 1969),
(134, 'Wahlberg', 'Mark', 1971),
(135, 'Phoenix', 'Joaquin', 1974),
(136, 'Theron', 'Charlize', 1975),
(137, 'Caan', 'James', 1940),
(138, 'Chabrol', 'Claude', 1930),
(139, 'Huppert', 'Isabelle', 1953),
(140, 'Mouglalis', 'Anna', 1978),
(141, 'Costner', 'Kevin', 1955),
(142, 'Dern', 'Laura', 1967),
(143, 'Hanks', 'Tom', 1956),
(144, 'Sizemore', 'Tom', 1964),
(145, 'Damon', 'Matt', 1970),
(146, 'Modine', 'Matthew', 1959),
(147, 'Baldwin', 'Adam', 1962),
(148, 'O\'Neal', 'Ryan', 1941),
(149, 'Berenson', 'Marisa', 1946),
(150, 'McDowell', 'Macolm', 1943),
(151, 'Dullea', 'Keir', 1936),
(152, 'Lockwood', 'Gary', 1937),
(153, 'Sellers', 'Peter', 1925),
(154, 'Scott', 'George', 1927),
(155, 'Hayden', 'Sterling', 1916),
(156, 'Douglas', 'Kirk', 1916),
(157, 'Donat', 'Robert', 1905),
(158, 'Caroll', 'Madeleine', 1906),
(159, 'Olivier', 'Laurence', 1907),
(160, 'Fontaine', 'Joan', 1917),
(161, 'Sanders', 'George', 1906),
(162, 'Bergman', 'Ingrid', 1915),
(163, 'Rains', 'Claude', 1889),
(164, 'Milland', 'Ray', 1907),
(166, 'Day', 'Doris', 1924),
(167, 'De Niro', 'Robert', 1943),
(168, 'Grier', 'Pam', 1949),
(169, 'Fonda', 'Bridget', 1964),
(170, 'Keaton', 'Michael', 1951),
(171, 'Shyamalan', 'M. Night', 1970),
(172, 'Osment', 'Haley Joel', 1988),
(173, 'Collette', 'Tony', 1972),
(174, 'Leighton', 'Eric', 1962),
(175, 'Mann', 'Michael', 1943),
(176, 'Pacino', 'Al', 1940),
(177, 'Crowe', 'Russel', 1964),
(178, 'Plummer', 'Christopher', 1927),
(179, 'Furlong', 'Edward', 1977),
(180, 'Redgrave', 'Vanessa', 1937),
(181, 'Coppola', 'Francis Ford', 1939),
(182, 'Brando', 'Marlon', 1924),
(183, 'Keaton', 'Diane', 1946),
(184, 'Duvall', 'Robert', 1931),
(185, 'Caan', 'Jamees', 1939),
(186, 'Garcia', 'Andy', 1956),
(187, 'Raimi', 'Sam', 1959),
(188, 'Maguire', 'Tobey', 1975),
(210, 'Moss', 'Carrie-Anne', 1967),
(211, 'Weaving', 'Hugo', 1960),
(212, 'Jackson', 'Samuel', 1948),
(213, 'Liu', 'Lucy', 1968),
(214, 'Carradine', 'David', 1936),
(215, 'Madsen', 'Michael', 1958),
(216, 'Hannah', 'Daryl', 1960),
(217, 'Buscemi', 'Steve', 1957),
(218, 'Bunker', 'Edward', 1933),
(219, 'Leone', 'Sergio', 1929),
(220, 'Van Cleef', 'Lee', NULL),
(221, 'Volonte', 'Gian Maria', NULL),
(224, 'Swank', 'Hillary', 1974);

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `id` int(11) NOT NULL,
  `titre` varchar(50) COLLATE utf8_bin NOT NULL,
  `annee` int(11) NOT NULL,
  `id_realisateur` int(11) DEFAULT NULL,
  `genre` varchar(30) COLLATE utf8_bin NOT NULL,
  `resume` text COLLATE utf8_bin,
  PRIMARY KEY (`id`),
  KEY `id_realisateur` (`id_realisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id`, `titre`, `annee`, `id_realisateur`, `genre`, `resume`) VALUES
(1, 'Vertigo', 1958, 3, 'Drame', 'Scottie Ferguson, ancien inspecteur de police, est sujet au vertige depuis qu\'il a vu mourir son\r\n collègue. Elster, son ami, le charge de surveiller sa femme, Madeleine, ayant des tendances\r\n suicidaires. Amoureux de la jeune femme Scottie ne remarque pas le piège qui se trame autour\r\n de lui et dont il va être la victime... '),
(2, 'Alien', 1979, 4, 'Science-fiction', 'Près d\'un vaisseau spatial échoué sur une lointaine planète, des Terriens en mission découvrent\r\n de bien étranges \"oeufs\". Ils en ramènent un à bord, ignorant qu\'ils viennent d\'introduire parmi\r\n eux un huitième passager particulièrement féroce et meurtrier. '),
(3, 'Titanic', 1997, 6, 'Drame', 'Conduite par Brock Lovett, une expédition américaine fouillant l\'épave du Titanic remonte à la\r\n surface le croquis d\'une femme nue. Alertée par les médias la dame en question, Rose DeWitt\r\n Bukater, aujourd\'hui centenaire, rejoint les lieux du naufrage, d\'où elle entreprend de conter le\r\n récit de son fascinant, étrange et tragique voyage... '),
(4, 'Sacrifice', 1986, 9, 'Drame', ''),
(5, 'Volte/Face', 1997, 10, 'Action', 'Directeur d\'une unité anti-terroriste, Sean Archer recherche Castor Troy, un criminel responsable de la\r\n mort de son fils six ans plus tôt. Il parvient à l\'arrêter mais apprend que Troy a caché une bombe au Palais\r\n des Congrès de Los Angeles. Seul le frère de Troy peut la désamorcer et, pour l\'approcher, Archer se fait\r\n greffer le visage de Troy. '),
(6, 'Sleepy Hollow', 1999, 13, 'Fantastique', 'Nouvelle Angleterre, 1799. A Sleepy Hollow, plusieurs cadavres sont retrouvés décapités. La\r\n                                      rumeur attribue ces meurtres à un cavalier lui-même sans tête. Mais le fin limier\r\n                                      new-yorkais Ichabod Crane ne croit pas en ses aberrations. Tombé sous le charme de la\r\n                                      vénéneuse Katrina, il mène son enquête au coeur des sortilèges de Sleepy Hollow.. '),
(7, 'American Beauty', 1999, 17, 'Comédie', 'Lester Burnham, sa femme Carolyn et leur fille Jane mènent apparemment une vie des plus\r\n heureuses dans leur belle banlieue. Mais derrière cette respectable façade se tisse une étrange\r\n et grinçante tragi-comédie familiale où désirs inavoués, frustrations et violences refoulées\r\n conduiront inexorablement un homme vers la mort. '),
(8, 'Impitoyable', 1992, 20, 'Western', 'Légendaire hors-la-loi, William Munny s\'est reconverti depuis onze ans en paisible fermier. Il\r\n reprend néanmoins les armes pour traquer deux tueurs en compagnie de son vieil ami Ned\r\n Logan. Mais ce dernier est capturé, puis éxécute. L\'honneur et l\'amitié imposent dès lors à\r\n Munny de redevenir une dernière fois le héros qu\'il fut jadis... '),
(9, 'Gladiator', 2000, 4, 'Drame', 'Le général romain Maximus est le plus fidèle\r\n                    soutien de l\'empereur Marc Aurèle, qu\'il a\r\n                    conduit de victoire en victoire avec une\r\n                    bravoure et un dévouement exemplaires.\r\n                    Jaloux du prestige de Maximus, et plus\r\n                    encore de l\'amour que lui voue l\'empereur,\r\n                    le fils de Marc-Aurèle, Commode, s\'arroge\r\n                    brutalement le pouvoir, puis ordonne\r\n                    l\'arrestation du général et son exécution.\r\n                    Maximus échappe à ses assassins mais ne peut\r\n                    empêcher le massacre de sa famille. Capturé\r\n                    par un marchand d\'esclaves, il devient\r\n                    gladiateur et prépare sa vengeance.'),
(10, 'Blade Runner', 1982, 4, 'Action', 'En 2019, lors de la décadence de Los Angeles, des êtres synthétiques, sans pensée, sans\r\n émotions, suffisent aux différents travaux d\'entretien. Leur durée de vie n\'excède pas 4 années.\r\n Un jour, ces ombres humaines se révoltent et on charge les tueurs, appelés Blade Runner, de\r\n les abattre... '),
(11, 'Piège de cristal', 1988, 26, 'Action', 'John Mc Clane, policier new-yorkais, vient passer Noel a Los Angeles aupres de sa femme.\r\n Dans le building ou elle travaille, il se retrouve temoin de la prise en otage de tout le personnel\r\n par 12 terroristes. Objectif de ces derniers, vider les coffres de la societe. Cache mais isole, il\r\n entreprend de prevenir l\'exterieur...'),
(12, '58 minutes pour vivre', 1990, 28, 'Action', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n Venu attendre sa femme a l\'aéroport, le policier John McClane remarque la présence de\r\n terroristes qui ont pris le contrôle des pistes, empêchant tout avion d\'atterrir et menaçant de\r\n laisser les appareils en vol tourner jusqu\'à épuisement de leur kérosène. John n\'a devant lui que\r\n 58 minutes pour éviter la catastrophe... '),
(13, 'Van Gogh', 1990, 29, 'Drame', 'Les derniers jours de la vie de Vincent Van Gogh, réfugié à Auvers-sur-Oise, près de chez son\r\n ami et protecteur le docteur Gachet, un ami de son frère Théo. Ce peintre maudit, que les\r\n villageois surnommaient \"le fou\", n\'avait alors plus que deux mois à vivre, qu\'il passa en\r\n peignant un tableau par jour. '),
(14, 'Seven', 1995, 31, 'Policier', 'A New York, un criminel anonyme a décidé de commettre 7 meurtres basés sur les 7 pêchés\r\n capitaux énoncés dans la Bible : gourmandise, avarice, paresse, orgueil, luxure, envie et colère.\r\n Vieux flic blasé à 7 jours de la retraite, l\'inspecteur Somerset mène l\'enquête tout en formant\r\n son remplaçant, l\'ambitieux inspecteur David Mills... '),
(15, 'L\'armée des douze singes', 1995, 33, 'Science-fiction', ''),
(16, 'Le nom de la rose', 1986, 34, 'Policier', 'En l\'an 1327, dans une abbaye bénédictine, le moine franciscain Guillaume de Baskerville,\r\n accompagné de son jeune novice Adso, enquête sur de mystérieuses morts qui frappent la\r\n confrérie. Le secret semble résider dans la bibliothèque, où le vieux Jorge garde jalousement un\r\n livre jugé maudit. '),
(17, 'Pulp fiction', 1994, 37, 'Action', 'Pulp Fiction décrit l\'odyssée sanglante et burlesque de petits malfrats dans la jungle de\r\n Hollywood, ou s\'entrecroisent les destins de deux petits tueurs, d\'un dangereux gangster marié\r\n à une camée, d\'un boxeur roublard, de prêteurs sur gages sadiques, d\'un caïd élégant et\r\n dévoué, d\'un dealer bon mari et de deux tourtereaux à la gachette facile... '),
(18, 'Mary à tout prix', 1998, 41, 'Comédie', 'Pour retrouver l\'amour de sa jeunesse, la belle Mary, Ted-le-looser engage Pat Healy, un\r\n privé. Subjugé par la jeune femme, ce dernier tente de la séduire en se faisant passer pour un\r\n architecte. Il cache la vérité à Ted et fait cause commune avec Tucker, un autre prétendant,\r\n pour se débarrasser de l\'encombrant Ted... '),
(19, 'Terminator', 1984, 6, 'Science-fiction', 'Deux creatures venues du futur debarquent sur terre. L\'une d\'entre elles, le Terminator, doit\r\n eliminer une certaine Sarah Connor, qui doit enfanter celui qui sera le chef d\'un groupe de\r\n resistants. L\'autre, Kyle Reese, est charge par les rebelles de defendre Sarah... '),
(20, 'Les dents de la mer', 1975, 45, 'Horreur', 'Dans la station balnéaire d\'Amityville, un requin géant frappe à plusieurs reprises. Soucieux\r\n d\'une bonne saison touristique, le maire interdit au sherif Brody de fermer les plages. Une prime\r\n est offerte et le célèbre chasseur de requin Quint se lance avec Brody et l\'ichtyologue Hooper à\r\n la poursuite du monstre... '),
(21, 'Le silence des agneaux', 1990, 49, 'Policier', 'Afin de retrouver la piste d\'un tueur surnommé Buffalo Bill car il scalpe les femmes qu\'il\r\n assassine, la jeune stagiaire du FBI Clarice Starling est dépêchée auprès d\'Hannibal Lecter,\r\n prisonnier pour avoir dévoré ses victimes. La coopération de ce dernier devrait permettre à\r\n Clarice de saisir et d\'anticiper le comportement de Buffalo... '),
(22, 'Godzilla', 1998, 58, 'Action', 'Issu des radiations atomiques engendrées par les essais nucléaires en Polynésie, un monstre\r\n gigantesque, aussi haut qu\'un building, se dirige vers New York, semant le chaos sur son\r\n passage. Pour tenter de stopper cette créature destructrice, l\'armée s\'associe à une équipe de\r\n scientifiques américains et à un énigmatique enquêteur français... '),
(23, 'Matrix', 1999, 61, 'Science-fiction', 'Dans un monde où tout ce qui semble réel est en fait élaboré par l\'univers électronique baptisé\r\n la Matrice, Néo, un programmeur, est contacté par un certain Morpheus. D\'après lui, Néo\r\n serait le Libérateur tant attendu, le seul capable de mettre en échec l\'omnipotence de la\r\n Matrice et rendre ses droits à la réalité... '),
(24, 'Mission: Impossible', 1996, 64, 'Action', 'Chargé d\'une nouvelle mission, l\'agent du contre espionnage Ethan Hunt tombe avec son\r\n équipe dans un piège sanglant. Seul survivant avec Claire, la jeune épouse de son regretté chef\r\n Jim Phelps, Ethan se retrouve accusé de trahison. En fuite, il prépare sa contre-attaque,\r\n recrutant l\'homme de main Krieger et le pirate informatique Luther... '),
(25, 'Kagemusha', 1980, 68, 'Guerre', 'Au XVIe siecle, Takeda, grand seigneur trouble par les guerres civiles de son pays, fait appel a\r\n un Kagemusha pour l\'aider dans ses batailles. Takeda est blesse et avant de mourir, il exige que\r\n sa mort soit tenue secrete pendant trois ans afin d\'eviter un eclatement du clan. Le Kagemusha\r\n devra le remplacer... '),
(26, 'Les pleins pouvoirs', 1997, 20, 'Policier', 'Luther Whitney est l\'as des cambrioleurs. Occupé à vider le coffre de l\'influent Walter Sullivan,\r\n il est témoin d\'un meurtre sadique impliquant le Président des Etats-Unis et les services\r\n secrets. Soupçonné par la police d\'en être l\'auteur, il se retrouve également traqué par les\r\n tueurs, qui ont compris qu\'ils ont été observés.'),
(27, 'Le gendarme et les extra-terrestres', 1978, 71, 'Comédie', 'En anglais: Gendarme and the Creatures from Outer Space !\r\n'),
(28, 'Le monde perdu', 1997, 45, 'Horreur', ''),
(29, 'Rain Man', 1988, 79, 'Drame', 'A la mort de son père, Charlie se voit déposséder de son héritage par un frère dont il ignorait\r\n l\'existence, Raymond. Celui-ci est autiste et vit dans un hôpital psychiatrique. Charlie enlève\r\n Raymond afin de prouver qu\'il est capable de s\'en occuper et de toucher l\'héritage. '),
(30, 'Top Gun', 1986, 81, 'Action', '\r\n Pilote de chasse émérite mais casse-cou Maverick Mitchell est admis à Top Gun, l\'école de\r\n l\'élite de l\'aéronavale. Son manque de prudence lui attire les foudres de ses supérieurs et la\r\n haine de certains coéquipiers. Il perd subitement la foi et confiance en lui quand son ami de\r\n toujours meurt en vol et qu\'il s\'en croit responsable... '),
(31, 'Les bronzés font du ski', 1979, 83, 'Comédie', 'Apres avoir passe des vacances d\'ete ensemble, Bernard, Nathalie, Gigi, Jerome, Popeye,\r\n Jean-Claude et Christiane se retrouvent aux sports d\'hiver. Tous ont leurs problemes de coeur\r\n ou d\'argent, mais il faut bien vivre avec. Avant de se separer, se perdre dans la montagne leur\r\n permet de gouter aux joies de la \"vraie vie\" paysanne... '),
(32, 'Le bon, la brute et le truand', 1966, 219, 'Western', 'Pendant la Guerre de Sécession, trois hommes, préférant s\'intéresser à leur profit personnel, se lancent à la recherche d\'un coffre contenant 200 000 dollars en pièces d\'or volés à l\'armée sudiste. Tuco sait que le trésor se trouve dans un cimetière, tandis que Joe connaît le nom inscrit sur la pierre tombale qui sert de cache. Chacun a besoin de l\'autre. Mais un troisième homme entre dans la course : Setenza, une brute qui n\'hésite pas à massacrer femmes et enfants pour parvenir à ses fins.'),
(33, 'Psychose', 1960, 3, 'Thriller', 'Après avoir volé 40 000 dollars, Marion Crane se rend dans un motel tenu par Norman Bates. Elle est\r\n poignardée sous sa douche par une femme. Norman fait disparaitre le corps et les affaires de la jeune\r\n femme. Mais Sam, le fiancé de Marion, inquiet de ne pas avoir de nouvelles, engage un détective pour la\r\n retrouver... '),
(34, 'Le retour du Jedi', 1983, 91, 'Science-fiction', 'Luke Skywalker s\'introduit chez Jabba pour delivrer Han Solo et la princesse Leia, tandis que l\'Empire\r\n reconstruit une deuxieme \"Etoile de la Mort\". Luke se rend ensuite au chevet de Yoda qui est mourant. Il lui\r\n apprend que Leia est sa soeur. Luke forme un commando pour attaquer l\'Etoile, tandis qu\'il affronte son\r\n pere, Darth Vador... '),
(35, 'Les oiseaux', 1963, 3, 'Horreur', 'Melanie Daniels se rend à Bodega Bay pour offrir deux perruches en cage à Cathy, la soeur de l\'avocat\r\n Mitch Brenner. Attaquée par une mouette, Melanie reste chez les Brenner pour la nuit. Mais d\'autres\r\n évènements étranges se produisent: des enfants sont blessés par des corbeaux et la maison de Mitch est\r\n envahie par des milliers d\'oiseaux. '),
(36, 'Reservoir dogs', 1992, 37, 'Policier', 'Après un hold-up manqué, des cambrioleurs de haut vol font leurs comptes dans une confrontation violente, pour découvrir lequel d\'entre eux les a trahis.\r\n\r\n\r\n\r\n\r\n Voleurs de profession, Joe Cabot et son fils Eddie engagent un groupe de six criminels pour le cambriolage\r\n d\'un diamantaire. Malgré toutes les précautions prises, la police est sur place le jour J, et l\'opération se\r\n solde par un massacre. Les survivants du gang se réunissent pour règler leurs comptes, chacun\r\n soupçonnant l\'autre d\'avoir trahi. '),
(37, 'Eyes Wide Shut', 1999, 101, 'Thriller', 'Un couple de bourgeois, cédant à la jalousie et à l\'obsession sexuelle, entreprend un voyage psychologique\r\n à la recherche de son identité. Le mari, au bout de son périple nocturne, revenu de ses désirs, ne trouvera\r\n finalement auprès de son épouse qu\'un compromis banal mais complice, les yeux ouverts à tout jamais sur\r\n un rêve impossible. '),
(38, 'Shining', 1980, 101, 'Horreur', 'Jack Torrance s\'installe avec sa femme et son fils Danny dans un hôtel fermé à la morte saison afin d\'écrire\r\n un roman. Il apprend que le gardien précédent a tué sa femme et ses deux filles avant de se suicider. Très\r\n vite, Jack va s\'apercevoir que des choses étranges se passent autour de lui et que son fils a des pouvoirs\r\n extrasensoriels... '),
(39, 'Pas de printemps pour Marnie', 1964, 3, 'Thriller', 'Marnie est engagée comme secrétaire chez un editeur, Mark Rutland. Celui-ci amoureux d\'elle, découvre\r\n qu\'elle est kleptomane et l\'oblige à l\'épouser en la menaçant de la dénoncer. En s\'apercevant que Marnie a\r\n la phobie de la cou leur rouge, Mark tente de remonter dans le passé de la jeune femme afin de comprendre\r\n les raisons de sa névrose. '),
(40, 'Fenêtre sur cour', 1954, 3, 'Suspense', 'En repos forcé à cause d\'une jambe plâtrée, le reporter L.B. Jefferies observe au téléobjectif les voisins de\r\n l\'immeuble d\'en face. C\'est ainsi qu\'il remarque le curieux manège d\'un représentant de commerce, M.\r\n Thorwald, qu\'il soupconne très vite d\'avoir assassiné sa femme... '),
(41, 'La mort aux trousses', 1959, 3, 'Suspense', 'Roger Thornhill, publiciste, est pris dans le hall de son hôtel pour un certain Kaplan, un espion. Deux\r\n hommes tentent de le tuer et quand il retrouve l\'un de ses agresseurs, celui-ci est assassiné devant ses\r\n yeux. Pris pour un meurtrier, il est obligé de fuir vers Chicago... '),
(42, 'Jeanne d\'Arc', 1999, 111, 'Guerre', ''),
(43, 'Le cinquième élément', 1997, 111, 'Science-fiction', 'Au XXIIIème siècle, dans un univers étrange et coloré, où tout espoir de survie est impossible sans la\r\n découverte du Cinquième Elément, un héros peu ordinaire affronte le mal pour sauver l\'humanité. '),
(44, 'Léon', 1994, 111, 'Action', '\"Léon est un tueur. Un de la pire espèce. Il est introuvable, indétectable, pire qu\'un sous-marin. Son ombre\r\n est comme une menace de danger permanent sur New York. Indestructible Léon ? Oui, jusqu\'à ce qu\'une\r\n petite souris pénètre son univers. Une toute petite souris aux yeux immenses...\" '),
(45, 'Nikita', 1990, 111, 'Thriller', 'Nikita, droguée et violente, est prise en mains par des psychiatres qui la rééduquent, la conditionnent, afin\r\n d\'en faire une tueuse à la botte des Services Secrets. Plus tard, réalisant ce qu\'elle est devenue, un pion\r\n sans vie privée que l\'on manipule, elle tente d\'échapper à ses commanditaires. '),
(46, 'Le grand bleu', 1988, 111, 'Drame', 'Jacques Mayol et Enzo Molinari se connaissent depuis l\'enfance. Tous deux experts en apnée, s\'affrontent\r\n continuellement pour obtenir le record du monde de plongée. Toujours en rivalité, les deux hommes\r\n descendent de plus en plus profond, au risque de leurs vies. Le film est ressorti en janvier 89 en version\r\n longue d\'une durée de 2h40. '),
(47, 'Spider-Man', 2002, 123, 'Action', 'Orphelin, Peter Parker est élevé par sa tante May et son oncle Ben dans le quartier Queens de New York. Tout en poursuivant ses études à l\'université, il trouve un emploi de photographe au journal Daily Bugle. Il partage son appartement avec Harry Osborn, son meilleur ami, et rêve de séduire la belle Mary Jane.\r\nCependant, après avoir été mordu par une araignée génétiquement modifiée, Peter voit son agilité et sa force s\'accroître et se découvre des pouvoirs surnaturels. Devenu Spider-Man, il décide d\'utiliser ses nouvelles capacités au service du bien.\r\nAu même moment, le père de Harry, le richissime industriel Norman Osborn, est victime d\'un accident chimique qui a démesurément augmenté ses facultés intellectuelles et sa force, mais l\'a rendu fou. Il est devenu le Bouffon Vert, une créature démoniaque qui menace la ville. Entre lui et Spider-Man, une lutte sans merci s\'engage.'),
(48, 'King of New York', 1990, 122, 'Drame', 'L\'histoire d\'un gangster au grand coeur mais aux méthodes définitives, surnommé par le presse The King of New York et qui rêve de fonder un hôpital, confronté a des policiers opiniâtres qui ont juré de l\'abattre...'),
(49, 'The Matrix reloaded', 2003, 61, 'Science-fiction', 'Neo apprend à mieux contrôler ses dons naturels, alors même que Sion s\'apprête à tomber sous l\'assaut de l\'Armée des Machines. D\'ici quelques heures, 250 000 Sentinelles programmées pour anéantir notre espèce envahiront la dernière enclave humaine de la Terre.\r\nMais Morpheus galvanise les citoyens de Sion en leur rappelant la Parole de l\'Oracle : il est encore temps pour l\'Elu d\'arrêter la guerre contre les Machines. Tous les espoirs se reportent dès lors sur Neo. Au long de sa périlleuse plongée au sein de la Matrix et de sa propre destinée, ce dernier sera confronté à une résistance croissante, une vérité encore plus aveuglante, un choix encore plus douloureux que tout ce qu\'il avait jamais imaginé.'),
(50, 'The Matrix Revolutions', 2003, 135, 'Science-fiction', 'La longue quête de liberté des rebelles culmine en une bataille finale explosive. Tandis que l\'armée des Machines sème la désolation sur Zion, ses citoyens organisent une défense acharnée. Mais pourront-ils retenir les nuées implacables des Sentinelles en attendant que Neo s\'approprie l\'ensemble de ses pouvoirs et mette fin à la guerre ?\r\nL\'agent Smith est quant à lui parvenu à prendre possession de l\'esprit de Bane, l\'un des membres de l\'équipage de l\'aéroglisseur. De plus en plus puissant, il est désormais incontrôlable et n\'obéit plus aux Machines : il menace de détruire leur empire ainsi que le monde réel et la Matrice...\r\n\r\n	'),
(51, 'De bruit et de fureur', 1988, 138, 'Drame', 'L\'histoire de Bruno, enfant attardé des banlieues et des H.L.M., plongé dans la violence de son milieu, et dont la vie va se consumer comme une étoile filante.'),
(52, 'Usual suspects', 1995, 142, 'Thriller', 'Une légende du crime contraint cinq malfrats à aller s\'aquitter d\'une tâche très périlleuse. Ceux qui survivent pourront se partager un butin de 90 millions de dollars.'),
(53, 'Bad Lieutenant', 1992, 122, 'Drame', 'La descente aux enfers d\'un flic pourri qui enquete sur le viol d\'une jolie religieuse.'),
(54, 'Le parrain', 1972, 64, 'Drame', 'En 1945, à New York, les Corleone sont une des cinq familles de la mafia. Don Vito Corleone, \" parrain \" de cette famille, marie sa fille à un bookmaker. Sollozzo, \" parrain \" de la famille Tattaglia, propose à Don Vito une association dans le trafic de drogue, mais celui-ci refuse. Sonny, un de ses fils, y est quant à lui favorable.\r\nAfin de traiter avec Sonny, Sollozzo tente de faire tuer Don Vito, mais celui-ci en réchappe. Michael, le frère cadet de Sonny, recherche alors les commanditaires de l\'attentat et tue Sollozzo et le chef de la police, en représailles.\r\nMichael part alors en Sicile, où il épouse Apollonia, mais celle-ci est assassinée à sa place. De retour à New York, Michael épouse Kay Adams et se prépare à devenir le successeur de son père...'),
(55, 'Le parrain II', 1974, 64, 'Drame', 'A la mort de Vito Corleone, dit \"le Parrain\", c\'est son fils, Michael, qui reprend les affaires familiales. Très vite, son ascension dans le milieu mafiosi est fulgurante.\r\n\r\nDepuis la mort De Don Vito Corleone, son fils, Michael, règne sur la famille. Amené à négocier avec la mafia juive, il perd alors le soutien d\'un de ses lieutenants, Frankie Pentageli. Echappant de justesse à un attentat, Michael tente de retrouver le coupable, soupçonnant Hyman Roth, le chef de la mafia juive.\r\nVito Corleone, immigrant italien, arrive à New York au début du siècle ; très vite, il devient un des caïds du quartier, utilisant la violence comme moyen de régler toutes les affaires. Seul au départ, il bâtit peu à peu un véritable empire, origine de la fortune de la famille des Corleone.\r\n	'),
(56, 'Le parrain III', 1990, 64, 'Drame', 'Atteignant la soixantaine, Michael Corleone désire à la fois renouer avec les siens et se réhabiliter aux yeux de la société, surtout de l\'Eglise. Il arrivera presque a ses fins, mais sa vie passée et ses anciens ennemis le rattraperont plus vite.\r\n\r\nMichael Corleone est fatigué. Il veut prendre ses distances avec les activités mafieuses de sa famille. Il veut convertir ces activités en affaires légales. Kay, son ex-femme, lui fait même accepter que leur fils devienne un chanteur d\'opéra et ne reprenne pas les activités familiales.\r\nPendant ce temps, la fille de Michael, Mary, et son neveu, le fils de Sonny, Vincent, nouent une idylle qui n\'est pas la bienvenue dans la famille.\r\nIl décide d\'aider le Vatican à renflouer ses caisses et reçoit en échange le contrôle d\'une entreprise immobilière leur appartenant. Attisant la jalousie de ses pairs, Michael échappe de justesse à un attentat commis par l\'un d\'eux. Vincent se propose alors pour reprendre les affaires de la famille en main.'),
(57, 'Jackie Brown', 1997, 37, 'Policier', 'Jackie Brown, hôtesse de l\'air, arrondit ses fins de mois en convoyant de l\'argent liquide pour le compte d\'un trafiquant d\'armes, Ordell Robbie. Un jour, un agent federal et un policier de Los Angeles la cueillent à l\'aéroport. Ils comptent sur elle pour faire tomber le trafiquant. Jackie échafaude alors un plan audacieux pour doubler tout le monde lors d\'un prochain transfert qui porte sur la modeste somme de cinq cent mille dollars. Mais il lui faudra compter avec les complices d\'Ordell, qui ont des méthodes plutôt expéditives.'),
(58, 'Une journée en enfer', 1995, 168, 'Action', 'John McClane est cette fois-ci aux prises avec un maître chanteur, facétieux et dangereux, qui dépose des bombes dans New York.'),
(59, 'Sixième sens', 1999, 170, 'Fantastique', 'Cole Sear, garconnet de huit ans est hanté par un terrible secret. Son imaginaire est visité par des esprits menacants. Trop jeune pour comprendre le pourquoi de ces apparitions et traumatisé par ces pouvoirs paranormaux, Cole s\'enferme dans une peur maladive et ne veut reveler à personne la cause de son enfermement, à l\'exception d\'un psychologue pour enfants. La recherche d\'une explication rationnelle guidera l\'enfant et le thérapeute vers une vérité foudroyante et inexplicable.'),
(60, 'Lost in Translation', 2003, 172, 'Comédie sentimentale', 'Bob Harris, acteur sur le déclin, se rend à Tokyo pour touner un spot publicitaire. Il a conscience qu\'il se trompe - il devrait être chez lui avec sa famille, jouer au théâtre ou encore chercher un rôle dans un film -, mais il a besoin d\'argent.\r\nDu haut de son hôtel de luxe, il contemple la ville, mais ne voit rien. Il est ailleurs, détaché de tout, incapable de s\'intégrer à la réalité qui l\'entoure, incapable également de dormir à cause du décalage horaire.\r\nDans ce même établissement, Charlotte, une jeune Américaine fraîchement diplômée, accompagne son mari, photographe de mode. Ce dernier semble s\'intéresser davantage à son travail qu\'à sa femme. Se sentant délaissée, Charlotte cherche un peu d\'attention. Elle va en trouver auprès de Bob...'),
(61, 'Kill Bill', 2003, 37, 'Drame', 'Au cours d\'une cérémonie de mariage en plein désert, un commando fait irruption dans la chapelle et tire sur les convives. Laissée pour morte, la Mariée enceinte retrouve ses esprits après un coma de quatre ans.\r\nCelle qui a auparavant exercé les fonctions de tueuse à gages au sein du Détachement International des Vipères Assassines n\'a alors plus qu\'une seule idée en tête : venger la mort de ses proches en éliminant tous les membres de l\'organisation criminelle, dont leur chef Bill qu\'elle se réserve pour la fin.'),
(62, 'Stalingrad', 2001, 34, 'Drame', ''),
(63, 'Million Dollar Baby', 2005, 20, 'Drame', 'Une histoire d\'amour tragique et platonique entre une boxeuse et un vieil entraîneur de trente ans son aîné.'),
(64, 'Pour quelques dollars de plus', 1965, 219, 'Western', 'Le colonel Douglas Mortimer collabore avec un chasseur de primes surnommé L\'\"Etranger\". Tous les deux souhaitent capturer Indio, un tueur fou, qui sème la terreur autour de lui. Ce dernier et ses hommes sont sur le point de piller la banque d\'El Paso.'),
(67, 'Marie Antoinette', 2006, 1, 'Drame', 'Based on Antonia Fraser\'s book about the ill-fated \r\n	Archduchess of Austria and later Queen of France, \r\n	\'Marie Antoinette\' tells the story of the most \r\n	misunderstood and abused woman in history, from \r\n	her birth in Imperial Austria to her later life in \r\n	France. ');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `Film_ibfk_1` FOREIGN KEY (`id_realisateur`) REFERENCES `artiste` (`id`);
--
-- Base de données : `leagueoflegends`
--
CREATE DATABASE IF NOT EXISTS `leagueoflegends` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `leagueoflegends`;

-- --------------------------------------------------------

--
-- Structure de la table `champion`
--

DROP TABLE IF EXISTS `champion`;
CREATE TABLE IF NOT EXISTS `champion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `pv` decimal(10,4) NOT NULL,
  `pv_plus` decimal(10,4) NOT NULL,
  `degats_atq` decimal(10,4) NOT NULL,
  `degats_atq_plus` decimal(10,4) NOT NULL,
  `vitesse_atq` decimal(10,4) NOT NULL,
  `vitesse_atq_plus` decimal(10,4) NOT NULL,
  `armure` decimal(10,4) NOT NULL,
  `armure_plus` decimal(10,4) NOT NULL,
  `resistance_magique` decimal(10,4) NOT NULL,
  `resistance_magique_plus` decimal(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_nom_champion` (`nom`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `champion`
--

INSERT INTO `champion` (`id`, `nom`, `pv`, `pv_plus`, `degats_atq`, `degats_atq_plus`, `vitesse_atq`, `vitesse_atq_plus`, `armure`, `armure_plus`, `resistance_magique`, `resistance_magique_plus`) VALUES
(1, 'Aatrox', '580.0000', '85.0000', '70.0000', '3.2000', '0.6510', '3.0000', '33.0000', '3.8000', '32.1000', '1.2500'),
(2, 'Ahri', '526.0000', '92.0000', '53.0400', '3.0000', '0.6680', '2.0000', '20.8800', '3.5000', '30.0000', '0.5000'),
(3, 'Akali', '593.0000', '90.0000', '58.3760', '3.2000', '0.6940', '3.1000', '31.3800', '3.5000', '32.1000', '1.2500'),
(4, 'Alistar', '613.3600', '106.0000', '61.1116', '3.6200', '0.6250', '2.1250', '44.0000', '3.5000', '32.1000', '1.2500'),
(5, 'Amumu', '613.1200', '84.0000', '53.3800', '3.8000', '0.6380', '2.1800', '33.0000', '3.8000', '32.1000', '1.2500'),
(6, 'Anivia', '480.0000', '82.0000', '51.3760', '3.2000', '0.6250', '1.6800', '21.2200', '4.0000', '30.0000', '0.5000'),
(7, 'Annie', '524.0000', '88.0000', '50.4100', '2.6250', '0.5790', '1.3600', '19.2200', '4.0000', '30.0000', '0.5000'),
(8, 'Ashe', '527.7200', '85.0000', '61.0000', '2.9600', '0.6580', '3.3300', '26.0000', '3.4000', '30.0000', '0.5000'),
(9, 'Aurelion Sol', '562.0000', '92.0000', '57.0000', '3.2000', '0.6250', '1.3600', '19.0000', '3.6000', '30.0000', '0.5000'),
(10, 'Azir', '552.0000', '92.0000', '52.0000', '2.8000', '0.6380', '1.5000', '19.0400', '3.0000', '30.0000', '0.5000'),
(11, 'Bard', '535.0000', '89.0000', '52.0000', '3.0000', '0.6250', '2.0000', '34.0000', '4.0000', '30.0000', '0.5000'),
(12, 'Blitzcrank', '582.6000', '95.0000', '61.5400', '3.5000', '0.6250', '1.1300', '44.0000', '4.0000', '32.1000', '1.2500'),
(13, 'Brand', '519.6800', '88.0000', '57.0400', '3.0000', '0.6250', '1.3600', '21.8800', '3.5000', '30.0000', '0.5000'),
(14, 'Braum', '576.1600', '87.0000', '55.3760', '3.2000', '0.6440', '3.5000', '47.0000', '4.0000', '32.1000', '1.2500'),
(15, 'Caitlyn', '481.0000', '91.0000', '58.0000', '2.8800', '0.5680', '4.0000', '28.0000', '3.5000', '30.0000', '0.5000'),
(16, 'Camille', '575.6000', '85.0000', '68.0000', '3.5000', '0.6250', '2.5000', '35.0000', '3.8000', '32.1000', '1.2500'),
(17, 'Cassiopeia', '537.0000', '87.0000', '53.0000', '3.0000', '0.6470', '1.5000', '25.0000', '3.5000', '30.0000', '0.5000'),
(18, 'Cho\'Gath', '574.4000', '80.0000', '69.0000', '4.2000', '0.6250', '1.4400', '38.0000', '3.5000', '32.1000', '1.2500'),
(19, 'Corki', '518.0000', '87.0000', '60.0000', '3.0000', '0.6380', '2.3000', '28.0000', '3.5000', '30.0000', '0.5000'),
(20, 'Darius', '582.2400', '100.0000', '64.0000', '5.0000', '0.6250', '1.0000', '39.0000', '4.0000', '32.1000', '1.2500'),
(21, 'Diana', '594.0000', '95.0000', '53.0400', '3.0000', '0.6250', '2.2500', '31.0000', '3.6000', '32.1000', '1.2500'),
(22, 'Dr._Mundo', '582.5200', '89.0000', '61.2700', '3.5000', '0.6250', '2.8000', '36.0000', '3.5000', '32.1000', '1.2500'),
(23, 'Draven', '574.0000', '88.0000', '60.0000', '3.6100', '0.6790', '2.7000', '29.0000', '3.3000', '30.0000', '0.5000'),
(24, 'Ekko', '585.0000', '85.0000', '55.0000', '3.0000', '0.6250', '3.3000', '32.0000', '3.0000', '32.0000', '1.2500'),
(25, 'Elise', '534.0000', '85.0000', '55.0000', '3.0000', '0.6250', '1.7500', '27.0000', '3.3500', '30.0000', '0.5000'),
(26, 'Evelynn', '572.0000', '84.0000', '61.0000', '3.0000', '0.6250', '2.1000', '37.0000', '3.5000', '32.1000', '1.2500'),
(27, 'Ezreal', '484.4000', '80.0000', '64.0000', '2.4100', '0.6250', '1.5000', '31.0000', '3.5000', '30.0000', '0.5000'),
(28, 'Fiddlesticks', '524.4000', '80.0000', '48.3600', '2.6250', '0.6250', '2.1100', '30.0000', '3.5000', '30.0000', '0.5000'),
(29, 'Fiora', '550.0000', '85.0000', '68.0000', '3.3000', '0.6900', '3.2000', '33.0000', '3.5000', '32.1000', '1.2500'),
(30, 'Fizz', '570.0000', '98.0000', '58.0400', '3.0000', '0.6580', '3.1000', '22.4120', '3.4000', '32.1000', '1.2500'),
(31, 'Galio', '562.0000', '112.0000', '59.0000', '3.5000', '0.6250', '1.5000', '24.0000', '3.5000', '32.1000', '1.2500'),
(32, 'Gangplank', '540.0000', '82.0000', '64.0000', '3.0000', '0.6580', '3.2000', '35.0000', '3.0000', '32.1000', '1.2500'),
(33, 'Garen', '616.2800', '84.2500', '66.0000', '4.5000', '0.6250', '2.9000', '36.0000', '3.0000', '32.1000', '1.2500'),
(34, 'Gragas', '583.5200', '89.0000', '61.3800', '3.5000', '0.6250', '2.0500', '35.0000', '3.6000', '32.1000', '1.2500'),
(35, 'Gnar', '510.0000', '65.0000', '59.0000', '3.0000', '0.6250', '0.0000', '32.0000', '2.5000', '30.0000', '0.5000'),
(36, 'Graves', '551.1200', '84.0000', '69.0000', '2.4100', '0.4810', '2.6000', '33.0000', '3.4000', '30.0000', '0.5000'),
(37, 'Hecarim', '580.0000', '90.0000', '66.0000', '3.2000', '0.6700', '2.5000', '36.0000', '4.0000', '32.1000', '1.2500'),
(38, 'Heimerdinger', '488.0000', '87.0000', '55.5360', '2.7000', '0.6250', '1.3600', '19.0400', '3.0000', '30.0000', '0.5000'),
(39, 'Illaoi', '585.6000', '80.0000', '68.0000', '5.0000', '0.5710', '2.5000', '35.0000', '3.8000', '32.1000', '1.2500'),
(40, 'Irelia', '607.2000', '90.0000', '70.0000', '3.3000', '0.6650', '3.2000', '34.0000', '3.7500', '32.1000', '1.2500'),
(41, 'Ivern', '585.0000', '95.0000', '50.0000', '3.0000', '0.6440', '3.4000', '27.0000', '3.5000', '32.1000', '1.2500'),
(42, 'Janna', '500.0000', '70.0000', '46.0000', '1.5000', '0.6250', '2.9500', '28.0000', '3.8000', '30.0000', '0.5000'),
(43, 'Jarvan_IV', '571.2000', '90.0000', '64.0000', '3.4000', '0.6580', '2.5000', '34.0000', '3.6000', '32.1000', '1.2500'),
(44, 'Jax', '592.8000', '85.0000', '69.9700', '3.3750', '0.6380', '3.4000', '36.0000', '3.0000', '32.1000', '1.2500'),
(45, 'Jayce', '576.0000', '95.0000', '58.0000', '3.5000', '0.6580', '3.0000', '27.0000', '3.5000', '30.0000', '0.5000'),
(46, 'Jhin', '540.0000', '85.0000', '61.0000', '4.0000', '0.6250', '2.8300', '29.0000', '3.5000', '30.0000', '0.5000'),
(47, 'Jinx', '515.0000', '82.0000', '61.0000', '2.4100', '0.6250', '1.0000', '32.0000', '3.5000', '30.0000', '0.5000'),
(48, 'Kalista', '517.7600', '83.0000', '71.0000', '2.9000', '0.6440', '2.5000', '28.0000', '3.5000', '30.0000', '0.5000'),
(49, 'Karma', '534.0000', '95.0000', '53.5440', '3.3000', '0.6250', '2.3000', '20.3840', '3.8000', '30.0000', '0.5000'),
(50, 'Karthus', '528.0000', '87.0000', '45.6600', '3.2500', '0.6250', '2.1100', '20.8800', '3.5000', '30.0000', '0.5000'),
(51, 'Kassadin', '576.0000', '90.0000', '58.8520', '3.9000', '0.6400', '3.7000', '19.0000', '2.8000', '30.0000', '0.5000'),
(52, 'Katarina', '602.0000', '94.0000', '58.0000', '3.2000', '0.6580', '2.7400', '27.8800', '3.5000', '32.1000', '1.2500'),
(53, 'Kayle', '586.0000', '76.0000', '51.0000', '2.2000', '0.6380', '2.2000', '26.8800', '3.5000', '30.0000', '0.5000'),
(54, 'Kennen', '541.0000', '84.0000', '50.5440', '3.3000', '0.6900', '3.4000', '29.0000', '3.7500', '30.0000', '0.5000'),
(55, 'Kha\'Zix', '572.8000', '85.0000', '63.0000', '3.1000', '0.6680', '2.7000', '36.0000', '3.0000', '32.1000', '1.2500'),
(56, 'Kindred', '540.0000', '85.0000', '65.0000', '2.2600', '0.6250', '2.5000', '29.0000', '3.5000', '30.0000', '0.5000'),
(57, 'Kled', '340.0000', '70.0000', '65.0000', '3.5000', '0.6250', '3.5000', '35.0000', '4.0000', '32.1000', '1.2500'),
(58, 'LeBlanc', '528.0000', '92.0000', '54.8800', '3.5000', '0.6250', '1.4000', '21.8800', '3.5000', '30.0000', '0.5000'),
(59, 'Lee_Sin', '570.8000', '85.0000', '69.1800', '3.2000', '0.6510', '3.0000', '33.0000', '3.7000', '32.1000', '1.2500'),
(60, 'Leona', '576.1600', '87.0000', '60.0400', '3.0000', '0.6250', '2.9000', '47.0000', '3.6000', '32.1000', '1.2500'),
(61, 'Lissandra', '518.0000', '87.0000', '53.0000', '2.7000', '0.6250', '1.3600', '20.2160', '3.7000', '30.0000', '0.5000'),
(62, 'Lucian', '554.4000', '80.0000', '65.0000', '2.4100', '0.6380', '3.3000', '33.0000', '3.0000', '30.0000', '0.5000'),
(63, 'Lulu', '525.0000', '74.0000', '46.3680', '2.6000', '0.6250', '2.2500', '28.2200', '3.7000', '30.0000', '0.5000'),
(64, 'Lux', '490.0000', '91.0000', '53.5400', '3.3000', '0.6250', '1.3600', '18.7200', '4.0000', '30.0000', '0.5000'),
(65, 'Malphite', '574.2000', '90.0000', '61.9700', '3.3750', '0.6380', '3.4000', '37.0000', '3.7500', '32.1000', '1.2500'),
(66, 'Malzahar', '537.0000', '87.0000', '55.0000', '3.0000', '0.6250', '1.5000', '18.0000', '3.5000', '30.0000', '0.5000'),
(67, 'Maokai', '565.0000', '95.0000', '63.5400', '3.3000', '0.6940', '2.1250', '39.0000', '4.0000', '32.1000', '1.2500'),
(68, 'Maître Yi', '598.5600', '92.0000', '68.0000', '3.0000', '0.6790', '2.0000', '33.0000', '3.0000', '32.1000', '1.2500'),
(69, 'Miss Fortune', '530.0000', '85.0000', '54.0000', '1.0000', '0.6560', '3.0000', '33.0000', '3.0000', '30.0000', '0.5000'),
(70, 'Mordekaiser', '530.0000', '78.0000', '61.0000', '5.0000', '0.6010', '2.2000', '25.0000', '3.7500', '32.1000', '1.2500'),
(71, 'Morgana', '559.4800', '90.0000', '55.4600', '3.5000', '0.6250', '1.5300', '25.3840', '3.8000', '30.0000', '0.5000'),
(72, 'Nami', '489.3200', '74.0000', '51.2080', '3.1000', '0.6440', '2.6100', '29.0000', '4.0000', '30.0000', '0.5000'),
(73, 'Nasus', '561.2000', '90.0000', '67.0000', '3.5000', '0.6380', '3.4800', '34.0000', '3.5000', '32.1000', '1.2500'),
(74, 'Nautilus', '576.4800', '86.0000', '57.5440', '3.3000', '0.6130', '1.0000', '39.0000', '3.7500', '32.1000', '1.2500'),
(75, 'Nidalee', '545.0000', '85.0000', '61.0000', '3.5000', '0.6380', '3.2200', '28.0000', '3.5000', '30.0000', '0.5000'),
(76, 'Nocturne', '582.8000', '85.0000', '67.2100', '3.1000', '0.6680', '2.7000', '36.0000', '3.5000', '32.1000', '1.2500'),
(77, 'Nunu', '590.0000', '90.0000', '67.0000', '4.0000', '0.6250', '2.2500', '28.0000', '3.5000', '32.1000', '1.2500'),
(78, 'Olaf', '597.2400', '93.0000', '68.0000', '3.5000', '0.6940', '2.7000', '35.0000', '3.0000', '32.1000', '1.2500'),
(79, 'Orianna', '530.0000', '91.0000', '40.3680', '2.6000', '0.6580', '3.5000', '17.0400', '3.0000', '30.0000', '0.5000'),
(80, 'Pantheon', '579.1600', '87.0000', '64.0000', '2.9000', '0.6440', '2.9500', '37.0000', '3.9000', '32.1000', '1.2500'),
(81, 'Rakan', '510.0000', '85.0000', '70.0000', '3.5000', '0.6350', '3.0000', '29.0000', '3.9000', '30.0000', '0.5000'),
(82, 'Poppy', '540.0000', '90.0000', '64.0000', '4.0000', '0.6250', '2.5000', '38.0000', '3.5000', '32.0000', '1.2500'),
(83, 'Quinn', '532.8000', '85.0000', '62.0000', '2.4100', '0.6680', '3.1000', '32.0000', '3.5000', '30.0000', '0.5000'),
(84, 'Rammus', '564.4800', '86.0000', '55.8800', '3.5000', '0.6250', '2.2150', '36.0000', '4.3000', '32.1000', '1.2500'),
(85, 'Rek\'Sai', '570.0000', '85.0000', '65.5000', '3.3500', '0.6670', '2.0000', '33.0000', '3.7500', '32.1000', '1.2500'),
(86, 'Renekton', '572.1600', '87.0000', '69.0000', '3.1000', '0.6650', '2.6500', '35.0000', '3.8000', '32.1000', '1.2500'),
(87, 'Rengar', '586.2000', '90.0000', '68.0000', '1.5000', '0.6250', '3.5000', '34.0000', '3.0000', '32.1000', '1.2500'),
(88, 'Riven', '558.4800', '86.0000', '64.0000', '3.0000', '0.6250', '3.5000', '33.0000', '3.2000', '32.1000', '1.2500'),
(89, 'Rumble', '589.0000', '85.0000', '61.0360', '3.2000', '0.6440', '1.8500', '30.8800', '3.5000', '32.1000', '1.2500'),
(90, 'Ryze', '570.4800', '98.0000', '55.0400', '3.0000', '0.6250', '2.1120', '21.5520', '3.0000', '30.0000', '0.5000'),
(91, 'Sejuani', '560.0000', '95.0000', '64.0000', '3.0000', '0.6250', '3.0000', '31.0000', '4.0000', '27.1000', '0.7500'),
(92, 'Shaco', '587.0000', '89.0000', '66.0000', '3.5000', '0.6940', '3.0000', '30.0000', '3.5000', '32.1000', '1.2500'),
(93, 'Shen', '540.0000', '85.0000', '60.0000', '3.0000', '0.6510', '2.0000', '34.0000', '3.0000', '32.1000', '1.2500'),
(94, 'Shyvana', '595.0000', '95.0000', '66.0000', '3.4000', '0.6580', '2.5000', '38.0000', '3.3500', '32.1000', '1.2500'),
(95, 'Singed', '580.0000', '85.0000', '62.3200', '3.3750', '0.6130', '1.8100', '37.0000', '3.5000', '32.1000', '1.2500'),
(96, 'Sion', '542.6400', '73.0000', '68.0000', '4.0000', '0.6790', '1.3000', '32.0000', '3.0000', '32.1000', '1.2500'),
(97, 'Sivir', '515.7600', '82.0000', '65.0000', '2.4100', '0.6250', '1.6000', '31.0000', '3.2500', '30.0000', '0.5000'),
(98, 'Skarner', '601.2800', '90.0000', '65.0000', '4.5000', '0.6250', '2.1000', '38.0000', '3.8000', '32.1000', '1.2500'),
(99, 'Sona', '482.3600', '77.0000', '46.0000', '3.0000', '0.6440', '2.3000', '28.0000', '3.3000', '30.0000', '0.5000'),
(100, 'Soraka', '529.0400', '78.0000', '50.0400', '3.0000', '0.6250', '2.1400', '32.0000', '3.8000', '30.0000', '0.5000'),
(101, 'Swain', '525.0000', '90.0000', '58.0000', '3.0000', '0.6250', '2.1100', '22.7200', '4.0000', '30.0000', '0.5000'),
(102, 'Syndra', '523.0000', '90.0000', '53.8720', '2.9000', '0.6250', '2.0000', '24.7120', '3.4000', '30.0000', '0.5000'),
(103, 'Talon', '588.0000', '95.0000', '68.0000', '3.1000', '0.6250', '2.9000', '32.0000', '3.5000', '32.1000', '1.2500'),
(104, 'Taliyah', '532.0000', '90.0000', '56.0000', '3.3000', '0.6250', '1.3600', '20.0000', '3.0000', '30.0000', '0.5000'),
(105, 'Tahm Kench', '610.0000', '95.0000', '56.0000', '3.2000', '0.6580', '2.5000', '47.0000', '3.5000', '32.1000', '1.2500'),
(106, 'Taric', '575.0000', '90.0000', '55.0000', '3.5000', '0.6250', '2.0000', '40.0000', '3.4000', '32.1000', '1.2500'),
(107, 'Teemo', '528.0000', '90.0000', '54.0000', '3.0000', '0.6900', '3.3800', '24.3000', '3.7500', '30.0000', '0.5000'),
(108, 'Thresh', '560.5200', '93.0000', '56.0000', '2.2000', '0.6250', '3.5000', '28.0000', '0.0000', '30.0000', '0.5000'),
(109, 'Tristana', '542.7600', '82.0000', '65.0000', '2.4100', '0.6560', '1.5000', '31.0000', '3.0000', '30.0000', '0.5000'),
(110, 'Trundle', '616.2800', '96.0000', '68.0000', '3.0000', '0.6700', '2.9000', '37.0000', '2.7000', '32.1000', '1.2500'),
(111, 'Tryndamere', '625.6400', '98.0000', '69.0000', '0.0000', '0.6700', '2.9000', '33.0000', '3.1000', '32.1000', '1.2500'),
(112, 'Twisted Fate', '534.0000', '94.0000', '49.9540', '3.3000', '0.6510', '3.2200', '20.5420', '3.1500', '30.0000', '0.5000'),
(113, 'Twitch', '525.0800', '81.0000', '63.0000', '2.4100', '0.6790', '3.3800', '32.0000', '3.0000', '30.0000', '0.5000'),
(114, 'Udyr', '593.3200', '99.0000', '66.0000', '3.2000', '0.6580', '2.6700', '34.0000', '4.0000', '32.1000', '1.2500'),
(115, 'Urgot', '585.0000', '88.0000', '63.0000', '4.0000', '0.5950', '3.7500', '39.0000', '4.2500', '32.1000', '1.2500'),
(116, 'Varus', '537.7600', '82.0000', '63.0000', '2.4100', '0.6580', '3.0000', '32.0000', '3.4000', '30.0000', '0.5000'),
(117, 'Vayne', '498.4400', '83.0000', '64.0000', '1.6600', '0.6580', '3.3000', '28.0000', '3.4000', '30.0000', '0.5000'),
(118, 'Veigar', '505.0000', '94.0000', '50.7100', '2.6250', '0.6250', '2.2400', '22.5500', '3.7500', '30.0000', '0.5000'),
(119, 'Vel\'Koz', '520.0000', '88.0000', '54.9380', '3.1420', '0.6250', '1.3600', '21.8800', '3.5000', '30.0000', '0.5000'),
(120, 'Vi', '582.8000', '85.0000', '64.0000', '3.5000', '0.6250', '2.5000', '35.0000', '3.5000', '32.1000', '1.2500'),
(121, 'Viktor', '528.0400', '90.0000', '52.0400', '3.0000', '0.6580', '2.1100', '22.7200', '4.0000', '30.0000', '0.5000'),
(122, 'Vladimir', '537.0000', '96.0000', '55.0000', '3.0000', '0.6580', '2.0000', '23.0000', '3.3000', '30.0000', '0.5000'),
(123, 'Volibear', '584.4800', '86.0000', '68.0000', '3.3000', '0.6580', '2.6700', '35.0000', '3.5000', '32.1000', '1.2500'),
(124, 'Warwick', '550.0000', '85.0000', '66.0000', '3.0000', '0.6380', '2.3000', '33.0000', '3.2000', '32.1000', '1.2500'),
(125, 'Wukong', '577.8000', '85.0000', '68.0000', '3.2000', '0.6580', '3.0000', '34.0000', '3.5000', '32.1000', '1.2500'),
(126, 'Xayah', '545.0000', '80.0000', '64.0000', '2.2000', '0.6250', '3.3000', '33.0000', '3.0000', '30.0000', '0.5000'),
(127, 'Xerath', '526.0000', '92.0000', '54.7000', '3.0000', '0.6250', '1.3600', '21.8800', '3.5000', '30.0000', '0.5000'),
(128, 'Xin Zhao', '570.0000', '92.0000', '66.0000', '3.3000', '0.6450', '3.5000', '35.0000', '3.5000', '32.1000', '1.2500'),
(129, 'Yasuo', '523.0000', '87.0000', '60.0000', '3.2000', '0.6700', '2.5000', '30.0000', '3.4000', '30.0000', '0.5000'),
(130, 'Yorick', '580.0000', '100.0000', '62.0000', '5.0000', '0.6250', '2.0000', '39.0000', '4.0000', '32.1000', '1.2500'),
(131, 'Zac', '615.0000', '95.0000', '60.0000', '3.4000', '0.6380', '1.6000', '33.0000', '3.5000', '32.1000', '1.2500'),
(132, 'Zed', '584.0000', '85.0000', '63.0000', '3.4000', '0.6510', '2.1000', '32.0000', '3.5000', '32.1000', '1.2500'),
(133, 'Ziggs', '536.0000', '92.0000', '54.2080', '3.1000', '0.6560', '2.0000', '21.5440', '3.3000', '30.0000', '0.5000'),
(134, 'Zilean', '504.0000', '82.0000', '51.6400', '3.0000', '0.6250', '2.1300', '24.0000', '3.8000', '30.0000', '0.5000'),
(135, 'Zyra', '504.0000', '79.0000', '53.3760', '3.2000', '0.6250', '2.1100', '29.0000', '3.0000', '30.0000', '0.5000');
--
-- Base de données : `pokedex`
--
CREATE DATABASE IF NOT EXISTS `pokedex` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pokedex`;

-- --------------------------------------------------------

--
-- Structure de la table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
CREATE TABLE IF NOT EXISTS `pokemon` (
  `id` int(11) NOT NULL,
  `identifier` varchar(25) NOT NULL,
  `height` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `base_experience` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pokemon`
--

INSERT INTO `pokemon` (`id`, `identifier`, `height`, `weight`, `base_experience`) VALUES
(1, 'bulbasaur', 7, 69, 64),
(2, 'ivysaur', 10, 130, 142),
(3, 'venusaur', 20, 1000, 236),
(4, 'charmander', 6, 85, 62),
(5, 'charmeleon', 11, 190, 142),
(6, 'charizard', 17, 905, 240),
(7, 'squirtle', 5, 90, 63),
(8, 'wartortle', 10, 225, 142),
(9, 'blastoise', 16, 855, 239),
(10, 'caterpie', 3, 29, 39),
(11, 'metapod', 7, 99, 72),
(12, 'butterfree', 11, 320, 178),
(13, 'weedle', 3, 32, 39),
(14, 'kakuna', 6, 100, 72),
(15, 'beedrill', 10, 295, 178),
(16, 'pidgey', 3, 18, 50),
(17, 'pidgeotto', 11, 300, 122),
(18, 'pidgeot', 15, 395, 216),
(19, 'rattata', 3, 35, 51),
(20, 'raticate', 7, 185, 145),
(21, 'spearow', 3, 20, 52),
(22, 'fearow', 12, 380, 155),
(23, 'ekans', 20, 69, 58),
(24, 'arbok', 35, 650, 157),
(25, 'pikachu', 4, 60, 112),
(26, 'raichu', 8, 300, 218),
(27, 'sandshrew', 6, 120, 60),
(28, 'sandslash', 10, 295, 158),
(29, 'nidoran-f', 4, 70, 55),
(30, 'nidorina', 8, 200, 128),
(31, 'nidoqueen', 13, 600, 227),
(32, 'nidoran-m', 5, 90, 55),
(33, 'nidorino', 9, 195, 128),
(34, 'nidoking', 14, 620, 227),
(35, 'clefairy', 6, 75, 113),
(36, 'clefable', 13, 400, 217),
(37, 'vulpix', 6, 99, 60),
(38, 'ninetales', 11, 199, 177),
(39, 'jigglypuff', 5, 55, 95),
(40, 'wigglytuff', 10, 120, 196),
(41, 'zubat', 8, 75, 49),
(42, 'golbat', 16, 550, 159),
(43, 'oddish', 5, 54, 64),
(44, 'gloom', 8, 86, 138),
(45, 'vileplume', 12, 186, 221),
(46, 'paras', 3, 54, 57),
(47, 'parasect', 10, 295, 142),
(48, 'venonat', 10, 300, 61),
(49, 'venomoth', 15, 125, 158),
(50, 'diglett', 2, 8, 53),
(51, 'dugtrio', 7, 333, 149),
(52, 'meowth', 4, 42, 58),
(53, 'persian', 10, 320, 154),
(54, 'psyduck', 8, 196, 64),
(55, 'golduck', 17, 766, 175),
(56, 'mankey', 5, 280, 61),
(57, 'primeape', 10, 320, 159),
(58, 'growlithe', 7, 190, 70),
(59, 'arcanine', 19, 1550, 194),
(60, 'poliwag', 6, 124, 60),
(61, 'poliwhirl', 10, 200, 135),
(62, 'poliwrath', 13, 540, 230),
(63, 'abra', 9, 195, 62),
(64, 'kadabra', 13, 565, 140),
(65, 'alakazam', 15, 480, 225),
(66, 'machop', 8, 195, 61),
(67, 'machoke', 15, 705, 142),
(68, 'machamp', 16, 1300, 227),
(69, 'bellsprout', 7, 40, 60),
(70, 'weepinbell', 10, 64, 137),
(71, 'victreebel', 17, 155, 221),
(72, 'tentacool', 9, 455, 67),
(73, 'tentacruel', 16, 550, 180),
(74, 'geodude', 4, 200, 60),
(75, 'graveler', 10, 1050, 137),
(76, 'golem', 14, 3000, 223),
(77, 'ponyta', 10, 300, 82),
(78, 'rapidash', 17, 950, 175),
(79, 'slowpoke', 12, 360, 63),
(80, 'slowbro', 16, 785, 172),
(81, 'magnemite', 3, 60, 65),
(82, 'magneton', 10, 600, 163),
(83, 'farfetchd', 8, 150, 132),
(84, 'doduo', 14, 392, 62),
(85, 'dodrio', 18, 852, 165),
(86, 'seel', 11, 900, 65),
(87, 'dewgong', 17, 1200, 166),
(88, 'grimer', 9, 300, 65),
(89, 'muk', 12, 300, 175),
(90, 'shellder', 3, 40, 61),
(91, 'cloyster', 15, 1325, 184),
(92, 'gastly', 13, 1, 62),
(93, 'haunter', 16, 1, 142),
(94, 'gengar', 15, 405, 225),
(95, 'onix', 88, 2100, 77),
(96, 'drowzee', 10, 324, 66),
(97, 'hypno', 16, 756, 169),
(98, 'krabby', 4, 65, 65),
(99, 'kingler', 13, 600, 166),
(100, 'voltorb', 5, 104, 66),
(101, 'electrode', 12, 666, 172),
(102, 'exeggcute', 4, 25, 65),
(103, 'exeggutor', 20, 1200, 186),
(104, 'cubone', 4, 65, 64),
(105, 'marowak', 10, 450, 149),
(106, 'hitmonlee', 15, 498, 159),
(107, 'hitmonchan', 14, 502, 159),
(108, 'lickitung', 12, 655, 77),
(109, 'koffing', 6, 10, 68),
(110, 'weezing', 12, 95, 172),
(111, 'rhyhorn', 10, 1150, 69),
(112, 'rhydon', 19, 1200, 170),
(113, 'chansey', 11, 346, 395),
(114, 'tangela', 10, 350, 87),
(115, 'kangaskhan', 22, 800, 172),
(116, 'horsea', 4, 80, 59),
(117, 'seadra', 12, 250, 154),
(118, 'goldeen', 6, 150, 64),
(119, 'seaking', 13, 390, 158),
(120, 'staryu', 8, 345, 68),
(121, 'starmie', 11, 800, 182),
(122, 'mr-mime', 13, 545, 161),
(123, 'scyther', 15, 560, 100),
(124, 'jynx', 14, 406, 159),
(125, 'electabuzz', 11, 300, 172),
(126, 'magmar', 13, 445, 173),
(127, 'pinsir', 15, 550, 175),
(128, 'tauros', 14, 884, 172),
(129, 'magikarp', 9, 100, 40),
(130, 'gyarados', 65, 2350, 189),
(131, 'lapras', 25, 2200, 187),
(132, 'ditto', 3, 40, 101),
(133, 'eevee', 3, 65, 65),
(134, 'vaporeon', 10, 290, 184),
(135, 'jolteon', 8, 245, 184),
(136, 'flareon', 9, 250, 184),
(137, 'porygon', 8, 365, 79),
(138, 'omanyte', 4, 75, 71),
(139, 'omastar', 10, 350, 173),
(140, 'kabuto', 5, 115, 71),
(141, 'kabutops', 13, 405, 173),
(142, 'aerodactyl', 18, 590, 180),
(143, 'snorlax', 21, 4600, 189),
(144, 'articuno', 17, 554, 261),
(145, 'zapdos', 16, 526, 261),
(146, 'moltres', 20, 600, 261),
(147, 'dratini', 18, 33, 60),
(148, 'dragonair', 40, 165, 147),
(149, 'dragonite', 22, 2100, 270),
(150, 'mewtwo', 20, 1220, 306),
(151, 'mew', 4, 40, 270);
--
-- Base de données : `ressourceshumaines`
--
CREATE DATABASE IF NOT EXISTS `ressourceshumaines` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ressourceshumaines`;

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

DROP TABLE IF EXISTS `employe`;
CREATE TABLE IF NOT EXISTS `employe` (
  `num` varchar(13) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `genre` char(1) NOT NULL,
  `date_naiss` varchar(255) NOT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `code_postal` varchar(10) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `tel` varchar(100) DEFAULT NULL,
  `salaire_mensuel` float DEFAULT NULL,
  `date_embauche` varchar(255) DEFAULT NULL,
  `cadre` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `employe`
--

INSERT INTO `employe` (`num`, `nom`, `prenom`, `genre`, `date_naiss`, `ville`, `code_postal`, `adresse`, `mail`, `tel`, `salaire_mensuel`, `date_embauche`, `cadre`) VALUES
('1600092719599', 'Leroux', 'Esteban', 'H', '1968-07-20 03:03:31', 'Rabbi', '28042', '9502 Aliquam Avenue', 'diam@Curae.com', '(289) 888-3584', 2925, '2018-12-16 01:44:20', 0),
('1601031766099', 'Gillet', 'Lina', 'F', '1948-01-22 13:56:15', 'Cannes', '77891', '925-4274 Ipsum Rd.', 'Cras.sed.leo@inhendrerit.org', '(590) 567-0341', 1989, '2005-09-07 00:39:24', 0),
('1602062720899', 'Mercier', 'Louis', 'H', '1966-11-03 10:26:23', 'Lac La Biche County', '52850', 'P.O. Box 574, 3770 Mollis. Road', 'risus.Quisque.libero@semNullainterdum.edu', '(463) 272-7806', 1903, '2019-09-13 09:53:21', 0),
('1604030488199', 'Chevalier', 'Margaux', 'F', '1982-10-03 09:52:05', 'Chatteris', '55807', '2992 Ut Av.', 'non.leo@risusquis.com', '(922) 841-4424', 1336, '2013-07-12 08:35:32', 0),
('1604080913999', 'Nguyen', 'Nina', 'F', '1980-12-05 20:08:30', 'Holman', '64597', '4276 Aliquam Rd.', 'dolor.nonummy.ac@tempor.com', '(547) 260-4532', 1761, '2007-12-19 09:17:03', 0),
('1605070305099', 'Renault', 'Françoise', 'F', '1945-01-20 02:13:26', 'Cambrai', '53058', '1675 Vulputate Street', 'egestas@pedePraesent.net', '(277) 427-8006', 2896, '2019-02-21 17:07:29', 0),
('1606011103599', 'Leclercq', 'Katell', 'F', '1983-11-09 04:50:48', 'Butte', '96251', '484-5898 Et, Av.', 'elit.erat@luctusipsum.edu', '(625) 491-8951', 3554, '2017-10-10 07:25:25', 0),
('1607022699499', 'Simon', 'Valentin', 'H', '1979-06-07 01:23:20', 'Guarapuava', '79109', '3047 Tempus St.', 'Integer.in.magna@auctor.ca', '(724) 124-5264', 6660, '2012-09-06 05:42:47', 1),
('1607062242699', 'Meunier', 'Laura', 'F', '1959-08-09 05:20:23', 'Moustier-sur-Sambre', '36601', 'P.O. Box 210, 8913 Pellentesque, Ave', 'risus@sedorci.com', '(461) 312-8386', 2016, '2008-03-22 10:28:28', 0),
('1607121380899', 'Roy', 'Martin', 'H', '1983-06-02 16:42:45', 'San Giovanni in Galdo', '76148', 'P.O. Box 471, 1843 A Street', 'auctor.ullamcorper.nisl@Aliquamerat.com', '(796) 763-4477', 1991, '2018-12-02 06:11:00', 0),
('1608060994999', 'Charpentier', 'Valentine', 'F', '1999-05-15 13:04:27', 'Seloignes', '86342', '769-2832 Luctus St.', 'aliquam@ac.org', '(460) 372-3328', 1661, '2016-08-16 04:36:14', 0),
('1609022747899', 'Pereira', 'Rémi', 'H', '1983-03-20 08:38:34', 'Segni', '76677', 'P.O. Box 312, 1522 Ante Av.', 'et.eros@ametornarelectus.co.uk', '(726) 612-8671', 4582, '2015-06-26 15:07:05', 1),
('1610100288099', 'Hubert', 'Anna', 'F', '1986-04-27 06:35:23', 'Georgia', '09889', 'P.O. Box 166, 6621 Sagittis. Av.', 'vel@metusfacilisis.com', '(958) 998-3386', 2588, '2017-08-09 03:29:55', 0),
('1612010264999', 'Benoit', 'Jérémy', 'H', '1958-09-18 05:43:27', 'Mühlheim am Main', '54167', '6259 Et, St.', 'nulla@mauris.com', '(127) 928-3063', 1366, '2016-09-28 14:13:07', 0),
('1613010751699', 'Gerard', 'Sarah', 'F', '1947-07-13 13:45:41', 'Pratovecchio', '30648', 'Ap #526-8554 Vivamus Ave', 'dis.parturient@infelisNulla.org', '(310) 377-5859', 1244, '2017-06-30 07:00:19', 0),
('1614012537399', 'Le goff', 'Valentin', 'H', '2000-06-22 23:34:12', 'Saint-Prime', '02842', '736-2938 Erat Ave', 'Nulla.eget.metus@blanditviverraDonec.co.uk', '(509) 792-3549', 1514, '2017-10-25 05:15:11', 0),
('1614022472999', 'Philippe', 'Élisa', 'F', '1998-12-21 12:27:18', 'Didim', '61804', 'P.O. Box 166, 3839 Integer St.', 'erat@Phasellus.edu', '(491) 787-3505', 1530, '2018-04-11 23:21:14', 0),
('1614061013699', 'Royer', 'Candice', 'F', '2000-01-22 05:25:03', 'Villamassargia', '93222', 'Ap #865-1773 Ultrices Rd.', 'eu.tellus@arcuVestibulumut.edu', '(935) 383-6542', 1560, '2017-10-27 05:21:43', 0),
('1614092622399', 'Leclercq', 'Amandine', 'F', '1975-04-01 16:59:18', 'Bergisch Gladbach', '61887', '5005 Sed Rd.', 'magna.a.neque@feugiatLoremipsum.org', '(982) 563-9905', 1832, '2017-11-28 22:45:42', 0),
('1615010220999', 'Fontaine', 'Carla', 'F', '1996-11-19 04:38:46', 'Sundrie', '33761', '237-3234 Natoque Rd.', 'eu@In.edu', '(773) 872-2383', 1922, '2014-06-28 19:11:57', 0),
('1615021767899', 'Guerin', 'Gabin', 'H', '1994-04-21 00:00:46', 'Ribeirão das Neves', '14722', '823-8497 Faucibus Rd.', 'massa.Vestibulum.accumsan@faucibus.org', '(389) 433-0537', 1949, '2018-02-14 14:58:05', 0),
('1616040630099', 'Gerard', 'Mélissa', 'H', '1985-12-25 21:36:43', 'Saavedra', '29830', 'Ap #155-5408 Nunc Ave', 'orci.quis.lectus@tempus.org', '(732) 360-1751', 8405, '2005-04-30 03:04:11', 1),
('1616080895799', 'Picard', 'Lutécia', 'F', '1978-06-19 06:41:29', 'Corroy-le-Grand', '07908', 'Ap #588-4861 Vel, Avenue', 'Nulla.eu.neque@ornare.org', '(515) 378-1823', 1920, '2019-08-22 19:45:43', 0),
('1617041813799', 'Bertrand', 'Jules', 'H', '1966-03-17 17:39:24', 'Libramont-Chevigny', '94529', 'P.O. Box 858, 6261 Quis Street', 'Nullam@DonecegestasAliquam.org', '(656) 995-4096', 4938, '2017-03-25 22:10:47', 1),
('1617052572999', 'Etienne', 'Noémie', 'F', '1987-11-30 12:58:22', 'Wetaskiwin', '00523', '9145 Nibh Avenue', 'imperdiet.non.vestibulum@lectus.co.uk', '(664) 949-7737', 1093, '2008-09-28 16:10:43', 0),
('1618032215299', 'Denis', 'Noë', 'H', '1984-07-01 21:35:32', 'Matagami', '17691', '576-5375 Aliquam Street', 'metus.In.lorem@pede.net', '(678) 253-8731', 3298, '2011-09-16 05:32:45', 0),
('1620071904599', 'Berger', 'Gilbert', 'H', '1950-10-21 21:49:21', 'Gespeg', '55797', '7277 Pede. St.', 'nascetur.ridiculus@Integer.co.uk', '(733) 700-2984', 9084, '2017-01-20 09:22:57', 1),
('1622012537599', 'Berger', 'Dimitri', 'H', '1961-12-09 06:47:41', 'Tacoma', '41179', 'P.O. Box 323, 3712 Vivamus Rd.', 'risus@sagittisaugue.co.uk', '(840) 192-4613', 1826, '2012-04-02 01:32:16', 0),
('1622090929599', 'Mercier', 'Gilbert', 'H', '1995-08-09 19:24:07', 'Lakewood', '67760', 'P.O. Box 386, 9055 Imperdiet Av.', 'sagittis.semper@natoquepenatibus.com', '(779) 608-9065', 1084, '2016-06-16 22:11:53', 0),
('1622101274999', 'David', 'Julie', 'F', '1945-07-13 17:26:25', 'Worcester', '45937', '666-7609 Elit, Street', 'amet.luctus@sitamet.net', '(249) 528-7382', 5398, '2015-10-04 09:45:08', 1),
('1622112209199', 'Roger', 'Corentin', 'H', '1994-03-18 06:29:14', 'Montereale', '08284', '2224 Rhoncus. Road', 'enim.commodo@mauriseuelit.com', '(883) 872-5212', 6122, '2005-11-02 07:33:06', 1),
('1623062464799', 'Roy', 'Yanis', 'H', '1977-01-22 09:06:27', 'Kota', '58707', '2382 Risus. Street', 'purus.in.molestie@malesuadaaugue.co.uk', '(302) 288-3542', 2050, '2018-10-06 16:10:07', 0),
('1626021699699', 'Millet', 'Amine', 'H', '1963-02-03 22:50:42', 'Ribeirão Preto', '07032', '7562 Velit Rd.', 'enim@tellussemmollis.net', '(385) 455-7075', 3838, '2006-12-11 05:58:25', 0),
('1628042018699', 'Mercier', 'Maxime', 'H', '1980-12-22 02:45:44', 'Duluth', '97267', '6391 Rutrum Av.', 'ridiculus@liberoettristique.net', '(475) 381-2927', 1491, '2006-07-26 20:29:43', 0),
('1630020142299', 'Bertrand', 'Émilie', 'F', '1999-07-21 03:53:53', 'Cholet', '83183', '373-4807 Massa Avenue', 'et.netus.et@tortornibh.com', '(182) 125-8692', 1969, '2007-11-24 04:00:39', 0),
('1631032697899', 'Lecomte', 'Lucie', 'F', '1953-06-04 00:09:14', 'Chalon-sur-Saône', '06388', '113-8084 Orci, St.', 'nascetur.ridiculus@Aliquam.net', '(208) 202-1731', 1159, '2018-09-23 02:33:08', 0),
('1631061459699', 'Baron', 'Titouan', 'H', '1998-04-10 12:17:05', 'Avellino', '12294', '6522 Eget St.', 'ac.urna.Ut@Vestibulum.edu', '(260) 921-8302', 6276, '2005-10-06 06:00:09', 1),
('1631092352399', 'Noel', 'Alexandra', 'F', '1968-04-28 03:38:23', 'Pocatello', '01027', '7556 Amet Avenue', 'mattis.ornare.lectus@quis.org', '(617) 931-6605', 1813, '2015-07-01 13:00:04', 0),
('1634050649399', 'Guerin', 'Roméo', 'H', '1985-10-23 02:25:36', 'Tortel', '02412', '5946 Feugiat Rd.', 'quam@loremtristique.edu', '(967) 163-6915', 1446, '2018-08-30 08:52:57', 0),
('1642112168899', 'Bouvier', 'Hugo', 'H', '1954-12-31 12:48:58', 'Sandviken', '51967', '280-8656 Dis St.', 'Sed@nequeNullam.ca', '(303) 828-0625', 5667, '2009-01-28 16:33:21', 1),
('1646081750199', 'Le gall', 'Agathe', 'F', '1999-06-06 08:13:00', 'Avelgem', '71434', '704-8840 Tempus, Rd.', 'pharetra@dolorelit.net', '(615) 968-0034', 1972, '2014-05-28 19:49:20', 0),
('1647021575499', 'Bourgeois', 'Timothée', 'H', '1985-11-01 05:47:35', 'Llaillay', '95794', 'Ap #543-5654 Ullamcorper. Road', 'convallis.dolor.Quisque@feugiatmetussit.ca', '(229) 363-4319', 4987, '2018-03-10 06:27:46', 1),
('1649051893399', 'Clement', 'Alexandre', 'F', '1960-05-12 13:45:15', 'Knittelfeld', '26358', '1653 Ac, St.', 'ante.bibendum.ullamcorper@Duis.org', '(532) 723-9871', 1544, '2007-07-04 21:08:13', 0),
('1649111372599', 'Barbier', 'Paul', 'H', '1980-11-25 23:54:14', 'Verrebroek', '99745', 'Ap #410-736 Quisque Av.', 'elit.erat@Duismi.org', '(420) 955-1525', 3014, '2012-06-17 22:14:59', 0),
('1650120248899', 'Maillard', 'Léo', 'H', '1950-09-09 08:17:39', 'Nicoya', '88912', '777-5858 Nulla Av.', 'pede.et.risus@Praesenteu.co.uk', '(291) 386-9454', 2970, '2019-03-01 03:40:31', 0),
('1651050960999', 'Weber', 'Thibault', 'H', '1983-01-03 12:10:26', 'Lonquimay', '20532', '833-956 Penatibus Ave', 'odio@enim.ca', '(177) 685-0899', 3767, '2016-08-13 09:11:27', 0),
('1651080977199', 'Olivier', 'Nicolas', 'H', '1991-01-23 14:48:22', 'Valleyview', '46221', 'P.O. Box 962, 1293 Felis. Av.', 'id.risus@eu.com', '(747) 203-0876', 5667, '2017-06-12 16:41:46', 1),
('1652081740199', 'Guerin', 'Margot', 'F', '1961-06-11 19:30:11', 'Dolembreux', '82335', 'Ap #962-4485 Vestibulum, St.', 'dolor.Donec@sapienAenean.net', '(995) 962-7689', 1761, '2019-02-21 12:57:01', 0),
('1652120339299', 'Paul', 'Kylian', 'H', '1992-01-23 08:39:57', 'Tiverton', '67551', 'P.O. Box 441, 3225 Nec, Rd.', 'ligula.elit.pretium@Morbiquis.org', '(441) 912-1889', 4919, '2017-04-17 21:54:41', 1),
('1653070880399', 'Leclerc', 'Carla', 'F', '1973-10-13 18:20:01', 'Habergy', '84458', 'Ap #985-2741 Mattis St.', 'iaculis.quis@sempercursus.co.uk', '(807) 484-5333', 1382, '2019-10-16 02:53:09', 0),
('1653102397299', 'Jean', 'Clara', 'F', '1971-03-25 15:15:30', 'Gateshead', '65227', '8051 Amet Rd.', 'nunc.sed@quam.co.uk', '(623) 822-3020', 2186, '2018-05-28 06:04:36', 0),
('1654012825799', 'Meyer', 'Victor', 'H', '1957-03-26 18:05:55', 'Lehrte', '28791', '680-5075 Aliquam Rd.', 'hendrerit@nonummyultriciesornare.com', '(271) 499-7086', 9447, '2017-02-23 10:53:13', 1),
('1655081176299', 'Roussel', 'Tristan', 'H', '1997-09-01 06:19:39', 'Speyer', '54121', 'Ap #782-8053 Eu Ave', 'imperdiet@rutrumlorem.org', '(739) 372-1628', 7664, '2016-01-26 10:52:31', 1),
('1658060248099', 'Fabre', 'Lamia', 'F', '1996-12-10 21:39:42', 'Sainte-Marie-Chevigny', '58826', '790-6117 Ultricies St.', 'Nunc.lectus.pede@Nullatempor.co.uk', '(606) 881-3586', 1770, '2017-05-10 12:05:50', 0),
('1658081869199', 'Paris', 'Alexia', 'F', '1986-02-13 02:47:51', 'Diyarbakır', '80289', 'P.O. Box 875, 7342 Rutrum Rd.', 'eu.ligula.Aenean@elitEtiamlaoreet.org', '(712) 943-4506', 1592, '2012-05-12 22:05:01', 0),
('1659040313999', 'Chevallier', 'Lorenzo', 'H', '1984-12-30 19:10:34', 'Tillicoultry', '05440', 'P.O. Box 301, 1575 Sed Rd.', 'sapien.Cras.dolor@enim.co.uk', '(235) 160-1848', 4338, '2015-07-06 08:28:33', 1),
('1661020726099', 'Rousseau', 'Maxime', 'H', '1958-02-12 09:20:32', 'Pizzoferrato', '82038', 'Ap #110-7426 Odio. Ave', 'nulla@nullaDonecnon.com', '(982) 333-2888', 1968, '2010-04-14 05:17:40', 0),
('1661101412699', 'Sanchez', 'Jeanne', 'F', '1964-08-06 10:55:28', 'Rothesay', '58166', 'P.O. Box 883, 6132 Ornare. Rd.', 'cubilia.Curae.Phasellus@sedsapien.edu', '(361) 817-4488', 1764, '2019-03-03 19:10:56', 0),
('1661101798599', 'Gay', 'Félix', 'H', '1998-12-31 12:18:05', 'Chapra', '86684', '546 Penatibus St.', 'id.enim.Curabitur@Morbi.net', '(286) 719-8455', 6446, '2018-07-16 05:08:32', 1),
('1661120683999', 'Breton', 'Nolan', 'H', '1958-09-20 20:51:57', 'Pointe-aux-Trembles', '01687', 'Ap #595-3798 Ipsum Street', 'lorem.tristique@aliquetmagna.com', '(844) 936-4471', 1875, '2017-11-28 02:36:50', 0),
('1662052646499', 'Boucher', 'Clément', 'H', '1974-03-23 05:19:22', 'Milano', '29005', 'P.O. Box 354, 3352 Donec Rd.', 'est.mauris.rhoncus@commodo.net', '(508) 438-3749', 4355, '2014-12-08 05:24:01', 1),
('1665072640899', 'Renard', 'Bienvenue', 'F', '1970-01-22 08:18:54', 'Sosnowiec', '57386', 'P.O. Box 282, 8789 Gravida Avenue', 'metus.In@dictumultriciesligula.net', '(212) 579-7300', 2041, '2016-09-30 04:11:45', 0),
('1666060968299', 'Paul', 'Florian', 'H', '1994-03-14 18:13:16', 'Scorrano', '52349', '769 Sed St.', 'porttitor.interdum.Sed@sitamet.com', '(146) 254-1021', 3221, '2009-10-10 10:35:26', 0),
('1666101308099', 'Brun', 'Candice', 'F', '1971-08-02 15:42:34', 'Murdochville', '57536', 'P.O. Box 291, 2852 Enim St.', 'eget.metus.In@ultricesposuere.org', '(198) 537-4792', 3383, '2018-02-15 04:01:08', 0),
('1668071076199', 'Brunet', 'Léo', 'H', '1946-03-31 13:09:57', 'Argyle', '83737', 'Ap #703-9994 Amet, St.', 'felis.Donec@duiquisaccumsan.ca', '(434) 567-8165', 2227, '2017-07-06 22:03:22', 0),
('1670031785099', 'Francois', 'Océane', 'F', '1962-06-26 16:21:04', 'Beuzet', '28773', '1331 Sit St.', 'vitae@laoreetipsum.ca', '(792) 507-6079', 1809, '2016-07-15 22:08:38', 0),
('1670071144599', 'Vasseur', 'Mohamed', 'H', '1988-09-05 21:57:16', 'Gold Coast', '00880', 'P.O. Box 139, 1459 Nascetur Av.', 'dictum.eu.eleifend@magna.co.uk', '(228) 790-9342', 1582, '2011-03-11 18:30:52', 0),
('1671020441999', 'Huet', 'Yasmine', 'F', '1972-08-30 05:43:29', 'Bansberia', '63772', 'Ap #143-6256 Ipsum Rd.', 'mi.fringilla.mi@ut.ca', '(770) 784-4420', 1649, '2011-06-23 11:45:27', 0),
('1671061606699', 'Thomas', 'Thibault', 'H', '1978-10-27 11:58:09', 'Viersel', '63346', '105-5574 Sed Road', 'mattis.ornare.lectus@est.net', '(243) 987-6501', 1043, '2016-11-13 13:35:35', 0),
('1671062044899', 'Dufour', 'Elsa', 'F', '1989-06-25 14:00:41', 'Vagli Sotto', '58529', '5980 Turpis Avenue', 'nisl.Quisque@Etiambibendumfermentum.com', '(839) 512-1837', 1511, '2005-08-28 00:42:23', 0),
('1671080833799', 'Maillard', 'Gabriel', 'H', '1957-03-17 21:51:55', 'Castello dell\'Acqua', '39108', 'Ap #863-1335 Ut St.', 'Nullam@utipsumac.org', '(259) 960-0776', 3453, '2012-09-29 09:15:31', 0),
('1671082093899', 'Marechal', 'Hugo', 'H', '1984-07-24 20:50:37', 'Virginia Beach', '38881', 'P.O. Box 157, 8590 Eu, Street', 'Integer.urna.Vivamus@duiaugue.org', '(142) 313-9347', 1694, '2017-05-31 17:23:37', 0),
('1672090826499', 'Marechal', 'Anaïs', 'F', '1980-02-29 00:00:20', 'Roio del Sangro', '75461', '793-745 Semper St.', 'Phasellus.ornare.Fusce@aliquamiaculis.ca', '(657) 784-3656', 1206, '2018-12-22 11:15:11', 0),
('1673092423199', 'Dumas', 'Elsa', 'F', '1947-01-29 02:23:34', 'Prestatyn', '40147', '303-8540 Sociosqu Rd.', 'metus.urna@nascetur.ca', '(201) 188-2898', 3615, '2017-10-03 08:53:36', 0),
('1674122051299', 'Lemoine', 'Timéo', 'H', '1973-02-18 19:48:08', 'Sterrebeek', '94189', 'Ap #151-9192 Quis Rd.', 'eget.dictum.placerat@necanteblandit.ca', '(926) 959-3686', 2303, '2008-06-02 16:51:36', 0),
('1675070818499', 'Roussel', 'Romain', 'H', '1999-04-16 15:32:26', 'St. Austell', '17107', '563-2539 Sapien Rd.', 'vestibulum@enimconsequat.com', '(427) 844-7725', 3488, '2016-01-21 01:37:52', 0),
('1675092608999', 'Dupuy', 'Louise', 'F', '1992-01-21 11:08:32', 'Temuka', '94662', '273-9931 Sollicitudin Rd.', 'euismod.urna@Praesenteunulla.org', '(293) 330-0665', 2653, '2007-11-11 08:02:21', 0),
('1675101087799', 'Louis', 'Adrian', 'H', '1959-10-27 19:08:59', 'Stourbridge', '27097', 'P.O. Box 714, 7009 A, Street', 'molestie.tellus@sapien.ca', '(269) 371-2613', 2412, '2018-10-03 18:33:50', 0),
('1676080537799', 'Boyer', 'Luna', 'F', '1998-05-14 14:32:37', 'Eghezee', '11134', '3161 Blandit Street', 'senectus@nunc.org', '(882) 553-8427', 4730, '2017-11-03 20:07:00', 1),
('1676100172699', 'Collet', 'Guillaume', 'H', '1986-04-08 05:23:53', 'Port Moody', '68140', '350-3204 Integer Rd.', 'facilisis.eget.ipsum@penatibuset.co.uk', '(680) 982-7512', 2156, '2010-05-24 23:29:47', 0),
('1679091797999', 'Schneider', 'Guillemette', 'F', '1978-12-23 00:59:02', 'Bazel', '20036', '979-3772 Fringilla Ave', 'mollis.Phasellus.libero@velnislQuisque.ca', '(564) 444-1651', 1793, '2011-05-03 08:31:55', 0),
('1680022504899', 'Duval', 'Mélissa', 'F', '1953-05-17 03:39:29', 'Tuscaloosa', '04830', '828-4234 Natoque Road', 'Donec.feugiat@etmagnisdis.org', '(560) 407-3176', 1117, '2018-06-30 20:32:27', 0),
('1682011209899', 'Chevallier', 'Kyllian', 'H', '1987-05-05 12:40:08', 'Limache', '74017', '868-7323 A Ave', 'Integer.vitae@ettristiquepellentesque.net', '(933) 257-0324', 2145, '2019-10-16 12:12:08', 0),
('1682011351999', 'Michel', 'Titouan', 'H', '1962-08-23 00:44:04', 'Tontelange', '78235', 'Ap #193-6139 Ligula St.', 'ipsum.cursus@duinecurna.net', '(197) 400-2860', 9214, '2016-04-06 14:43:14', 1),
('1683092146899', 'Bernard', 'Arthur', 'H', '1973-09-16 22:22:58', 'Rum', '67481', 'Ap #726-4549 In Av.', 'nunc.ac.mattis@egestas.net', '(637) 817-2334', 1130, '2013-02-23 08:18:07', 0),
('1684041403599', 'Denis', 'Bienvenue', 'H', '1984-06-11 21:58:09', 'Yamuna Nagar', '60731', 'P.O. Box 838, 3203 Venenatis St.', 'eu.ligula@nonummy.net', '(972) 138-1828', 3265, '2005-05-08 21:20:54', 0),
('1684052834699', 'Cordier', 'Guillemette', 'F', '1960-05-02 01:28:37', 'Tamworth', '91942', '283-7892 Nunc Avenue', 'molestie@ipsumdolor.co.uk', '(486) 969-9188', 1622, '2019-08-30 16:06:02', 0),
('1684083095599', 'Gauthier', 'Romain', 'H', '1969-03-20 16:47:53', 'Ollagüe', '39851', '9843 Orci Ave', 'placerat@nequeSed.edu', '(272) 340-2416', 1301, '2017-11-12 14:22:18', 0),
('1685021770599', 'Lemaire', 'Anaël', 'F', '1970-03-03 15:24:41', 'Castel Ritaldi', '69621', '5219 Lectus, Street', 'at@eget.co.uk', '(861) 458-0171', 1878, '2018-01-30 11:58:16', 0),
('1685023083099', 'Guillaume', 'Victor', 'H', '1967-12-25 08:05:04', 'Rajkot', '80041', '7073 Tellus. Road', 'nulla@Ut.org', '(602) 680-6001', 1885, '2016-05-05 06:53:12', 0),
('1686012639899', 'Dupuy', 'Titouan', 'H', '1993-12-26 08:13:30', 'Sangli', '66401', '651 Lectus Av.', 'risus.Donec@arcuVivamus.edu', '(419) 962-8105', 2515, '2008-05-24 07:32:08', 0),
('1687022233399', 'Humbert', 'Agathe', 'F', '2000-06-24 19:53:22', 'Inveraray', '85226', '422-9759 Eu Rd.', 'lectus.Nullam@vestibulum.org', '(112) 433-4443', 7429, '2019-01-18 11:03:09', 1),
('1687061065999', 'Robin', 'Mattéo', 'H', '1995-10-20 17:45:56', 'Hollange', '33371', 'Ap #310-2127 Sit St.', 'eros.non@ridiculusmus.edu', '(792) 904-9004', 3840, '2008-06-30 08:56:18', 0),
('1689091505299', 'Martin', 'Timothée', 'H', '1997-08-09 12:46:06', 'Alto Biobío', '89799', '810-4427 Aliquet Av.', 'porttitor.interdum.Sed@eleifendegestas.co.uk', '(212) 247-4682', 1878, '2017-12-31 18:32:13', 0),
('1694082319299', 'Lambert', 'Capucine', 'F', '1973-08-05 10:33:29', 'Incourt', '84080', 'Ap #912-8326 Pharetra. St.', 'vitae.posuere.at@Nullamut.co.uk', '(962) 692-2950', 2034, '2016-01-26 14:14:31', 0),
('1696040543899', 'Charpentier', 'Juliette', 'F', '2000-08-07 08:35:58', 'Rockingham', '42083', '2846 Magna Avenue', 'dui.lectus.rutrum@dictumsapien.edu', '(662) 955-1949', 1983, '2007-07-15 00:49:04', 0),
('1696102202499', 'Sanchez', 'Louise', 'F', '1997-08-21 07:20:38', 'San Pancrazio Salentino', '76529', '8198 Placerat Rd.', 'et@egestasAliquam.com', '(781) 389-8305', 1508, '2018-12-09 17:37:38', 0),
('1697011679299', 'Marchand', 'Timothée', 'H', '1952-04-25 09:25:41', 'Grey County', '14477', 'P.O. Box 192, 3188 Aliquam Ave', 'elit.Etiam.laoreet@estmaurisrhoncus.com', '(567) 496-4785', 2943, '2014-08-13 14:50:07', 0),
('1698062412099', 'Fabre', 'Gabin', 'H', '1978-10-14 01:19:23', 'Sint-Laureins-Berchem', '83328', 'P.O. Box 867, 7423 Lorem, Street', 'neque.Nullam@tellusjustosit.ca', '(606) 521-7860', 2073, '2015-09-24 05:59:22', 0),
('1698070432499', 'Pons', 'Gabin', 'H', '1981-09-10 22:43:37', 'Malle', '50548', '525-9074 Phasellus Road', 'neque@Crassed.ca', '(365) 625-0156', 2003, '2019-07-21 23:20:58', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
