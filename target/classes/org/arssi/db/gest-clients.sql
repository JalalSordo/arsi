-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 07 Octobre 2016 à 00:53
-- Version du serveur :  10.1.13-MariaDB
-- Version de PHP :  5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gest-clients`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(500) NOT NULL,
  `Adresse` varchar(1000) DEFAULT NULL,
  `Ville` varchar(500) DEFAULT NULL,
  `Pays` varchar(100) DEFAULT NULL,
  `Telephone` varchar(100) DEFAULT NULL,
  `Fax` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Site_Web` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`ID`, `Nom`, `Adresse`, `Ville`, `Pays`, `Telephone`, `Fax`, `Email`, `Site_Web`) VALUES
(8, 'Diditaaaaaaaaa', 'Adresse6', 'Ville6', 'Paysmmmmm', '', '', '', ''),
(9, 'Client7', 'Adresse7', 'Ville7', 'Pays7', 'Telephone7', 'FAx7', 'Email7', 'Site_Web7'),
(14, 'Client10', 'Adresse10', 'Ville10', NULL, NULL, NULL, NULL, NULL),
(15, 'Client11jkhkjhkjhkjhk', 'Adresse11', 'Ville11', 'Pays11', 'Telephone11', '', '', ''),
(16, 'Client12', 'Adresse12', 'Ville12', 'Pays12', 'Telephone12', NULL, NULL, NULL),
(17, 'Client13', 'Adresse13', 'Ville13', NULL, NULL, NULL, NULL, NULL),
(18, 'Client14', 'Adresse14', 'Ville14', 'Pays14', '', 'lmluytfg', '', ''),
(19, 'Client15', 'Adresse15', 'Ville15', NULL, NULL, NULL, NULL, NULL),
(20, 'Client16', 'Adresse16', ' Ville16', NULL, NULL, NULL, NULL, 'Site_Web16'),
(21, 'Client17', 'Adresse17', 'Ville17', NULL, NULL, NULL, NULL, NULL),
(22, 'Client18', 'Adresse18', 'Ville18', NULL, NULL, NULL, 'Email18', NULL),
(23, 'Client19', 'Adresse10', 'Ville19', 'Pays19', 'Telephone10', 'Fax19', 'Email19', 'Site_Web'),
(24, 'Client20', 'Adresse20', 'Ville20', 'Pays20', 'Telephone20', 'Fax20', 'Email20', 'Site_Web20'),
(26, 'Diditaaaaaaaaa', 'Ville6', 'Adresse6', '', '', '', '', 'Paysmmmmm'),
(27, 'hhhhh', 'hhh', 'Adresse6', '', '', '', '', 'Paysmmmmm'),
(28, 'HHH', 'j', 'k', '', '', '', '', '');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
