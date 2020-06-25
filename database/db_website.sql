-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2020 at 07:29 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`id`, `title`, `details`, `created_at`, `updated_at`) VALUES
(1, 'Name', 'Michaelangelo V. Mamaclay', '2020-06-22 15:18:50', '2020-06-22 17:21:30'),
(2, 'Birthday', 'August 30, 1999', '2020-06-22 15:19:00', '2020-06-22 15:19:00'),
(3, 'Job', '-', '2020-06-22 15:19:07', '2020-06-22 15:19:07'),
(4, 'Email', 'mamaclaymichael20@gmail.com', '2020-06-22 15:19:14', '2020-06-22 15:19:14'),
(5, 'Degree', 'BSIT', '2020-06-22 15:19:25', '2020-06-22 15:19:25'),
(6, 'About me', 'My name is Michaelangelo V. Mamaclay and I\'m a Fresh Graduate of BSIT.\r\nI\'m on a adventure to be a Web Developer and also I\'m a Freelancer after I graduate because I want to have a experience to be a web developer even though I don\'t even have a job.\r\n<br><br>\r\nI think my biggest accomplishment as a Freelancer is that I contributed to the community because the IS I developed is about a city or tourist spot for entertainment ( ex. Balungao, Pangasinan ).\r\n<br><br>\r\nWhen I do coding, I\'m passionate about it because I love to develop and solve business problems.\r\n<br><br>\r\nMy hobbies are watching anime, playing games like Minecraft but I know how to manage my time so that it won\'t be wasted.', '2020-06-22 15:33:18', '2020-06-22 15:33:18'),
(9, 'Contact', '0939-281-3872', '2020-06-22 19:53:27', '2020-06-22 19:53:27'),
(10, 'Facebook', 'https://web.facebook.com/xxmichael20xx/ || Michael Mamaclay', '2020-06-22 19:54:31', '2020-06-22 19:54:31');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `ip`, `platform`, `browser`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Windows 10', 'Chrome 83.0.4103', '2020-06-22 20:17:49', '2020-06-22 20:17:49'),
(3, '127.0.0.1', 'Windows 10', 'Chrome 83.0.4103', '2020-06-22 20:29:47', '2020-06-22 20:29:47'),
(4, '127.0.0.1', 'Windows 10', 'Chrome 83.0.4103', '2020-06-22 20:30:00', '2020-06-22 20:30:00'),
(5, '127.0.0.1', 'Windows 10', 'Chrome 83.0.4103', '2020-06-22 20:38:19', '2020-06-22 20:38:19'),
(6, '127.0.0.1', 'Windows 10', 'Chrome 83.0.4103', '2020-06-22 20:38:34', '2020-06-22 20:38:34'),
(7, '127.0.0.1', 'Windows 10', 'Chrome 83.0.4103', '2020-06-22 20:39:37', '2020-06-22 20:39:37'),
(8, '127.0.0.1', 'Windows 10', 'Chrome 83.0.4103', '2020-06-22 20:39:50', '2020-06-22 20:39:50'),
(9, '127.0.0.1', 'Windows 10', 'Chrome 83.0.4103', '2020-06-22 20:40:17', '2020-06-22 20:40:17'),
(10, '127.0.0.1', 'Windows 10', 'Chrome 83.0.4103', '2020-06-22 20:40:58', '2020-06-22 20:40:58'),
(11, '127.0.0.1', 'Windows 10', 'Chrome 83.0.4103', '2020-06-22 20:45:01', '2020-06-22 20:45:01'),
(12, '127.0.0.1', 'Windows 10', 'Chrome 83.0.4103', '2020-06-22 20:45:16', '2020-06-22 20:45:16'),
(13, '127.0.0.1', 'Windows 10', 'Chrome 83.0.4103', '2020-06-22 20:46:32', '2020-06-22 20:46:32'),
(14, '127.0.0.1', 'Windows 10', 'Chrome 83.0.4103', '2020-06-22 20:47:42', '2020-06-22 20:47:42'),
(15, '127.0.0.1', 'Windows 10', 'Chrome 83.0.4103', '2020-06-22 20:47:56', '2020-06-22 20:47:56'),
(16, '127.0.0.1', 'Windows 10', 'Chrome 83.0.4103', '2020-06-22 20:49:51', '2020-06-22 20:49:51'),
(17, '127.0.0.1', 'Windows 10', 'Chrome 83.0.4103', '2020-06-22 20:50:40', '2020-06-22 20:50:40'),
(18, '127.0.0.1', 'Windows 10', 'Chrome 83.0.4103', '2020-06-22 20:51:39', '2020-06-22 20:51:39'),
(19, '127.0.0.1', 'Windows 10', 'Chrome 83.0.4103', '2020-06-22 20:51:56', '2020-06-22 20:51:56'),
(20, '127.0.0.1', 'Windows 10', 'Chrome 83.0.4103', '2020-06-22 20:52:05', '2020-06-22 20:52:05'),
(21, '127.0.0.1', 'Windows 10', 'Chrome 83.0.4103', '2020-06-22 20:52:26', '2020-06-22 20:52:26'),
(22, '127.0.0.1', 'Windows 10', 'Chrome 83.0.4103', '2020-06-22 20:54:04', '2020-06-22 20:54:04'),
(23, '127.0.0.1', 'Windows 10', 'Chrome 83.0.4103', '2020-06-22 20:54:24', '2020-06-22 20:54:24'),
(24, '127.0.0.1', 'Windows 10', 'Chrome 83.0.4103', '2020-06-22 20:55:13', '2020-06-22 20:55:13');

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
(2, '2020_06_19_070437_create_projects_table', 2),
(3, '2020_06_19_070542_create_project_details_table', 2),
(4, '2020_06_19_082922_add_soft_delete_to_projects', 3),
(5, '2020_06_20_222529_add_soft_delete_to_project_details', 4),
(6, '2020_06_22_212807_create_cms_table', 5),
(7, '2020_06_22_234914_create_skills_table', 6),
(8, '2020_06_23_041412_create_logs_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'CIMS', 'Content Information Management System for Asingan, Pangasinan. Which this system manages the barangays reports like Blotter, Summons, Certificates etc.', '2020-06-22 19:11:35', '2020-06-22 19:11:35', NULL),
(2, 'Balunga Tour & Travel', 'Is a IS for Balungao Pangasinan which it\'s content is all about the entertainment of the place. It shows different pictures of each tourist spots like Dragon Fruit Farm, Hot Spring, Zipline and more.', '2020-06-22 19:15:47', '2020-06-22 19:15:47', NULL),
(3, 'Registrar Information System', 'Is a system for my Alma Mater which manages the electronic documents of each students. The students can set appointments for the staff and has a feature to notify specified users.', '2020-06-22 19:18:18', '2020-06-22 19:18:18', NULL),
(4, 'Olla Web Portal', 'A system for a certain school which has a function to compute & display students grades and balances.', '2020-06-22 19:20:25', '2020-06-22 19:20:25', NULL),
(5, 'Ilocandia Micro Finance Lending System', 'Is a system for a small Lending Business in Manaoag, Pangasinan. \n<br><br>\nThis system can accept online loan request and can be approved through online too.', '2020-06-22 19:23:12', '2020-06-22 19:25:39', NULL),
(6, 'OJT Tracking System', 'Is a system for my Alma Mater\'s OJT, this system manages the files of OJT students of the university. The system can also notify OJT students for events and announcements.\n<br><br>\nThe system has a feature to track the location of the student based on their login location which the mobile app manages.', '2020-06-22 19:32:39', '2020-06-22 19:32:39', NULL),
(7, 'E-Book System', 'Electronic Book System is a system for my Alma Mater which manages electronic books for each colleges like BST, Education, Engineering etc.\n<br><br>\nThe system can also generate report for the most read book.', '2020-06-22 19:35:01', '2020-06-22 19:35:01', NULL),
(8, 'Agriculture Information System', 'Is a system for the city ( Urdaneta City, Pangasinan ) which manages the agriculture matters like the census of animals per barangay.\n<br><br>\nThe system also has a function to accept appointments for vaccination for a certain animal and can also notify the person for their animals vaccination.', '2020-06-22 19:37:06', '2020-06-22 19:37:06', NULL),
(9, 'QIS', 'Quest Info System is a system for the Questphil Diagnostics which its functions are for the business model itself.', '2020-06-22 19:41:10', '2020-06-22 19:41:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_details`
--

CREATE TABLE `project_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_details`
--

INSERT INTO `project_details` (`id`, `project_id`, `category`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, 'Front-End', 'HTML5', '2020-06-22 19:11:36', '2020-06-22 19:11:36'),
(2, 1, 'Front-End', 'Bootstrap 4', '2020-06-22 19:11:37', '2020-06-22 19:15:59'),
(3, 1, 'Front-End', 'JavaScript', '2020-06-22 19:11:37', '2020-06-22 19:11:37'),
(4, 1, 'Front-End', 'JQuery', '2020-06-22 19:11:37', '2020-06-22 19:11:37'),
(5, 1, 'Back-End', 'Laravel', '2020-06-22 19:11:37', '2020-06-22 19:11:37'),
(6, 1, 'Back-End', 'MySQL', '2020-06-22 19:11:37', '2020-06-22 19:11:37'),
(7, 2, 'Front-End', 'HTML5', '2020-06-22 19:15:48', '2020-06-22 19:15:48'),
(8, 2, 'Front-End', 'Bootstrap 4', '2020-06-22 19:15:48', '2020-06-22 19:15:48'),
(9, 2, 'Front-End', 'JavaScript', '2020-06-22 19:15:49', '2020-06-22 19:15:49'),
(10, 2, 'Front-End', 'JQuery', '2020-06-22 19:15:49', '2020-06-22 19:15:49'),
(11, 2, 'Back-End', 'PHP', '2020-06-22 19:15:49', '2020-06-22 19:15:49'),
(12, 2, 'Back-End', 'MySQL', '2020-06-22 19:15:49', '2020-06-22 19:15:49'),
(13, 3, 'Front-End', 'HTML5', '2020-06-22 19:18:19', '2020-06-22 19:18:19'),
(14, 3, 'Front-End', 'Bootstrap 4', '2020-06-22 19:18:19', '2020-06-22 19:18:19'),
(15, 3, 'Front-End', 'JavaScript', '2020-06-22 19:18:20', '2020-06-22 19:18:20'),
(16, 3, 'Front-End', 'JQuery', '2020-06-22 19:18:20', '2020-06-22 19:18:20'),
(17, 3, 'Back-End', 'PHP', '2020-06-22 19:18:20', '2020-06-22 19:18:20'),
(18, 3, 'Back-End', 'iTextMo ( for SMS notification )', '2020-06-22 19:18:20', '2020-06-22 19:18:20'),
(19, 3, 'Back-End', 'MySQL ( as database )', '2020-06-22 19:18:20', '2020-06-22 19:18:20'),
(20, 1, 'Back-End', 'iTextMo ( for SMS notification )', '2020-06-22 19:18:48', '2020-06-22 19:19:04'),
(21, 4, 'Front-End', 'HTML5', '2020-06-22 19:20:27', '2020-06-22 19:20:27'),
(22, 4, 'Front-End', 'Bootstrap 4', '2020-06-22 19:20:27', '2020-06-22 19:20:27'),
(23, 4, 'Front-End', 'JavaScript', '2020-06-22 19:20:27', '2020-06-22 19:20:27'),
(24, 4, 'Front-End', 'JQuery', '2020-06-22 19:20:27', '2020-06-22 19:20:27'),
(25, 4, 'Back-End', 'PHP', '2020-06-22 19:20:28', '2020-06-22 19:20:28'),
(26, 4, 'Back-End', 'MySQL ( for SMS notification )', '2020-06-22 19:20:28', '2020-06-22 19:20:28'),
(27, 2, 'Front-End', 'Google Map API ( for spots location )', '2020-06-22 19:21:04', '2020-06-22 19:21:04'),
(28, 5, 'Front-End', 'HTML5', '2020-06-22 19:23:14', '2020-06-22 19:23:14'),
(29, 5, 'Front-End', 'Bootstrap 4', '2020-06-22 19:23:14', '2020-06-22 19:23:14'),
(30, 5, 'Front-End', 'JavaScript', '2020-06-22 19:23:14', '2020-06-22 19:23:14'),
(31, 5, 'Front-End', 'JQuery', '2020-06-22 19:23:14', '2020-06-22 19:23:14'),
(32, 5, 'Back-End', 'Laravel', '2020-06-22 19:23:14', '2020-06-22 19:23:14'),
(33, 5, 'Back-End', 'MySQL ( as database )', '2020-06-22 19:23:14', '2020-06-22 19:23:14'),
(34, 5, 'Back-End', 'iTextMe ( for SMS notification )', '2020-06-22 19:23:14', '2020-06-22 19:23:14'),
(35, 6, 'Front-End', 'HTML5', '2020-06-22 19:32:41', '2020-06-22 19:32:41'),
(36, 6, 'Front-End', 'Bootstrap 4', '2020-06-22 19:32:41', '2020-06-22 19:32:41'),
(37, 6, 'Front-End', 'JavaScript', '2020-06-22 19:32:41', '2020-06-22 19:32:41'),
(38, 6, 'Front-End', 'JQuery', '2020-06-22 19:32:41', '2020-06-22 19:32:41'),
(39, 6, 'Front-End', 'Android 3.1', '2020-06-22 19:32:41', '2020-06-22 19:32:41'),
(40, 6, 'Back-End', 'Laravel', '2020-06-22 19:32:42', '2020-06-22 19:32:42'),
(41, 6, 'Back-End', 'MySQL ( as database )', '2020-06-22 19:32:42', '2020-06-22 19:32:42'),
(42, 6, 'Back-End', 'iTextMo ( for SMS notification )', '2020-06-22 19:32:42', '2020-06-22 19:32:42'),
(43, 6, 'Back-End', 'Google Map API ( for login location tracking )', '2020-06-22 19:32:42', '2020-06-22 19:32:42'),
(44, 7, 'Front-End', 'HTML5', '2020-06-22 19:35:02', '2020-06-22 19:35:02'),
(45, 7, 'Front-End', 'Bootstrap 4', '2020-06-22 19:35:03', '2020-06-22 19:35:03'),
(46, 7, 'Front-End', 'JavaScript', '2020-06-22 19:35:03', '2020-06-22 19:35:03'),
(47, 7, 'Front-End', 'JQuery', '2020-06-22 19:35:03', '2020-06-22 19:35:03'),
(48, 7, 'Back-End', 'Laravel', '2020-06-22 19:35:03', '2020-06-22 19:35:03'),
(49, 7, 'Back-End', 'MySQL ( as database )', '2020-06-22 19:35:03', '2020-06-22 19:35:03'),
(50, 8, 'Front-End', 'HTML5', '2020-06-22 19:37:08', '2020-06-22 19:37:08'),
(51, 8, 'Front-End', 'Bootstrap 4', '2020-06-22 19:37:08', '2020-06-22 19:37:08'),
(52, 8, 'Front-End', 'JavaScript', '2020-06-22 19:37:08', '2020-06-22 19:37:08'),
(53, 8, 'Front-End', 'JQuery', '2020-06-22 19:37:08', '2020-06-22 19:37:08'),
(54, 8, 'Back-End', 'PHP', '2020-06-22 19:37:08', '2020-06-22 19:37:08'),
(55, 8, 'Back-End', 'MySQL ( as database )', '2020-06-22 19:37:09', '2020-06-22 19:37:09'),
(56, 8, 'Back-End', 'iTextMo ( for SMS notification )', '2020-06-22 19:37:09', '2020-06-22 19:37:09'),
(57, 9, 'Front-End', 'Angular 7', '2020-06-22 19:41:12', '2020-06-22 19:41:12'),
(58, 9, 'Front-End', 'HTML5', '2020-06-22 19:41:12', '2020-06-22 19:41:12'),
(59, 9, 'Front-End', 'Bootstrap 4', '2020-06-22 19:41:12', '2020-06-22 19:41:12'),
(60, 9, 'Front-End', 'Angular Material 7.3.7', '2020-06-22 19:41:12', '2020-06-22 19:41:12'),
(61, 9, 'Back-End', 'Spring Boot', '2020-06-22 19:41:12', '2020-06-22 19:41:12'),
(62, 9, 'Back-End', 'MySQL ( as database )', '2020-06-22 19:41:13', '2020-06-22 19:41:13');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(11) NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `category`, `title`, `count`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Front-End', 'HTML5', 90, 'bg-primary', '2020-06-22 17:44:25', '2020-06-22 18:42:30'),
(3, 'Back-End', 'PHP', 85, 'bg-success', '2020-06-22 18:01:29', '2020-06-22 18:42:38'),
(4, 'Front-End', 'Angular 9', 80, 'bg-info', '2020-06-22 18:43:01', '2020-06-22 18:43:01'),
(5, 'Back-End', 'Laravel 7', 85, 'bg-danger', '2020-06-22 18:43:27', '2020-06-22 18:43:27'),
(6, 'Front-End', 'CSS', 80, 'bg-warning', '2020-06-22 18:43:45', '2020-06-22 18:43:45'),
(7, 'Back-End', 'Spring Boot Framework', 70, 'bg-success', '2020-06-22 18:44:11', '2020-06-22 18:44:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Michaelangelo', 'mamaclaymichael20@gmail.com', '$2y$10$sey2d6kfH1fj4215zM7b3OiPqdq9P22/kPEmnFL3RSCL2MzoCY9Cy', NULL, '2020-06-18 22:11:56', '2020-06-18 22:11:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_details`
--
ALTER TABLE `project_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_details_project_id_foreign` (`project_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
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
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `project_details`
--
ALTER TABLE `project_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `project_details`
--
ALTER TABLE `project_details`
  ADD CONSTRAINT `project_details_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
