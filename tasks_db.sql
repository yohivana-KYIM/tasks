-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 15, 2024 at 12:19 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tasks_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_12_14_151203_create_tasks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('pending','completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `status`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(19, 'Nemo id quia odit itaque et vel dolores.', 'Ad laudantium perferendis eaque voluptatem et quia. Accusamus et nulla officia nihil ad libero enim. Ex veniam autem et perferendis in excepturi at quo. Nobis libero voluptatum sed.', 'completed', '2024-12-19 20:24:25', '2024-12-19 20:24:25', '2024-12-15 11:14:18', '2024-12-15 11:14:18'),
(20, 'Ut velit ut ut eos est.', 'Repellendus rerum ducimus quia architecto. Et et vero velit nihil maiores eaque est minima. Voluptates molestiae ea praesentium nobis consequatur et.', 'pending', '2024-11-25 18:19:33', '2024-11-25 18:19:33', '2024-12-15 11:14:18', '2024-12-15 11:14:18'),
(21, 'Harum nobis tempore esse.', 'Id ut enim est harum architecto corporis qui. Iste rem qui assumenda inventore officia earum soluta. Omnis in deserunt nobis accusantium voluptatibus perferendis quidem ut.', 'pending', '2024-12-31 17:06:04', '2024-12-31 17:06:04', '2024-12-15 11:14:18', '2024-12-15 11:14:18'),
(22, 'Nemo sapiente amet ab itaque.', 'Corporis dolores architecto esse aut dolor asperiores. Minus voluptatem hic culpa hic esse. Maiores voluptates libero non sit. Enim est quis aperiam aliquid alias sed tempore.', 'pending', '2024-11-27 11:03:44', '2024-11-27 11:03:44', '2024-12-15 11:14:18', '2024-12-15 11:14:18'),
(23, 'Molestiae ea molestias aut voluptatem vitae ducimus numquam.', 'Earum eaque voluptatem molestiae perspiciatis molestias vel qui. Voluptatem error saepe ut. Facere voluptate inventore voluptas nihil porro provident.', 'pending', '2024-12-19 16:24:10', '2024-12-19 16:24:10', '2024-12-15 11:14:18', '2024-12-15 11:14:18'),
(24, 'Voluptate quo ex nihil inventore aliquam.', 'Vel eius facilis voluptatem neque. Pariatur tempore ratione quae vel qui aut. Nam veritatis et omnis commodi nihil accusantium. Optio nihil quibusdam sit accusantium alias aliquam. Ea at cumque tempore quas dolor.', 'completed', '2024-11-18 12:50:58', '2024-11-18 12:50:58', '2024-12-15 11:14:18', '2024-12-15 11:14:18'),
(25, 'Quo quaerat amet est eum molestias occaecati.', 'Sed ut facere qui eum est. Unde impedit aut ea. Qui aut ipsum delectus aut libero. Dolores commodi ratione dolor aperiam deleniti qui aut.', 'pending', '2024-12-08 00:47:49', '2024-12-08 00:47:49', '2024-12-15 11:14:18', '2024-12-15 11:14:18'),
(26, 'Eaque nesciunt dolores eos dignissimos velit possimus dolorum voluptas.', 'Recusandae aut ut rem praesentium tempora est quo autem. Consequuntur rerum voluptatum ea. Est numquam molestiae amet mollitia nostrum enim. Similique ullam eius laudantium sed a voluptate fugit. Molestias qui quisquam sint quam.', 'completed', '2024-11-21 10:19:49', '2024-11-21 10:19:49', '2024-12-15 11:14:18', '2024-12-15 11:14:18'),
(27, 'Asperiores rerum porro et ad.', 'Non aut eos necessitatibus incidunt ad. Tempora laudantium dolorem ad mollitia ex suscipit libero quidem. Consectetur iure voluptatem in sit consequatur voluptate praesentium. Eum est amet qui veritatis aut blanditiis.', 'pending', '2024-12-28 22:49:50', '2024-12-28 22:49:50', '2024-12-15 11:14:18', '2024-12-15 11:14:18'),
(28, 'Animi autem possimus occaecati ut assumenda.', 'Et maiores placeat sint laborum qui animi. Qui voluptatem neque molestiae id ut et. Accusamus et ducimus eveniet et. Sed quia qui quo dolore nostrum.', 'completed', '2024-12-02 13:22:11', '2024-12-02 13:22:11', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(29, 'Veniam voluptatem nobis et et.', 'Reprehenderit asperiores cupiditate quis odio nisi. Hic et earum id qui nobis ut et. Sed perferendis eaque qui consequatur nulla accusamus.', 'pending', '2024-11-27 15:33:21', '2024-11-27 15:33:21', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(30, 'Animi modi modi qui dolorem quibusdam.', 'Numquam quo odit enim quis aut quia. Ut harum in a ut quos et qui. Consequatur repellat et est. Aspernatur voluptas explicabo fugit corrupti a. At aliquid vel eveniet.', 'pending', '2024-12-04 08:10:49', '2024-12-04 08:10:49', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(31, 'Inventore inventore aut magnam aut quibusdam ea.', 'Qui sint officiis laudantium sunt adipisci dolores sapiente id. Delectus nihil odit qui dolor hic. Error perspiciatis quo consequatur et et.', 'completed', '2025-01-05 02:32:59', '2025-01-05 02:32:59', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(32, 'Rerum dolorum fugiat voluptatem pariatur voluptatibus laboriosam iure.', 'Voluptas culpa molestiae culpa earum magnam repellendus modi. Repudiandae neque velit ea doloremque ipsa ipsum minima.', 'pending', '2024-12-24 02:29:38', '2024-12-24 02:29:38', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(33, 'Ad optio qui explicabo ipsam adipisci.', 'Ut sed nostrum culpa omnis sequi autem debitis. Temporibus totam voluptas est vero ut facilis. Consequatur ipsum voluptate enim dignissimos quibusdam rem quod. Vero vero id rerum sit quaerat dolores.', 'pending', '2025-01-04 08:10:45', '2025-01-04 08:10:45', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(34, 'Aliquid earum harum aperiam reiciendis quibusdam.', 'Odit et enim architecto accusamus voluptatem incidunt. Ex libero repellat assumenda hic ut ipsum distinctio veritatis.', 'pending', '2024-12-19 11:15:36', '2024-12-19 11:15:36', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(35, 'Laboriosam aut placeat porro necessitatibus minima in dolor.', 'Et sequi qui dolores hic. Velit dignissimos quam sit. Fugiat et cupiditate id nihil aut non ea. Possimus excepturi illo sed id facilis rerum.', 'pending', '2024-12-28 04:26:48', '2024-12-28 04:26:48', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(36, 'Repudiandae labore ut vero aperiam tempore repellendus.', 'Debitis perferendis cumque ut deleniti nihil ipsum. Aut dolore qui harum odio vel quae fugiat inventore. Nam sint molestiae deleniti aut doloremque. Ipsam eligendi ut maxime excepturi harum.', 'completed', '2024-12-24 09:00:09', '2024-12-24 09:00:09', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(37, 'Architecto quae sit repudiandae eos esse laboriosam voluptatibus.', 'Delectus ut non consectetur praesentium. Atque sint consectetur reprehenderit dolor quas deserunt blanditiis. Nobis eos nihil quod nesciunt dolorum modi accusantium.', 'pending', '2025-01-04 16:18:08', '2025-01-04 16:18:08', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(38, 'Eos quia et dicta aut voluptatem nobis.', 'Omnis consequatur excepturi optio id voluptatem et itaque. Qui hic ut harum.', 'pending', '2025-01-02 22:24:31', '2025-01-02 22:24:31', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(39, 'Est soluta voluptate rerum exercitationem iste dolorem.', 'Ea ab labore suscipit cupiditate quisquam ea accusamus. Quia sit error repellat qui.', 'completed', '2024-11-20 01:39:52', '2024-11-20 01:39:52', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(40, 'Amet tenetur distinctio et molestias amet error.', 'Magni sint omnis sunt eveniet expedita quos sed. Ea necessitatibus et placeat nulla modi. Deleniti qui culpa porro iure voluptate laudantium impedit. Qui et quisquam amet nihil corrupti consequatur culpa.', 'pending', '2024-12-04 01:53:09', '2024-12-04 01:53:09', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(41, 'Tempora esse ratione dignissimos pariatur ea.', 'Eum nihil aspernatur autem rem illo enim tenetur ut. Quis facere ipsam eius et ut recusandae. Ipsa qui aliquam qui est iusto. Quidem veniam excepturi laborum et error.', 'completed', '2024-12-23 11:16:59', '2024-12-23 11:16:59', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(42, 'Ut cum vero ex autem molestias.', 'Perspiciatis voluptatem est atque. Officiis eaque harum esse ut eligendi debitis quidem. Consequatur aspernatur nulla voluptas cupiditate sunt totam.', 'completed', '2025-01-08 11:21:04', '2025-01-08 11:21:04', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(43, 'Veniam quo sed est et modi nulla.', 'Recusandae id sit tenetur eum. Dolores deleniti cumque fugiat corporis ipsum libero qui. Non eveniet quis similique in dolorem rerum.', 'completed', '2025-01-04 05:04:21', '2025-01-04 05:04:21', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(44, 'Mollitia inventore ut porro voluptates magni omnis.', 'Maxime excepturi culpa autem perspiciatis. Dolores rerum sequi qui consequatur. Illo est ipsam laudantium accusamus. Ut delectus quo illo totam.', 'completed', '2024-12-18 01:42:03', '2024-12-18 01:42:03', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(45, 'Commodi quaerat eum et occaecati commodi sequi molestiae.', 'Magni sint voluptatem aliquam nemo aut mollitia accusamus dolorum. Architecto doloremque praesentium totam consequatur. Corporis fugit expedita repellendus minus hic nisi dolor. Sapiente facere minus est nostrum culpa eos.', 'completed', '2025-01-02 04:29:16', '2025-01-02 04:29:16', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(46, 'Voluptatibus consequatur aliquam ut et dolor.', 'Voluptatem a distinctio autem dolor. Veniam qui inventore voluptatem et voluptatem rerum mollitia. Iste expedita est provident error laboriosam quas ipsum consequatur.', 'completed', '2025-01-08 17:09:52', '2025-01-08 17:09:52', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(47, 'Qui qui voluptatem repudiandae nostrum dolores et minima sit.', 'Commodi cumque quaerat deserunt corrupti. Aut non voluptas nemo repellat culpa eius omnis.', 'completed', '2024-11-20 05:11:05', '2024-11-20 05:11:05', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(48, 'Beatae ut quibusdam alias dignissimos consequuntur non.', 'Nobis autem pariatur adipisci et distinctio nostrum. Sit quos illum rerum. Similique et eum sint nobis.', 'pending', '2024-12-28 16:21:11', '2024-12-28 16:21:11', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(49, 'Quod amet aut vero rem.', 'Omnis consequatur culpa consequatur ut. Voluptatem mollitia totam libero commodi nisi nobis. Facere quaerat omnis doloribus sapiente aliquid voluptatem delectus.', 'completed', '2024-12-25 20:47:14', '2024-12-25 20:47:14', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(50, 'Expedita ut velit amet.', 'Nihil reiciendis odit adipisci quam odio ab. Earum sequi dicta sunt rerum illo explicabo officia. Dolor quisquam maxime laudantium repellat labore saepe qui et. Numquam voluptatem cumque similique quia provident odio ipsa dolorem.', 'completed', '2024-12-29 16:09:46', '2024-12-29 16:09:46', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(51, 'Rem qui nemo sed possimus aut rerum quidem.', 'Hic sit voluptatem nam debitis repellendus quae. Deleniti aspernatur quas in quas dicta. Repellendus qui ut facilis delectus. Ea rerum omnis suscipit esse.', 'pending', '2025-01-04 14:07:46', '2025-01-04 14:07:46', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(52, 'Ut autem sapiente ea corrupti harum nulla.', 'Ratione laudantium quaerat corrupti. Illum illum nihil omnis omnis voluptas ullam aut culpa. Repellat voluptate vel commodi. Est adipisci inventore et nam sed est modi.', 'pending', '2024-12-01 01:36:04', '2024-12-01 01:36:04', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(53, 'Voluptatem magni qui voluptatem quos.', 'Nihil tempora at itaque ratione. Eius id voluptatem est molestias aut accusantium. Doloremque expedita est error debitis omnis tempora.', 'completed', '2024-12-09 20:53:46', '2024-12-09 20:53:46', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(54, 'Facere nostrum dolores omnis.', 'Ut quidem corrupti laudantium magnam adipisci aut soluta qui. Provident neque est ea dolorem quaerat asperiores in nobis. Deleniti consectetur at nobis odio impedit quia repellendus. Sapiente qui debitis cupiditate veniam nam.', 'pending', '2024-11-30 09:12:42', '2024-11-30 09:12:42', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(55, 'Perferendis dolorum qui quam molestias.', 'Illum veniam aut voluptatibus culpa et. Odio explicabo debitis debitis consequatur excepturi accusamus molestiae quod. Consequatur illo ut voluptatibus consequatur odio. Sit dolor officiis beatae repellendus placeat deserunt.', 'pending', '2024-11-24 07:04:23', '2024-11-24 07:04:23', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(56, 'Sed delectus et fugiat quaerat.', 'Ullam reiciendis quisquam eius consequatur. Porro magni accusantium et voluptatem quaerat quos enim. Quasi qui iure qui minima.', 'completed', '2024-12-12 19:56:40', '2024-12-12 19:56:40', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(57, 'Distinctio laboriosam qui reprehenderit.', 'Architecto alias commodi vel. Eos repellendus est rerum et mollitia quis. Vitae ex odit et at nihil. Praesentium et nisi aspernatur dolorem voluptatem.', 'completed', '2024-12-22 11:35:18', '2024-12-22 11:35:18', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(58, 'Omnis consectetur et praesentium.', 'Voluptatem impedit aut ut rem. Laudantium quis cumque ut deserunt. Sint saepe facilis velit dignissimos.', 'completed', '2024-12-16 18:23:35', '2024-12-16 18:23:35', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(59, 'Ea eos natus sit voluptatem.', 'A et sit natus est dolore. Non qui asperiores delectus quidem quia eum at quis. Maxime vitae voluptatem ipsum ut. Deleniti expedita facere nihil aut velit.', 'pending', '2025-01-01 10:18:11', '2025-01-01 10:18:11', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(60, 'Quas nesciunt a ut voluptas quasi aut quibusdam.', 'Rerum ut suscipit qui nihil atque aut. Quia deserunt repudiandae ut necessitatibus. Eaque aut rerum ut aut. Ab similique aliquid magnam magnam.', 'completed', '2024-12-04 09:43:08', '2024-12-04 09:43:08', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(61, 'Sunt itaque voluptatem voluptatibus.', 'Ea vero sit aperiam sed quibusdam nihil sed. Alias tenetur dolorem ratione quidem asperiores hic. Repellat sed sed qui quis beatae perspiciatis.', 'pending', '2025-01-06 08:59:58', '2025-01-06 08:59:58', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(62, 'Qui nihil quibusdam sed qui id saepe.', 'Amet est laborum non illum. Accusamus ipsum rerum rerum nisi sequi. Et quibusdam voluptates voluptatem labore.', 'completed', '2025-01-09 10:42:38', '2025-01-09 10:42:38', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(63, 'Perspiciatis dolorem blanditiis omnis doloribus ea.', 'Quas eveniet facilis velit ut facilis vel. Iste est et est expedita animi. Excepturi eum exercitationem corrupti provident eligendi expedita unde. Aut voluptas repellat repudiandae dolorum harum nihil commodi.', 'completed', '2024-12-25 19:37:59', '2024-12-25 19:37:59', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(64, 'Animi non voluptatem totam labore eum.', 'Quidem dolor incidunt et eveniet illum fugit. Quis laudantium quo corporis voluptatem. Sit molestiae nisi quae odio enim quis voluptatem velit. Vel nisi libero asperiores placeat.', 'pending', '2024-12-23 04:34:58', '2024-12-23 04:34:58', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(65, 'Nihil omnis libero repellat odit qui aut sunt consequatur.', 'Voluptates sint velit odio numquam distinctio. Omnis a adipisci consequatur dolorem reprehenderit quia sit est. Quo omnis nisi reiciendis dolor quod quis. Fuga velit dignissimos est odit cumque.', 'pending', '2024-12-12 00:43:06', '2024-12-12 00:43:06', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(66, 'Veniam et ut atque magni architecto enim.', 'Quia voluptas dolorem autem repudiandae error aliquid. Voluptatibus reiciendis sit laboriosam quis. Est magnam autem eaque nam. Consequatur est culpa repellendus ut eius exercitationem.', 'completed', '2025-01-12 15:47:06', '2025-01-12 15:47:06', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(67, 'Sit aut fuga ut quisquam non rerum.', 'Alias deserunt et minus recusandae. Saepe ea illum saepe sed quia cupiditate et recusandae. Perferendis nulla qui praesentium explicabo. At ratione asperiores animi nam. Enim repellendus officiis omnis accusantium nesciunt possimus omnis.', 'pending', '2024-11-28 10:15:42', '2024-11-28 10:15:42', '2024-12-15 11:14:19', '2024-12-15 11:14:19'),
(68, 'Consequatur consequatur laboriosam dolores quia vel deserunt.', 'Consequatur alias repudiandae eligendi voluptatem sit debitis expedita. Fuga et non qui distinctio. At et et sint sit voluptas. Deserunt quos quidem accusantium qui ut debitis consequatur.', 'completed', '2024-11-23 22:31:48', '2024-11-23 22:31:48', '2024-12-15 11:14:19', '2024-12-15 11:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
