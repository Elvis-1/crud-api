-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2021 at 10:15 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud_api`
--

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middleName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `middleName`, `lastName`, `email`, `phoneNumber`, `picture_url`, `email_verified_at`, `password`, `is_disabled`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Zoey Okuneva', 'Mr. Donnell Jast', 'Liam Gottlieb', 'kuhic.melvina@example.com', 'Et qui blanditiis enim autem.', 'Minus incidunt aliquid iusto maxime.', '2021-06-26 09:50:35', 'elvis', 1, 'WtzartMgze', '2021-06-26 09:50:35', '2021-06-26 09:50:35'),
(2, 'Dr. Melisa Lebsack', 'Ivy Turner', 'Earnestine Altenwerth', 'cummerata.breana@example.org', 'Porro aspernatur incidunt voluptatibus voluptatem fugit rerum.', 'Voluptate animi nulla est dolorem.', '2021-06-26 09:50:35', 'elvis', 0, 'D2K8zh5Lrl', '2021-06-26 09:50:36', '2021-06-26 09:50:36'),
(3, 'Helga Pollich', 'Ms. Janis Larkin III', 'Dr. Fermin Hudson MD', 'jerrell27@example.com', 'Nulla totam et possimus.', 'Autem qui optio corrupti ex error.', '2021-06-26 09:50:35', 'elvis', 1, 'xCKP2MUKNE', '2021-06-26 09:50:36', '2021-06-26 09:50:36'),
(4, 'Frederique Funk', 'Katheryn Tremblay V', 'Isom O\'Reilly Sr.', 'hturner@example.org', 'Repellat accusantium odit et sed est.', 'Deleniti aliquid recusandae et.', '2021-06-26 09:50:35', 'elvis', 1, '90GmisdW8T', '2021-06-26 09:50:36', '2021-06-26 09:50:36'),
(5, 'Mr. Timmy Reichert Jr.', 'Dr. Walter Jaskolski', 'Celestino McCullough', 'frederique51@example.org', 'Voluptatum ut et accusantium ut.', 'Et autem cum doloribus inventore dignissimos rerum eveniet.', '2021-06-26 09:50:35', 'elvis', 0, 'qfi6cqr5Vg', '2021-06-26 09:50:36', '2021-06-26 09:50:36'),
(6, 'Unique Kuvalis I', 'Ike Reichel', 'Magali Miller', 'smith.marc@example.org', 'Qui temporibus recusandae est eos.', 'Numquam quia nobis dicta aut nemo veniam eos.', '2021-06-26 09:50:35', 'elvis', 0, 'EXIft3emGw', '2021-06-26 09:50:36', '2021-06-26 09:50:36'),
(7, 'Lucio Pfeffer', 'Mr. Niko Mosciski DDS', 'Ephraim Heller', 'junior36@example.org', 'Adipisci distinctio ipsam repudiandae qui nostrum.', 'Dicta facilis ab at quas aliquam.', '2021-06-26 09:50:35', 'elvis', 1, 'gGSPofOISE', '2021-06-26 09:50:36', '2021-06-26 09:50:36'),
(8, 'Susan Hartmann', 'Prof. Haylie Keeling DDS', 'Alta Quitzon', 'istokes@example.org', 'Quis odio facere quaerat beatae dolorum quo delectus.', 'Possimus nemo dolorem voluptatibus a non non.', '2021-06-26 09:50:35', 'elvis', 1, 'tGcKQPL5D9', '2021-06-26 09:50:36', '2021-06-26 09:50:36'),
(9, 'Reagan Lemke', 'Richmond Deckow', 'Mrs. Nayeli Price V', 'hessel.manley@example.net', 'Ipsum reprehenderit quos laborum eaque aut.', 'Ea culpa vero voluptatem dolorum sapiente.', '2021-06-26 09:50:35', 'elvis', 0, 'XmnGtZGUsW', '2021-06-26 09:50:36', '2021-06-26 09:50:36'),
(10, 'Davon Romaguera', 'Ken Beier III', 'Krystina Conroy', 'alexzander.barrows@example.org', 'Natus earum quia sed aut.', 'Est aut molestiae sint quae quaerat perspiciatis iste.', '2021-06-26 09:50:35', 'elvis', 1, 'nYFODHkoFp', '2021-06-26 09:50:36', '2021-06-26 09:50:36');

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
