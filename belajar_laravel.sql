-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2021 at 09:00 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2021-11-15 21:18:10', '2021-11-15 21:18:10'),
(2, 'Web Design', 'web-design', '2021-11-15 21:18:10', '2021-11-15 21:18:10'),
(3, 'Personal', 'personal', '2021-11-15 21:18:10', '2021-11-15 21:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_01_004024_create_posts_table', 1),
(6, '2021_11_02_004642_create_categories_table', 1),
(7, '2021_11_18_004436_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `publish_at`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Cupiditate aliquam quia.', 'distinctio-pariatur-consequuntur-quia-animi-commodi', NULL, 'Ipsam voluptas qui dicta neque quis quia odit quo. Eos recusandae ex autem et dolore et iusto. Nostrum itaque ut quidem illum explicabo dolores porro. Molestias et quidem deleniti fugiat voluptas.', '<p>Cupiditate ut consequatur similique dicta aperiam suscipit est. Libero vitae quam nam cupiditate ea eos impedit. Tenetur accusantium totam necessitatibus quia quidem. Ut non molestias ut et aut nemo.</p><p>Provident facilis qui illo dolorum laboriosam fugit nihil voluptatem. Quia aspernatur quos illum facere tempora optio. Voluptas doloribus eum nihil aperiam rerum. Et voluptate et temporibus praesentium.</p><p>Nihil atque consequatur laboriosam est et. Quam similique sed et totam cupiditate harum.</p><p>Occaecati velit eveniet quia incidunt ea illum et optio. Quibusdam est architecto et tempora sapiente. Est unde expedita sequi ipsam amet.</p><p>Est pariatur facilis eligendi adipisci in. Quibusdam sit sed ut amet. Pariatur tenetur cupiditate ut necessitatibus quia aliquam exercitationem. Quod debitis porro praesentium ut ullam. Quos nihil eaque et ipsa earum.</p><p>Tempora esse ratione perspiciatis quia facilis. Amet eum corrupti consequatur pariatur dolores dolore optio. Eligendi molestias dolor magnam dolor. Quidem autem fugit voluptas est. Id vel minus ab nobis.</p><p>Perferendis possimus maxime ex ut. Voluptates et qui cum accusantium et nemo ipsa. Est voluptas quod laudantium rerum est. Dolor ut consequatur modi sed autem ipsum cumque quo.</p><p>Saepe rerum quo minima aut dolorem aut facilis. Architecto quis ea iste excepturi in. Atque error tenetur et ipsam molestiae perspiciatis. Impedit et sequi est odit quo incidunt.</p>', '2021-11-16 05:18:11', '2021-11-15 21:18:11', '2021-11-15 21:18:11'),
(2, 2, 1, 'Officia aperiam qui velit.', 'optio-sint-ducimus-aliquid-dicta', NULL, 'Odit quidem ut qui voluptatibus ea consequatur quis non. Quis non sunt quia. Quis ipsa laboriosam non qui facere.', '<p>Repudiandae veritatis voluptatum fugit velit omnis suscipit nisi eveniet. Sit et temporibus adipisci quasi aspernatur labore error. Ut nihil repellat dolore et pariatur esse.</p><p>Unde debitis aut deleniti similique debitis voluptatem eum. Accusamus quos rerum ut fuga. Illum nobis quam doloremque placeat nisi. Consequatur quas eius dolores quia aut sed.</p><p>Sit quos sit sed nisi consequatur ea. Non excepturi perspiciatis qui exercitationem. Similique facilis voluptatem quisquam soluta nihil nesciunt rem. Qui ipsa nemo qui quibusdam dignissimos odit.</p><p>Sunt et quaerat voluptate aut. In sunt aliquid assumenda quo. Ea cupiditate et atque dolores enim aut.</p><p>Ut aut iste non illo aut natus aut. Dignissimos eaque ipsam beatae est perferendis. Excepturi nobis repudiandae recusandae voluptatem.</p><p>Ipsum rerum quae numquam. Aliquam dolores reiciendis dolores tempora accusamus corporis. Est sunt cum ut.</p><p>Optio quo quidem sed quo. Omnis a cumque delectus placeat eum neque. Quos ex blanditiis iusto ullam reprehenderit. Ducimus voluptatibus eaque distinctio ab voluptatibus voluptatem minus voluptatem.</p><p>Facere ipsam et tempora sunt perspiciatis aut quia. Ad blanditiis quisquam aut quaerat asperiores temporibus repudiandae. Iure consequatur officiis modi eos a est aperiam. Rerum ipsam veritatis et aliquam porro iure a. Non tempora perspiciatis sapiente quis porro ducimus possimus.</p><p>Dolore et animi ut aut porro. Autem fuga ex voluptas sunt laboriosam id assumenda accusamus. Odit quo maiores quia nihil sed eum aliquid.</p><p>Totam possimus reiciendis animi quod sint porro. Rerum explicabo possimus nesciunt non ea ut. Excepturi nihil voluptatem a sit voluptas. Tempora repellendus at aut similique non non.</p>', '2021-11-16 05:18:11', '2021-11-15 21:18:11', '2021-11-15 21:18:11'),
(3, 2, 3, 'Explicabo est ullam est hic rerum.', 'qui-voluptate-enim-eaque-cum-repellat', NULL, 'Omnis est error eaque. Ea error autem perspiciatis veniam necessitatibus soluta enim. Non dignissimos exercitationem recusandae sunt. Est deserunt nihil vel. Corrupti nobis ullam rerum quae eveniet asperiores.', '<p>Laborum voluptatem animi quaerat ipsa minima cum. Perferendis ut reprehenderit est molestias exercitationem. At cum qui at cupiditate. Saepe labore ipsam dolor est ipsam et id. Et sed maxime porro consequatur voluptatem.</p><p>Fugit animi id fugiat sit sapiente. Velit officia est asperiores quisquam rerum ut vel. Atque et dolores commodi similique quia.</p><p>Praesentium nobis est in. Officia sed voluptatem laborum dolorum quas debitis. Ut dolores cumque et aut. Doloremque ad delectus impedit placeat et maxime. Beatae consequatur dolorum omnis rem et.</p><p>Labore incidunt qui quae maiores molestias. Expedita hic cumque nihil iste harum. Neque reiciendis cum ipsa quae laborum blanditiis nesciunt aut.</p><p>Magnam omnis voluptate provident. Sed vel vitae minima vitae voluptas incidunt labore molestias. Consequatur soluta atque dolore quia quia aut.</p><p>Suscipit perspiciatis non accusantium. Eaque non laboriosam quo.</p><p>Voluptatem similique tempora suscipit voluptate harum dolorem. Nihil quis explicabo nihil qui.</p><p>Quasi perferendis et sed reiciendis vero laborum. Quia neque autem voluptatem blanditiis. Laborum possimus autem nemo iure voluptatem. Dignissimos voluptatem aspernatur quisquam exercitationem consequatur a.</p><p>Et et omnis rerum. Distinctio aut sit officiis nam aliquam. Nobis dolores sit consequuntur quis atque illum iste est.</p>', '2021-11-16 05:18:11', '2021-11-15 21:18:11', '2021-11-15 21:18:11'),
(4, 2, 2, 'Commodi est aut aliquid.', 'voluptatem-sed-expedita-fugit-molestiae-sed-ea', NULL, 'Perspiciatis ipsam voluptatem veritatis quibusdam et impedit. Veniam dicta possimus sit eveniet quidem. Inventore amet dolorem pariatur expedita consequatur facilis neque.', '<p>Recusandae illum et non repellat illum qui rerum. Velit et aspernatur voluptates tempore cum officiis. Saepe sequi quasi qui et esse at repellendus. Laborum excepturi pariatur et aut provident nisi.</p><p>Aspernatur ipsa eum omnis iste rerum ipsum. Qui sint ut recusandae saepe quasi ea. Pariatur repudiandae eos cupiditate deleniti rerum atque.</p><p>Neque alias quaerat repellendus commodi. Placeat aut distinctio repellendus quia dolorem nulla. Voluptatem magnam quam ut suscipit consequatur cum nihil nisi.</p><p>Quasi distinctio expedita maxime ut sit tempore. Ratione omnis et expedita itaque maiores exercitationem perspiciatis est. Iste animi inventore voluptatem neque.</p><p>Blanditiis ut harum nobis et. Sit aut dolores ut aut impedit. In laudantium et omnis natus tempora illum. Qui neque in sunt fuga adipisci voluptatibus enim. Repudiandae earum doloribus at fuga sit eos dicta.</p><p>Numquam ullam incidunt rerum expedita. Aperiam et sit temporibus non sequi. Sed eligendi voluptatem consequatur qui.</p>', '2021-11-16 05:18:12', '2021-11-15 21:18:12', '2021-11-15 21:18:12'),
(5, 2, 3, 'Maiores similique modi expedita.', 'ex-molestiae-consequatur-quia-voluptatem-repudiandae', NULL, 'Amet velit quo sit quod cupiditate aliquam. Recusandae sunt a vero voluptatem sed. Maiores architecto ab pariatur sunt quod libero.', '<p>Nobis sed nulla delectus numquam. Aut odit enim qui porro. Quo consectetur ut dolores dolorem. Quos est perferendis praesentium saepe ratione. Voluptatem atque nihil saepe et non nam ut et.</p><p>Eveniet aut consequatur eaque et molestiae. Deleniti voluptatem porro aut ea reprehenderit. Aut voluptas aut incidunt sit sint repudiandae ut. Velit non voluptas quod voluptatem consequatur sunt.</p><p>Ex vel porro unde autem accusamus deleniti. Vel esse labore soluta quibusdam officiis. Inventore occaecati occaecati et. Sunt tempore id totam.</p><p>Nam voluptatem ullam nihil unde quo. Fuga unde molestias sunt et. Nulla ut deleniti enim nesciunt molestias est. Explicabo sit illum veniam.</p><p>Et est officiis autem aut quia cupiditate consectetur. Cum ad ea voluptatem sunt officiis qui velit facilis. Et officia omnis esse non aspernatur ab.</p><p>Fugiat inventore doloribus quod tenetur voluptas aspernatur qui laborum. Repellendus et distinctio provident. Rerum praesentium enim nostrum ut qui.</p><p>Voluptatem tenetur id accusamus tempora. In natus sint sapiente voluptas eum aliquam occaecati laborum. Possimus et aut eaque cupiditate. Eaque iure consequatur sequi saepe.</p><p>Nisi dolore placeat tempora accusantium esse et placeat. Qui et fugiat temporibus iste eos quidem quos. Exercitationem incidunt mollitia provident voluptatibus omnis sapiente consequatur numquam.</p><p>Quibusdam quidem nam consequatur aliquid. Ipsa et eos eum doloribus. Laudantium error et error dolorum. Illum ea rerum quo occaecati doloremque. Deleniti velit nulla dolorem voluptate sequi a voluptatibus.</p><p>Dolor voluptas placeat corrupti asperiores officia voluptas voluptatum eius. Laborum rem libero et consequuntur laborum debitis vel. Et cumque doloribus quo quam modi facilis.</p>', '2021-11-16 05:18:12', '2021-11-15 21:18:12', '2021-11-15 21:18:12'),
(6, 3, 2, 'Beatae quia.', 'sapiente-ut-aut-aut-expedita', NULL, 'Neque voluptatum nulla quidem ut eius at architecto. Adipisci alias doloremque blanditiis ipsum quasi. Sapiente tempore voluptatem laborum maxime architecto tenetur ex suscipit. Voluptatibus officiis impedit corporis atque ad quam.', '<p>Recusandae libero doloremque mollitia ratione. Animi libero voluptas voluptatibus rerum quia earum. Consequatur ea soluta voluptas et et illum. Amet eveniet velit id pariatur quos.</p><p>Et eos labore non. Dolores qui quae rerum maxime vero laudantium. Minus aliquam non fugiat ipsam enim.</p><p>Itaque ea sit consequuntur fugiat voluptas enim. In dolorum numquam incidunt iusto libero occaecati. Animi exercitationem doloremque sit deleniti eos accusamus rerum.</p><p>Ut optio porro dolor unde laudantium. Consequatur maiores doloremque dolore sequi nihil. Consectetur itaque omnis pariatur omnis facere facilis.</p><p>Earum et unde ut dolor et pariatur nisi. Corrupti sed ut nemo eius nulla dolorem eveniet et. Sequi consequatur consectetur ratione quae consequuntur nihil sint.</p><p>Magnam quia perspiciatis debitis quaerat rerum. Repellat incidunt iste in et omnis dolore. Ut aut minima cumque a vitae sit aut sed.</p><p>Vel repellat quia voluptas nobis qui soluta in. Vel assumenda voluptatum sapiente fugit iusto.</p><p>Aliquam culpa error occaecati iure. Nemo unde dolorem aut asperiores ratione est labore. Cumque vel vel doloribus sint. Tempora dolorem eos repellat cum ut et hic.</p>', '2021-11-16 05:18:12', '2021-11-15 21:18:12', '2021-11-15 21:18:12'),
(7, 2, 3, 'Eaque dolor nostrum quia.', 'enim-maxime-earum-aut-illum-delectus-cum-non', NULL, 'Eum est officia tempora quibusdam nesciunt repellendus optio. Iusto similique mollitia earum et et modi. Et vero optio sint deserunt non. Libero autem necessitatibus maxime quis ut natus a.', '<p>Illo quis vel aut ducimus quia accusantium. Veniam ut minus consequatur deleniti eum reiciendis excepturi.</p><p>Praesentium enim consequatur assumenda est veniam dolorem. Sequi ipsa facere eum vel distinctio odio. Rerum quisquam quam est quaerat est non. Aspernatur id veniam quas reprehenderit rerum omnis. Dicta consequatur atque ex magnam.</p><p>Labore nulla quo et dolorem. Animi voluptas dignissimos unde animi reprehenderit. Totam quo ipsum non ratione aliquid delectus. In omnis esse cumque vel.</p><p>Sint qui nostrum neque fugit enim ea voluptatem. Tempora voluptatem odit quasi voluptatem blanditiis aliquid. Et iusto voluptas alias voluptatem deserunt velit. Dolor rem officia alias sint aspernatur amet minus.</p><p>Alias quod eos nisi quia nihil itaque cumque mollitia. Iure ipsa molestias qui dolore hic qui expedita. Vel nulla exercitationem ipsam et amet vitae quod. Dolores quisquam aut commodi.</p><p>Iure dolorem minima voluptatem in cumque cumque ipsum. Et earum animi ratione nemo molestiae corporis similique. Nisi ex minus molestiae omnis omnis. Aut labore laboriosam quam maxime.</p>', '2021-11-16 05:18:13', '2021-11-15 21:18:13', '2021-11-15 21:18:13'),
(8, 2, 1, 'Earum aut reprehenderit enim officiis ea.', 'repudiandae-cumque-animi-deserunt-quos-architecto-ullam-consequatur', NULL, 'Dignissimos nemo eligendi deleniti quod eum. Non mollitia aspernatur qui tenetur necessitatibus aut rem fugit. Omnis at architecto aut.', '<p>Nisi praesentium ipsam omnis sed quis. In impedit velit est modi in veniam consequatur. Consequuntur accusamus et libero veniam. Ut quia id ab distinctio provident ut.</p><p>Laboriosam dolorem vero nulla voluptatem odit occaecati. Vitae autem atque autem dignissimos rerum aperiam perferendis. Eligendi itaque qui neque expedita rerum et quo. Consectetur quaerat nobis est.</p><p>Repellat consequatur voluptatem maiores autem debitis. Dolores magnam numquam et voluptatum voluptas et et consequuntur. Repellat provident nostrum tempora et. Consequatur officiis nobis aut vel ex.</p><p>Aut possimus atque vel itaque officia. Quia sunt soluta nihil unde velit. Reiciendis eius facilis et dolorem omnis optio.</p><p>Fuga quia aut corporis fugiat nesciunt. Dolor est possimus omnis. Sint sit eius quaerat fugiat. Quis eos nam eveniet assumenda nobis.</p><p>Porro et tenetur incidunt alias qui quo doloribus. Eius et laborum vel. Qui ad enim excepturi iste autem. Fuga animi fuga vel sunt ut quia.</p><p>Voluptas dolorem rem molestias ut molestiae unde fugit. Voluptates voluptas aut voluptate voluptas quia et officiis nihil. Quasi aut repellat aut ut voluptatem animi sed. Reprehenderit numquam earum odio magnam. Aut quidem ducimus rerum tempora unde error.</p><p>Doloremque mollitia sed magni aut. Deserunt tempora laudantium quas iste aut quasi. Reiciendis ipsa voluptates explicabo in dolorem qui reiciendis molestiae.</p>', '2021-11-16 05:18:13', '2021-11-15 21:18:13', '2021-11-15 21:18:13'),
(9, 1, 5, 'Ut dolore minima nemo maxime atque occaecati commodi.', 'et-dolor-eius-vel-quaerat', NULL, 'Sit corporis saepe est placeat at modi. Est vero nobis at. Sed voluptatum ad mollitia consectetur animi. Similique dolores aliquid facilis aut sunt ut ullam. Explicabo omnis et quia assumenda vitae aspernatur itaque.', '<p>Possimus sit in quasi ea sed explicabo. Minima in dolores magnam laborum provident nihil. Tenetur consequatur aut quae voluptatibus atque.</p><p>Et labore ut modi nihil iste molestiae. Quo itaque ut cupiditate perferendis distinctio recusandae doloribus. Delectus eligendi voluptatem ut sit blanditiis repellendus. Numquam sint enim dolores enim ea.</p><p>Autem iure et eveniet fugiat. Consectetur quidem deleniti molestias esse. Debitis et ab reprehenderit ea quibusdam error. Perspiciatis nesciunt cumque nam eveniet molestiae consequatur omnis.</p><p>Laborum ipsa quam beatae omnis commodi blanditiis numquam sit. Ipsa quos voluptatem voluptatibus doloremque. Iusto corporis qui tempore ut quo laudantium. Minus sed unde quasi rerum accusamus.</p><p>Soluta inventore minima dignissimos doloremque corrupti. Et voluptatem natus ut.</p><p>Quam optio ipsum molestiae quo quas iure. Ullam et ut corporis deserunt.</p><p>Minima fugit quia nihil quo quis in. Dolore et corrupti repellendus eos repellendus a. Nemo laboriosam incidunt dolorem tempora perspiciatis molestias ut. Ullam et qui repudiandae magnam error.</p><p>Laborum deserunt aut est cum modi dolor. Architecto quam officiis sed veniam aut. Tempora ratione ad et expedita iusto veritatis. Sed ut pariatur aperiam suscipit cum minus dolores consectetur. Ut voluptatem pariatur excepturi saepe ut rerum reiciendis.</p><p>Et soluta veniam illum animi quos ut. In tempore enim sed iure quae omnis voluptatem. Quasi labore sit quo magni sunt. Cupiditate consequatur et nostrum similique.</p>', '2021-11-16 05:18:13', '2021-11-15 21:18:13', '2021-11-15 21:18:13'),
(10, 1, 3, 'Quia quia aut rem eius sit cum enim ut.', 'officia-facere-iure-et-velit-qui', NULL, 'Quidem quidem dolorem eius delectus fugiat. Eius qui soluta alias ex cupiditate esse porro deserunt. Corrupti aut ea rerum cum.', '<p>Illo consequuntur nobis nostrum voluptates. Nihil voluptas voluptas aut est non eum maiores molestiae. Ad sit odio fuga.</p><p>Qui quam repellat voluptas aliquid sit doloribus dolor. Magnam vero neque minus et qui quo rerum. Molestiae dignissimos maxime perferendis eveniet incidunt neque. Adipisci pariatur qui in. Temporibus doloribus enim quasi facere fuga id debitis.</p><p>Ullam consequatur nesciunt nobis exercitationem maxime voluptas culpa. Ducimus consequuntur sed fugit et illo quisquam. Qui voluptatum impedit expedita et deserunt ab.</p><p>Iure dolor velit repellat perferendis ipsam officia. Dolorem sequi aut debitis saepe porro exercitationem consequuntur.</p><p>Voluptas neque quia atque cumque quam ut. Modi aut magnam dicta sed harum.</p><p>Fuga delectus accusamus ullam. Delectus odit voluptate omnis odio tenetur. Saepe harum qui quo.</p><p>Quia voluptate quia nihil quas et. Omnis iste tenetur voluptate dolores dolorum sed minima non.</p><p>Ut alias mollitia et vitae eum repudiandae. Impedit dolore odio deserunt. Magnam in ipsa necessitatibus est doloribus facere ut sit.</p><p>Aut error consequuntur ullam similique nisi eaque quos et. Illo eaque qui necessitatibus aut repudiandae magni non. Consequatur error dolores exercitationem sint fugiat praesentium sunt. Officiis deleniti incidunt maiores. Totam beatae quam vitae.</p>', '2021-11-16 05:18:13', '2021-11-15 21:18:13', '2021-11-15 21:18:13'),
(11, 1, 4, 'Ipsum dolor quia reiciendis.', 'sint-est-magnam-est', NULL, 'Est commodi dolore error deleniti perspiciatis et. Quasi magnam ut ratione repellendus. Quam eos iusto nemo eos est.', '<p>Quas molestiae blanditiis quis. Aut totam laudantium magni nihil maiores excepturi minima. Maxime eaque recusandae iusto quis ut.</p><p>Maxime voluptatem doloribus quia sunt officiis. Sint sed voluptas qui tempore. Accusantium exercitationem molestiae et.</p><p>Quia et consequatur accusamus consequatur porro assumenda. Necessitatibus aut sit id quis et odit ab. Quia assumenda quam consequatur suscipit.</p><p>Quae voluptatum laborum dolor rem atque. Tempore maiores quisquam totam magnam est. Vel sint unde repellendus fuga et doloremque ratione.</p><p>Inventore in id qui facilis pariatur quisquam est. Dolorem id est nulla.</p><p>Praesentium corporis in quam eius non. Odit aut ducimus repellat culpa omnis corrupti voluptas. Id illo aut itaque unde cumque nulla voluptatem est.</p><p>Voluptatibus ipsum sed qui et omnis voluptate quidem voluptate. Et nostrum non vero iste est dolor. Natus eum soluta quaerat reprehenderit. Itaque aliquid ipsam consequatur qui consequuntur.</p><p>Ad vitae laudantium explicabo temporibus aut. Repellendus animi temporibus harum dolor quia explicabo qui illum. Necessitatibus culpa cumque accusamus.</p>', '2021-11-16 05:18:13', '2021-11-15 21:18:13', '2021-11-15 21:18:13'),
(12, 3, 1, 'Quos voluptatem perferendis corporis distinctio.', 'error-quaerat-aliquam-voluptas-veritatis', NULL, 'Aspernatur enim soluta dolores optio consequatur. Assumenda quos alias veniam voluptates. Neque rerum ducimus et cupiditate ut veritatis voluptatibus quae.', '<p>Vitae sed saepe veniam enim error et temporibus. Distinctio sunt nulla et omnis nemo ab. Voluptatibus deleniti neque odit eveniet placeat.</p><p>Sed repellendus temporibus necessitatibus esse. Officia et delectus accusantium aperiam qui deserunt natus. Rerum odit et est.</p><p>Quia officia enim suscipit. Vel dolores voluptates nihil. Rerum eligendi minima in aut molestiae et enim. Aliquam id tenetur ut fugit aut qui. Commodi rerum assumenda ut consequuntur id eos.</p><p>Expedita quasi delectus est perspiciatis nemo saepe non. Inventore ipsum ratione doloribus totam veniam saepe eum nam. Corporis eius ut quia amet est in eos. Dicta delectus ut nam non impedit.</p><p>Accusamus quia accusantium ullam nemo sunt. Ut magnam occaecati eaque voluptate esse. Voluptas ut impedit necessitatibus harum deserunt expedita.</p><p>Numquam sint odit dolores quisquam. Corrupti animi saepe porro. Voluptas qui omnis eos aut voluptas rerum eligendi. Nam est incidunt eaque reprehenderit nemo nulla.</p>', '2021-11-16 05:18:13', '2021-11-15 21:18:13', '2021-11-15 21:18:13'),
(13, 2, 4, 'Sit numquam illum quod ratione quam alias est dolorem eaque.', 'officiis-aut-sed-quia-blanditiis', NULL, 'Esse commodi amet enim aut. Architecto aut quia repudiandae voluptatibus numquam sit dignissimos. Voluptatem ut earum at repellendus.', '<p>Laudantium dolorem architecto temporibus asperiores temporibus architecto similique quas. Cumque numquam in incidunt. Qui expedita voluptas dolorem laborum est dolore. Ab ut doloremque id accusamus et et nobis.</p><p>Similique aperiam velit ut dolorum omnis mollitia. Et vel molestias non doloremque repudiandae. Corrupti est eum aspernatur illum praesentium similique temporibus magnam. Assumenda sunt maxime doloremque repudiandae adipisci.</p><p>Ex qui iusto sed quas minus. Corrupti sed aut eum odit blanditiis natus. Maxime id incidunt esse nobis temporibus.</p><p>Pariatur possimus id ex et ut a. Cum nulla nesciunt aut temporibus officia. Possimus maxime est provident sed. Expedita consequuntur non facilis.</p><p>Ullam repellat optio qui. Ullam fugit accusantium quidem aperiam adipisci. Enim nisi quaerat perferendis. Neque impedit dolorem quos ducimus illo voluptas.</p>', '2021-11-16 05:18:13', '2021-11-15 21:18:13', '2021-11-15 21:18:13'),
(14, 3, 2, 'Hic reiciendis alias est id eveniet.', 'nesciunt-qui-amet-eum-recusandae', NULL, 'Consequatur voluptatem eveniet ea qui at eligendi odio. Id occaecati delectus hic dolor ratione cumque. Consequatur pariatur eos et doloremque vel doloribus. Minima animi quo laborum.', '<p>Aliquam laudantium amet deleniti veritatis. Quod quaerat ipsa et corporis voluptas quidem. Quae in ut pariatur ea porro deserunt.</p><p>Qui quis est perspiciatis eligendi expedita. Dolorem aut quia omnis ut quis molestiae rerum. Eos et optio aliquid.</p><p>Doloremque nam adipisci facere accusamus harum. Omnis iusto inventore id ratione placeat voluptas. Ut libero asperiores consequuntur veniam amet error. Et voluptatem vel occaecati maxime. Est perferendis vero sit non.</p><p>Aliquid aspernatur molestiae quas quia. Iusto omnis itaque in nihil et nihil at vero. Et vero et facere ipsum.</p><p>Sunt iste consectetur rerum ut reiciendis quo. Esse quo aperiam numquam mollitia. Officiis aliquid autem impedit voluptates dolores aut aliquam. Omnis modi quisquam facere accusamus.</p><p>Sunt expedita cumque tempore possimus. Repudiandae cumque numquam harum totam quaerat sint fuga. Illo cumque et quisquam eaque vel. Nostrum voluptate assumenda cupiditate voluptas consequuntur quia ex.</p><p>Nihil eum recusandae officiis sint architecto atque expedita assumenda. Incidunt nihil quos et tenetur aspernatur perferendis. Totam alias aut occaecati aliquam commodi eligendi impedit. Aut eos et in facere quod dolores.</p>', '2021-11-16 05:18:14', '2021-11-15 21:18:14', '2021-11-15 21:18:14'),
(15, 1, 1, 'Provident rem et.', 'sint-commodi-qui-occaecati-nihil-dolores', NULL, 'Vel aut dolorem inventore culpa praesentium omnis. Atque dolores rem veniam harum placeat. Et optio eum qui consectetur blanditiis beatae numquam vero. Dolores consequatur similique beatae eos quia.', '<p>Ducimus rerum et dolor alias quaerat est. Illum totam voluptatem deserunt soluta veniam molestiae. Corporis tenetur voluptate numquam sint dolores rerum dolor. Sed quas nostrum officiis voluptas eligendi.</p><p>Eaque labore exercitationem quos magnam quae. Quaerat ratione quisquam molestiae et occaecati. Ea ut officiis voluptatem omnis soluta sit. Incidunt odit beatae rerum earum consequatur repellendus.</p><p>Natus eos nobis vero quod sed. Eius nostrum natus sit velit suscipit nihil quia. Omnis iusto iste commodi ipsum iusto laudantium. Asperiores explicabo aut aliquam harum voluptatem similique tempore.</p><p>Adipisci in sapiente qui voluptatem. Hic est dolorem autem quasi aliquam aut debitis. Minima harum sint alias assumenda aliquam.</p><p>Non consequuntur qui asperiores et et veritatis. Dolores nobis repudiandae eligendi. Voluptatem velit possimus quo est aut. Ea et et vitae molestiae autem.</p>', '2021-11-16 05:18:15', '2021-11-15 21:18:15', '2021-11-15 21:18:15'),
(16, 1, 5, 'Minima consectetur et ipsam aut molestias sapiente aut ducimus reprehenderit.', 'amet-ducimus-rem-commodi-possimus-impedit', NULL, 'Est delectus ullam eaque ut. Rerum reprehenderit est fuga et aut dolorem omnis autem. Rerum itaque et soluta adipisci dolores est est. Assumenda voluptas sapiente explicabo dolor.', '<p>Non ipsum voluptatum odio asperiores sint consequatur sint. Veritatis nam maiores quos. Ea aut ut aut quaerat. Placeat rem dolores sit voluptatem.</p><p>Similique sint perspiciatis quia reiciendis assumenda. Illum nam eos aliquam facilis laboriosam illo. Pariatur error aut quia illum quo itaque qui officia.</p><p>Debitis ut doloribus doloribus sint. Inventore eveniet dignissimos et laboriosam. Optio doloremque voluptate quod nihil. Nam sit vero totam in.</p><p>Impedit distinctio iste voluptas. Et ipsa sequi magni doloribus enim est. Numquam repellat qui architecto temporibus est voluptates. Error aliquid assumenda deleniti maiores. Voluptates et non veritatis ut enim non et reprehenderit.</p><p>Sit quas impedit eum reiciendis et ipsum et quo. Iste nostrum et omnis accusamus autem nihil libero. Eius maiores est id. Qui quia minus tempore velit nostrum.</p><p>Ab dolorem sed autem id aut ut. Ut qui omnis velit ut eum quam. Doloremque quos aut nihil facere. Repudiandae vitae tempore qui occaecati nulla quia.</p><p>Suscipit nisi magni consequatur qui perspiciatis. Voluptas quis et assumenda autem. Odio ut sequi sed est.</p><p>Exercitationem nihil sunt ut voluptas cupiditate labore. Omnis recusandae odio minima qui. Sunt omnis accusantium culpa fugit distinctio quas et. Praesentium dolor laboriosam incidunt dicta unde ipsam. Adipisci accusamus est fugit at rem.</p>', '2021-11-16 05:18:15', '2021-11-15 21:18:15', '2021-11-15 21:18:15'),
(17, 2, 5, 'Neque sed eaque consequatur.', 'perspiciatis-iste-tenetur-et-odit-molestiae-quisquam-iusto-aliquam', NULL, 'Sequi distinctio laborum dolor adipisci. Eum consequuntur quidem voluptates commodi totam. Ut non voluptas eveniet vitae.', '<p>Ipsum beatae ducimus perferendis similique adipisci quam cupiditate. Rerum soluta omnis eligendi non atque modi voluptatibus sed. Molestiae qui asperiores tempore eum aut omnis. Deserunt cupiditate saepe magni et natus.</p><p>Sit natus vel quae veniam consequatur eum. Blanditiis laboriosam enim corporis voluptatem qui accusamus qui. Consequuntur minus dolorum qui doloremque cupiditate.</p><p>Maxime et sit a sint quod dolor magni est. Dolores tenetur autem dicta saepe quod aliquam.</p><p>Est ex doloribus labore possimus. Dolor cum ipsam corrupti. Ut distinctio porro ipsum distinctio maxime quod cupiditate. Unde et maiores consequatur dolorum et laudantium. Est quam deleniti est dolores tempore aut.</p><p>Molestiae modi quis odio ut doloremque assumenda. Voluptatem aliquid incidunt libero blanditiis officia consequatur. Ut vel consectetur labore sit sed eligendi. Sunt cupiditate odit enim maxime reprehenderit ea quibusdam.</p><p>Quia asperiores accusantium et vel in nobis aut consequatur. Quos iste accusantium est reprehenderit aut nihil. Cupiditate laborum quaerat sint nostrum molestiae.</p>', '2021-11-16 05:18:15', '2021-11-15 21:18:15', '2021-11-15 21:18:15'),
(18, 3, 1, 'Sit aliquid sit dolores.', 'similique-autem-nisi-et-sequi', NULL, 'Omnis aperiam ut amet qui. Numquam dicta enim sunt culpa eius vel quidem. Voluptas qui enim vero distinctio nemo quis dolor.', '<p>Ratione explicabo eos natus omnis omnis. Sed ut enim qui error sed officia vero laboriosam. Eligendi molestiae optio tempore dolorum omnis hic.</p><p>Laboriosam eveniet expedita fuga blanditiis. Et et et voluptas voluptatem. Fugiat nihil quis assumenda aliquid dolorem laborum.</p><p>Hic amet tempora doloremque voluptas dolore. In ea porro debitis hic. Sit eius recusandae dolorum distinctio voluptatem exercitationem id qui.</p><p>Provident nam dolores harum explicabo hic quo. Ut laborum itaque est est. Molestiae alias ut sed magnam iure voluptatem rem. Sunt dolor quia at eius consequatur totam.</p><p>Aut saepe aperiam quod commodi qui. Vel culpa corporis eveniet ea magni omnis. Ipsa repellat dolores veniam adipisci.</p><p>Omnis eos quod saepe accusamus. Dolorem est ex illum aspernatur. Ullam ad reprehenderit laudantium maiores accusantium quod consequatur sapiente.</p>', '2021-11-16 05:18:15', '2021-11-15 21:18:15', '2021-11-15 21:18:15'),
(19, 1, 1, 'Eligendi ex rerum.', 'veniam-illum-quo-ducimus-dolor', NULL, 'Consequuntur dolores quis consequuntur perspiciatis sed quia ea alias. Dicta ut non commodi et. Voluptatem illo ut velit commodi quia sed quod. Adipisci ad voluptas iste consequatur.', '<p>Cum aut nisi quaerat pariatur. Esse pariatur quam asperiores pariatur natus quae tenetur. Vero odio explicabo at ullam voluptas nesciunt. Quibusdam et necessitatibus ut ea. Eius facere consequatur atque quia.</p><p>Nisi qui qui nulla maxime dolor aut itaque. Et nesciunt laboriosam ad vero. Doloremque asperiores odio voluptatem quidem.</p><p>Est nihil labore magni eligendi. Sunt reprehenderit similique a magni ut possimus vel eaque. Aut tenetur laborum earum nulla ipsam consequatur dolores.</p><p>Eius incidunt sapiente et dignissimos omnis cupiditate. Magni nulla officiis dolorem repudiandae veniam. Odit est quibusdam rem est magni nostrum laborum. Voluptatem soluta voluptatem illum enim ut exercitationem dolorem.</p><p>Voluptas illum est aut quis. Officia ad consequuntur nostrum et. Et vel velit accusantium.</p><p>Adipisci aliquam vero dolore enim odit odit. Corrupti rerum porro velit aut voluptatem nihil veniam vitae. Est ad eum tempore sint ipsum quo laudantium.</p><p>Quasi ullam reprehenderit cupiditate. Omnis voluptatum aspernatur sed dicta quaerat ullam recusandae. Nihil aspernatur sit quibusdam iste iusto aut cumque. Quibusdam quos alias porro asperiores dicta.</p>', '2021-11-16 05:18:15', '2021-11-15 21:18:15', '2021-11-15 21:18:15'),
(20, 3, 5, 'Quo sed tempora aspernatur.', 'eum-voluptas-aut-earum-dolorum-qui', NULL, 'Ut animi id labore reprehenderit ut. Sit impedit in exercitationem rerum cum esse harum. Expedita consequatur aspernatur iste modi quae sunt.', '<p>Modi temporibus quis corrupti neque illo voluptas ea in. Accusantium consequatur hic similique est et et. Hic id aut harum exercitationem.</p><p>Repellendus qui ut commodi sit. Quo minus placeat quo nemo.</p><p>Error quidem sunt magni qui eligendi reprehenderit. Voluptatem quibusdam et sapiente est. Nemo perspiciatis quas et consequatur velit. Aliquid magnam culpa accusamus est cumque qui nobis. Amet optio magnam quo.</p><p>Ea minima et porro vel pariatur ea. Assumenda cum assumenda autem culpa mollitia iste. Similique architecto veniam ut quia deserunt aliquam maiores deleniti.</p><p>Est ea quibusdam dolorem mollitia nobis. Sint esse quos autem omnis minus sed.</p><p>Eligendi quo suscipit est corrupti eos dolor. Dolor molestiae iure vel vel dolor.</p>', '2021-11-16 05:18:16', '2021-11-15 21:18:16', '2021-11-15 21:18:16'),
(21, 3, 3, 'Post Baru', 'post-baru', 'post-images/JdfCgntKlyLWiZvIcIZkcsfZ6NmV7mhNGB6pPKAP.jpg', 'i love you 3000', '<div>i love you 3000</div>', '2021-11-16 05:28:28', '2021-11-15 21:28:28', '2021-11-15 21:28:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Muhammad Akbar', 'muhammadakbar', 'muhammadakbar509@gmail.com', NULL, '$2y$10$uySWdqwNJ2txPQHdVtfJhe.oC01Gw35Xwx98TpijzpL8u3g/mCUEe', NULL, '2021-11-15 21:18:09', '2021-11-15 21:18:09', 1),
(2, 'Zulfa Nuraini S.E.I', 'yuliarti.maria', 'cinthia.saragih@example.net', '2021-11-15 21:18:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Qaea5ZbmWl', '2021-11-15 21:18:09', '2021-11-15 21:18:09', 0),
(3, 'Irfan Kuswoyo', 'tugiman20', 'mustofa63@example.com', '2021-11-15 21:18:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6xR8dzaceYexn2C1TixL4iS4zX18Jsisjt5FUl3DG7uyvctSgwyfE5IYT7pe', '2021-11-15 21:18:10', '2021-11-15 21:18:10', 0),
(4, 'Raden Daliono Hidayat M.Pd', 'ikuswoyo', 'ypradana@example.net', '2021-11-15 21:18:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XsS26jssT6Tzcy8omCpS1S75NP332hg6I3B7CFMXeHbON351f29VlzhZoBye', '2021-11-15 21:18:10', '2021-11-15 21:18:10', 1),
(5, 'Yunita Samiah Permata', 'bwastuti', 'xnovitasari@example.net', '2021-11-15 21:18:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9Tgmv5LyXs', '2021-11-15 21:18:10', '2021-11-15 21:18:10', 0),
(6, 'Mariadi Zulkarnain', 'sdongoran', 'puti.rahmawati@example.com', '2021-11-15 21:18:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PfoiUiHxV2', '2021-11-15 21:18:10', '2021-11-15 21:18:10', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
