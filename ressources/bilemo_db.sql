-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 17 fév. 2023 à 11:43
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bilemo_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C7440455E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `email`, `roles`, `password`) VALUES
(1, 'client0@bilemo.com', '[\"ROLE_USER\"]', '$2y$13$/uRyaeXPmHC.nQtq.qXvx.6/tleaLGFN/amM/KsQCDEcnVajfytBO'),
(2, 'client1@bilemo.com', '[\"ROLE_USER\"]', '$2y$13$IkNPsBqzZcxfbc05A6UDkOO7pNLtT9gZ.qB85p57lbbwaWBc7IW1a'),
(3, 'client2@bilemo.com', '[\"ROLE_USER\"]', '$2y$13$n.03zvteKpYDVvwzjfAxo.Jgr1QU3zFWwEfD0G9a4QNA5E6cMmsQa');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230217114001', '2023-02-17 11:40:12', 91);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memory` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `brand`, `model`, `color`, `memory`, `description`, `price`) VALUES
(1, 'Oppo', '13 Ultra', 'Blue', 256, 'Simply different', 249.99),
(2, 'Xiaomi', 'S22', 'Yellow', 32, 'Simply different', 999.99),
(3, 'Xiaomi', 'S22', 'Black', 128, 'This is the product you need', 249.99),
(4, 'Apple', '7 Plus', 'Blue', 32, 'Our brand new flagship', 999.99),
(5, 'Xiaomi', '13 Ultra', 'Blue', 128, 'Once you\'ve tried it, you can\'t go back', 149.99),
(6, 'Samsung', '13 Ultra', 'Grey', 512, 'Once you\'ve tried it, you can\'t go back', 249.99),
(7, 'Oppo', '13 Ultra', 'White', 128, 'Simply different', 149.99),
(8, 'Google', '13 Ultra', 'Black', 64, 'Our brand new flagship', 1299.99),
(9, 'Samsung', '7 Plus', 'White', 64, 'This is the product you need', 249.99),
(10, 'Google', 'S22', 'Yellow', 128, 'This is the product you need', 149.99);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8D93D64919EB6921` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `client_id`, `email`, `creation_date`) VALUES
(1, 3, 'user0@bilemo.com', '2023-02-17 11:40:30'),
(2, 1, 'user1@bilemo.com', '2023-02-17 11:40:30'),
(3, 2, 'user2@bilemo.com', '2023-02-17 11:40:30'),
(4, 2, 'user3@bilemo.com', '2023-02-17 11:40:30'),
(5, 1, 'user4@bilemo.com', '2023-02-17 11:40:30'),
(6, 1, 'user5@bilemo.com', '2023-02-17 11:40:30'),
(7, 1, 'user6@bilemo.com', '2023-02-17 11:40:30'),
(8, 3, 'user7@bilemo.com', '2023-02-17 11:40:30'),
(9, 3, 'user8@bilemo.com', '2023-02-17 11:40:30'),
(10, 3, 'user9@bilemo.com', '2023-02-17 11:40:30');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D64919EB6921` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
