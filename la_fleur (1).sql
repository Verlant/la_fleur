-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 26 avr. 2023 à 20:05
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `la_fleur`
--

-- --------------------------------------------------------

--
-- Structure de la table `adresses`
--

CREATE TABLE `adresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_destinataire` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rue` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_creation` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_modif` timestamp NULL DEFAULT NULL,
  `ville_id` bigint(20) UNSIGNED NOT NULL,
  `code_postal_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `adresses`
--

INSERT INTO `adresses` (`id`, `nom_destinataire`, `rue`, `date_creation`, `date_modif`, `ville_id`, `code_postal_id`) VALUES
(1, 'Reiciendis', 'Fugiat Distinctio Nisi', '2022-04-04 23:43:07', NULL, 10, 9),
(2, 'Provident', 'Qui Consectetur Recusandae', '1974-05-19 21:42:29', NULL, 2, 5),
(3, 'Est', 'Accusamus Aut Et', '1996-11-30 17:22:54', NULL, 5, 2),
(4, 'Magni', 'Temporibus Officiis Qui', '1999-11-21 02:20:19', NULL, 6, 8),
(5, 'Et', 'Vero Facilis Ea', '1987-06-29 00:40:44', NULL, 2, 10),
(6, 'Est', 'Ipsam Sunt Ut', '1976-12-04 18:59:14', NULL, 5, 9),
(7, 'Laboriosam', 'Sint Eum Voluptatem', '2010-10-22 04:13:52', NULL, 8, 4),
(8, 'Non', 'Quaerat Non Et', '2001-10-24 13:16:48', NULL, 8, 9),
(9, 'Rerum', 'Illo Quaerat Repellendus', '1993-09-05 13:14:40', NULL, 1, 1),
(10, 'Hic', 'Beatae Ut Minima', '1977-11-01 01:15:23', NULL, 6, 4);

-- --------------------------------------------------------

--
-- Structure de la table `adresse_client`
--

CREATE TABLE `adresse_client` (
  `adresse_id` bigint(20) UNSIGNED NOT NULL,
  `client_personne_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `adresse_client`
--

INSERT INTO `adresse_client` (`adresse_id`, `client_personne_id`) VALUES
(2, 5),
(3, 9),
(5, 8),
(6, 4),
(7, 2),
(7, 10),
(9, 1),
(9, 3),
(9, 6),
(10, 7);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_categorie` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nom_categorie`) VALUES
(1, 'remerciement'),
(2, 'naissance'),
(3, 'mariage'),
(4, 'amour et sentiments'),
(5, 'anniversaire');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `personne_id` bigint(20) UNSIGNED NOT NULL,
  `mdp` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`personne_id`, `mdp`) VALUES
(1, '$2y$10$3mdQS9cnHp8fKHu7FqfZvupND0n5YQqS1ouov1TInpZZ8EccQRura'),
(2, '$2y$10$DHXAONaln4F7.WhEi7Ic2OCgWsjFQ7F9EMQOMFes7U6XoGFmVpbny'),
(3, '$2y$10$GkugzG5/4QhRHlTWO3DjCeMoc8sKFVImPr465of8.QnktBXBlXBu.'),
(4, '$2y$10$U49xdHIqnmdJhCjClgxJ8.D3fA0tXV/x2oxVXh3MwWiSF6H8cvIWO'),
(5, '$2y$10$PMJwtAePqH0pzJwc5GZZIOsBFJbpiMrCxZKMoGBKYby1e8yiaMjX.'),
(6, '$2y$10$faZORUGxFaEb09BySAjpIudTgXjqXdEkumcjRoKiASTswW.cfnNZC'),
(7, '$2y$10$Geon3HrIYln291dp5uaayOdW8CIuHQCuroSAJo2UhKVhzRop1E/xO'),
(8, '$2y$10$qniT969THWa1t939ccTudO35Nj1KvzaYNW9MucKXNZQYD2LW0Ehh.'),
(9, '$2y$10$0bt2vnBtQ0dxq/9cXbqqTOIkPRXVZQpp9472agKOwJv7Mfi.iCZX2'),
(10, '$2y$10$69lmltRByUcN0wMRah0TjOKBkqmXW2h5ybgMHIhTwd1PAvoKzWAqq');

-- --------------------------------------------------------

--
-- Structure de la table `codes_postaux`
--

CREATE TABLE `codes_postaux` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cp` char(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `codes_postaux`
--

INSERT INTO `codes_postaux` (`id`, `cp`) VALUES
(1, '89468'),
(2, '91805'),
(3, '01422'),
(4, '82458'),
(5, '63744'),
(6, '50407'),
(7, '86498'),
(8, '91926'),
(9, '94356'),
(10, '06238');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date_commande` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_livraison` date NOT NULL,
  `etat_paiement` enum('A','W','B') COLLATE utf8mb4_unicode_ci NOT NULL,
  `etat_livraison` enum('A','W','B') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commandes`
--

INSERT INTO `commandes` (`id`, `date_commande`, `date_livraison`, `etat_paiement`, `etat_livraison`) VALUES
(1, '2019-03-07 11:52:43', '2002-08-19', 'A', 'B'),
(2, '1985-12-02 13:48:31', '1995-07-11', 'W', 'A'),
(3, '1989-01-17 07:44:01', '2015-06-04', 'W', 'B'),
(4, '1981-03-04 11:34:38', '1991-07-27', 'A', 'B'),
(5, '2021-01-05 22:18:36', '2007-01-27', 'B', 'B'),
(6, '2020-01-08 06:09:51', '1981-02-03', 'B', 'A'),
(7, '2012-02-23 11:09:25', '1974-12-26', 'B', 'B'),
(8, '2022-03-01 03:37:57', '1990-10-13', 'B', 'W'),
(9, '1978-08-06 22:34:40', '2009-02-08', 'B', 'B'),
(10, '2007-09-18 16:48:10', '2019-04-12', 'B', 'B');

-- --------------------------------------------------------

--
-- Structure de la table `commande_client`
--

CREATE TABLE `commande_client` (
  `commande_id` bigint(20) UNSIGNED NOT NULL,
  `loterie_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_personne_id` bigint(20) UNSIGNED NOT NULL,
  `adresse_livraison_id` bigint(20) UNSIGNED NOT NULL,
  `frais_livraison` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commande_client`
--

INSERT INTO `commande_client` (`commande_id`, `loterie_id`, `client_personne_id`, `adresse_livraison_id`, `frais_livraison`) VALUES
(1, 1, 2, 2, '1.42'),
(2, 4, 8, 1, '1.96'),
(3, 1, 3, 7, '2.91'),
(4, 1, 10, 3, '4.82'),
(5, 5, 5, 10, '3.63'),
(6, 2, 7, 3, '2.35'),
(7, 4, 10, 2, '3.42'),
(8, 4, 4, 3, '2.79'),
(9, 1, 1, 9, '3.60'),
(10, 5, 5, 9, '2.87');

-- --------------------------------------------------------

--
-- Structure de la table `commande_client_produit`
--

CREATE TABLE `commande_client_produit` (
  `commande_client_id` bigint(20) UNSIGNED NOT NULL,
  `produit_id` bigint(20) UNSIGNED NOT NULL,
  `quantite_vente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commande_client_produit`
--

INSERT INTO `commande_client_produit` (`commande_client_id`, `produit_id`, `quantite_vente`) VALUES
(1, 1, 57),
(2, 5, 27),
(3, 2, 87),
(4, 5, 41),
(5, 4, 43),
(6, 3, 24),
(7, 2, 36),
(8, 2, 19),
(9, 4, 39),
(10, 2, 85);

-- --------------------------------------------------------

--
-- Structure de la table `commande_fournisseur`
--

CREATE TABLE `commande_fournisseur` (
  `commande_id` bigint(20) UNSIGNED NOT NULL,
  `fournisseur_personne_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commande_fournisseur`
--

INSERT INTO `commande_fournisseur` (`commande_id`, `fournisseur_personne_id`) VALUES
(1, 1),
(6, 1),
(9, 1),
(7, 4),
(4, 6),
(3, 7),
(5, 7),
(10, 8),
(2, 9),
(8, 9);

-- --------------------------------------------------------

--
-- Structure de la table `commande_fournisseur_fleur`
--

CREATE TABLE `commande_fournisseur_fleur` (
  `commande_fournisseur_id` bigint(20) UNSIGNED NOT NULL,
  `fleur_id` bigint(20) UNSIGNED NOT NULL,
  `quantite_achat` int(11) NOT NULL,
  `prix_achat` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commande_fournisseur_fleur`
--

INSERT INTO `commande_fournisseur_fleur` (`commande_fournisseur_id`, `fleur_id`, `quantite_achat`, `prix_achat`) VALUES
(1, 3, 33, '77417331.49'),
(2, 2, 64, '48403561.51'),
(3, 3, 74, '26465763.43'),
(4, 4, 67, '20139662.33'),
(5, 5, 55, '7503416.48'),
(6, 1, 95, '46361914.64'),
(7, 2, 60, '4540420.67'),
(8, 4, 0, '11462217.02'),
(9, 5, 65, '33849055.67'),
(10, 5, 31, '39584323.17');

-- --------------------------------------------------------

--
-- Structure de la table `couleurs`
--

CREATE TABLE `couleurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_couleur` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `couleurs`
--

INSERT INTO `couleurs` (`id`, `nom_couleur`) VALUES
(1, 'jaune'),
(2, 'orange'),
(3, 'rouge'),
(4, 'violet'),
(5, 'bleu'),
(6, 'vert'),
(7, 'blanc'),
(8, 'noir'),
(9, 'gris');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fleurs`
--

CREATE TABLE `fleurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_fleur` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantite_stock` int(11) NOT NULL,
  `date_inventaire` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `unite_id` bigint(20) UNSIGNED NOT NULL,
  `couleur_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fleurs`
--

INSERT INTO `fleurs` (`id`, `nom_fleur`, `quantite_stock`, `date_inventaire`, `unite_id`, `couleur_id`) VALUES
(1, 'rose', 159, '2013-10-19 09:35:12', 1, 3),
(2, 'rose', 445, '2023-04-26 18:03:07', 1, 7),
(3, 'lys', 244, '2023-04-26 18:03:07', 1, 7),
(4, 'eucalyptus', 243, '2023-04-26 18:03:07', 3, 5),
(5, 'orchidée', 783, '2023-04-26 18:03:08', 2, 4),
(6, 'avoine séchée', 235, '2023-04-26 18:03:08', 3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `fleur_produit`
--

CREATE TABLE `fleur_produit` (
  `produit_id` bigint(20) UNSIGNED NOT NULL,
  `fleur_id` bigint(20) UNSIGNED NOT NULL,
  `quantite_fleur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fleur_produit`
--

INSERT INTO `fleur_produit` (`produit_id`, `fleur_id`, `quantite_fleur`) VALUES
(1, 4, 71),
(2, 4, 6),
(3, 2, 61),
(4, 3, 19),
(5, 5, 33),
(6, 3, 52),
(7, 3, 96),
(8, 5, 53),
(9, 1, 11),
(10, 3, 90);

-- --------------------------------------------------------

--
-- Structure de la table `fournisseurs`
--

CREATE TABLE `fournisseurs` (
  `personne_id` bigint(20) UNSIGNED NOT NULL,
  `SIRET` char(14) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fournisseurs`
--

INSERT INTO `fournisseurs` (`personne_id`, `SIRET`) VALUES
(6, '23548443541986'),
(9, '27193492423729'),
(10, '32518039017467'),
(5, '37834715705925'),
(2, '52125713566070'),
(1, '63760099448133'),
(8, '83500437714338'),
(7, '83879040527001'),
(3, '84564269352557'),
(4, '89617501479349');

-- --------------------------------------------------------

--
-- Structure de la table `loteries`
--

CREATE TABLE `loteries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_lot` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantite_lot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `loteries`
--

INSERT INTO `loteries` (`id`, `nom_lot`, `quantite_lot`) VALUES
(1, 'stylos \"Lafleur\"', 1000),
(2, 'sacs réutilisables en tissus \"Lafleur\"', 700),
(3, 'portes-clés \"Lafleur\"', 200),
(4, 'roses rouges à offrir', 50),
(5, 'bouquets de roses', 10);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_08_102405_create_personnes_table', 1),
(6, '2023_04_08_103841_create_fournisseurs_table', 1),
(7, '2023_04_08_103849_create_clients_table', 1),
(8, '2023_04_08_105924_create_codes_postaux_table', 1),
(9, '2023_04_08_105936_create_villes_table', 1),
(10, '2023_04_09_105624_create_adresses_table', 1),
(11, '2023_04_09_114223_create_commandes_table', 1),
(12, '2023_04_09_114225_create_loteries_table', 1),
(13, '2023_04_09_114450_create_commande_client_table', 1),
(14, '2023_04_09_115031_create_commande_fournisseur_table', 1),
(15, '2023_04_09_115103_create_adresse_client_table', 1),
(16, '2023_04_09_115557_create_unites_table', 1),
(17, '2023_04_09_115812_create_couleurs_table', 1),
(18, '2023_04_09_115819_create_categories_table', 1),
(19, '2023_04_09_115838_create_types_produits_table', 1),
(20, '2023_04_09_120631_create_fleurs_table', 1),
(21, '2023_04_09_120639_create_produits_table', 1),
(22, '2023_04_09_120648_create_fleur_produit_table', 1),
(23, '2023_04_09_121415_create_commande_client_produit_table', 1),
(24, '2023_04_09_121434_create_commande_fournisseur_fleur_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personnes`
--

CREATE TABLE `personnes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_personne` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom_personne` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_creation` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_modif` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personnes`
--

INSERT INTO `personnes` (`id`, `nom_personne`, `prenom_personne`, `email`, `tel`, `date_creation`, `date_modif`) VALUES
(1, 'Commodi', 'Dicta', 'taya47@example.org', '0616382007', '2010-07-12 17:08:06', NULL),
(2, 'Unde', 'Aspernatur', 'fconsidine@example.com', '0625365692', '2003-09-15 08:41:46', NULL),
(3, 'Voluptatum', 'Ea', 'wdaugherty@example.net', '0623331490', '1996-10-21 20:12:05', NULL),
(4, 'Quas', 'Placeat', 'ashley.renner@example.com', '0626683882', '1983-11-15 15:33:31', NULL),
(5, 'Ducimus', 'Facere', 'laurianne.schulist@example.net', '0668081928', '2021-01-01 08:49:33', NULL),
(6, 'Pariatur', 'Laborum', 'bernadette.beahan@example.org', '0633113755', '1989-03-12 19:36:05', NULL),
(7, 'Quae', 'Sint', 'gdibbert@example.com', '0689489442', '2015-02-15 05:36:50', NULL),
(8, 'Quas', 'Rerum', 'qschinner@example.org', '0620892921', '2017-04-30 19:22:40', NULL),
(9, 'Explicabo', 'Id', 'conroy.thad@example.org', '0662891436', '2007-06-25 04:21:27', NULL),
(10, 'Et', 'Nulla', 'murphy.mikel@example.com', '0655460198', '1999-08-02 06:42:28', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_produit` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix_vente` decimal(10,2) NOT NULL,
  `date_creation` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_modif` timestamp NULL DEFAULT NULL,
  `categorie_id` bigint(20) UNSIGNED NOT NULL,
  `type_produit_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `nom_produit`, `prix_vente`, `date_creation`, `date_modif`, `categorie_id`, `type_produit_id`) VALUES
(1, 'Ipsum', '382.40', '1970-12-23 23:53:43', NULL, 3, 2),
(2, 'Distinctio', '425.86', '2000-12-22 09:59:39', NULL, 5, 2),
(3, 'Quidem', '821.87', '2008-11-30 13:10:42', NULL, 3, 1),
(4, 'Qui', '47.15', '2002-08-15 14:16:36', NULL, 5, 3),
(5, 'Ut', '47.60', '1975-08-01 07:22:44', NULL, 2, 2),
(6, 'Velit', '762.39', '2006-05-15 22:41:29', NULL, 4, 2),
(7, 'Ea', '613.45', '2020-01-23 23:46:04', NULL, 4, 3),
(8, 'Occaecati', '765.80', '2009-08-11 04:13:40', NULL, 1, 1),
(9, 'Laborum', '482.21', '1985-05-30 16:21:12', NULL, 4, 2),
(10, 'Alias', '659.52', '2012-08-21 06:45:54', NULL, 4, 3);

-- --------------------------------------------------------

--
-- Structure de la table `types_produits`
--

CREATE TABLE `types_produits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_type_produit` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `types_produits`
--

INSERT INTO `types_produits` (`id`, `nom_type_produit`) VALUES
(1, 'brassée'),
(2, 'bouquet'),
(3, 'composition');

-- --------------------------------------------------------

--
-- Structure de la table `unites`
--

CREATE TABLE `unites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_unite` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `unites`
--

INSERT INTO `unites` (`id`, `nom_unite`) VALUES
(1, 'tige'),
(2, 'fleuron'),
(3, 'gr');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Patricia Mueller', 'gutmann.thad@example.com', '2023-04-26 18:03:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PBee6uYWQu', '2023-04-26 18:03:06', '2023-04-26 18:03:06'),
(2, 'Aron Von', 'roberts.judd@example.com', '2023-04-26 18:03:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HsCdGXP0FQ', '2023-04-26 18:03:06', '2023-04-26 18:03:06'),
(3, 'Kamryn Kautzer', 'berniece99@example.net', '2023-04-26 18:03:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fJZW3b8If8', '2023-04-26 18:03:06', '2023-04-26 18:03:06'),
(4, 'Elliot Connelly', 'merle83@example.net', '2023-04-26 18:03:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qu91ww0HX9', '2023-04-26 18:03:06', '2023-04-26 18:03:06'),
(5, 'Miss Desiree Hill', 'fboyle@example.com', '2023-04-26 18:03:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'X0El4t6wPC', '2023-04-26 18:03:06', '2023-04-26 18:03:06'),
(6, 'Micheal Hickle', 'ima.kemmer@example.net', '2023-04-26 18:03:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Zbh4uWWN1h', '2023-04-26 18:03:06', '2023-04-26 18:03:06'),
(7, 'Nils Lang', 'mayert.talon@example.net', '2023-04-26 18:03:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aaCgexkvwC', '2023-04-26 18:03:06', '2023-04-26 18:03:06'),
(8, 'Kara Denesik', 'ayana.farrell@example.net', '2023-04-26 18:03:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 's8TDm5Z73B', '2023-04-26 18:03:06', '2023-04-26 18:03:06'),
(9, 'Alize Fadel', 'keenan.miller@example.org', '2023-04-26 18:03:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JJxA1zp7eV', '2023-04-26 18:03:06', '2023-04-26 18:03:06'),
(10, 'Dr. Camylle Bernhard', 'gottlieb.juvenal@example.com', '2023-04-26 18:03:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '52rynlXO6E', '2023-04-26 18:03:06', '2023-04-26 18:03:06'),
(11, 'Test User', 'test@example.com', '2023-04-26 18:03:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RMSBOPOE9A', '2023-04-26 18:03:06', '2023-04-26 18:03:06');

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE `villes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_ville` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `est_livrable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `villes`
--

INSERT INTO `villes` (`id`, `nom_ville`, `est_livrable`) VALUES
(1, 'Ea', 1),
(2, 'Assumenda', 1),
(3, 'Voluptatibus', 1),
(4, 'Libero', 0),
(5, 'Molestiae', 0),
(6, 'Qui', 1),
(7, 'Quisquam', 0),
(8, 'Illum', 0),
(9, 'Asperiores', 0),
(10, 'Veritatis', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adresses`
--
ALTER TABLE `adresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adresses_ville_id_foreign` (`ville_id`),
  ADD KEY `adresses_code_postal_id_foreign` (`code_postal_id`);

--
-- Index pour la table `adresse_client`
--
ALTER TABLE `adresse_client`
  ADD PRIMARY KEY (`adresse_id`,`client_personne_id`),
  ADD KEY `adresse_client_client_personne_id_foreign` (`client_personne_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`personne_id`);

--
-- Index pour la table `codes_postaux`
--
ALTER TABLE `codes_postaux`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commande_client`
--
ALTER TABLE `commande_client`
  ADD PRIMARY KEY (`commande_id`),
  ADD KEY `commande_client_loterie_id_foreign` (`loterie_id`),
  ADD KEY `commande_client_client_personne_id_foreign` (`client_personne_id`),
  ADD KEY `commande_client_adresse_livraison_id_foreign` (`adresse_livraison_id`);

--
-- Index pour la table `commande_client_produit`
--
ALTER TABLE `commande_client_produit`
  ADD PRIMARY KEY (`commande_client_id`,`produit_id`),
  ADD KEY `commande_client_produit_produit_id_foreign` (`produit_id`);

--
-- Index pour la table `commande_fournisseur`
--
ALTER TABLE `commande_fournisseur`
  ADD PRIMARY KEY (`commande_id`),
  ADD KEY `commande_fournisseur_fournisseur_personne_id_foreign` (`fournisseur_personne_id`);

--
-- Index pour la table `commande_fournisseur_fleur`
--
ALTER TABLE `commande_fournisseur_fleur`
  ADD PRIMARY KEY (`commande_fournisseur_id`,`fleur_id`),
  ADD KEY `commande_fournisseur_fleur_fleur_id_foreign` (`fleur_id`);

--
-- Index pour la table `couleurs`
--
ALTER TABLE `couleurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `fleurs`
--
ALTER TABLE `fleurs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fleurs_unite_id_foreign` (`unite_id`),
  ADD KEY `fleurs_couleur_id_foreign` (`couleur_id`);

--
-- Index pour la table `fleur_produit`
--
ALTER TABLE `fleur_produit`
  ADD PRIMARY KEY (`produit_id`,`fleur_id`),
  ADD KEY `fleur_produit_fleur_id_foreign` (`fleur_id`);

--
-- Index pour la table `fournisseurs`
--
ALTER TABLE `fournisseurs`
  ADD PRIMARY KEY (`personne_id`),
  ADD UNIQUE KEY `fournisseurs_siret_unique` (`SIRET`);

--
-- Index pour la table `loteries`
--
ALTER TABLE `loteries`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `personnes`
--
ALTER TABLE `personnes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personnes_email_unique` (`email`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produits_categorie_id_foreign` (`categorie_id`),
  ADD KEY `produits_type_produit_id_foreign` (`type_produit_id`);

--
-- Index pour la table `types_produits`
--
ALTER TABLE `types_produits`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `unites`
--
ALTER TABLE `unites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `adresses`
--
ALTER TABLE `adresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `personne_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `codes_postaux`
--
ALTER TABLE `codes_postaux`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `couleurs`
--
ALTER TABLE `couleurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fleurs`
--
ALTER TABLE `fleurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `fournisseurs`
--
ALTER TABLE `fournisseurs`
  MODIFY `personne_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `loteries`
--
ALTER TABLE `loteries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `personnes`
--
ALTER TABLE `personnes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `types_produits`
--
ALTER TABLE `types_produits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `unites`
--
ALTER TABLE `unites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `adresses`
--
ALTER TABLE `adresses`
  ADD CONSTRAINT `adresses_code_postal_id_foreign` FOREIGN KEY (`code_postal_id`) REFERENCES `codes_postaux` (`id`),
  ADD CONSTRAINT `adresses_ville_id_foreign` FOREIGN KEY (`ville_id`) REFERENCES `villes` (`id`);

--
-- Contraintes pour la table `adresse_client`
--
ALTER TABLE `adresse_client`
  ADD CONSTRAINT `adresse_client_adresse_id_foreign` FOREIGN KEY (`adresse_id`) REFERENCES `adresses` (`id`),
  ADD CONSTRAINT `adresse_client_client_personne_id_foreign` FOREIGN KEY (`client_personne_id`) REFERENCES `clients` (`personne_id`);

--
-- Contraintes pour la table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_personne_id_foreign` FOREIGN KEY (`personne_id`) REFERENCES `personnes` (`id`);

--
-- Contraintes pour la table `commande_client`
--
ALTER TABLE `commande_client`
  ADD CONSTRAINT `commande_client_adresse_livraison_id_foreign` FOREIGN KEY (`adresse_livraison_id`) REFERENCES `adresses` (`id`),
  ADD CONSTRAINT `commande_client_client_personne_id_foreign` FOREIGN KEY (`client_personne_id`) REFERENCES `clients` (`personne_id`),
  ADD CONSTRAINT `commande_client_commande_id_foreign` FOREIGN KEY (`commande_id`) REFERENCES `commandes` (`id`),
  ADD CONSTRAINT `commande_client_loterie_id_foreign` FOREIGN KEY (`loterie_id`) REFERENCES `loteries` (`id`);

--
-- Contraintes pour la table `commande_client_produit`
--
ALTER TABLE `commande_client_produit`
  ADD CONSTRAINT `commande_client_produit_commande_client_id_foreign` FOREIGN KEY (`commande_client_id`) REFERENCES `commande_client` (`commande_id`),
  ADD CONSTRAINT `commande_client_produit_produit_id_foreign` FOREIGN KEY (`produit_id`) REFERENCES `produits` (`id`);

--
-- Contraintes pour la table `commande_fournisseur`
--
ALTER TABLE `commande_fournisseur`
  ADD CONSTRAINT `commande_fournisseur_commande_id_foreign` FOREIGN KEY (`commande_id`) REFERENCES `commandes` (`id`),
  ADD CONSTRAINT `commande_fournisseur_fournisseur_personne_id_foreign` FOREIGN KEY (`fournisseur_personne_id`) REFERENCES `fournisseurs` (`personne_id`);

--
-- Contraintes pour la table `commande_fournisseur_fleur`
--
ALTER TABLE `commande_fournisseur_fleur`
  ADD CONSTRAINT `commande_fournisseur_fleur_commande_fournisseur_id_foreign` FOREIGN KEY (`commande_fournisseur_id`) REFERENCES `commande_fournisseur` (`commande_id`),
  ADD CONSTRAINT `commande_fournisseur_fleur_fleur_id_foreign` FOREIGN KEY (`fleur_id`) REFERENCES `fleurs` (`id`);

--
-- Contraintes pour la table `fleurs`
--
ALTER TABLE `fleurs`
  ADD CONSTRAINT `fleurs_couleur_id_foreign` FOREIGN KEY (`couleur_id`) REFERENCES `couleurs` (`id`),
  ADD CONSTRAINT `fleurs_unite_id_foreign` FOREIGN KEY (`unite_id`) REFERENCES `unites` (`id`);

--
-- Contraintes pour la table `fleur_produit`
--
ALTER TABLE `fleur_produit`
  ADD CONSTRAINT `fleur_produit_fleur_id_foreign` FOREIGN KEY (`fleur_id`) REFERENCES `fleurs` (`id`),
  ADD CONSTRAINT `fleur_produit_produit_id_foreign` FOREIGN KEY (`produit_id`) REFERENCES `produits` (`id`);

--
-- Contraintes pour la table `fournisseurs`
--
ALTER TABLE `fournisseurs`
  ADD CONSTRAINT `fournisseurs_personne_id_foreign` FOREIGN KEY (`personne_id`) REFERENCES `personnes` (`id`);

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `produits_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `produits_type_produit_id_foreign` FOREIGN KEY (`type_produit_id`) REFERENCES `types_produits` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
