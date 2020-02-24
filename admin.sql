-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 24 fév. 2020 à 11:15
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `admin`
--

-- --------------------------------------------------------

--
-- Structure de la table `medicaments`
--

DROP TABLE IF EXISTS `medicaments`;
CREATE TABLE IF NOT EXISTS `medicaments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `medicaments`
--

INSERT INTO `medicaments` (`id`, `name`, `description`) VALUES
(1, 'amal', 'kk'),
(2, 'amal', 'kk'),
(3, 'hanane', 'mppp'),
(4, 'hanane', 'mppp'),
(5, 'hanane', 'mppp'),
(6, 'hanane', 'kk'),
(7, 'hanane', 'mppp'),
(8, 'hanane', 'mppp');

-- --------------------------------------------------------

--
-- Structure de la table `patients`
--

DROP TABLE IF EXISTS `patients`;
CREATE TABLE IF NOT EXISTS `patients` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `cin` varchar(255) NOT NULL,
  `mutuelle` varchar(255) NOT NULL,
  `scolarite` varchar(255) NOT NULL,
  `date_naissance_age` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `autre_inforamtions` varchar(255) NOT NULL,
  `profession` varchar(255) NOT NULL,
  `nombre_denfant` int(11) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `situation_familiale` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `patients`
--

INSERT INTO `patients` (`id`, `nom`, `reference`, `cin`, `mutuelle`, `scolarite`, `date_naissance_age`, `adresse`, `tel`, `autre_inforamtions`, `profession`, `nombre_denfant`, `prenom`, `situation_familiale`) VALUES
(1, 'Molestiae voluptatib', 'Ipsam unde in sed qu', 'Exercitationem vitae', 'Voluptate labore qua', 'Magnam do pariatur ', '25-Jan-1972', 'Qui est neque ex su', 'Omnis ea eos quasi s', 'Ut dicta et nulla no', 'Voluptatem sit sed q', 3, 'Quam asperiores magn', ''),
(29, 'lagmiri', 'dd', 'HH14673', 'non', 'web', '11-05-1995', 'jananecoloone', '0635316871', 'non', 'devloppeur web', 0, 'amal', 'CÃ©libataire'),
(31, 'lagmiri', 'dd', 'HH14673', 'non', 'web', '11-05-1995', 'jananecoloone', '0635316871', 'non', 'devloppeur web', 0, 'amal', 'CÃ©libataire'),
(32, 'lagmiri', '', '', '', '', '', '', '', '', '', 0, 'amal', '');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'admin',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `created_at`) VALUES
(2, 'drdocteur', 'drdocteur@gmail.com', 'drdocteur123', 'admin', '2020-02-18 14:32:38');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
