-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2024 at 04:30 PM
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
-- Database: `auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'default-pp.png',
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `title`, `details`, `type`, `image`, `date`) VALUES
(1, 'testing ', '            asdasdasd', 'cleaning', 'IMG-6735aaa9d05356.34639531.jpg', '2024-11-12'),
(2, 'heelo', '            sfsdsfsdfdsfsdfds', 'cleaning', 'IMG-6735cd3a38e409.95626043.jpg', '2024-11-14'),
(3, 'dasdasd', '            dasdasdasd', 'cleaning', 'IMG-6735eb7e8ed2f4.88553297.jpg', '2024-11-13'),
(4, 'dfdasd', '            dasdadsad', 'electrical-hazard', 'IMG-6735f059a1b401.18178032.jpg', '2024-11-14'),
(5, 'dsadas', '            dasdads', 'repair', 'IMG-6736047a555766.77161466.jpg', '2024-11-20'),
(6, 'testt', '            asdasdasd', 'it-maintenance', 'IMG-67360925795ed1.93313254.jpg', '2024-11-14'),
(7, 'dasd', '            saddads', 'cleaning', 'IMG-67360f0e7ba842.18628528.jpg', '2024-11-13'),
(8, 'hi', 'baket ganon', 'request', 'IMG-67360fffc30c10.36980751.jpg', '2024-11-14'),
(9, 'sana gumana na po', '            huu', 'caution', 'IMG-6736119024d233.15270611.png', '2024-11-14'),
(10, 'sana gumana na po', 'huu', 'caution', 'IMG-6736120944d962.70215933.png', '2024-11-14'),
(11, 'je', '            je', 'caution', 'IMG-673612394b8c53.96326130.jpg', '2024-11-14'),
(12, 'hi', '            hi', 'electrical-hazard', 'IMG-6736131f5aff68.04084230.jpg', '2024-11-14'),
(13, 'hiiii', '            jeeeee', 'caution', 'IMG-6736144de74db1.46162585.jpg', '2024-11-14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `email`, `password`) VALUES
(1, 'hi', 'hello', '$2y$10$sHpcSZd5RPW3oud6euulMueObXCFBKmmFQ54c1n/womZg4kYfkyYe'),
(2, 'jhewen shene', 'wenji', '$2y$10$YtjMm6iCU7IT6CKxLLgdDOTlwnS3xROoVXFPzIpyVh3A4Tjh6ufcK'),
(3, 'test', 'test@gmail.com', '$2y$10$CzmnG/oegkuqR6jL8tSQ/O5Ynyct8ZV70DeE1uCTnPhMqffQMtZ9G');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
