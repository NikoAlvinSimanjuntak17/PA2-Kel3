-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Bulan Mei 2024 pada 19.03
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurantdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_img` text NOT NULL,
  `product_nama` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `time`, `created_at`, `updated_at`) VALUES
(1, 'juices', '2024-05-06 10:35:21', '2024-05-05 20:35:21', '2024-05-05 20:35:21'),
(2, 'ice cream', '2024-05-06 10:35:21', '2024-05-05 20:35:21', '2024-05-05 20:35:21'),
(3, 'soft drink', '2024-05-06 10:35:21', '2024-05-05 20:35:21', '2024-05-05 20:35:21'),
(4, 'kopi', '2024-05-06 10:35:21', '2024-05-05 20:35:21', '2024-05-05 20:35:21'),
(5, 'pizza', '2024-05-06 10:35:21', '2024-05-05 20:35:21', '2024-05-05 20:35:21'),
(6, 'snack', '2024-05-06 10:35:21', '2024-05-05 20:35:21', '2024-05-05 20:35:21'),
(7, 'food', '2024-05-06 10:35:21', '2024-05-05 20:35:21', '2024-05-05 20:35:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `message`, `time`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hands down, some of the best food I’ve had recently! They use the freshest ingredients and make sure each dish is done the right way. The Pizza Andaliman was especially memorable. Must try!', '2024-05-10 11:05:00', '2024-05-09 21:05:00', '2024-05-09 21:05:00'),
(2, 4, 'Restoran mewah dengan pelayanan yang ramah . Dan rasa makanan yang lezattt .. Spesial Thanks buat ownernya, sudah sangat membantu acara kami.', '2024-05-10 11:07:19', '2024-05-09 21:07:19', '2024-05-09 21:07:19'),
(3, 5, 'Baru saja kesini, pelayanannya sangat bagus, makanannya juga enak-enak tetapi penyajian makanannya terlalu lama bagi saya sampai bosen nunggunya hehe.., tapi overall good sihh, mantapp deh pokoknyaaa...', '2024-05-10 11:18:40', '2024-05-09 21:18:40', '2024-05-09 21:18:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Kebun Resto', '1716169941.jpg', '2024-05-19 18:52:21', '2024-05-19 18:52:21'),
(2, 'Table Resto', '1716172086.jpg', '2024-05-19 19:28:06', '2024-05-19 19:28:06'),
(3, 'Cafe Resto', '1716172117.jpg', '2024-05-19 19:28:37', '2024-05-19 19:28:37'),
(4, 'Halaman Resto', '1716172171.jpg', '2024-05-19 19:29:31', '2024-05-19 19:29:31'),
(5, 'Table Resto', '1716172205.jpg', '2024-05-19 19:30:05', '2024-05-19 19:30:05'),
(6, 'Table Resto', '1716172236.jpg', '2024-05-19 19:30:36', '2024-05-19 19:30:36'),
(7, 'Spa Resto', '1716172270.jpg', '2024-05-19 19:31:10', '2024-05-19 19:31:10'),
(8, 'Table Resto', '1716172318.jpg', '2024-05-19 19:31:58', '2024-05-19 19:31:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_20_102240_laratrust_setup_tables', 1),
(6, '2023_04_21_161018_create_sessions_table', 1),
(7, '2023_04_21_172109_create_categories_table', 1),
(8, '2023_04_22_003926_create_products_table', 1),
(9, '2023_04_24_163819_create_carts_table', 1),
(10, '2023_05_01_073425_create_orders_table', 1),
(11, '2023_05_24_060946_create_notifications_table', 1),
(12, '2024_03_22_071001_create_reservations_table', 1),
(13, '2024_04_02_015804_create_feedback_table', 1),
(14, '2024_05_09_073049_create_product_ratings_table', 2),
(15, '2024_05_19_065226_create_galleries_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('024613eb-7f37-47e2-b30a-778c4cc4c1a1', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 3, '{\"id\":1673584850,\"nama\":\"Eka Lumbanraja\"}', NULL, '2024-05-21 19:21:30', '2024-05-21 19:21:30'),
('2395051c-9e8c-47db-a98d-e61b785924cd', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 3, '{\"id\":12,\"nama\":\"Eka Lumbanraja\"}', NULL, '2024-05-20 18:51:14', '2024-05-20 18:51:14'),
('2c27120e-f3b4-44f7-b93c-c1f6bd103f02', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 3, '{\"id\":3,\"nama\":\"Niko Simanjuntak\"}', '2024-05-08 20:56:22', '2024-05-07 23:50:08', '2024-05-08 20:56:22'),
('30237fdd-cfc7-46ea-b4ef-8bbae5e873e8', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 3, '{\"id\":2092230908,\"nama\":\"Eka Lumbanraja\"}', NULL, '2024-05-23 04:26:49', '2024-05-23 04:26:49'),
('3355e152-4036-41d8-9ee1-65cabbbdd2c8', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 3, '{\"id\":10,\"nama\":\"Gerlad Sitio\"}', NULL, '2024-05-10 09:02:40', '2024-05-10 09:02:40'),
('39de3244-3265-4686-9ee3-057d106fbbdd', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 3, '{\"id\":1645713527,\"nama\":\"Eka Lumbanraja\"}', NULL, '2024-05-22 00:11:09', '2024-05-22 00:11:09'),
('3ba2ca6c-53c8-4dab-ae6c-2fb5a739b33f', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 3, '{\"id\":4,\"nama\":\"Niko Simanjuntak\"}', '2024-05-08 20:56:50', '2024-05-08 07:59:09', '2024-05-08 20:56:50'),
('4f4083d8-0aa5-45b2-9342-079fb982775f', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 3, '{\"id\":8,\"nama\":\"Gerlad Sitio\"}', NULL, '2024-05-10 08:55:19', '2024-05-10 08:55:19'),
('54078d3e-828a-450b-9401-55c503089437', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 3, '{\"id\":1270904005,\"nama\":\"Eka Lumbanraja\"}', NULL, '2024-05-21 19:21:30', '2024-05-21 19:21:30'),
('6a6187a9-a00b-46ee-a808-ac3c908a12d5', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 3, '{\"id\":7,\"nama\":\"Niko Simanjuntak\"}', NULL, '2024-05-09 21:50:01', '2024-05-09 21:50:01'),
('7c404162-8a4d-4c11-b635-ad4d61e49606', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 3, '{\"id\":9,\"nama\":\"Niko Simanjuntak\"}', NULL, '2024-05-10 08:55:19', '2024-05-10 08:55:19'),
('a07f4edb-4f0c-4c61-aa7c-0c2d2854027f', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 3, '{\"id\":2,\"nama\":\"Niko Simanjuntak\"}', '2024-05-08 20:56:18', '2024-05-07 23:50:08', '2024-05-08 20:56:18'),
('a8c9f793-e50e-4878-b385-54fb4542e406', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 3, '{\"id\":985250354,\"nama\":\"Eka Lumbanraja\"}', NULL, '2024-05-21 19:21:30', '2024-05-21 19:21:30'),
('b2411bb1-8868-4898-8326-e6678c7d9332', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 3, '{\"id\":222548078,\"nama\":\"Eka Lumbanraja\"}', NULL, '2024-05-22 23:54:38', '2024-05-22 23:54:38'),
('b2b99e75-67fe-4084-b08c-c5fad5eb5bea', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 3, '{\"id\":1,\"nama\":\"Niko Simanjuntak\"}', '2024-05-08 20:45:27', '2024-05-07 23:50:08', '2024-05-08 20:45:27'),
('be3ed807-85a0-459a-9bb8-8f2e7cc0c192', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 3, '{\"id\":11,\"nama\":\"Niko Simanjuntak\"}', NULL, '2024-05-19 18:31:38', '2024-05-19 18:31:38'),
('d488a194-5c38-4ee0-a353-fbf7357c4cc0', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 3, '{\"id\":6,\"nama\":\"Niko Simanjuntak\"}', NULL, '2024-05-08 22:09:34', '2024-05-08 22:09:34'),
('d6c6f480-346e-4efc-a3a5-ce7281412c30', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 3, '{\"id\":1597163459,\"nama\":\"Eka Lumbanraja\"}', NULL, '2024-05-22 10:09:32', '2024-05-22 10:09:32'),
('d9324f27-0718-4630-8d12-cde2f1fcd7cb', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 3, '{\"id\":5,\"nama\":\"Niko Simanjuntak\"}', '2024-05-08 20:55:46', '2024-05-08 20:39:18', '2024-05-08 20:55:46'),
('fcbb462a-b255-4a50-b266-59b228f9bca6', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 3, '{\"id\":1975181102,\"nama\":\"Eka Lumbanraja\"}', NULL, '2024-05-21 19:21:30', '2024-05-21 19:21:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` text NOT NULL,
  `product_nama` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `shipping_phonenumber` text NOT NULL,
  `shipping_postalcode` text NOT NULL,
  `address` text NOT NULL,
  `shipping_city` text NOT NULL,
  `product_img` text NOT NULL,
  `quantity` text NOT NULL,
  `totalprice` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `transaction_status` varchar(255) DEFAULT NULL,
  `img_bayar` text DEFAULT NULL,
  `ulasan` text DEFAULT NULL,
  `snap_token` varchar(255) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `product_nama`, `user_id`, `nama`, `shipping_phonenumber`, `shipping_postalcode`, `address`, `shipping_city`, `product_img`, `quantity`, `totalprice`, `status`, `transaction_status`, `img_bayar`, `ulasan`, `snap_token`, `time`, `created_at`, `updated_at`) VALUES
(5, '[7,4]', '[\"Teh Manis Panas\",\"Kentang Goreng\"]', 1, 'Niko Simanjuntak', '081260757573', '20414', 'Jln. KL. Yos sudarso, Linkg 13. KM. 21, Makden Baru, Belawan.', 'Kota Medan', '[\"upload\\/manis.jpg\",\"upload\\/kentang.jpg\"]', '[1,1]', '[8000,20000]', 'selesai', NULL, NULL, 'Kentang goreng nya sangat lembut dan renyah, tetapi teh manis nya terlalu manis bagi saya', 'bad82e36-77bb-4015-8ac8-0710e30f9b7d', '2024-05-09 10:39:09', '2024-04-08 20:39:09', '2024-04-09 02:40:17'),
(7, '[3,4,2,8,7]', '[\"Nasi Putih\",\"Kentang Goreng\",\"Pizza Andaliman (Large)\",\"Telur Dadar\",\"Teh Manis Panas\"]', 1, 'Niko Simanjuntak', '081260757573', '20414', 'Jln. KL. Yos sudarso, Linkg 13. KM. 21, Makden Baru, Belawan.', 'Kota Medan', '[\"upload\\/nasi.jpg\",\"upload\\/kentang.jpg\",\"upload\\/pizza-andaliman.jpg\",\"upload\\/telor.jpg\",\"upload\\/manis.jpg\"]', '[2,1,1,1,1]', '[6000,20000,80000,10000,8000]', 'in progress', NULL, NULL, NULL, 'e290010a-e295-457f-a43e-2c972fcbac51', '2024-05-10 11:44:34', '2024-05-09 21:44:34', '2024-05-09 21:51:27'),
(8, '[3,6,8]', '[\"Nasi Putih\",\"Teh Manis Dingin\",\"Telur Dadar\"]', 5, 'Sitio', '081265959007', '20414', 'Jln. KL. Yos sudarso, Linkg 13. KM. 21, Makden Baru, Belawan.', 'Kota Medan', '[\"upload\\/nasi.jpg\",\"upload\\/mandi.jpg\",\"upload\\/telor.jpg\"]', '[1,2,2]', '[6000,10000,10000]', 'selesai', NULL, NULL, NULL, '6a35fbf9-2cd8-4a6d-89ee-4222126e6948', '2024-05-10 15:38:51', '2024-01-10 01:38:51', '2024-01-10 01:38:51'),
(9, '[4,1]', '[\"Kentang Goreng\",\"Pizza Andaliman (Regular)\"]', 1, 'Alvin Simanjuntak', '081260757573', '20414', 'IT Del', 'Sitoluama', '[\"upload\\/kentang.jpg\",\"upload\\/pizza-andaliman.jpg\"]', '[1,1]', '[20000,65000]', 'in progress', NULL, NULL, NULL, 'ad2f9060-1ac3-4114-a6ef-a392a89cf4c0', '2024-05-10 22:00:26', '2024-05-10 08:00:26', '2024-05-13 19:01:38'),
(10, '[4,8,1]', '[\"Kentang Goreng\",\"Telur Dadar\",\"Pizza Andaliman (Regular)\"]', 5, 'Gerald Sitio', '081275757321', '20420', 'Jl. Asal, Balige, Sumatera Utara', 'Balige', '[\"upload\\/kentang.jpg\",\"upload\\/telor.jpg\",\"upload\\/pizza-andaliman.jpg\"]', '[2,1,1]', '[20000,10000,65000]', 'selesai', NULL, NULL, NULL, 'ca92313c-8a61-40e0-bb2b-adfa954252ff', '2024-05-10 23:02:25', '2024-03-10 09:02:25', '2024-03-10 09:02:25'),
(11, '[4,2]', '[\"Kentang Goreng\",\"Pizza Andaliman (Large)\"]', 1, 'niko simanjuntak', '081260757573', '20411', 'IT Del', 'Sitoluama', '[\"upload\\/kentang.jpg\",\"upload\\/pizza-andaliman.jpg\"]', '[1,1]', '[20000,80000]', 'pending', NULL, NULL, NULL, '3a258be1-8f75-4b9b-9af7-8da687c1efd5', '2024-05-14 11:29:34', '2024-05-13 21:29:34', '2024-05-13 21:29:34'),
(222548078, '[3]', '[\"Nasi Putih\"]', 6, 'Ekaaaa', '081234567812', '20411', 'it del', 'laguboti', '[\"upload\\/nasi.jpg\"]', '[1]', '[6000]', 'selesai', NULL, NULL, NULL, 'e4bb3163-536c-4308-898f-afb125f59cc3', '2024-05-23 13:49:42', '2024-05-22 23:49:42', '2024-05-23 01:07:20'),
(985250354, '[4]', '[\"Kentang Goreng\"]', 6, 'Lumbanraja', '081260757573', '20411', 'IT Del', 'Sitoluama', '[\"upload\\/kentang.jpg\"]', '[1]', '[20000]', 'paid', NULL, NULL, NULL, 'f9e50f05-48ae-4b8e-9b5a-bce081003b1a', '2024-05-21 21:28:18', '2024-05-21 07:28:18', '2024-05-21 07:29:34'),
(1597163459, '[3]', '[\"Nasi Putih\"]', 6, 'Lumbanraja', '081260757573', '20411', 'IT Del', 'Sitoluama', '[\"upload\\/nasi.jpg\"]', '[10]', '[6000]', 'selesai', NULL, NULL, NULL, '13f60abf-47a9-4a56-b360-0984444b1768', '2024-05-22 15:37:50', '2024-05-22 01:37:50', '2024-05-23 02:16:00'),
(1645713527, '[2]', '[\"Pizza Andaliman (Large)\"]', 6, 'Ekaaaa', '081234567812', '20411', 'it del', 'laguboti', '[\"upload\\/pizza-andaliman.jpg\"]', '[1]', '[80000]', 'in progress', NULL, NULL, NULL, 'ab27d4db-9af9-46ee-900b-1b3df9ec15fa', '2024-05-22 09:28:56', '2024-05-21 19:28:56', '2024-05-22 00:28:20'),
(1975181102, '[1]', '[\"Pizza Andaliman (Regular)\"]', 6, 'Lumbanraja', '081260757573', '20411', 'IT Del', 'Sitoluama', '[\"upload\\/pizza-andaliman.jpg\"]', '[1]', '[65000]', 'paid', NULL, NULL, NULL, '8251cbe5-6f30-412d-b3bf-b892d4d2d51f', '2024-05-21 21:49:16', '2024-05-21 07:49:16', '2024-05-21 09:31:20'),
(2092230908, '[3]', '[\"Nasi Putih\"]', 6, 'Ekaaaa', '081234567812', '20411', 'it del', 'laguboti', '[\"upload\\/nasi.jpg\"]', '[1]', '[6000]', 'paid', NULL, NULL, NULL, '8b68ad10-aa2a-4e5c-b5fd-c5c372b90ae1', '2024-05-23 17:18:19', '2024-05-23 03:18:19', '2024-05-23 03:19:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'users-create', 'Create Users', 'Create Users', '2024-05-05 20:35:16', '2024-05-05 20:35:16'),
(2, 'users-read', 'Read Users', 'Read Users', '2024-05-05 20:35:16', '2024-05-05 20:35:16'),
(3, 'users-update', 'Update Users', 'Update Users', '2024-05-05 20:35:16', '2024-05-05 20:35:16'),
(4, 'users-delete', 'Delete Users', 'Delete Users', '2024-05-05 20:35:16', '2024-05-05 20:35:16'),
(5, 'payments-create', 'Create Payments', 'Create Payments', '2024-05-05 20:35:16', '2024-05-05 20:35:16'),
(6, 'payments-read', 'Read Payments', 'Read Payments', '2024-05-05 20:35:16', '2024-05-05 20:35:16'),
(7, 'payments-update', 'Update Payments', 'Update Payments', '2024-05-05 20:35:16', '2024-05-05 20:35:16'),
(8, 'payments-delete', 'Delete Payments', 'Delete Payments', '2024-05-05 20:35:16', '2024-05-05 20:35:16'),
(9, 'profile-read', 'Read Profile', 'Read Profile', '2024-05-05 20:35:16', '2024-05-05 20:35:16'),
(10, 'profile-update', 'Update Profile', 'Update Profile', '2024-05-05 20:35:16', '2024-05-05 20:35:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 2),
(10, 1),
(10, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_deskripsi` text NOT NULL,
  `price` int(11) NOT NULL,
  `product_category_name` varchar(255) NOT NULL,
  `product_category_id` bigint(20) UNSIGNED NOT NULL,
  `product_img` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_deskripsi`, `price`, `product_category_name`, `product_category_id`, `product_img`, `quantity`, `time`, `created_at`, `updated_at`) VALUES
(1, 'Pizza Andaliman (Regular)', 'Pizza dengan sambal ciri khas', 65000, 'pizza', 5, 'upload/pizza-andaliman.jpg', 9997, '2024-05-06 10:35:27', '2024-05-05 20:35:27', '2024-05-21 07:50:39'),
(2, 'Pizza Andaliman (Large)', 'Pizza dengan sambal ciri khas', 80000, 'pizza', 5, 'upload/pizza-andaliman.jpg', 9992, '2024-05-06 10:35:27', '2024-05-05 20:35:27', '2024-05-22 00:04:12'),
(3, 'Nasi Putih', 'Nasi putih berkualitas', 6000, 'food', 7, 'upload/nasi.jpg', 9982, '2024-05-06 10:35:27', '2024-05-05 20:35:27', '2024-05-23 03:18:19'),
(4, 'Kentang Goreng', 'Kentang goreng berkualitas', 20000, 'snack', 6, 'upload/kentang.jpg', 9991, '2024-05-06 10:35:27', '2024-05-05 20:35:27', '2024-05-21 08:58:04'),
(6, 'Teh Manis Dingin', 'Teh manis dengan es batu', 10000, 'soft drink', 3, 'upload/mandi.jpg', 9998, '2024-05-06 10:35:27', '2024-05-05 20:35:27', '2024-05-21 08:57:28'),
(7, 'Teh Manis Panas', 'Teh manis', 8000, 'soft drink', 3, 'upload/manis.jpg', 9998, '2024-05-06 10:35:27', '2024-05-05 20:35:27', '2024-05-21 08:57:45'),
(8, 'Telur Dadar', 'Telur ceplok atau dadar', 10000, 'food', 7, 'upload/telor.jpg', 9996, '2024-05-10 08:13:27', '2024-05-09 18:13:27', '2024-05-21 07:50:21'),
(9, 'Pisang Goreng', 'Pisang goreng dengan saos coklat', 15000, 'snack', 6, 'upload/1799843006547488.jpg', 1000, '2024-05-23 18:34:08', NULL, NULL),
(10, 'Ayam Penyet', 'Ayam Penyet', 25000, 'food', 7, 'upload/1799843094960862.jpg', 1000, '2024-05-23 18:35:33', NULL, NULL),
(11, 'Jus Apel', 'Jus apel', 25000, 'juices', 1, 'upload/1799843267472145.jpg', 1000, '2024-05-23 18:38:17', NULL, NULL),
(12, 'Jus Wortel', 'jus wortel', 20000, 'juices', 1, 'upload/1799843418505943.jpg', 1000, '2024-05-23 18:40:41', NULL, NULL),
(13, 'Ice Cream Coklat', 'ice cream', 20000, 'ice cream', 2, 'upload/1799843476954262.jpg', 1000, '2024-05-23 18:41:37', NULL, NULL),
(14, 'Ice Cream Vanilla', 'ice cream', 20000, 'ice cream', 2, 'upload/1799843564605596.jpeg', 1000, '2024-05-23 18:43:01', NULL, NULL),
(15, 'Kopi Andaliman Panas', 'Kopi andaliman', 25000, 'kopi', 4, 'upload/1799843696921390.jpg', 1000, '2024-05-23 18:45:07', NULL, NULL),
(16, 'Kopi susu panas', 'kopi susu panas', 15000, 'kopi', 4, 'upload/1799843775632263.jpg', 1000, '2024-05-23 18:46:22', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `people` int(11) NOT NULL,
  `message` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `reservations`
--

INSERT INTO `reservations` (`id`, `user_id`, `name`, `email`, `phone`, `date`, `time`, `people`, `message`, `status`, `created_at`, `updated_at`) VALUES
(4, 1, 'Niko Simanjuntak', 'nikoalvinsimanjuntak82@gmail.com', '081260757573', '2024-05-23', '22:59:00', 20, 'Pesta ulang tahun', 'confirmed', '2024-07-10 08:58:05', '2024-05-23 04:27:10'),
(5, 5, 'Gerald Sitio', 'geral@gmail.com', '0812659591231', '2024-05-18', '23:09:00', 34, 'Acara makan kantor', 'confirmed', '2024-02-10 09:05:11', '2024-07-23 04:27:16'),
(6, 4, 'Mario Manurung', 'mario@gmail.com', '081260757453', '2024-05-13', '23:09:00', 2, 'Pesan tempat yg nyaman dan vibesnya romantis', 'confirmed', '2024-05-10 09:09:48', '2024-05-22 00:55:24'),
(7, 6, 'Eka Lumbanraja', 'eka@gmail.com', '081234567823', '2024-05-25', '16:44:00', 12, 'Pesta ulang tahun anak', 'confirmed', '2024-05-23 02:44:42', '2024-05-23 02:45:56'),
(8, 6, 'Eka Lumbanraja', 'eka@gmail.com', '081234567823', '2024-05-31', '19:53:00', 10, 'Meja outdoor', 'confirmed', '2024-06-23 02:53:37', '2024-06-23 04:27:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'Admin', '2024-05-05 20:35:16', '2024-05-05 20:35:16'),
(2, 'customer', 'Customer', 'Customer', '2024-05-05 20:35:16', '2024-05-05 20:35:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(2, 1, 'App\\Models\\User'),
(2, 2, 'App\\Models\\User'),
(1, 3, 'App\\Models\\User'),
(2, 4, 'App\\Models\\User'),
(2, 5, 'App\\Models\\User'),
(2, 6, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `user_img` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `birthdate`, `user_img`, `address`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Niko Simanjuntak', 'nikoalvinsimanjuntak82@gmail.com', '081260757573', '2004-07-15', 'upload/1715313782.jpg', 'Medan', NULL, '$2y$10$Eor295rjSMfoVimahq3vtef2LwsAS5f8yti3tcXOgv2GxoG6HOKYG', NULL, '2024-05-05 20:37:23', '2024-05-11 08:35:48'),
(2, 'Kesiaa', 'kesiasihombing56@gmail.com', NULL, NULL, NULL, NULL, NULL, '$2y$10$/da9jI51gUl.R8GcawDgjeeLGlASWjaVLObSdG3XFi5z.gWFfCRbW', NULL, '2024-05-05 20:58:43', '2024-05-05 20:58:43'),
(3, 'admin', 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, '$2y$10$5zXij0aiB787YMmNVrq/keIBrufW57r/a8ZTiVDb7Vvf0ishwm1UC', NULL, '2024-05-07 23:49:28', '2024-05-07 23:49:28'),
(4, 'Mario Manurung', 'mario@gmail.com', NULL, NULL, 'upload/1715314372.jpg', NULL, NULL, '$2y$10$Nmtv7QAz2acrpKYDmm.CmOmise959gbJC8xSXZoQLBmjB8s7yiia2', NULL, '2024-05-09 21:05:58', '2024-05-09 21:12:52'),
(5, 'Gerlad Sitio', 'geral@gmail.com', NULL, NULL, NULL, NULL, NULL, '$2y$10$RVir7Yg0yqYw0twEjCi71.T76.KjYLdl5Xak0AD0wqtxFy4N7v0P6', NULL, '2024-05-09 21:15:04', '2024-05-09 21:15:04'),
(6, 'Eka Lumbanraja', 'eka@gmail.com', NULL, NULL, NULL, NULL, NULL, '$2y$10$aIXZRIGUAFmNcI3xXhJ.quVjjBRRAaYqQbE1mSB6mE/W8Pd74iCdS', NULL, '2024-05-18 21:53:24', '2024-05-23 02:55:16');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indeks untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_product_category_id_foreign` (`product_category_id`);

--
-- Indeks untuk tabel `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservations_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indeks untuk tabel `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2092230909;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `categories` (`id`);

--
-- Ketidakleluasaan untuk tabel `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
