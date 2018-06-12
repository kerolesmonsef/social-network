-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2018 at 12:47 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `friend_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `created_at`, `updated_at`, `friend_id`, `user_id`) VALUES
(1, '2018-04-13 22:46:48', '2018-04-13 22:46:48', 2, 1),
(5, NULL, NULL, 31, 32),
(52, '2018-04-17 23:22:09', '2018-04-17 23:22:09', 1, 33),
(82, '2018-04-26 11:50:00', '2018-04-26 11:50:00', 33, 31),
(83, '2018-04-26 11:50:00', '2018-04-26 11:50:00', 31, 33),
(84, '2018-05-08 14:44:15', '2018-05-08 14:44:15', 1, 3),
(85, '2018-05-08 14:44:15', '2018-05-08 14:44:15', 3, 1),
(88, '2018-06-12 13:20:55', '2018-06-12 13:20:55', 3, 31),
(89, '2018-06-12 13:20:55', '2018-06-12 13:20:55', 31, 3);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `like_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2018_04_12_003140_create_users_table', 1),
('2018_04_12_170001_create_posts_table', 1),
('2018_04_13_234052_create_friends_table', 1),
('2018_05_08_214529_create_likes_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `body`, `user_id`) VALUES
(6, '2018-04-17 15:48:04', '2018-04-17 15:48:04', 'this is an other post from keroles monsef asad 33', 33),
(7, '2018-04-17 15:53:59', '2018-04-17 15:53:59', 'this for koko 1', 1),
(8, '2018-04-17 15:54:30', '2018-04-17 15:54:30', 'this is another post for 3', 3),
(9, NULL, NULL, 'this is post fro 2', 2),
(10, NULL, NULL, 'this is fro fkjfb 2', 2),
(59, '2018-06-12 11:18:44', '2018-06-12 11:18:44', 'ppp', 31),
(66, '2018-06-12 12:42:37', '2018-06-12 12:42:37', 'kokok', 31),
(67, '2018-06-12 12:42:46', '2018-06-12 12:42:46', ';;;ll;;ll;l;', 31),
(68, '2018-06-12 12:44:06', '2018-06-12 12:44:06', 'tests', 31),
(69, '2018-06-12 13:18:26', '2018-06-12 13:18:26', 'sss', 31);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `created_at`, `updated_at`, `name`, `email`, `password`) VALUES
(1, NULL, NULL, 'kero', 'koko@koko.koko', '123'),
(2, NULL, NULL, 'kkkkkkkkkkkkkkk', 'jkjh@jh.lkj', '123'),
(3, NULL, NULL, 'loolo', 'kkkk@gmail.com', '123'),
(31, '2018-04-16 17:05:37', '2018-04-16 17:05:37', 'kero', 'kerolesmonsef@gmail.com', '123'),
(32, '2018-04-17 21:29:26', '2018-04-17 21:29:26', 'koko', 'kero@gmail.com', '123'),
(33, '2018-04-17 21:30:02', '2018-04-17 21:30:02', 'keorlr', 'koko@gmail.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `friends_user_id_foreign` (`user_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `friends`
--
ALTER TABLE `friends`
  ADD CONSTRAINT `friends_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
