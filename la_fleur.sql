-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 27 avr. 2023 à 20:21
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
(1, 'Nisi', 'Nihil Dicta Consequatur', '1977-09-06 13:49:33', NULL, 8, 6),
(2, 'Soluta', 'Maiores Facilis Commodi', '2019-09-24 23:39:06', NULL, 10, 4),
(3, 'Unde', 'Minima Vel Amet', '1987-08-23 08:26:13', NULL, 3, 3),
(4, 'Vel', 'Repudiandae Cum Et', '2016-08-14 10:30:52', NULL, 3, 5),
(5, 'Voluptas', 'Consequatur Eum A', '2011-10-16 23:55:20', NULL, 9, 10),
(6, 'Ab', 'Placeat Sunt Aliquam', '1991-04-25 14:53:26', NULL, 9, 6),
(7, 'Sit', 'Consequuntur Atque Vero', '1974-03-17 23:29:29', NULL, 8, 9),
(8, 'Qui', 'Est Et Adipisci', '2001-01-04 22:31:48', NULL, 10, 5),
(9, 'Molestias', 'Qui Sed Ut', '1992-04-03 00:17:49', NULL, 10, 10),
(10, 'Consequatur', 'Illo Libero Impedit', '1995-10-10 16:14:32', NULL, 9, 2);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_categorie` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_client` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom_client` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mdp` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_creation` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_modif` timestamp NULL DEFAULT NULL,
  `adresse_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `nom_client`, `prenom_client`, `email`, `mdp`, `tel`, `date_creation`, `date_modif`, `adresse_id`) VALUES
(1, 'Soluta', 'Earum', 'denis.halvorson@example.com', '$2y$10$YiiHocxqQBVeBxlJP7fYF.X31LxyPD2qUA4x3ejUR/S90xQgihURy', '0662007483', '2014-09-02 21:12:42', NULL, 4),
(2, 'Praesentium', 'Et', 'kiehn.jannie@example.net', '$2y$10$cG6HIo84.zE8TCozdP1Uj.w2538wABHF92BW1Tlw1wEaT.0lxAtPq', '0636874350', '2004-03-15 00:46:52', NULL, 8),
(3, 'Optio', 'Consequatur', 'farrell.emelie@example.org', '$2y$10$cJVYJyhfWdW42i0kz.w.fuB9hRdWFKL.BKdg3Oom7Lo9g4eI3cnSa', '0637353332', '1971-06-07 21:19:48', NULL, 9),
(4, 'Quibusdam', 'Fugiat', 'ayla.schuppe@example.org', '$2y$10$Vh.f8WgBnOu0rW3K/fUN..wHdYb9a.3pH8Ebfdgw1iPAYzJNmqsPK', '0661451984', '2009-07-11 08:07:30', NULL, 7),
(5, 'Hic', 'Numquam', 'ybauch@example.org', '$2y$10$DFmUhouatokIOhYrtsTsCe4obIFomWtktMwzmfHf2mFPY52W0gbN6', '0639091454', '1976-08-13 04:23:44', NULL, 3),
(6, 'Et', 'Pariatur', 'rreinger@example.com', '$2y$10$9CaCKZL8fWGc2ku0VgciZOSjJw7N4a912L56U8O/8UMeMnNI6z.H2', '0677154053', '2021-07-26 19:21:34', NULL, 10),
(7, 'Debitis', 'Labore', 'mbeatty@example.com', '$2y$10$eYMSqSuvhKELjc8qfaTGxeIH0MvGSEj47leX7rGCscZlq3jcWY.V6', '0673020987', '2006-01-01 06:12:59', NULL, 1),
(8, 'Eius', 'Quaerat', 'jdibbert@example.org', '$2y$10$.rcbBDfLxvfSu9kSYsuAzOgBzRFkPH3CLvd8Pfd2P4bE8T4btMaXK', '0649793355', '1978-12-18 14:00:10', NULL, 2),
(9, 'Sit', 'Consequuntur', 'trantow.randi@example.net', '$2y$10$BoRnQuWkTXb7zM3yDTrbyeswYVnVjGcLopH05D2IggK1024utfUde', '0644507141', '1991-06-24 12:27:31', NULL, 6),
(10, 'Assumenda', 'Saepe', 'qlindgren@example.com', '$2y$10$C.md6kgiTvp4VWCwnso9xOyCzIv7eY6P2R86O5pjTtBXjDKAVgcPi', '0665309523', '1985-08-08 09:58:06', NULL, 5);

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
(1, '20307'),
(2, '06127'),
(3, '58997'),
(4, '21111'),
(5, '03321'),
(6, '94166'),
(7, '44472'),
(8, '50482'),
(9, '55869'),
(10, '56132');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date_commande` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_livraison` date NOT NULL,
  `etat_paiement` enum('A','W','B') COLLATE utf8mb4_unicode_ci NOT NULL,
  `etat_livraison` enum('A','W','B') COLLATE utf8mb4_unicode_ci NOT NULL,
  `frais_livraison` tinyint(1) NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `loterie_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commandes`
--

INSERT INTO `commandes` (`id`, `date_commande`, `date_livraison`, `etat_paiement`, `etat_livraison`, `frais_livraison`, `client_id`, `loterie_id`) VALUES
(1, '2002-10-24 05:44:23', '2003-04-12', 'W', 'W', 0, 9, 4),
(2, '2006-08-24 04:29:27', '1990-11-05', 'A', 'W', 0, 3, 1),
(3, '2016-12-22 19:54:26', '1988-06-21', 'A', 'W', 0, 7, 1),
(4, '1979-01-17 13:02:51', '1988-10-29', 'B', 'W', 0, 3, 4),
(5, '1974-11-07 03:03:43', '2016-04-16', 'W', 'B', 0, 8, 3),
(6, '1976-01-26 14:08:43', '2018-06-07', 'W', 'B', 1, 3, 2),
(7, '2016-11-14 16:26:05', '2004-04-22', 'B', 'W', 1, 5, 5),
(8, '1979-11-02 02:02:36', '1980-07-03', 'W', 'A', 1, 5, 1),
(9, '1984-07-07 10:34:31', '1988-07-30', 'W', 'A', 0, 4, 3),
(10, '1981-07-24 23:53:30', '2022-03-02', 'A', 'A', 0, 9, 2);

-- --------------------------------------------------------

--
-- Structure de la table `commande_produit`
--

CREATE TABLE `commande_produit` (
  `commande_id` bigint(20) UNSIGNED NOT NULL,
  `produit_id` bigint(20) UNSIGNED NOT NULL,
  `quantite_vente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commande_produit`
--

INSERT INTO `commande_produit` (`commande_id`, `produit_id`, `quantite_vente`) VALUES
(1, 5, 72),
(2, 4, 39),
(3, 2, 49),
(4, 4, 99),
(5, 2, 87),
(6, 1, 2),
(7, 3, 94),
(8, 5, 31),
(9, 5, 43),
(10, 4, 86);

-- --------------------------------------------------------

--
-- Structure de la table `couleurs`
--

CREATE TABLE `couleurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_couleur` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
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
(1, 'rose', 376, '2006-05-12 20:11:27', 1, 3),
(2, 'rose', 336, '2023-04-27 18:20:22', 1, 7),
(3, 'lys', 508, '2023-04-27 18:20:22', 1, 7),
(4, 'eucalyptus', 586, '2023-04-27 18:20:22', 3, 5),
(5, 'orchidée', 538, '2023-04-27 18:20:22', 2, 4),
(6, 'avoine séchée', 241, '2023-04-27 18:20:22', 3, 2);

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
(1, 1, 5),
(2, 1, 80),
(3, 3, 20),
(4, 1, 81),
(5, 3, 81),
(6, 2, 46),
(7, 1, 55),
(8, 4, 12),
(9, 2, 35),
(10, 5, 98);

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
(5, '2023_04_08_105924_create_codes_postaux_table', 1),
(6, '2023_04_08_105936_create_villes_table', 1),
(7, '2023_04_09_105624_create_adresses_table', 1),
(8, '2023_04_09_114149_create_clients_table', 1),
(9, '2023_04_09_114222_create_loteries_table', 1),
(10, '2023_04_09_114223_create_commandes_table', 1),
(11, '2023_04_09_115557_create_unites_table', 1),
(12, '2023_04_09_115812_create_couleurs_table', 1),
(13, '2023_04_09_115819_create_categories_table', 1),
(14, '2023_04_09_120631_create_fleurs_table', 1),
(15, '2023_04_09_120639_create_produits_table', 1),
(16, '2023_04_09_120648_create_fleur_produit_table', 1),
(17, '2023_04_09_182706_create_commande_produit_table', 1);

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
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_produit` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix_vente` decimal(10,2) NOT NULL,
  `date_creation` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_modif` timestamp NULL DEFAULT NULL,
  `categorie_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `nom_produit`, `prix_vente`, `date_creation`, `date_modif`, `categorie_id`) VALUES
(1, 'Fuga', '153.99', '1985-09-06 02:28:50', NULL, 4),
(2, 'Et', '644.93', '1973-11-08 16:44:44', NULL, 2),
(3, 'Voluptatem', '831.42', '2022-05-30 20:21:06', NULL, 5),
(4, 'Voluptatem', '910.08', '1989-06-24 00:17:07', NULL, 1),
(5, 'Debitis', '165.42', '2010-07-30 11:24:27', NULL, 4),
(6, 'Rerum', '722.20', '1987-03-04 03:04:41', NULL, 5),
(7, 'Consequatur', '99.88', '1997-02-08 23:35:55', NULL, 5),
(8, 'Eum', '645.48', '2019-10-26 12:28:20', NULL, 4),
(9, 'Repellat', '834.30', '1996-12-08 04:58:50', NULL, 1),
(10, 'Eum', '904.46', '1984-07-18 06:20:24', NULL, 5);

-- --------------------------------------------------------

--
-- Structure de la table `unites`
--

CREATE TABLE `unites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_unite` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
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
(1, 'Mr. Juwan Larson PhD', 'dallas.gaylord@example.org', '2023-04-27 18:20:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RJ0tDmE7bF', '2023-04-27 18:20:21', '2023-04-27 18:20:21'),
(2, 'Alessandro Durgan PhD', 'christina13@example.org', '2023-04-27 18:20:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5FEFRzw1iK', '2023-04-27 18:20:21', '2023-04-27 18:20:21'),
(3, 'Zelma Streich II', 'hugh.rau@example.net', '2023-04-27 18:20:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BfcEx665WI', '2023-04-27 18:20:21', '2023-04-27 18:20:21'),
(4, 'Jannie Bins', 'jettie50@example.com', '2023-04-27 18:20:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FnCX9XbKDG', '2023-04-27 18:20:21', '2023-04-27 18:20:21'),
(5, 'Lupe Macejkovic', 'bbogisich@example.net', '2023-04-27 18:20:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '22SFKX1QWB', '2023-04-27 18:20:21', '2023-04-27 18:20:21'),
(6, 'Angie Rogahn', 'wmonahan@example.com', '2023-04-27 18:20:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bXjIxiQpSC', '2023-04-27 18:20:21', '2023-04-27 18:20:21'),
(7, 'Anjali VonRueden', 'zboncak.ivory@example.org', '2023-04-27 18:20:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zhisZ8RpaK', '2023-04-27 18:20:21', '2023-04-27 18:20:21'),
(8, 'Dr. Arlie Russel', 'dominique64@example.net', '2023-04-27 18:20:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5wzQYlHsni', '2023-04-27 18:20:21', '2023-04-27 18:20:21'),
(9, 'Dr. Amos Fritsch Jr.', 'valentine20@example.org', '2023-04-27 18:20:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'E9YzbbKCSz', '2023-04-27 18:20:21', '2023-04-27 18:20:21'),
(10, 'Brandt Reichert', 'krajcik.lucius@example.org', '2023-04-27 18:20:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bYL7PmyowM', '2023-04-27 18:20:21', '2023-04-27 18:20:21'),
(11, 'Test User', 'test@example.com', '2023-04-27 18:20:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MGLUij7Myh', '2023-04-27 18:20:21', '2023-04-27 18:20:21');

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
(1, 'Sit', 0),
(2, 'Quia', 1),
(3, 'Explicabo', 0),
(4, 'Perspiciatis', 0),
(5, 'Earum', 0),
(6, 'Quia', 0),
(7, 'Molestias', 1),
(8, 'Quod', 0),
(9, 'Ab', 0),
(10, 'Itaque', 1);

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
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_email_unique` (`email`),
  ADD KEY `clients_adresse_id_foreign` (`adresse_id`);

--
-- Index pour la table `codes_postaux`
--
ALTER TABLE `codes_postaux`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commandes_client_id_foreign` (`client_id`),
  ADD KEY `commandes_loterie_id_foreign` (`loterie_id`);

--
-- Index pour la table `commande_produit`
--
ALTER TABLE `commande_produit`
  ADD PRIMARY KEY (`commande_id`,`produit_id`),
  ADD KEY `commande_produit_produit_id_foreign` (`produit_id`);

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
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produits_categorie_id_foreign` (`categorie_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- AUTO_INCREMENT pour la table `loteries`
--
ALTER TABLE `loteries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- Contraintes pour la table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_adresse_id_foreign` FOREIGN KEY (`adresse_id`) REFERENCES `adresses` (`id`);

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `commandes_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `commandes_loterie_id_foreign` FOREIGN KEY (`loterie_id`) REFERENCES `loteries` (`id`);

--
-- Contraintes pour la table `commande_produit`
--
ALTER TABLE `commande_produit`
  ADD CONSTRAINT `commande_produit_commande_id_foreign` FOREIGN KEY (`commande_id`) REFERENCES `commandes` (`id`),
  ADD CONSTRAINT `commande_produit_produit_id_foreign` FOREIGN KEY (`produit_id`) REFERENCES `produits` (`id`);

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
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `produits_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
