-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 25, 2025 at 09:21 AM
-- Server version: 10.6.22-MariaDB-cll-lve
-- PHP Version: 8.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dtqcghkc_inventaris_app`
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

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('admi@gmail.com|125.164.96.202', 'i:1;', 1750132156),
('admi@gmail.com|125.164.96.202:timer', 'i:1750132156;', 1750132156);

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
-- Table structure for table `distributions`
--

CREATE TABLE `distributions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_pengeluaraan` varchar(255) NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `unit_penerima` varchar(255) NOT NULL,
  `petugas_penyerah` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `distributions`
--

INSERT INTO `distributions` (`id`, `tanggal_pengeluaraan`, `item_id`, `jumlah`, `unit_penerima`, `petugas_penyerah`, `created_at`, `updated_at`) VALUES
(6, '2025-06-16', 78, '5', 'Ruang TIKIM', 'Haryati Apri Yani', '2025-06-17 04:26:49', '2025-06-17 04:26:49'),
(7, '2025-06-11', 82, '5', 'Ruang TIKIM', 'Haryati Apri Yani', '2025-06-17 04:40:13', '2025-06-17 04:40:13');

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
-- Table structure for table `financial_reports`
--

CREATE TABLE `financial_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `periode` enum('bulanan','tahunan') NOT NULL,
  `total_anggaran` varchar(255) NOT NULL,
  `total_realisasi` varchar(255) NOT NULL,
  `selisih` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rincian_transaksi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `financial_reports`
--

INSERT INTO `financial_reports` (`id`, `periode`, `total_anggaran`, `total_realisasi`, `selisih`, `created_at`, `updated_at`, `rincian_transaksi`) VALUES
(2, 'bulanan', '1000000', '500000', '1', '2025-06-16 16:01:40', '2025-06-16 16:01:40', 'jsjsjsjsjs update');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_barang` varchar(255) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `spesifikasi` text NOT NULL,
  `satuan` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) NOT NULL,
  `stok` varchar(255) NOT NULL,
  `lokasi_penyimpanan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `kode_barang`, `nama_barang`, `spesifikasi`, `satuan`, `kategori`, `stok`, `lokasi_penyimpanan`, `created_at`, `updated_at`) VALUES
(73, 'BRG-7253', 'MAP Merah', 'Bahan: kertas karton, Warna: Merah', 'Buah', 'ATK', '60', 'Gudang ATK', '2025-06-17 03:17:20', '2025-06-17 03:17:20'),
(74, 'BRG-7254', 'MAP Kuning', 'Bahan: kertas karton, Warna: Kuning', 'Buah', 'ATK', '60', 'Gudang ATK', '2025-06-17 03:18:43', '2025-06-17 03:18:43'),
(78, 'BRG-7200', 'Bolpoin', 'warna: hitam, merk: Standar', 'Kotak', 'ATK', '20', 'Gudang ATK', '2025-06-17 04:24:47', '2025-06-17 04:26:49'),
(82, 'BRG-7222', 'Tinta Stempel', 'warna: hitam', 'Botol', 'ATK', '25', 'Gudang ATK', '2025-06-17 04:38:34', '2025-06-17 04:40:13'),
(83, 'BRG-7525', 'Kertas HVS A4', 'warna: putih, ukuran : A4, merk:sidu', 'Ream', 'ATK', '20', 'Gudang ATK', '2025-06-17 04:42:18', '2025-06-17 04:42:18'),
(84, 'BRG-1978', 'Laptop Lenovo ThinkPad E14', 'Intel i5, RAM 8GB, SSD 512GB, 14 inch', 'Buah', 'Laptop', '5', 'Ruang Keuangan', '2025-06-17 04:43:14', '2025-06-17 04:43:14'),
(86, 'BRG-1977', 'kajajajss', 'jajajaj', 'jajaja', 'jajajaja', '100', 'jajaja', '2025-06-23 20:57:21', '2025-06-24 04:16:17');

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
(4, '2025_06_12_160649_create_items_table', 2),
(5, '2025_06_13_104353_create_items_table', 3),
(6, '2025_06_13_143047_create_procruments_table', 4),
(7, '2025_06_16_050324_create_distributions_table', 5),
(8, '2025_06_16_065029_create_report_items_table', 6),
(9, '2025_06_16_132228_create_requests_table', 7),
(10, '2025_06_16_140112_create_request_details_table', 8),
(11, '2025_06_16_145452_create_financial_reports_table', 9),
(12, '2025_06_16_150951_add_column_to_financial_reports_table', 10),
(13, '2025_06_16_230602_create_settings_table', 11),
(14, '2025_06_17_000253_add_columns_to_users_table', 12);

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
-- Table structure for table `procruments`
--

CREATE TABLE `procruments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomor_pengadaan` varchar(255) NOT NULL,
  `tanggal_pengadaan` varchar(255) NOT NULL,
  `suplier_name` varchar(255) NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah_barang` varchar(255) NOT NULL,
  `total_biaya` bigint(20) NOT NULL,
  `status` enum('diterima','belum diterima') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `procruments`
--

INSERT INTO `procruments` (`id`, `nomor_pengadaan`, `tanggal_pengadaan`, `suplier_name`, `item_id`, `jumlah_barang`, `total_biaya`, `status`, `created_at`, `updated_at`) VALUES
(29, '12345', '2025-06-10', 'Jaya Mas Banjarmasin', 78, '20', 200, 'diterima', '2025-06-17 04:26:20', '2025-06-17 04:26:20'),
(30, '12346', '2025-06-10', 'Jaya Mas Banjarmasin', 82, '20', 200, 'diterima', '2025-06-17 04:39:47', '2025-06-17 04:39:47'),
(31, '910191921', '2025-06-18', 'Bahlil', 86, '900', 90000, 'diterima', '2025-06-23 20:58:16', '2025-06-23 20:58:16');

-- --------------------------------------------------------

--
-- Table structure for table `report_items`
--

CREATE TABLE `report_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `stock_awal` varchar(255) NOT NULL,
  `jumlah_pemasukkan` varchar(255) NOT NULL,
  `jumlah_pengeluaran` varchar(255) NOT NULL,
  `sisa_stok` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report_items`
--

INSERT INTO `report_items` (`id`, `item_id`, `stock_awal`, `jumlah_pemasukkan`, `jumlah_pengeluaran`, `sisa_stok`, `created_at`, `updated_at`) VALUES
(22, 82, '10', '20', '5', '25', '2025-06-17 04:38:34', '2025-06-17 04:40:13'),
(23, 83, '20', '0', '0', '20', '2025-06-17 04:42:18', '2025-06-17 04:42:18'),
(24, 84, '5', '0', '0', '5', '2025-06-17 04:43:14', '2025-06-17 04:43:14'),
(26, 86, '818', '900', '0', '1718', '2025-06-23 20:57:21', '2025-06-23 20:58:16');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomor_permintaan` varchar(255) NOT NULL,
  `tanggal_permintaan` varchar(255) NOT NULL,
  `nama_pemohon` varchar(255) NOT NULL,
  `unit_kerja` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `nomor_permintaan`, `tanggal_permintaan`, `nama_pemohon`, `unit_kerja`, `status`, `created_at`, `updated_at`) VALUES
(3, '12345', '2025-06-04', 'Dina Amalia', 'TIKIM', 'Kertas HVS A4 5 rim', '2025-06-17 03:35:10', '2025-06-17 03:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `request_details`
--

CREATE TABLE `request_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `request_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('8vZEnkoC7IsvjopH8x0D7Nk753UI7jEUSQqHjNuQ', NULL, '103.16.198.9', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGFCMVdmd05pSngwZjQ1ZE9aSEt4a3dGN010T1ZUVTRkOXFMS29MRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9pbnZldGFyaXNhcHAuZ2VuZXJhLm15LmlkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1750817066),
('AzTDz7p2ojkNRjvuhfQ9ga6QNtjhopRVs8z9fBQk', NULL, '103.99.26.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia01xN1FLMHU3TWk5dUJzUUxCZUZXN3JVVmJQb2pJcVNqUG1zZ1Q4biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vaW52ZXRhcmlzYXBwLmdlbmVyYS5teS5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1750813265),
('H7NLF2VhqRHzcNltIhKX4FbPBweLf4gONgBb9FkB', NULL, '103.16.198.9', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTGlNQlRqZlNIcWgyOHhxeGwwcFVBMjVkZ2p2bzhNdzk1ekxlRVJvUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9pbnZldGFyaXNhcHAuZ2VuZXJhLm15LmlkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1750815267),
('JoQ5Th0dg9pgFP5duA6fGsSKMpQrZc9CoUOJMDWq', NULL, '103.16.198.9', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRDYzRGJNSlY1MjFEaGVzY28xTTFWdmU5UnFpUHdhNXJ0aHVaV1F0cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9pbnZldGFyaXNhcHAuZ2VuZXJhLm15LmlkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1750813457),
('jWVP5aIX2dBxpyG19mS7qzM4XL3Ju81sIVR4n925', 1, '114.79.44.205', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYnRiVEF5NFNPMlp6S0oyMkNFMTJ3dzF4aXRuMldiZUlMM1hmNjhNaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTM6Imh0dHBzOi8vaW52ZXRhcmlzYXBwLmdlbmVyYS5teS5pZC9sYXBvcmFuL2ludmV0YXJpc0JhcmFuZy9wcmludD9mcm9tPTIwMjUtMDYtMTcmdG89MjAyNS0wNi0yNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1750817614),
('pcgMYCxWDTh7qpBINBlQnkFuszwahjsyhemdsEIo', 1, '182.5.200.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUXdXUENMTFhHRDc3UEZKdGtmcHdjVGtkaEQyUVdOejJ1VEdtcXh1WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODg6Imh0dHBzOi8vaW52ZXRhcmlzYXBwLmdlbmVyYS5teS5pZC9sYXBvcmFuL3Blcm1pbnRhYW4vcHJpbnQ/ZnJvbT0yMDI1LTA2LTA0JnRvPTIwMjUtMDYtMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1750817826),
('ur3eC2rtvaQHkpZ8OGJDklDfobniZjEHHUiam0L0', NULL, '103.16.198.9', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTlsSXVPTklobUhnNWhCWHZGSWd6ejN1elRzZmF0SDREZkRkRVhCViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9pbnZldGFyaXNhcHAuZ2VuZXJhLm15LmlkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1750811657),
('W1vTGNtbRDnmCkFcnH2kVS4uLlOSw7TSKrkR1jQf', 1, '125.166.117.181', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidzBlNXZUQXJxWkxYOUZ3MWE5bG5oME9sQmJNWkgxVk95T21ZR2hqVSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjg4OiJodHRwczovL2ludmV0YXJpc2FwcC5nZW5lcmEubXkuaWQvbGFwb3Jhbi9wZXJtaW50YWFuL3ByaW50P2Zyb209MjAyNS0wNi0wNCZ0bz0yMDI1LTA2LTA1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1750816757);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'InventarisApp', NULL, '2025-06-19 03:13:04'),
(2, 'email', 'kanimbanjarmasin@gmail.com', '2025-06-16 16:24:34', '2025-06-16 22:08:55'),
(3, 'address', '081256559196', '2025-06-16 16:47:23', '2025-06-19 03:13:04'),
(4, 'phone', '081256559196', '2025-06-16 16:47:23', '2025-06-16 22:08:55'),
(5, 'logo', 'setting/7zQO2V6FUGDPhFmtSFTNp2G00vHFs4golBGLqS4Z.jpg', '2025-06-16 16:50:20', '2025-06-16 18:04:47'),
(6, 'favicon', 'setting/1rBy1Tmdo1iBZ2HqjQ3qaq4qjr5GriYcG20qnxto.jpg', '2025-06-16 17:54:01', '2025-06-16 18:04:47'),
(7, 'kepala', 'Muhammad Wahyuni, S.Sos', '2025-06-16 20:49:01', '2025-06-16 20:49:01'),
(8, 'nip_kepala', '197106141993031002', '2025-06-16 20:49:01', '2025-06-16 20:49:01');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`, `avatar`) VALUES
(1, 'Haryati Apri Yani', 'admin@gmail.com', NULL, '$2y$12$lA.AvNwYDqI/OJ9RaOudU.aeg8ByjmgrZj7fg8MeR6Yx7XD/uLQKm', 'KWOQ4kiUKkNjUiWv95NBEb73Pn8zPJB0rpXA8ZJXS0w7YvdiAyyGfLeF7DHh', '2025-06-12 09:15:59', '2025-06-16 22:10:39', NULL, 'avatars/po1z353UImwxJ9rZIGH3mbv4PFUStTGwAXilK2M6.jpg');

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
-- Indexes for table `distributions`
--
ALTER TABLE `distributions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `distributions_item_id_foreign` (`item_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `financial_reports`
--
ALTER TABLE `financial_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `procruments`
--
ALTER TABLE `procruments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `procruments_item_id_foreign` (`item_id`);

--
-- Indexes for table `report_items`
--
ALTER TABLE `report_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_items_item_id_foreign` (`item_id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_details`
--
ALTER TABLE `request_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_details_item_id_foreign` (`item_id`),
  ADD KEY `request_details_request_id_foreign` (`request_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
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
-- AUTO_INCREMENT for table `distributions`
--
ALTER TABLE `distributions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `financial_reports`
--
ALTER TABLE `financial_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `procruments`
--
ALTER TABLE `procruments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `report_items`
--
ALTER TABLE `report_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `request_details`
--
ALTER TABLE `request_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `distributions`
--
ALTER TABLE `distributions`
  ADD CONSTRAINT `distributions_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `procruments`
--
ALTER TABLE `procruments`
  ADD CONSTRAINT `procruments_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `report_items`
--
ALTER TABLE `report_items`
  ADD CONSTRAINT `report_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `request_details`
--
ALTER TABLE `request_details`
  ADD CONSTRAINT `request_details_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `request_details_request_id_foreign` FOREIGN KEY (`request_id`) REFERENCES `requests` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
