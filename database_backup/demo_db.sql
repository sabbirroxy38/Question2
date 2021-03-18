-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 18, 2021 at 06:17 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `boards`
--

CREATE TABLE `boards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `board_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `boards`
--

INSERT INTO `boards` (`id`, `board_name`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', '2021-03-18 11:07:58', '2021-03-18 11:07:58'),
(2, 'Rajshahi', '2021-03-18 11:07:58', '2021-03-18 11:07:58'),
(3, 'Comilla', '2021-03-18 11:07:58', '2021-03-18 11:07:58'),
(4, 'Jessore', '2021-03-18 11:07:58', '2021-03-18 11:07:58'),
(5, 'Chittagong', '2021-03-18 11:07:58', '2021-03-18 11:07:58'),
(6, 'Barisal', '2021-03-18 11:07:58', '2021-03-18 11:07:58'),
(7, 'Sylhet', '2021-03-18 11:07:58', '2021-03-18 11:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `high_secondary_exams`
--

CREATE TABLE `high_secondary_exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `h_examination_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `high_secondary_exams`
--

INSERT INTO `high_secondary_exams` (`id`, `h_examination_name`, `created_at`, `updated_at`) VALUES
(1, 'HSC/Alim', '2021-03-18 11:07:58', '2021-03-18 11:07:58'),
(2, 'HSC(BM)', '2021-03-18 11:07:58', '2021-03-18 11:07:58'),
(3, 'HSC(Vocational)', '2021-03-18 11:07:59', '2021-03-18 11:07:59'),
(4, 'Diploma in Commerce', '2021-03-18 11:07:59', '2021-03-18 11:07:59'),
(5, 'Diploma in Business Studies', '2021-03-18 11:07:59', '2021-03-18 11:07:59');

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
(4, '2021_03_18_122445_create_programs_table', 1),
(5, '2021_03_18_125125_create_secondary_exams_table', 1),
(6, '2021_03_18_125213_create_high_secondary_exams_table', 1),
(7, '2021_03_18_125256_create_passing_years_table', 1),
(8, '2021_03_18_125327_create_boards_table', 1),
(9, '2021_03_18_145620_create_student_infos_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `passing_years`
--

CREATE TABLE `passing_years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `passing_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `passing_years`
--

INSERT INTO `passing_years` (`id`, `passing_year`, `created_at`, `updated_at`) VALUES
(1, '2014', '2021-03-18 11:07:59', '2021-03-18 11:07:59'),
(2, '2015', '2021-03-18 11:07:59', '2021-03-18 11:07:59'),
(3, '2016', '2021-03-18 11:07:59', '2021-03-18 11:07:59'),
(4, '2017', '2021-03-18 11:07:59', '2021-03-18 11:07:59'),
(5, '2018', '2021-03-18 11:07:59', '2021-03-18 11:07:59'),
(6, '2019', '2021-03-18 11:07:59', '2021-03-18 11:07:59'),
(7, '2020', '2021-03-18 11:07:59', '2021-03-18 11:07:59'),
(8, '2021', '2021-03-18 11:07:59', '2021-03-18 11:07:59');

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
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `program_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `program_name`, `created_at`, `updated_at`) VALUES
(1, 'Bachelor of Architecture(B.Arch)', '2021-03-18 11:07:58', '2021-03-18 11:07:58'),
(2, 'BSc in Electrical & Electronic Engineering (EEE)', '2021-03-18 11:07:58', '2021-03-18 11:07:58'),
(3, 'Bachelor of Pharmacy (B.Pharm) (Hons.)', '2021-03-18 11:07:58', '2021-03-18 11:07:58'),
(4, 'Master of Pharmacy (M.Pharm)', '2021-03-18 11:07:58', '2021-03-18 11:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `secondary_exams`
--

CREATE TABLE `secondary_exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_examination_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `secondary_exams`
--

INSERT INTO `secondary_exams` (`id`, `s_examination_name`, `created_at`, `updated_at`) VALUES
(1, 'JSC/JDC', '2021-03-18 11:07:59', '2021-03-18 11:07:59'),
(2, 'SSC/Dakhil', '2021-03-18 11:07:59', '2021-03-18 11:07:59'),
(3, 'SSC(Vocational)', '2021-03-18 11:07:59', '2021-03-18 11:07:59');

-- --------------------------------------------------------

--
-- Table structure for table `student_infos`
--

CREATE TABLE `student_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `students_full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referrer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_contact_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_contact_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_nid_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `examination_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roll_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registration_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passing_year_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `board_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gpa_grade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `h_examination_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `h_roll_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `h_registration_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `h_passing_year_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `h_board_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cgpa_grade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sabbir', 'sabbir@gmail.com', NULL, '$2y$10$v.5ik63yGXs5t5GCbn6JQ.f5FzTGpTpqpsefjlGVLrDBTpl4mMMiW', '5H0sbdFPcYiyJ7NXP7esRjWSvdwwYlCAEb24EJkHVNALebMVXDE7OUn5c9OP', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boards`
--
ALTER TABLE `boards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `high_secondary_exams`
--
ALTER TABLE `high_secondary_exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passing_years`
--
ALTER TABLE `passing_years`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secondary_exams`
--
ALTER TABLE `secondary_exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_infos`
--
ALTER TABLE `student_infos`
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
-- AUTO_INCREMENT for table `boards`
--
ALTER TABLE `boards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `high_secondary_exams`
--
ALTER TABLE `high_secondary_exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `passing_years`
--
ALTER TABLE `passing_years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `secondary_exams`
--
ALTER TABLE `secondary_exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_infos`
--
ALTER TABLE `student_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
