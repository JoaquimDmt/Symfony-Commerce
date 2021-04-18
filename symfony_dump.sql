-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 18 avr. 2021 à 23:28
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `symfony`
--

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
('DoctrineMigrations\\Version20210417170325', '2021-04-17 17:08:29', 293),
('DoctrineMigrations\\Version20210417172251', '2021-04-17 17:25:00', 43),
('DoctrineMigrations\\Version20210417234437', '2021-04-17 23:46:10', 51),
('DoctrineMigrations\\Version20210418131007', '2021-04-18 13:10:31', 200),
('DoctrineMigrations\\Version20210418164155', '2021-04-18 16:42:33', 44),
('DoctrineMigrations\\Version20210418165919', '2021-04-18 16:59:32', 42);

-- --------------------------------------------------------

--
-- Structure de la table `option`
--

DROP TABLE IF EXISTS `option`;
CREATE TABLE IF NOT EXISTS `option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `option`
--

INSERT INTO `option` (`id`, `name`) VALUES
(1, 'Balcon'),
(2, 'Piscine'),
(3, 'Jardin'),
(7, 'Adapté PMR');

-- --------------------------------------------------------

--
-- Structure de la table `property`
--

DROP TABLE IF EXISTS `property`;
CREATE TABLE IF NOT EXISTS `property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surface` int(11) NOT NULL,
  `rooms` int(11) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `heat` int(11) NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sold` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `property`
--

INSERT INTO `property` (`id`, `title`, `description`, `surface`, `rooms`, `bedrooms`, `floor`, `price`, `heat`, `city`, `address`, `postal_code`, `sold`, `created_at`, `filename`, `updated_at`) VALUES
(5, 'ad dolores excepturi', 'Est quam commodi eius qui id maiores. Voluptatem culpa aliquid quas quod ut voluptatem. Quia nihil tempora voluptatibus possimus dolorum eligendi.', 143, 7, 4, 3, 316352, 0, 'Faivre', '151, boulevard de Godard19 836 Techer', '51983e', 0, '2021-04-18 10:49:34', '', '2021-04-18 17:37:21'),
(6, 'asperiores rerum consequatur', 'Molestiae quia ut dolore nihil. Illum ea eos itaque cumque earum. Nemo quia in voluptas ut.', 233, 2, 5, 1, 861413, 0, 'Texier', '788, place Poulain46171 Peltier-les-Bains', '81 727', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(7, 'Nobis illum non', 'Cum laudantium aut architecto eos eum. Distinctio tempore non culpa natus id dolorem. Nam fugiat ipsam quae non architecto facere recusandae.', 271, 14, 5, 8, 975830, 0, 'Alves', '138, place Carre98847 Bonnet-sur-Martineau', '73889', 0, '2021-04-18 10:49:34', '', '2021-04-18 18:07:01'),
(8, 'et sed dolorem', 'Et at amet ex facere. Ea quod itaque alias excepturi adipisci id. Nesciunt laudantium voluptas et qui architecto non error.', 20, 16, 6, 6, 185549, 1, 'Allard-les-Bains', '31, rue de Salmon45061 Begue', '89240', 0, '2021-04-18 10:49:34', '', '2021-04-18 17:28:00'),
(9, 'sit minima nobis', 'Ea omnis fugiat quidem pariatur assumenda aut tempora. Sed deserunt quo minus dolorem. Vitae est quasi fugit et esse.', 297, 2, 3, 1, 832550, 0, 'Gaillard-sur-Lebrun', '20, impasse de Pierre17004 Brunel', '60471e', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(10, 'dolorem voluptas quod', 'Laboriosam minima quas et impedit commodi qui fugiat. Ratione perspiciatis laudantium ut rerum. Vitae rem quos autem earum quas.', 262, 5, 7, 10, 798605, 0, 'Gomez', '43, place Laurent\n97789 Blanc', '89772', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(11, 'ea quas est', 'Rerum animi alias expedita. Reprehenderit nam voluptate veniam quia et vero omnis incidunt. Nobis similique aut et.', 238, 17, 1, 2, 523477, 0, 'Daniel', '49, rue Loiseau36 643 Parentnec', '80028', 0, '2021-04-18 10:49:34', '', '2021-04-18 18:08:14'),
(12, 'minus aliquid suscipit', 'Incidunt quis eum qui sit. Quaerat nesciunt dolor quidem nam fugit aut assumenda. Natus accusamus ducimus sit vitae qui quod et.', 268, 7, 3, 1, 290203, 0, 'Morvanboeuf', 'rue Roux\n62 555 Perrier-sur-Mace', '84116', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(13, 'vel alias commodi', 'Et aut reiciendis et qui qui possimus. Dolorum adipisci et ut dolorum reprehenderit qui ut. Ut dolorem voluptas rerum voluptatem.', 332, 4, 1, 4, 120532, 0, 'BouvetBourg', '14, chemin de Chauveau\n91 013 Chartier-sur-Germain', '22156', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(14, 'culpa sint ut', 'Ad est iste fugit dolorem nisi. Perferendis sed ipsa alias velit ut dicta. Amet asperiores non odit neque dolorem autem nam.', 252, 18, 4, 0, 757850, 0, 'Gaudin', '59, boulevard de Lebreton\n94 935 Roussetboeuf', '50201', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(15, 'dolor magni occaecati', 'Dolores voluptas quas aliquid quia iure quibusdam provident. Ratione deleniti eius veniam. Quibusdam at labore molestiae provident veritatis.', 171, 2, 3, 6, 863475, 0, 'Lebon-sur-Gilbert', '9, impasse Blin\n31367 Chauveau', '35 378', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(16, 'veniam nesciunt molestias', 'Maiores repellat voluptatum cum natus minus suscipit possimus. Eius eos laudantium consequatur suscipit. Molestias adipisci magni consequatur eveniet.', 98, 6, 8, 2, 779515, 1, 'Adam-les-Bains', 'place de Leconte\n99 958 Joseph', '27 854', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(17, 'sed voluptatibus ut', 'Saepe inventore ullam ut officia eaque. Voluptas sint in et nisi. In aspernatur ut et qui voluptatem maiores a.', 189, 2, 8, 5, 799283, 1, 'Joubertdan', 'avenue Margot Etienne\n71 983 Renard', '09 952', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(18, 'sunt eveniet consequatur', 'Voluptatibus quos earum inventore nam repellat quia ipsam. Quibusdam dolorem consequuntur et sit sunt ut accusamus sint. Aut et aut recusandae assumenda ea rerum.', 92, 2, 5, 8, 162985, 1, 'Lombard', '86, place de Sanchez\n65630 Muller', '84 229', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(19, 'iusto soluta et', 'Sit accusamus beatae error dolore. Dolore molestiae dolor possimus. Animi aliquam non provident reiciendis quia cum.', 61, 20, 7, 1, 423240, 0, 'Breton-sur-Mer', '8, rue Paris\n70 171 Levy-sur-Le Goff', '80082', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(21, 'rerum nisi eius', 'Velit quo qui similique odit et. Aut corporis molestiae hic error. Voluptatem ut soluta tempore voluptas laboriosam nihil.', 124, 10, 7, 9, 873186, 1, 'Picard', '258, avenue Olivier Robin\n78 357 HamonBourg', '90 914', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(22, 'porro hic debitis', 'Aperiam et iusto aut ipsam quia. Molestias ullam natus sed nesciunt porro nesciunt et. Rerum voluptas vitae sequi similique modi.', 44, 11, 6, 9, 176860, 0, 'Guillon-sur-Mer', '7, rue de Chevalier\n84 789 Marydan', '68 886', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(23, 'qui quo totam', 'Rem rerum non dolorem rerum non. Omnis accusamus dolorum sed dolorem et qui. Iusto autem molestiae quod sunt recusandae nemo.', 189, 3, 7, 1, 674705, 0, 'Fouquet', '38, rue Alexandre Pereira\n90037 Normandboeuf', '44 142', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(24, 'eos rerum deserunt', 'Doloremque et velit quis. Et possimus officiis repudiandae provident accusamus consectetur architecto. Deleniti exercitationem quas cumque optio iure doloribus atque.', 183, 2, 6, 5, 639435, 0, 'Joseph', '53, rue Cécile Legros\n44719 Adam', '30 723', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(25, 'et harum fugiat', 'Perspiciatis necessitatibus voluptas et blanditiis. Repudiandae quidem et deserunt molestias molestiae officia. Consequuntur magni et incidunt id.', 94, 4, 1, 5, 642406, 0, 'David', '97, boulevard Josette Collin\n57 440 Pruvostnec', '52796', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(26, 'fuga neque velit', 'Maiores deleniti magnam reprehenderit dolorem dolores ut nisi. Ratione placeat temporibus natus incidunt. In ipsa vero quod ullam.', 64, 18, 3, 0, 232949, 0, 'Marty', '8, chemin de Denis\n19 837 Baudry-la-Forêt', '14578', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(27, 'voluptatibus ut rerum', 'Sed minima itaque consequatur architecto est labore architecto. Vel et et eos explicabo at eveniet. Accusantium id qui possimus odit.', 22, 7, 5, 4, 359755, 1, 'Duvalnec', 'avenue Manon Gaillard\n11987 Guyon', '15 793', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(28, 'optio unde et', 'Voluptatem aut aut deserunt aut. Hic sunt quis repudiandae neque eveniet vel totam qui. A quis esse earum accusamus.', 268, 15, 6, 1, 702461, 0, 'Boucher-sur-Vallee', '743, boulevard Marchal\n26318 Bourgeois', '88 007', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(29, 'quaerat sit voluptatum', 'Ut delectus optio omnis quae facere officia odio. Et modi neque cupiditate error necessitatibus odio. Rerum et sit veniam velit.', 202, 15, 4, 3, 771238, 1, 'Raynaud', '50, boulevard Honoré Collin\n55224 Lucas', '77 959', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(30, 'ipsam aut est', 'Ipsum est ex optio deleniti cupiditate vero. Aut est aut non consequuntur recusandae fuga labore et. Iste est iusto id voluptate provident dolorem placeat.', 102, 13, 1, 8, 379784, 1, 'Bonneau-sur-Royer', '1, chemin Louise Brunet\n92590 Boyer', '67 971', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(31, 'voluptas et non', 'Qui voluptas ullam odio explicabo odit laudantium. Aut asperiores id et exercitationem vitae eveniet. Minus molestiae voluptas et sit.', 53, 14, 5, 9, 841080, 0, 'Chretien', '426, boulevard André Schmitt\n26 839 Roy', '54091', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(32, 'dolores sint odit', 'Dolorem saepe illo qui et ut. Et repellendus laboriosam amet. Quod corrupti incidunt sit ab.', 64, 5, 1, 0, 973178, 0, 'Gaudin', 'impasse de Besson\n81 219 Le Roux-sur-Arnaud', '27845', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(33, 'quia eos est', 'Fugiat quisquam eveniet delectus sunt adipisci consequuntur sint. Saepe quis officia quibusdam qui. Rem temporibus dolores et iusto provident quia nostrum.', 232, 7, 8, 7, 489080, 1, 'Courtois', '447, avenue de Pages\n45373 Maillet', '06 654', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(34, 'qui quisquam suscipit', 'Iusto libero et expedita eveniet molestiae voluptas. Odit delectus id enim aut porro porro. Et eum eligendi magnam eos.', 63, 14, 5, 5, 836241, 1, 'Paris-la-Forêt', '221, rue Chantal Dupuy\n24 285 Renaud-sur-Mer', '71858', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(35, 'repellat voluptatem eum', 'Est voluptatum natus et ullam. Voluptate a ut et dicta nihil sequi. Quo quibusdam occaecati deleniti et.', 228, 18, 5, 4, 862991, 0, 'Dupont', 'boulevard de Allard\n60 181 Benoit', '55874', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(36, 'mollitia repellat molestiae', 'Sed dolorem quod et et ut. Accusamus exercitationem reiciendis sed voluptatibus praesentium deserunt. Assumenda totam sed at ea ipsa autem explicabo.', 164, 3, 8, 4, 915350, 0, 'Rousset', '20, rue Denise Pruvost\n09927 Ferrandnec', '32 159', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(37, 'atque modi omnis', 'Porro quo ducimus non fugiat quidem autem eius ut. Ipsa eum inventore et porro. Laboriosam ipsa maxime facere laborum.', 336, 5, 8, 3, 731571, 1, 'BaudryVille', '5, chemin Laurent Henry\n07 780 Hubert', '05 834', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(38, 'occaecati ut magnam', 'Et quaerat aut veritatis inventore eum corporis. Animi voluptatem fuga quasi vero. Soluta vel modi rerum.', 207, 3, 1, 0, 596513, 0, 'Jean', '99, avenue Roland Texier\n89817 MathieuVille', '47 221', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(39, 'sed nesciunt perspiciatis', 'Dolorum occaecati voluptatum ipsum et eveniet optio odit. Maiores aut assumenda quasi magnam illum velit odit. Nihil harum consequuntur quasi.', 334, 5, 7, 3, 229156, 1, 'Pierre-la-Forêt', '58, boulevard Aubert\n50992 Martins-sur-Cordier', '53716', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(40, 'recusandae voluptas et', 'Ad quaerat temporibus adipisci et. Quo qui aut beatae placeat nulla et. Labore provident officiis deserunt provident accusantium aut vel.', 20, 19, 5, 2, 595376, 0, 'Lombard', '130, boulevard Rousseau\n59018 Chartier', '30 840', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(41, 'ullam rerum voluptatem', 'Dolorem aspernatur est velit et nam alias. Voluptate esse quo et nobis placeat hic sequi. Rerum impedit mollitia quam sit dolores vero.', 102, 4, 1, 10, 798009, 1, 'Langlois', 'boulevard Perrot\n49 409 Gregoire-la-Forêt', '59 720', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(42, 'sed fugiat atque', 'Laborum delectus earum totam iusto. Praesentium et accusamus sint eum velit voluptatem qui. Molestiae ducimus et provident vel aut.', 38, 17, 1, 4, 282015, 1, 'Peron', '2, rue Margaud Gosselin\n24714 Lemoine', '62 908', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(43, 'nesciunt ea facilis', 'Suscipit velit aut saepe voluptas. Incidunt sit eveniet reiciendis eum illo est. Quos et atque quidem.', 84, 17, 7, 4, 774670, 1, 'Fouquetnec', '82, rue Durand\n80276 Lacombeboeuf', '33 921', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(44, 'et esse error', 'Autem corporis sunt quod non. Quaerat beatae commodi quia corporis dolorum voluptas. Repudiandae libero nesciunt odit qui.', 211, 15, 6, 10, 775755, 0, 'Bourgeoisnec', '9, boulevard Antoine Da Costa\n87768 PeltierBourg', '23789', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(45, 'odio veniam quibusdam', 'Est earum dicta rem sit excepturi. Quia itaque id sint modi enim veritatis totam. Voluptate quasi in itaque odit impedit dolores.', 130, 5, 7, 1, 319825, 0, 'Lebon-sur-Mer', '757, place Dorothée Lejeune\n51 366 Perrot', '36815', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(46, 'autem vel cum', 'Quia cum debitis voluptatum aut neque laboriosam. Non voluptatum ab iure eum corporis. Rem doloribus ea id quisquam sit quisquam qui.', 131, 8, 2, 3, 453461, 1, 'Mace', '680, boulevard de Moreno\n96 969 Chevallier', '83 751', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(47, 'totam minus similique', 'Fuga dolorem autem placeat officia molestias ipsum. Expedita reiciendis ea autem voluptatibus qui officiis soluta. Repellendus atque illo veritatis recusandae.', 51, 20, 7, 8, 537645, 0, 'Couturier-les-Bains', '942, chemin Hamel\n50 717 Fernandes', '68 949', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(48, 'nulla dolorum aut', 'Aut et earum voluptatum libero at. Vel provident ipsum sunt laborum omnis. Incidunt fugit doloremque iste qui quis unde et ipsa.', 67, 7, 3, 7, 92957, 0, 'Boulay', 'avenue Barbe\n68 562 Simon-les-Bains', '13 991', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(49, 'a neque nulla', 'Sequi nisi perferendis dolorem commodi consequatur est dolores. Veritatis hic ut error molestiae praesentium. Delectus architecto qui eligendi dicta iste officia.', 79, 6, 8, 8, 406882, 0, 'Weiss', '469, avenue Constance Laroche\n10661 Valletboeuf', '16006', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(50, 'mollitia rerum odio', 'Quas doloremque illo nulla ullam. Et vitae blanditiis sit aperiam qui. Aliquam modi expedita minima dolor.', 344, 4, 8, 5, 174936, 1, 'Guichard', '53, boulevard de Salmon\n16215 Maillot', '00 983', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(51, 'est aliquam qui', 'Dolorum similique dolorum est hic. Aut odio aut quos. Laboriosam iste voluptatem commodi dolor pariatur quia saepe.', 79, 17, 5, 4, 112794, 1, 'Collet-les-Bains', '1, boulevard Marianne Marin\n07 249 Lenoir', '60 057', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(52, 'quos quo aut', 'Provident aut aspernatur et impedit. Fugiat ea vero eveniet. Qui aliquam nobis alias iusto sequi quae.', 206, 18, 2, 8, 761793, 1, 'Perret', '55, place Aimée Renault\n17 327 Lebon', '92 597', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(53, 'est ut natus', 'Perferendis quam a voluptates est illo. Laboriosam corporis quasi rerum officia. Est consequatur omnis quae natus.', 230, 9, 1, 4, 506259, 0, 'Coste', '291, avenue Auguste Payet\n10116 Perrot-sur-Guillot', '51497', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(54, 'totam culpa est', 'Nam quae voluptas libero et et sed. Aspernatur porro praesentium atque consequuntur earum aspernatur minus. Aperiam quam consequuntur et enim et nesciunt.', 73, 17, 4, 4, 426022, 1, 'Georges-sur-Lacroix', 'place Marine Joly\n30 437 Benoit', '88 925', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(55, 'expedita non ducimus', 'Sint et eos quo modi reiciendis cupiditate quisquam. Perspiciatis alias aliquid et commodi. Occaecati reiciendis natus aspernatur modi.', 341, 2, 3, 1, 246447, 1, 'Pruvost-sur-Masse', '74, avenue Chevalier\n31 111 Chauvet', '07 716', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(56, 'aut consectetur optio', 'Nihil impedit omnis quo nihil quo minima tempore incidunt. Sint provident consequuntur quaerat dolores repellendus. Hic consequuntur dolorem quasi repellendus id atque nemo.', 274, 14, 2, 5, 204447, 0, 'Mace', '546, place de Berger\n98160 Gallet', '98499', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(57, 'reiciendis rerum et', 'Reprehenderit sint maxime dolor harum aperiam aut. Provident praesentium odio assumenda soluta accusantium consectetur et. Quisquam quo repudiandae ad quia ipsam.', 189, 19, 5, 2, 926742, 1, 'Marie', '45, rue Léon Chevalier\n63258 Legendreboeuf', '31433', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(58, 'tempore veniam velit', 'Doloremque libero qui incidunt aperiam vel vel suscipit. Animi enim facilis vel quasi cum ex quis. Beatae ducimus aut autem non corporis sit sint.', 23, 7, 4, 9, 844725, 1, 'Gilles', '516, avenue Eugène Auger\n76 122 Pintodan', '56 601', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(59, 'ut at ratione', 'Maiores nulla at nam quis assumenda perspiciatis. Voluptate laboriosam architecto accusamus. Sunt rem magni explicabo voluptas porro doloribus.', 250, 17, 6, 2, 962707, 0, 'Thierrynec', '2, boulevard de Regnier\n54 637 Joly', '08245', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(60, 'eum voluptas nam', 'Velit ad culpa facilis repellendus nam. Inventore eius iure aspernatur non sequi cumque explicabo. Earum molestiae similique molestias architecto error possimus illum.', 287, 17, 6, 2, 871032, 1, 'Charpentierdan', '27, boulevard Édouard Marchal\n84 626 Olivier', '77657', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(61, 'placeat pariatur ab', 'Doloremque veniam eum voluptatem odit. Et asperiores sapiente ut porro aperiam. Ut est necessitatibus commodi nobis laudantium.', 25, 15, 3, 2, 246719, 0, 'Maillet', '94, rue de Pereira\n82655 Diaz', '35 218', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(62, 'qui inventore molestiae', 'Assumenda qui repellat sunt tenetur. Ratione rerum voluptatem unde dolorem. A aspernatur ut excepturi dicta aliquid.', 193, 19, 8, 9, 958147, 1, 'Rousset-les-Bains', '1, avenue Noël Meunier\n38695 Andrenec', '28 642', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(63, 'libero pariatur et', 'Delectus et odit officia facere quia fugiat id architecto. Dolor ut nostrum et officiis rerum perferendis et. Sunt sunt officiis natus vitae quia sit.', 110, 19, 8, 4, 766693, 1, 'Lecoq-sur-Barbier', '931, rue Boulanger\n38472 Danielboeuf', '32 418', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(64, 'molestiae facilis error', 'Nostrum ab ex doloremque aliquam voluptatem. Assumenda omnis neque dicta molestiae rem nisi minus. Quo tempore fugit harum quod aut tempora.', 300, 7, 5, 2, 752632, 1, 'Rousset', '94, avenue Noël Leger\n09260 Boucher', '61474', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(65, 'totam fugit omnis', 'Officia ab similique amet rerum. Quo ratione ut fugiat maiores quis qui dolor. In mollitia et consequuntur recusandae et doloremque in.', 92, 14, 7, 5, 91754, 1, 'GautierVille', 'boulevard de Moulin\n54038 ReynaudBourg', '14 779', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(66, 'et ipsa facere', 'Quam iste sunt quidem. Ea a nesciunt soluta quaerat. Blanditiis accusamus ducimus dolor voluptatum placeat maxime.', 226, 3, 8, 3, 755653, 0, 'Guyon', '44, chemin Mahe\n64363 Guillouboeuf', '36309', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(67, 'ad eius nulla', 'Quod quo eum ut corrupti sequi autem quibusdam. Nulla nobis repellendus qui nihil. Dolor officiis veritatis explicabo necessitatibus praesentium.', 329, 10, 2, 0, 297518, 1, 'Menard', 'avenue Éric Lagarde\n26558 Courtois', '19 048', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(68, 'voluptas expedita non', 'Alias sequi non dolor dignissimos qui ut. Illum ut laboriosam reprehenderit aut qui ea. Et blanditiis saepe et assumenda a.', 290, 3, 2, 8, 93234, 1, 'Joseph', '311, chemin de Gregoire\n54383 Denisboeuf', '36 676', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(69, 'ea pariatur optio', 'Accusamus explicabo quo amet iste. Sed molestias quidem molestiae. Porro in molestias est rerum ex.', 225, 9, 8, 1, 715318, 0, 'Pereira', '34, place Gilles Langlois\n17 182 Mahe', '02640', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(70, 'alias similique quod', 'Tempora non consequatur voluptatem illo quia. Itaque ipsam ut accusamus. Maxime dolorem quam et consequatur voluptate dolorum est sit.', 29, 13, 7, 0, 348951, 0, 'Marques-les-Bains', '7, rue de Faivre\n53 754 Fouquet', '91262', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(71, 'corporis itaque qui', 'Fugiat et et nihil officia est ratione consequatur. Eum eaque in numquam veritatis distinctio. Dolorem id consequatur voluptatem cupiditate vero.', 109, 18, 3, 9, 248063, 0, 'Leblanc', '655, impasse Adrienne Rolland\n59114 Hebert', '64 810', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(72, 'at laborum quibusdam', 'Eius odio voluptas repellendus qui. Quod placeat magni explicabo et. Quia corrupti quia dolorum quas dolor deserunt ut.', 105, 12, 7, 4, 569211, 1, 'Delannoy', '36, impasse de Fabre\n68 148 Vidal', '74 022', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(73, 'quo ipsum impedit', 'Cum iste et exercitationem quidem saepe rem a. Fuga et quia provident consectetur et. Dolorem consequuntur alias consequatur exercitationem molestiae optio voluptas.', 113, 20, 4, 7, 792961, 0, 'Texierdan', '34, rue de Martineau\n14929 Gregoire', '66964', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(74, 'aut repellendus sed', 'Molestiae officia rem repellendus eos. Distinctio dolores nemo eum odit. Natus accusantium quis inventore occaecati natus.', 244, 19, 7, 7, 352568, 0, 'Marin-sur-Alexandre', 'boulevard Thierry Renard\n26 534 Moreau', '82965', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(75, 'et animi sed', 'Veritatis sit eius vitae sunt voluptas perspiciatis officiis dolores. Reprehenderit earum deleniti qui dicta rerum beatae. Est enim qui est praesentium vel aperiam modi.', 159, 2, 1, 8, 524283, 1, 'Gomes', 'place de Lacroix\n68 098 Martel', '07 922', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(76, 'consequuntur eum omnis', 'Autem delectus quia voluptas. Dolorum quam eveniet et sunt et suscipit. Nihil laborum ut quisquam quia voluptatem facilis.', 310, 4, 4, 3, 818859, 1, 'Deschamps', 'avenue de Vallee\n17 255 JosephBourg', '67317', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(77, 'praesentium est doloribus', 'Sed modi voluptas eos architecto harum sit. Voluptate atque autem fugit quasi pariatur voluptate. Dignissimos est voluptatibus quidem rem.', 187, 18, 5, 7, 592001, 1, 'Marques', '5, boulevard Philippe Renaud\n81642 Hernandez', '99 447', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(78, 'provident ut tempore', 'Consequatur unde aliquam rem est. Commodi non autem earum error doloremque repudiandae voluptas. Doloribus qui voluptatum cumque alias.', 301, 5, 2, 2, 774941, 0, 'Duval-sur-Lesage', '50, chemin Leroux\n35170 Le Goff-la-Forêt', '15 452', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(79, 'veniam nemo libero', 'Eaque beatae omnis iste est culpa labore voluptas sed. Dolore nemo occaecati voluptatem vero incidunt ut. Delectus et eum illo sequi vero rerum.', 294, 4, 4, 1, 673854, 1, 'Humbertnec', '5, rue Techer\n49 471 Chevallier-sur-Legros', '35 277', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(80, 'aperiam et aut', 'A sunt praesentium soluta. Accusantium est quia ipsa eaque impedit odio. Cum et dicta fugiat.', 139, 5, 2, 10, 670736, 1, 'Raynauddan', '52, boulevard Gauthier\n74520 Barthelemydan', '17976', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(81, 'id architecto omnis', 'Fugiat libero velit sed. Dignissimos est et ea voluptas. Adipisci ut in sint iure.', 92, 6, 3, 6, 783018, 1, 'Millet', '28, impasse Diallo\n98 987 Traore', '57510', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(82, 'iste beatae ut', 'Magni corrupti a illo autem ut. Quis at harum eos molestiae voluptates sint. Delectus eum est distinctio accusamus.', 213, 20, 3, 0, 857454, 1, 'Weber-sur-Colin', '6, rue Delmas\n23 879 Toussaint', '25251', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(83, 'est aut eum', 'Exercitationem sint veniam ut est. Deleniti natus a rerum quisquam deserunt. Aut deserunt saepe quisquam eos et dolor eaque.', 308, 7, 5, 9, 873389, 1, 'Leroux', '18, impasse Bernadette Pichon\n13171 Sanchez', '48538', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(84, 'necessitatibus autem odit', 'Molestiae corrupti itaque dolores doloremque modi aliquid. Necessitatibus et accusamus quasi quos molestias. Quod expedita numquam vero sunt odio.', 88, 5, 4, 10, 320010, 0, 'Lemonnier-la-Forêt', 'rue de Maillot\n75 700 Raynaud-la-Forêt', '18 431', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(85, 'sit incidunt natus', 'Velit sit minus odio dolor dolorem. Eos ipsum dolores qui sint animi. Possimus id et numquam consequuntur ducimus.', 72, 18, 3, 5, 525736, 1, 'Faivreboeuf', '42, rue de Rodriguez\n59 747 Marie', '56319', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(86, 'animi excepturi occaecati', 'Sed voluptatem doloremque ab enim a placeat quos. Nobis tempore accusantium voluptas cupiditate nesciunt est deserunt. Consequatur inventore laudantium molestiae ipsa voluptates.', 224, 6, 1, 5, 393902, 0, 'Lagarde', 'place Godard\n34 947 DelormeVille', '73 182', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(87, 'repudiandae voluptatum sint', 'Incidunt sunt eaque omnis deleniti officiis. Autem quisquam veritatis id accusamus eaque accusamus. Mollitia non placeat nulla neque.', 100, 15, 2, 3, 882644, 1, 'Noelboeuf', '40, impasse de Torres\n57427 BouchetBourg', '53273', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(88, 'adipisci et distinctio', 'Omnis velit inventore molestiae sit aut officiis vel. Est aut veritatis facere repellat. Saepe doloremque distinctio voluptas impedit et laboriosam.', 40, 12, 1, 10, 203592, 1, 'Dupuis-les-Bains', '72, avenue Claire Adam\n20 762 GodardVille', '26 289', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(89, 'qui labore aut', 'Corrupti voluptas consequuntur commodi ea et voluptatem sit. Officiis ullam laborum autem consectetur voluptatem magnam itaque repudiandae. Corporis voluptatum fugiat est repudiandae ducimus facilis ea iusto.', 135, 17, 7, 10, 102073, 1, 'Marty', '46, rue Charles\n39 186 Chauvet', '83 730', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(90, 'id quo quia', 'Officia nulla nesciunt reiciendis. Laborum aliquid molestiae inventore dolores nam. Dolorem consequatur tenetur provident voluptatem.', 285, 14, 4, 10, 849552, 0, 'Millet-les-Bains', '28, boulevard Evrard\n09973 Prevost', '90437', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(91, 'dolores sequi optio', 'Iure provident consequatur similique quia incidunt perferendis eius. Et odio vero assumenda laudantium beatae voluptatibus adipisci. Exercitationem dolor mollitia at consectetur.', 225, 8, 6, 8, 611930, 0, 'Da Silva', '70, rue Léon Guyon\n19 705 Leblanc', '78 475', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(92, 'dolorem fuga illo', 'Id neque debitis dolorem optio tenetur atque. Consectetur vel est perspiciatis molestiae eius facere. Officiis nulla repellendus ut est modi.', 139, 15, 4, 2, 502520, 0, 'Arnaud-sur-Simon', '942, impasse Théophile Lacroix\n01 997 Ollivier', '17005', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(93, 'sed sapiente quae', 'Ipsam illum voluptatem quia fugit aut. Asperiores dolores earum a sunt voluptatem delectus. Cum id excepturi non quod harum.', 126, 19, 6, 5, 92141, 0, 'Denis', '10, place de Louis\n07007 Robin', '45 409', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(94, 'aperiam laboriosam qui', 'Ab saepe debitis reiciendis at mollitia. Non aut laboriosam velit. Aut voluptatem dolore eligendi necessitatibus.', 278, 2, 7, 2, 300057, 1, 'Levy', '96, avenue Weber\n21041 Pereiranec', '58341', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(95, 'nihil reprehenderit molestiae', 'Eius expedita voluptas occaecati dolor quasi. Quo nam itaque rerum cumque. Voluptatum facilis sit qui reprehenderit sint.', 296, 3, 8, 0, 717109, 1, 'Allardnec', '927, chemin de Sanchez\n06 525 Mallet-sur-Lebreton', '16 875', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(96, 'non nisi tempore', 'Ipsum laudantium vel et veritatis blanditiis reiciendis nisi totam. Molestiae quidem qui et explicabo. Non minima totam est consequuntur aut consequatur.', 154, 9, 1, 7, 497201, 0, 'ValletBourg', '725, chemin Reynaud\n68354 Moulin', '63632', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(97, 'labore omnis velit', 'Est voluptatem nostrum omnis. Velit magni suscipit tempora numquam corporis. Voluptates sit omnis vel et et ipsa iure.', 302, 9, 2, 4, 417985, 1, 'Ledoux', '63, boulevard Lemaitre\n22489 Verdierdan', '09 787', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(98, 'sed et quam', 'Libero veritatis in est aliquam et qui inventore. Rerum at officia est. Animi eum dignissimos quod delectus autem quo quo.', 292, 10, 3, 1, 593792, 0, 'Gros', '52, boulevard Margaud Lebreton\n31 839 Martinez', '79 584', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(99, 'quibusdam porro labore', 'Alias dignissimos beatae necessitatibus qui ut. Et natus quibusdam sed eligendi sit quia. Veniam ab dolore nulla quod.', 271, 12, 5, 3, 711884, 0, 'Jourdan-sur-Mer', '84, avenue Stéphane Valentin\n60472 Leclercq-sur-Weiss', '26 419', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(100, 'quia suscipit optio', 'Quod accusamus dicta dolorem totam. Est qui aut rerum hic ex ipsam minus dicta. Deleniti optio optio atque.', 326, 13, 4, 3, 471770, 1, 'Georges', '27, avenue de Marty\n64859 Samson', '97639', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(101, 'a architecto quos', 'Id similique eos maxime aliquid voluptatem voluptatum. Culpa nobis enim a velit. Ut et est occaecati sit.', 69, 7, 3, 7, 246812, 1, 'Hebert', 'rue Gilles\n92 770 Benard-sur-Picard', '55 108', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(102, 'ut aut natus', 'Consequatur aut omnis voluptas eligendi ut id soluta. Culpa aperiam ea sed quisquam harum. Dolorem a non pariatur non.', 34, 18, 6, 5, 197137, 1, 'Barbe', 'chemin Auger\n62048 Imbert', '17 958', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(103, 'et incidunt amet', 'Veritatis sint est ut unde dicta consectetur. Molestias assumenda at odio rerum aut. Perspiciatis qui dicta ut.', 58, 7, 7, 4, 314545, 0, 'Morin', '52, chemin de Lagarde\n84670 Antoine', '54333', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00'),
(104, 'in repudiandae numquam', 'Recusandae voluptatem nostrum quia ea velit. Sunt neque vero assumenda iste numquam. Debitis iste minima similique est ipsa autem.', 49, 20, 4, 6, 956998, 1, 'Leclerc', 'chemin de Schmitt\n25326 Andre', '83 941', 0, '2021-04-18 10:49:34', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `property_option`
--

DROP TABLE IF EXISTS `property_option`;
CREATE TABLE IF NOT EXISTS `property_option` (
  `property_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  PRIMARY KEY (`property_id`,`option_id`),
  KEY `IDX_24F16FCC549213EC` (`property_id`),
  KEY `IDX_24F16FCCA7C41D6F` (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `property_option`
--

INSERT INTO `property_option` (`property_id`, `option_id`) VALUES
(6, 1),
(7, 2),
(7, 3),
(7, 7),
(8, 2),
(9, 3);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(3, 'joaquim', '$2y$12$rX7DziEnEPweBjIazBPJh.a041Dhk95nXMnJy4B9XV1n97i5z0zK6');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `property_option`
--
ALTER TABLE `property_option`
  ADD CONSTRAINT `FK_24F16FCC549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_24F16FCCA7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `option` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
