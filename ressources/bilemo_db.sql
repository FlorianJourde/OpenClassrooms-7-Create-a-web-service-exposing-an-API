-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 09 fév. 2023 à 16:41
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
(1, 'client0@bilemo.com', '[\"ROLE_USER\"]', '$2y$13$gzowZU3GCMrc8IAuyR11I.Tyk5/L2Xj5rU1OS8H9cb1VYQnR0DuPy'),
(2, 'client1@bilemo.com', '[\"ROLE_USER\"]', '$2y$13$DkCAza5uiKDZXcmUatrrTe8tRZyfiIcQM5fXtfrVVlAE/13WtxmPG'),
(3, 'client2@bilemo.com', '[\"ROLE_USER\"]', '$2y$13$jeOW5rDdqWUlPedEFi0hiuQ6IhS31UwjZmJGiWEs3ktGJuWlyqus2');

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
('DoctrineMigrations\\Version20230130215046', '2023-01-30 21:51:01', 54),
('DoctrineMigrations\\Version20230209112315', '2023-02-09 11:23:21', 105),
('DoctrineMigrations\\Version20230209112344', '2023-02-09 11:23:47', 110);

-- --------------------------------------------------------

--
-- Structure de la table `phone`
--

DROP TABLE IF EXISTS `phone`;
CREATE TABLE IF NOT EXISTS `phone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memory` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `phone`
--

INSERT INTO `phone` (`id`, `brand`, `model`, `color`, `memory`, `description`, `price`) VALUES
(11, 'Google', '14', 'Red', 128, 'This is the phone you need', 999.99),
(12, 'Apple', '13 Ultra', 'Black', 64, 'The best smartphone overall', 249.99),
(13, 'Samsung', 'S22', 'Green', 32, 'Once you\'ve tried it, you can\'t go back', 149.99),
(14, 'Xiaomi', 'X6 Pro', 'Black', 32, 'Our brand new flagship', 999.99),
(15, 'Samsung', 'X6 Pro', 'Grey', 128, 'Simply different', 149.99),
(16, 'Xiaomi', '14', 'White', 512, 'Once you\'ve tried it, you can\'t go back', 499.99),
(17, 'Xiaomi', '13 Ultra', 'Black', 64, 'This is the phone you need', 999.99),
(18, 'Google', '14', 'Black', 512, 'Our brand new flagship', 499.99),
(19, 'Google', 'S22', 'Red', 32, 'The best smartphone overall', 149.99),
(20, 'Google', '13 Ultra', 'Red', 32, 'Simply different', 149.99);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8D93D64919EB6921` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `creation_date`, `client_id`) VALUES
(1, 'user0@bilemo.com', '2023-02-03 14:31:24', 1),
(2, 'user1@bilemo.com', '2023-02-03 14:31:24', 2),
(3, 'user2@bilemo.com', '2023-02-03 14:31:24', 3),
(4, 'user3@bilemo.com', '2023-02-03 14:31:24', 1),
(5, 'user4@bilemo.com', '2023-02-03 14:31:24', 2),
(6, 'user5@bilemo.com', '2023-02-03 14:31:24', 3),
(7, 'user6@bilemo.com', '2023-02-03 14:31:24', 2),
(8, 'user7@bilemo.com', '2023-02-03 14:31:24', 3),
(9, 'user8@bilemo.com', '2023-02-03 14:31:24', 1);

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
