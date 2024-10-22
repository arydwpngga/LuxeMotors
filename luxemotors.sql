-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2024 at 01:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `luxemotors`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `born` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `position` text NOT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `image`, `name`, `gender`, `born`, `email`, `phone`, `address`, `position`, `status`, `created_at`, `updated_at`) VALUES
(1, '2BhF2s3FIHvuJJPLboHEWnYKgsv7ltEPO0K66O8F.jpg', 'Arya Dwi Pangga Handoko', 'male', '2003-06-30', 'aryadwipangga609@gmail.com', '085158982988', 'Meikarta', 'CEO', 'active', '2024-10-22 15:04:59', '2024-10-22 16:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_22_032902_create_products_table', 1),
(5, '2024_10_22_084124_create_employees_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` bigint(20) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `image`, `title`, `description`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(2, 'DzU7K9ix0VPduQG3I1NpjD0JD9WwhkMkY9t0lDP1.jpg', 'Maserati MC20', '<p>Maserati MC20 adalah supercar mewah yang memadukan performa tinggi dengan desain elegan khas Maserati. Ditenagai oleh mesin V6 Nettuno 3.0L twin-turbo yang menghasilkan 621 tenaga kuda, MC20 mampu melesat dari 0-100 km/jam hanya dalam 2,9 detik, dengan kecepatan maksimum mencapai 325 km/jam. Mobil ini menggunakan sasis berbahan serat karbon yang ringan dan aerodinamis, memberikan handling presisi dan stabilitas pada kecepatan tinggi. Interiornya dilengkapi dengan material premium dan teknologi mutakhir, menciptakan pengalaman berkendara yang mewah dan mendalam. MC20 menjadi simbol perpaduan antara inovasi teknis dan warisan balap Maserati.</p>', 3500000000, 3, '2024-10-21 20:39:54', '2024-10-21 20:39:54'),
(3, 'A2HNaqdAhiFdpvbTgdr57Tct43SVSVBFW1cFD8t1.jpg', 'New 2023 Dodge Charger R/T', '<p>**New 2023 Dodge Charger R/T** adalah mobil muscle car yang berani dan bertenaga, menggabungkan performa klasik Amerika dengan teknologi modern. Ditenagai oleh mesin 5.7L HEMI&reg; V8, mobil ini menghasilkan 370 tenaga kuda dan torsi 395 lb-ft, memberikan akselerasi yang mengesankan serta kehadiran yang dominan di jalan. Desain agresifnya menampilkan kap mesin yang tegas, grille khas, dan garis bodi yang ramping, dipadukan dengan velg 20 inci yang menambah kesan kekar. Di bagian interior, Charger R/T menawarkan kokpit berfokus pada pengemudi dengan teknologi canggih, termasuk sistem Uconnect&reg; 4C dengan layar sentuh 8,4 inci, Apple CarPlay&reg;, dan Android Auto&trade;. Cocok bagi penggemar yang mencari perpaduan antara kekuatan murni dan kepraktisan sehari-hari.</p>', 2000000000, 5, '2024-10-21 20:43:13', '2024-10-21 20:43:13'),
(4, 'J8Z1d2P4SknddO8gmAcAMHg6nNM1PCVuDH8MdCN6.jpg', 'Ford Mustang Shelby GT500', '<p>Ford Mustang Shelby GT500 adalah mobil muscle legendaris yang dikenal karena kekuatan dan performa tinggi. Ditenagai oleh mesin V8 supercharged 5.2 liter, GT500 menghasilkan tenaga hingga 760 hp, menjadikannya Mustang paling bertenaga yang pernah dibuat. Desainnya yang agresif dilengkapi dengan aerodinamika canggih, serta fitur-fitur performa seperti suspensi adaptif dan sistem pengereman Brembo. Interiornya menggabungkan kenyamanan modern dengan sentuhan sporty, menjadikan GT500 pilihan ideal bagi penggemar kecepatan dan gaya khas American muscle car.</p>', 2900000000, 2, '2024-10-21 20:46:30', '2024-10-21 20:46:30'),
(5, 'y9QcNdRRk58AHkCQbPAilEz6ake4dm1sIWSzWJix.jpg', 'Bugatti Chiron 2022', '<p>**Bugatti Chiron** adalah mobil sport mewah yang terkenal dengan performa luar biasa dan desain yang menakjubkan. Dikenal sebagai salah satu mobil tercepat di dunia, Chiron dilengkapi dengan mesin quad-turbocharged W16 8,0 liter yang mampu menghasilkan tenaga hingga 1.500 tenaga kuda. Mobil ini dapat mencapai kecepatan maksimum sekitar 304 mph (490 km/jam) dan dapat berakselerasi dari 0 hingga 60 mph dalam waktu kurang dari 2,5 detik.</p>\r\n\r\n<p>Dari segi desain, Chiron menggabungkan elemen aerodinamis dengan kemewahan. Interiornya dihiasi dengan bahan berkualitas tinggi seperti kulit dan serat karbon, serta dilengkapi dengan teknologi mutakhir untuk kenyamanan dan hiburan. Dengan kombinasi antara performa, desain, dan eksklusivitas, Bugatti Chiron menjadi simbol prestise di dunia otomotif.</p>', 45000000000, 1, '2024-10-21 20:49:27', '2024-10-21 20:57:04');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ABJ3GAoY1XJyEQBsg6u5Hure3WtgD6SOMn5HMk9k', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicW1ZbjFxZDZzNDFqY2JPYlg5MHg0dFloSUFac3RQMW1iek9BdjNERSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9lbXBsb3llZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729638552);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
