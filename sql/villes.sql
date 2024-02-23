-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2024 at 02:46 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_tp1`
--

-- --------------------------------------------------------

--
-- Table structure for table `villes`
--

CREATE TABLE `villes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `villes`
--

INSERT INTO `villes` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'rem', '2024-02-13 22:52:19', '2024-02-13 22:52:19'),
(2, 'praesentium', '2024-02-13 22:52:19', '2024-02-13 22:52:19'),
(3, 'maxime', '2024-02-13 22:52:19', '2024-02-13 22:52:19'),
(4, 'consectetur', '2024-02-13 22:52:19', '2024-02-13 22:52:19'),
(5, 'qui', '2024-02-13 22:52:19', '2024-02-13 22:52:19'),
(6, 'quas', '2024-02-13 22:52:19', '2024-02-13 22:52:19'),
(7, 'aspernatur', '2024-02-13 22:52:19', '2024-02-13 22:52:19'),
(8, 'optio', '2024-02-13 22:52:19', '2024-02-13 22:52:19'),
(9, 'aperiam', '2024-02-13 22:52:19', '2024-02-13 22:52:19'),
(10, 'qui', '2024-02-13 22:52:19', '2024-02-13 22:52:19'),
(11, 'nihil', '2024-02-13 22:52:19', '2024-02-13 22:52:19'),
(12, 'tenetur', '2024-02-13 22:52:19', '2024-02-13 22:52:19'),
(13, 'distinctio', '2024-02-13 22:52:19', '2024-02-13 22:52:19'),
(14, 'consequatur', '2024-02-13 22:52:19', '2024-02-13 22:52:19'),
(15, 'sunt', '2024-02-13 22:52:19', '2024-02-13 22:52:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
