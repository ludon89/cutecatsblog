-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 14 mars 2023 à 10:26
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cutecatsblog`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `content`, `created_at`, `updated_at`, `user_id`, `post_id`) VALUES
(1, 'Amet repudiandae veniam porro. Deleniti dolor rerum ut et accusamus et aspernatur fugit. Accusamus eaque ipsum saepe qui.', '2023-03-14 07:15:02', '2023-03-14 07:15:02', 1, 1),
(2, 'Eius eum dolorem ad consequatur maxime illum eaque. Excepturi porro quos similique sequi. Nemo inventore voluptate qui libero quia laudantium.', '2023-03-14 07:15:02', '2023-03-14 07:15:02', 1, 2),
(3, 'Aut possimus totam incidunt accusamus nihil consequatur cupiditate delectus. Officiis voluptate nesciunt et aperiam. Quas nostrum dolor quia nihil unde qui deserunt.', '2023-03-14 07:15:02', '2023-03-14 07:15:02', 1, 1),
(4, 'Commodi eos repudiandae suscipit. Sed recusandae et deleniti officiis velit minus. Rem doloremque praesentium atque aliquid.', '2023-03-14 07:15:03', '2023-03-14 07:15:03', 2, 1),
(5, 'Cumque eaque inventore eaque iste necessitatibus debitis itaque. Hic odio iusto delectus omnis ut voluptas illum ex. Corporis facere aspernatur et fuga laborum. Molestiae ducimus esse quaerat itaque.', '2023-03-14 07:15:03', '2023-03-14 07:15:03', 2, 2),
(6, 'Aliquam deleniti aut provident corporis recusandae officia. Voluptates non consequuntur non magni iusto sunt laboriosam ipsam. Consequatur et voluptatem et occaecati.', '2023-03-14 07:15:03', '2023-03-14 07:15:03', 2, 1),
(7, 'Molestiae magnam aperiam et suscipit quia. Quaerat id quia et architecto perferendis. Unde sunt vitae iusto nihil quo vel. Quia modi accusamus perferendis odio.', '2023-03-14 07:15:03', '2023-03-14 07:15:03', 3, 1),
(8, 'Vel qui in quos quia quae. Impedit optio voluptatem qui quas hic. Atque corporis dolores minus vel qui fugit quia. Esse omnis quia voluptatem nisi amet nobis dicta.', '2023-03-14 07:15:03', '2023-03-14 07:15:03', 3, 2),
(9, 'Alias voluptatem vitae sapiente aspernatur. Dolor aut atque iure labore laudantium. Ut enim sapiente sapiente temporibus est sit.', '2023-03-14 07:15:03', '2023-03-14 07:15:03', 3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(105, '2014_10_12_000000_create_users_table', 1),
(106, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(107, '2019_08_19_000000_create_failed_jobs_table', 1),
(108, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(109, '2023_03_08_133630_create_posts_table', 1),
(110, '2023_03_08_135031_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `picture`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Ut omnis accusantium voluptatum saepe autem repellat nobis.', 'Et nulla voluptatem recusandae aut. Dicta quia omnis fugit et unde exercitationem. Dicta quia nemo et qui quia odit laboriosam magni. In deserunt aspernatur sed quibusdam quibusdam.', 'http://www.robel.com/rem-quo-magnam-accusamus-quis-molestiae-exercitationem-possimus', '2023-03-14 07:15:02', '2023-03-14 07:15:02', 1),
(2, 'Aperiam voluptate blanditiis odit ut ut doloribus.', 'In dolorum commodi repudiandae totam magni nam. Illo maiores occaecati atque ut enim non.', 'http://www.dickinson.com/est-repellendus-ut-totam-et', '2023-03-14 07:15:02', '2023-03-14 07:15:02', 1),
(3, 'Consequuntur esse atque iusto aut id id et.', 'Voluptatem molestias tenetur incidunt in harum enim dolorem incidunt. Eveniet et autem dolorum consequatur aliquam sed sit. Id qui praesentium delectus consequatur quia velit in.', 'http://bartoletti.info/', '2023-03-14 07:15:02', '2023-03-14 07:15:02', 1),
(4, 'Inventore commodi facere rerum eum.', 'Rerum facilis aut consequatur dignissimos. Cumque repudiandae exercitationem maxime autem veniam aperiam et. Alias iste molestiae aut autem.', 'http://gleason.com/', '2023-03-14 07:15:03', '2023-03-14 07:15:03', 2),
(5, 'Perspiciatis illo est non.', 'Excepturi reprehenderit commodi eius consectetur. Id iure veniam aut harum veritatis. Et iusto eveniet soluta placeat dolor praesentium tempore harum.', 'http://gerlach.com/nam-rem-quo-facere-voluptatibus-voluptatem.html', '2023-03-14 07:15:03', '2023-03-14 07:15:03', 2),
(6, 'Architecto occaecati et qui explicabo aliquam delectus.', 'Ab quia expedita at voluptatum. Quia dolor amet deleniti. Nemo nam unde rerum molestias et. Iste aspernatur sed repellat illum quas.', 'https://www.rippin.com/nulla-laborum-quidem-ut-aliquid-quisquam-fugit', '2023-03-14 07:15:03', '2023-03-14 07:15:03', 2),
(7, 'Et voluptas quia quis error et exercitationem qui quos.', 'Ipsam accusamus totam eius omnis. Nesciunt laborum aut architecto quaerat animi. Qui explicabo aspernatur iusto itaque nihil necessitatibus culpa.', 'http://www.goldner.com/laudantium-reprehenderit-hic-sequi-cum', '2023-03-14 07:15:03', '2023-03-14 07:15:03', 3),
(8, 'Itaque qui voluptate error laborum exercitationem ea.', 'Est repudiandae architecto dicta quaerat cum. Maxime adipisci tenetur eius sunt itaque voluptatum aut. Velit iusto a id eaque et cumque est. Explicabo eum dignissimos ea ab.', 'http://www.halvorson.com/dolores-accusantium-quia-ducimus-sunt-soluta-officia', '2023-03-14 07:15:03', '2023-03-14 07:15:03', 3),
(9, 'Vitae laudantium eaque nulla consequatur.', 'Eveniet qui exercitationem vitae delectus et autem totam. Aspernatur rerum et quo illo odio consequatur excepturi deserunt. Tempore illum occaecati non vitae nobis. Odit velit qui vel omnis nesciunt.', 'http://ondricka.com/eaque-et-enim-odio-nihil-expedita-corporis-similique-iure', '2023-03-14 07:15:03', '2023-03-14 07:15:03', 3),
(10, 'lorem ipsum', 'blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla', NULL, '2023-03-14 07:56:06', '2023-03-14 07:56:25', 4);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Preston Aufderhar I', 'samir24@example.org', '2023-03-14 07:15:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '83Mi0bZ6BL', '2023-03-14 07:15:02', '2023-03-14 07:15:02'),
(2, 'Prof. Trycia Botsford', 'paucek.jerry@example.net', '2023-03-14 07:15:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Sld22WJ5kE', '2023-03-14 07:15:02', '2023-03-14 07:15:02'),
(3, 'Mrs. Viva Terry', 'odare@example.org', '2023-03-14 07:15:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2ztclSp1M0', '2023-03-14 07:15:03', '2023-03-14 07:15:03'),
(4, 'oskour', 'os@kour.com', NULL, '$2y$10$ghLuzpWUVvbYBPIALNoYbOMcRW0oas51hVEnjyzCQ4ZUfETbYAfL2', NULL, '2023-03-14 07:55:14', '2023-03-14 07:55:14'),
(5, 'elon musk', 'elon@tesla.com', NULL, '$2y$10$G/bl8Hs.ws9ZjQsdsKvqwOHICjdVnVyw4QS6EW5dLHSOSTl2vaUpS', NULL, '2023-03-14 07:56:58', '2023-03-14 07:56:58');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
