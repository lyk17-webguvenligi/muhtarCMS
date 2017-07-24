-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 24, 2017 at 04:48 PM
-- Server version: 5.7.18-0ubuntu0.16.04.1
-- PHP Version: 7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `muhtarCMS`
--

-- --------------------------------------------------------

--
-- Table structure for table `actions`
--

CREATE TABLE `actions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `price` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(31) NOT NULL,
  `password` varchar(32) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `isAdmin`) VALUES
(1, 'ademcoskuner', '1a1039acd0def8f330f175e0a156e519', 0),
(2, 'alperenbozkurt', 'e10adc3949ba59abbe56e057f20f883e', 0),
(3, 'baranozoglu', '197203341a38d4031ebbbdaf62cf6b87', 0),
(4, 'rasitekrem', 'd2dc95797af8d10cf1f70823a6d6f19a', 0),
(5, 'fatmakaraca', '81dc9bdb52d04dc20036dbd8313ed055', 0),
(6, 'seckinbaytekin', '8287458823facb8ff918dbfabcd22ccb', 0),
(7, 'zerhatseyren', '4abf861b52a08f26d52ea983646c3a25', 0),
(10, 'hatice', 'e10adc3949ba59abbe56e057f20f883e', 1),
(13, 'leylim', 'eda518d8cb91a051bb9e25000c83ea74', 0),
(16, 'eraycam', '5583413443164b56500def9a533c7c70', 0),
(17, 'erenkara', '396b4dd18e5c993a069e0c3a759580bf', 0),
(18, 'hasan', 'e10adc3949ba59abbe56e057f20f883e', 0),
(21, 'fatihacikel', 'dca7d5f6f3e5d67bcb2df8dd9cb98b0f', 0),
(22, 'ayberkkara', 'e10adc3949ba59abbe56e057f20f883e', 0),
(23, 'caglaror', '1257af6af32f469a1a016e19f621f4e1', 0),
(24, 'fatihint', 'a57bf2e95c5b0de4d46e6e57c6391a2a', 0),
(27, 'serhat', '4aa6d74604cad605ccb43b94aa5a7b94', 0),
(28, 'zekvan', 'c4ca4238a0b923820dcc509a6f75849b', 0),
(29, 'serenporsuk', '5583413443164b56500def9a533c7c70', 0),
(30, 'elifeyvaz', 'abc5228f2c42b227e874dc6027506929', 0),
(31, 'celalfarukercengiz', '2a02d0c1dbe9620db5c518ea32006711', 0),
(33, 'omercitak', 'e10adc3949ba59abbe56e057f20f883e', 1),
(34, 'muratyilmazlar', 'e10adc3949ba59abbe56e057f20f883e', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_2` (`username`),
  ADD KEY `id` (`id`),
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actions`
--
ALTER TABLE `actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
