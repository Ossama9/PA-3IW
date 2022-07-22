-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 22 juil. 2022 à 17:09
-- Version du serveur : 8.0.29
-- Version de PHP : 8.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mvcdocker2`
--

-- --------------------------------------------------------

--
-- Structure de la table `esgi_appearance_settings`
--

CREATE TABLE `esgi_appearance_settings` (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `esgi_appearance_settings`
--

INSERT INTO `esgi_appearance_settings` (`id`, `value`) VALUES
('allow_comment', 'true'),
('big_title_size', '22px'),
('default_role', '1'),
('logo', '225'),
('main_color', '#ffffff'),
('main_font', 'Montserrat'),
('primary_color', '#00ffd0'),
('sidebar_color', '#ffffff'),
('site_description', 'Un site pour apprendre pleins de choses !'),
('site_name', 'Schills');

-- --------------------------------------------------------

--
-- Structure de la table `esgi_commentaire_lesson`
--

CREATE TABLE `esgi_commentaire_lesson` (
  `id` int NOT NULL,
  `content` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `user` int NOT NULL,
  `lesson` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reports` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `esgi_commentaire_lesson`
--

INSERT INTO `esgi_commentaire_lesson` (`id`, `content`, `user`, `lesson`, `created_at`, `reports`) VALUES
(26, '&lt;p&gt;&amp;lt;script&amp;gt;alert(&quot;test&quot;)&amp;lt;/script&amp;gt;&lt;/p&gt;', 94, 1, '2022-07-18 14:46:22', NULL),
(27, '&lt;p&gt;ce cour est nul&lt;/p&gt;', 92, 2, '2022-07-18 14:47:08', NULL),
(28, '&lt;p&gt;&amp;lt;img src=&quot;https://learner-creator.online/images/logo/logo.png&quot; onload=&quot;alert(&#039;test&#039;)&quot;/&amp;gt;&lt;/p&gt;', 94, 1, '2022-07-18 14:47:34', NULL),
(29, '&lt;p&gt;&lt;img src=&quot;../images/logo/logo.png&quot; /&gt;&lt;/p&gt;', 94, 1, '2022-07-18 14:48:37', NULL),
(30, '&lt;img src=&quot;../images/logo/logo.png&quot; /&gt;', 94, 1, '2022-07-18 14:49:38', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `esgi_course`
--

CREATE TABLE `esgi_course` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(500) NOT NULL,
  `category` int NOT NULL,
  `user` int NOT NULL,
  `cover` int NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `esgi_course`
--

INSERT INTO `esgi_course` (`id`, `name`, `slug`, `description`, `category`, `user`, `cover`, `created_at`, `updated_at`, `deleted_at`, `status`) VALUES
(1, 'Angular', 'angular', '<p><span style=\"color: #4d5156; font-family: arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Angular est un framework c&ocirc;t&eacute; client, open source, bas&eacute; sur TypeScript, et codirig&eacute; par l\'&eacute;quipe du projet &laquo; Angular &raquo; &agrave; Google et par une communaut&eacute; de particuliers et de soci&eacute;t&eacute;s. Angular est une r&eacute;&eacute;criture compl&egrave;te d\'AngularJS, cadriciel construit par la m&ecirc;me &eacute;quipe.</span></p>', 1, 4, 196, NULL, '2022-07-18 14:00:41', NULL, 1),
(2, 'React', '', '<p><span style=\"color: #4d5156; font-family: arial, sans-serif; font-size: 14px; background-color: #ffffff;\">React est un framework c&ocirc;t&eacute; client, open source, bas&eacute; sur TypeScript, et codirig&eacute; par l\'&eacute;quipe du projet &laquo; Angular &raquo; &agrave; Google et par une communaut&eacute; de particuliers et de soci&eacute;t&eacute;s. Angular est une r&eacute;&eacute;criture compl&egrave;te d\'AngularJS, cadriciel construit par la m&ecirc;me &eacute;quipe.</span></p>', 14, 4, 197, NULL, '2022-07-18 14:00:41', NULL, 0),
(3, 'Github', 'github', '<p>qsdqqs</p>', 1, 4, 198, NULL, '2022-07-18 14:00:41', NULL, 0),
(4, '&lt;script&gt;alert(&#039;jnjn&#039;)&lt;/script&gt;', 'lt-script-gt-alert-039-jnjn-039-lt-script-gt', '&lt;p&gt;fouekyfe&lt;/p&gt;', 15, 92, 230, NULL, '2022-07-18 15:37:22', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `esgi_course_category`
--

CREATE TABLE `esgi_course_category` (
  `id` int NOT NULL,
  `name` char(55) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `esgi_course_category`
--

INSERT INTO `esgi_course_category` (`id`, `name`, `description`) VALUES
(1, 'PHP 9', '<p>Nous allons voir comment on peut cr&eacute;er des variables en PHP.</p>'),
(6, 'Philosophie', 'Je suis un cours de react'),
(11, 'Stage', 'zfbzbfkjzbffz'),
(12, 'Je suis un cours super génial', 'zfbzbfkjzbffz'),
(14, 'French', '<p>Les le&ccedil;ons de fran&ccedil;ais</p>'),
(15, 'Mathématique', '&lt;p&gt;math&lt;/p&gt;'),
(16, 'Angular', 'zdzdz'),
(17, 'Math', 'Cours de 6e');

-- --------------------------------------------------------

--
-- Structure de la table `esgi_course_chapter`
--

CREATE TABLE `esgi_course_chapter` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(1500) NOT NULL,
  `course` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `esgi_course_chapter`
--

INSERT INTO `esgi_course_chapter` (`id`, `name`, `description`, `course`) VALUES
(1, 'Chapitre 1', 'Les debuts', 2),
(2, 'zzz', 'zzz', 1),
(3, 'Test', 'Je suis un cours de git', 3),
(4, 'Je suis un chapite', 'Je suis un cours de react', 3),
(5, 'le versionning', 'blabla', 3);

-- --------------------------------------------------------

--
-- Structure de la table `esgi_file`
--

CREATE TABLE `esgi_file` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `extension` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category` int NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `esgi_file`
--

INSERT INTO `esgi_file` (`id`, `name`, `extension`, `category`, `path`, `createdAt`) VALUES
(1, 'avatar', 'png', 3, '/images/avatar/avatar.png', '2022-07-18 11:16:59'),
(2, 'avatar', 'png', 3, '/images/avatar/avatar.png', '2022-07-18 11:20:10'),
(3, 'amazon-28-226069', 'png', 1, '/images/thumbnails/amazon-28-226069.png', '2022-07-18 12:04:17'),
(194, 'user', 'png', 3, '/images/avatar/user.png', '2022-07-18 11:20:10'),
(195, 'amazon-28-226069', 'png', 1, '/images/thumbnails/amazon-28-226069.png', '2022-07-18 12:05:54'),
(196, 'amazon-28-226069', 'png', 1, '/images/thumbnails/amazon-28-226069.png', '2022-07-18 12:06:46'),
(197, 'elementor-logo', 'png', 1, '/images/thumbnails/elementor-logo.png', '2022-07-18 12:07:13'),
(198, 'github-34-225988', 'png', 1, '/images/thumbnails/github-34-225988.png', '2022-07-18 12:11:49'),
(199, 'birds', 'mp4', 2, '/images/lessons/birds.mp4', '2022-07-18 12:33:58'),
(200, 'pacific', 'mp4', 2, '/images/lessons/pacific.mp4', '2022-07-18 12:34:12'),
(201, 'pacific', 'mp4', 2, '/images/lessons/pacific.mp4', '2022-07-18 12:36:05'),
(202, 'pacific', 'mp4', 2, '/images/lessons/pacific.mp4', '2022-07-18 12:37:06'),
(203, 'birds', 'mp4', 2, '/images/lessons/birds.mp4', '2022-07-18 12:37:28'),
(204, 'birds', 'mp4', 2, '/images/lessons/birds.mp4', '2022-07-18 12:38:19'),
(205, 'Planning des soutenances - Projet annuel - 3A IW', 'pdf', 4, '/images/pdf/Planning des soutenances - Projet annuel - 3A IW.pdf', '2022-07-18 12:42:05'),
(206, 'pacific', 'mp4', 2, '/images/lessons/pacific.mp4', '2022-07-18 12:48:55'),
(207, 'acf-logo', 'png', 4, '/images/logo/acf-logo.png', '2022-07-18 13:21:57'),
(208, 'LogoResto', 'png', 4, '/images/logo/LogoResto.png', '2022-07-18 13:24:36'),
(209, 'atom-134-226073', 'png', 4, '/images/logo/atom-134-226073.png', '2022-07-18 13:25:42'),
(210, 'Schills', 'png', 4, '/images/logo/Schills.png', '2022-07-18 13:25:54'),
(211, 'Schills', 'png', 4, '/images/logo/Schills.png', '2022-07-18 13:26:03'),
(212, 'amazon-28-226069', 'png', 4, '/images/logo/amazon-28-226069.png', '2022-07-18 13:33:02'),
(213, 'LogoResto', 'png', 4, '/images/logo/LogoResto.png', '2022-07-18 13:35:22'),
(214, 'atom-134-226073', 'png', 4, '/images/logo/atom-134-226073.png', '2022-07-18 13:36:35'),
(215, 'atom-134-226073', 'png', 4, '/images/logo/atom-134-226073.png', '2022-07-18 13:36:44'),
(216, 'amazon-28-226069', 'png', 4, '/images/logo/amazon-28-226069.png', '2022-07-18 13:36:53'),
(217, 'github-34-225988', 'png', 4, '/images/logo/github-34-225988.png', '2022-07-18 13:37:01'),
(218, 'Schills', 'png', 4, '/images/logo/Schills.png', '2022-07-18 13:37:10'),
(219, 'logo', 'png', 4, '/images/logo/logo.png', '2022-07-18 13:37:47'),
(220, 'atom-134-226073', 'png', 4, '/images/logo/atom-134-226073.png', '2022-07-18 13:37:55'),
(221, 'logo', 'png', 4, '/images/logo/logo.png', '2022-07-18 13:38:02'),
(222, '1', 'png', 2, '/images/lessons/1.png', '2022-07-18 13:40:11'),
(223, 'Capture d’écran 2022-07-16 à 14.45.33', 'png', 4, '/images/pdf/Capture d’écran 2022-07-16 à 14.45.33.png', '2022-07-18 14:21:30'),
(224, 'Copie de Discoverability_3 1', 'png', 3, '/images/avatar/Copie de Discoverability_3 1.png', '2022-07-18 14:46:04'),
(225, 'Joueurs', 'jpeg', 4, '/images/logo/Joueurs.jpeg', '2022-07-18 14:49:26'),
(226, 'user', 'png', 4, '/images/pdf/user.png', '2022-07-18 15:02:18'),
(227, 'PlanningDuProjet (4)', 'pdf', 4, '/images/pdf/PlanningDuProjet (4).pdf', '2022-07-18 15:02:54'),
(228, 'PlanningDuProjet (4)', 'pdf', 4, '/images/pdf/PlanningDuProjet (4).pdf', '2022-07-18 15:04:18'),
(229, 'ESGI_TestAPI-5IW2_E1_05-11-14.32.17_lien', 'png', 4, '/images/pdf/ESGI_TestAPI-5IW2_E1_05-11-14.32.17_lien.png', '2022-07-18 15:04:48'),
(230, 'Projet securité et serveur web-1', 'pdf', 1, '/images/thumbnails/Projet securité et serveur web-1.pdf', '2022-07-18 15:37:22');

-- --------------------------------------------------------

--
-- Structure de la table `esgi_file_category`
--

CREATE TABLE `esgi_file_category` (
  `id` int NOT NULL,
  `name` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `esgi_file_category`
--

INSERT INTO `esgi_file_category` (`id`, `name`) VALUES
(1, 'course_thumbnail'),
(2, 'course_lesson'),
(3, 'avatar'),
(4, 'logo');

-- --------------------------------------------------------

--
-- Structure de la table `esgi_general_settings`
--

CREATE TABLE `esgi_general_settings` (
  `id` int NOT NULL,
  `name` int NOT NULL,
  `value` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `esgi_learner`
--

CREATE TABLE `esgi_learner` (
  `id` int NOT NULL,
  `category` int NOT NULL,
  `user` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `esgi_learner`
--

INSERT INTO `esgi_learner` (`id`, `category`, `user`) VALUES
(1, 1, 5),
(77, 2, 3),
(78, 1, 3),
(80, 3, 3),
(84, 12, 82),
(85, 14, 82),
(87, 1, 87),
(88, 11, 4),
(90, 12, 5),
(93, 1, 89),
(94, 15, 89),
(95, 15, 5),
(97, 14, 92),
(98, 1, 94),
(99, 1, 93),
(100, 1, 92);

-- --------------------------------------------------------

--
-- Structure de la table `esgi_lesson`
--

CREATE TABLE `esgi_lesson` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `video` int DEFAULT NULL,
  `user` int NOT NULL,
  `chapter` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `esgi_lesson`
--

INSERT INTO `esgi_lesson` (`id`, `title`, `slug`, `text`, `video`, `user`, `chapter`, `created_at`) VALUES
(1, 'AZEazez', 'azeazez-1', '<p>adeazdeazdqefrez</p>', 204, 4, 2, '2022-07-18 12:38:19'),
(2, 'Github', 'github', '<p>balahaez</p>', 206, 4, 3, '2022-07-18 12:48:55'),
(3, 'Angular', 'angular', '<p>blablabla</p>', 222, 4, 3, '2022-07-18 13:40:11');

-- --------------------------------------------------------

--
-- Structure de la table `esgi_likeCourse`
--

CREATE TABLE `esgi_likeCourse` (
  `id` int NOT NULL,
  `course` int DEFAULT NULL,
  `user` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `esgi_likeCourse`
--

INSERT INTO `esgi_likeCourse` (`id`, `course`, `user`) VALUES
(108, 1, 5),
(112, 1, 93),
(111, 1, 94),
(109, 2, 5),
(116, 2, 93),
(117, 3, 93),
(104, 77, 59),
(105, 80, 81);

-- --------------------------------------------------------

--
-- Structure de la table `esgi_receive_password`
--

CREATE TABLE `esgi_receive_password` (
  `id` int NOT NULL,
  `idUser` int NOT NULL,
  `token` char(255) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `esgi_receive_password`
--

INSERT INTO `esgi_receive_password` (`id`, `idUser`, `token`, `status`, `createdAt`) VALUES
(1, 60, '30052360f3c9185eca199e30e1ff5fc1818108b210b76282e87bca0f335c74622c6c285d60b826e78113ca75074ea359d4fc1ea91258af18d95c519ab66e9f6b1ef7196aa746769999f8ec91b90d5d90e5568cf086345d44c02193948853fbe63179052f574a4008232021c5441867d85228086a1bc11449fbe1f4e9e00d6e8', 0, '2022-06-04 23:49:39'),
(2, 60, '22c6b005f0cb4d55ce03874c1b9401ccb939b870185de7908772006f9c36c36597797e3233e66e668d3af6e65ddce8ef31faed5679ab5b8082d2662c04b99f1e92fe13d7c10d5ddb2a95f710670d125e6592584a8fe5ceb3f5daff22eba325883822a21c22c6d996eaf6a88510abc92518752f139832884d6dfed5c94b877d5', 0, '2022-06-05 00:26:12'),
(3, 60, 'cb2aef506ff225bb225cdde27a580002ccc7d3c37f30c1b95b3530cc4962c8a1e717fe66e54ec4a6839be8edda7510726837da26925ac8cb6316033757b6f40d7f704fa262d72e542872de969a66f3ba52f52a846715a2c19170e32680132dc25a12e316b7078dd918854fce2a6bbf30760e5d5c33052eb9d1515779ee2fbd7', 0, '2022-06-05 00:31:43'),
(4, 80, 'b58f60a515d0851daf314889f3961090c1f5e8a3364f7c55bd037d0eaeb9a0a2ea99edb691e8b5eda0eee6053d1ece98de06fcf0c2d44d025ef0ddb10d3722ebfe756dfd626d2b5f0bcd88f247993b465dc7fe0ac803cb8bcf20460baafcad11803ada7ff9283f5ce64b776e8e609d8b470343934420fef477fbd9cfdf5f308', 1, '2022-07-14 10:48:49'),
(5, 88, '3999cef42272ebd0f3caa9b08c2fbe9fac5ca318781a531233ef79080691f4e42579a5888ed3782b41314c154ca71b47ea9277dc71e244dd837001a02ff203545bf5e8deb2942a0e0ef43b7f7f76976e4eeb0e1636408e32f01acdcebab6de5fe178ccb72152feaeb8eba59019214c7eae36510eba87b3cb9e690126a7bac56', 0, '2022-07-18 14:10:25'),
(6, 93, '77ac7ae4be079dda41715cbb97f0915168728fc5c3c7d0375f1b69917207aa8f0d6692755153e8981bd462228771f5706bb63fc6a3efa0aeea73408b124aec24bfc6015d1950b31f05a8d8b891345048a73ccd4c30d5b5eaa1e28ea514cc15a2fe01b3176f807ade53b0bd91c148d9e30f9e45f08be74b62379f6cb381f77fe', 1, '2022-07-18 14:58:52'),
(7, 92, '29b8abff39b367b6a09fa319dd1f45acab565617af3e9b19e083f303877106433c2cd29e93ca3e159cf84e5d7fe3ac7545560a11fc76682185d0d0991bcfc5c1d3aae7943d145bb93948c317a0637d669acfc7adb83793304fc94f504dfc533053f5183e6a4f10c3f8091aad3c4e05f7f2af9ce708e024ff7df53a13a0e42a4', 0, '2022-07-18 14:59:04');

-- --------------------------------------------------------

--
-- Structure de la table `esgi_report_comment`
--

CREATE TABLE `esgi_report_comment` (
  `id` int NOT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `user` int NOT NULL,
  `comment` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `esgi_request_teachar`
--

CREATE TABLE `esgi_request_teachar` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `statut` int NOT NULL,
  `motivation` longtext NOT NULL,
  `theme` varchar(255) NOT NULL,
  `cv` int NOT NULL,
  `diplome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `esgi_request_teachar`
--

INSERT INTO `esgi_request_teachar` (`id`, `user_id`, `statut`, `motivation`, `theme`, `cv`, `diplome`) VALUES
(11, 63, -1, 'zadaezd', 'zedzaedz', 184, 'Licence 3'),
(13, 59, 1, 'azdzed', 'aedae', 189, 'Licence 3'),
(14, 2, 0, '<p>Je veux enseigner</p>', 'PHP', 205, 'J\'ai pas de diplome'),
(15, 89, 0, '&lt;p&gt;Je souhaiterais devir professeur&amp;nbsp;&lt;/p&gt;\r\n&lt;div id=&quot;hoverpedia_bottom&quot; class=&quot;hoverbox&quot; style=&quot;visibility: hidden;&quot;&gt;&lt;/div&gt;', 'Mathématiques', 223, 'LICENCE'),
(16, 92, 1, '&lt;p&gt;test&lt;/p&gt;', 'test', 226, 'Licence'),
(17, 93, 0, '&lt;p&gt;test&lt;/p&gt;', 'test', 227, 'ESGI'),
(18, 93, 0, '&lt;p&gt;&amp;lt;script&amp;gt;alert(&quot;test&quot;)&amp;lt;/script&amp;gt;&lt;/p&gt;', '&lt;script&gt;alert(&quot;test&quot;)&lt;/script&gt;', 228, '&lt;script&gt;alert(&quot;test&quot;)&lt;/script&gt;'),
(19, 94, 0, '&lt;p&gt;&amp;lt;img src=&quot;https://learner-creator.online/images/logo/Joueurs.jpeg&quot; onload=&quot;alert(&#039;coucou&#039;)&quot;/&amp;gt;&lt;/p&gt;', '&lt;script&gt;alert(&#039;test&#039;)&lt;/script&gt;', 229, '&lt;script&gt;alert(&#039;test&#039;)&lt;/script&gt;');

-- --------------------------------------------------------

--
-- Structure de la table `esgi_role`
--

CREATE TABLE `esgi_role` (
  `id` int NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `esgi_role`
--

INSERT INTO `esgi_role` (`id`, `name`) VALUES
(1, 'user'),
(2, 'teacher'),
(3, 'admin'),
(1, 'user'),
(2, 'teacher'),
(3, 'admin'),
(1, 'user'),
(2, 'teacher'),
(3, 'admin'),
(1, 'user'),
(2, 'teacher'),
(3, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `esgi_user`
--

CREATE TABLE `esgi_user` (
  `id` int NOT NULL,
  `email` varchar(320) NOT NULL,
  `firstname` varchar(25) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `avatar` int DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `token` char(255) NOT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `password` varchar(255) NOT NULL,
  `role_id` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `esgi_user`
--

INSERT INTO `esgi_user` (`id`, `email`, `firstname`, `lastname`, `avatar`, `status`, `token`, `createdAt`, `updatedAt`, `password`, `role_id`) VALUES
(1, 'mats2@live.fr', 'Charaoui', 'LAILA', 194, 0, 'cc853b83d3699b12dd674566518d308fbd54a4b3d98a73878a169c30cf41c701b53ba74b41bdcf12b289e9526fb1a14b412a4a1466f2c2d174d2b239a4bdee62f6fd741779958443642e2ae245f645dc138039c2c49ad6577ab6433a0ae4b51bc91b54844e65f58d037016b703e7155d64742811e06d82c3f4a74533574962c', '2022-07-17 14:11:38', '2022-07-18 12:41:41', '$2y$10$J8rKsTCLmSva5s2SgWrGHeJGN25xz5dse/ecnM93pfEk5vmXC02wS', 1),
(4, 'admin@learner-creator.online', 'Admin', 'ADMIN', 2, 0, 'ca2216099b5d2e8264f3efd1e22228357a13adbf0288720eed8c1d35de6eb4732c70033038bc240fcfb5d488a40317824689a2375533d88fe14348432c5e7945a22c4e902fc2b26a21b0abef68a81d551a84dda47984635426fd8d0f0b82419e2d1ba393e13c68de09c1e16a3e6dde6072751dc4450f8ee4aea9b487daf950f', '2022-07-17 19:51:57', '2022-07-17 20:16:11', '$2y$10$FJJPIfPzbdi1omx983QdJuaWs2GzuN30FhI6b8m547EPZpCe7GNoe', 3),
(5, 'marine123@gmail.com', 'Sdfgfds', 'DFGHGFDS', 194, 0, 'e44355552807767964f351bc62af24f6599ca4a32b7e6e8053913444ab3bd595d2cf278ba783367d7e9550c4a775519ad7742b4fa2eefe2e4d148348c28f355fb1e5f473f8159b5db0a177f49ddd3b4dde72b6be3de17fceceee2c72550bfda4e05c4c075cbaea52e82488b6ecab7c106bdf0a524db02b8ea8859c46ef3c15a', '2022-07-18 10:25:09', '2022-07-18 12:41:34', '$2y$10$CpFsDElGzfAmYqOBMRk36uZ4vZww85yxesdsOgZWKu5DSFRXDME1K', 1),
(59, 'blablagirl76@gmail.com', 'Charaoui', 'LAILA', 1, 0, '2cbd557772fcad850d5a7cba4268a08384e8e606523351b4ba14b48312b4d226ca799c199134b829b6a9036a1daa3ea1e8c01e16fb8bcc30d09673984d8c28e3ebd4e65e4b9ade2e76a53c3b32eb01723c5078e1deaf1234ecd343bacafed201ca5d5507b7ec3b0e6fff7a0c702ec3703c6fe6ba1a9a0ea691b1535a80afcb7', '2022-07-17 19:49:05', '2022-07-18 14:17:01', '$2y$10$nqc5A3U9om0ptYMXjsN.Ju1gabFQl1DKy3U8VGt8ulMDv5x6tyrGG', 2),
(84, 'marine@gmail.com', 'Dfghjkjhgfd', 'DFGHGFD', 194, 0, 'fbf7c2769c81363b14c0d7f3001fbfc278dedcbe5c37b8c427b041bfd33a61d42ff4ec740d11029d8cf95511bbb25d29784ec100eefd2764f30080b5b347e673264a17e955f886797c094a1c5e167730801ac96dfb4aceecfd38e8eddc389451aefd3b9a43d055975d61cfc1f4158894e8f12dbfd2868aae7f213d7516a593a', '2022-07-18 12:10:50', '2022-07-18 12:41:27', '$2y$10$LJW9yypm69tKn3hcdKUzxua7ID1pbqYXz.9eL98n084J7dMRUVv3q', 1),
(86, 'oo.159482@gmail.com', 'Aze', 'DFLKZ', 194, 0, '44f7c079884ccaa7110beeeef42f286b3ab9c6dffecfffea8bf47f4030ab34ebcf8d7aedaa4504f0d6be0096234dae076c2debd967bece0325a7c7a02e03c124eacb9f75ed867d313d39b1fc27899cf8c133634ad6eafbcebb587c870c624eee31ce743f96990280afdb39ee0163c57ff0e24c8b21184a4c3e3527e5e841239', '2022-07-18 12:15:29', NULL, '$2y$10$UOYl364EXhbIZe8WKJHmbe3SrvxdsAJ8Q/7LI8i3ov.6ymiEOPVHG', 1),
(87, 'marine4@gmail.com', 'Ytrertyuytr', 'YTREZERTYU', 194, 0, 'cd1e201a34d7bd74d9bbe912e63baee3d3b0fbfd27aebf50a7bb004228cb8c72bc1303caed49a5efda96d461cef9f640785409d2c1e4679434225a2cb765a72b5515b0d8483efdb9a7eb32047d928a06d50de13447e0fe4f5984d0df9404c77f8f2786237c7b3ba2225f804ccc3c906e6122fcc98c24728bf75efa231dcfb6b', '2022-07-18 12:16:39', NULL, '$2y$10$lcE0VqGqLRvFDRxIHgPNAOaYJwKJFSkqbxBvklDNzdPewBRaqxipS', 1),
(89, 'abrahamricardogn224@gmail.com', 'Hernandez', 'SOMPARE', 194, 1, '608e1267f3a6782d63b013d4e70308da6609116db552a9cf63976d41aa242a20aa09c60876e72dc48d6fc4f70aba91cecdc0e144b8fc261141193a410622596c7c0e376bd3e692e0dc52f8eeceefa4f6254ffa2a16538ae6db50cfbc8f33eda7af3a3b000be41be88e5b075a6a3c09c90ed75c4ed80dfb0d8bca920b13c1f3d', NULL, NULL, '$2y$10$9n9Zx3cJMAhQ5Fo9kxjW8.WRAO14Cifkwc3OAnmo.6QIZngzFLpwO', 1),
(90, 'oussama.dahbi98@gmail.com', 'Sqddsq', 'AD', 194, 0, 'b20fe87adde37963c858b4690a077dc3c545bdfff47351c5982df3f9ba3b8f5261f6d8a5363213377c8088d28b966067dff137cb11a20cc4052dd9a1d4c410022e5144e2aa5d511f1d806319c47939a4eff648f497f79e857afbd731ef66c8ad42088885bb8eac559f3f91ed8db29a1807788c3a35be0ad318583690941e946', NULL, NULL, '$2y$10$4zgOpYG/nRXscgzLE1gb1uISS6xuD87Q3YQRxL.zGW7pfd7A/uVNW', 1),
(91, 'marine1@gmail.com', 'Dfghjhgfd', 'GFDFGHJHGF', 194, 0, '6bf0aafe61de523f1ddb8cf13bb10448ba19ade36fadbf35518fac69d517306eb8fd0f7e4abf0f111255f8bb6a217b3da64612dfe024adf7954c5ee99297a23605b1dfadffd2c3bf962b14fd8e39bd850ead85d42c890a3b20f230059b98e6762a9fb8ab5233ba325361c43f32b963da5bb202f84ef741ba709e9338a3f4da1', NULL, NULL, '$2y$10$jMSn1frkeRVpY0OinEZFUOT3fz.Yajgi4Elhy6uAKftKMTp2Rm.ja', 1),
(92, 'oussama.1941@gmail.com', 'Te', 'D', 194, 1, '0f1211901bdfd8505235182b0872ecb742f50018b34e2f2aaa177815d34dfd40104d8892b55b042e70918cba98183e39fa31c595ce5bddaa7f40a2506cad8fbb06718dbc850665c004be2efdbfe60d9d4cbdda5ca6a489c5d2260ebc2c7deaf053f579e2ef01e9b551dffc944ff41b139a9459402ab2e6bceb17e2967d5c446', NULL, '2022-07-18 15:44:31', '$2y$10$9dnmTb5o6OHsV.dQyvbEs.hcuMJXJ1CjzMocKoFhLVsUdclSqG6Yu', 3),
(93, 'y.skrzypczyk@gmail.com', 'Yves', 'SKRZYPCZYK', 224, 0, '42a6be9ed850418ef569aef6efad045a9d46590bd3d7703d7f155c6d01cee181719446ba7072e5c284828f7693b8516430d143eab99d733484dd1d1c42eb0e0f314477f0805d58ec066d90229f2b28fe20ed1aa7225aa733ab820b3f9fdf8998070c92a7b00a172dbd6247dff6477eda4d051e9ae9716fd1675bc5d7954bd22', NULL, NULL, '$2y$10$xpR6ZSSk.NaBXVLr07wdC.xob48DDDd4ruKotARFxg3Z9vDKM/OcK', 1),
(94, 'karl+1@kmarques.dev', 'Karl', '&LT;SCRIPT&GT;ALERT(&QUOT;TEST&QUOT;)&LT;/SCRIPT&GT;', 194, 0, '87a766104806e1c957f418900a53856a9e0ee0b6886aa7e710565347ad40bcb6e787849e25b6398c2826e966d38e4fb96199e5887b7814e07016890efe2831e3324d9e64fd837ed1974a87e1e5e0b5cefa68d2a4b6cc94e83321c977bda25838bba9d8448735e6b09f9f90db1c956a715a7294d946c3dea3ba96f490b619976', NULL, NULL, '$2y$10$bKKyNJlfehjNu7EkaTgtxu5q4uGwQFNeOaHj57gt016s7X/Mf0/OO', 1);

-- --------------------------------------------------------

--
-- Structure de la table `esgi_user_progress_lesson`
--

CREATE TABLE `esgi_user_progress_lesson` (
  `id` int NOT NULL,
  `lesson` int NOT NULL,
  `user` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `esgi_user_progress_lesson`
--

INSERT INTO `esgi_user_progress_lesson` (`id`, `lesson`, `user`) VALUES
(25, 51, 59),
(30, 52, 59),
(31, 52, 81),
(32, 1, 4),
(33, 3, 59),
(34, 3, 92);

-- --------------------------------------------------------

--
-- Structure de la table `Lesson`
--

CREATE TABLE `Lesson` (
  `id` int NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `video` int NOT NULL,
  `text` varchar(1500) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `user` int NOT NULL,
  `course` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `esgi_appearance_settings`
--
ALTER TABLE `esgi_appearance_settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `esgi_commentaire_lesson`
--
ALTER TABLE `esgi_commentaire_lesson`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `esgi_course`
--
ALTER TABLE `esgi_course`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `esgi_course_category`
--
ALTER TABLE `esgi_course_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `esgi_course_chapter`
--
ALTER TABLE `esgi_course_chapter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course` (`course`);

--
-- Index pour la table `esgi_file`
--
ALTER TABLE `esgi_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Index pour la table `esgi_file_category`
--
ALTER TABLE `esgi_file_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `esgi_general_settings`
--
ALTER TABLE `esgi_general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `esgi_learner`
--
ALTER TABLE `esgi_learner`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `category` (`category`),
  ADD KEY `esgi_learner_ibfk_1` (`user`);

--
-- Index pour la table `esgi_lesson`
--
ALTER TABLE `esgi_lesson`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_chapter` (`chapter`),
  ADD KEY `lesson_media` (`video`),
  ADD KEY `lesson_user` (`user`);

--
-- Index pour la table `esgi_likeCourse`
--
ALTER TABLE `esgi_likeCourse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course` (`course`,`user`) USING BTREE,
  ADD KEY `user` (`user`) USING BTREE;

--
-- Index pour la table `esgi_receive_password`
--
ALTER TABLE `esgi_receive_password`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `esgi_report_comment`
--
ALTER TABLE `esgi_report_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`),
  ADD KEY `comment` (`comment`);

--
-- Index pour la table `esgi_request_teachar`
--
ALTER TABLE `esgi_request_teachar`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `esgi_user`
--
ALTER TABLE `esgi_user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `esgi_user_progress_lesson`
--
ALTER TABLE `esgi_user_progress_lesson`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `esgi_commentaire_lesson`
--
ALTER TABLE `esgi_commentaire_lesson`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `esgi_course`
--
ALTER TABLE `esgi_course`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `esgi_course_category`
--
ALTER TABLE `esgi_course_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `esgi_course_chapter`
--
ALTER TABLE `esgi_course_chapter`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `esgi_file`
--
ALTER TABLE `esgi_file`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT pour la table `esgi_file_category`
--
ALTER TABLE `esgi_file_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `esgi_general_settings`
--
ALTER TABLE `esgi_general_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `esgi_learner`
--
ALTER TABLE `esgi_learner`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `esgi_lesson`
--
ALTER TABLE `esgi_lesson`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `esgi_likeCourse`
--
ALTER TABLE `esgi_likeCourse`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT pour la table `esgi_receive_password`
--
ALTER TABLE `esgi_receive_password`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `esgi_report_comment`
--
ALTER TABLE `esgi_report_comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `esgi_request_teachar`
--
ALTER TABLE `esgi_request_teachar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `esgi_user`
--
ALTER TABLE `esgi_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT pour la table `esgi_user_progress_lesson`
--
ALTER TABLE `esgi_user_progress_lesson`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `esgi_course_chapter`
--
ALTER TABLE `esgi_course_chapter`
  ADD CONSTRAINT `course` FOREIGN KEY (`course`) REFERENCES `esgi_course` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Contraintes pour la table `esgi_report_comment`
--
ALTER TABLE `esgi_report_comment`
  ADD CONSTRAINT `comment` FOREIGN KEY (`comment`) REFERENCES `esgi_commentaire_lesson` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
