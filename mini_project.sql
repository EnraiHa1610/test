-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2023 at 03:09 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mini_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `cabinet_large`
--

CREATE TABLE IF NOT EXISTS `cabinet_large` (
  `item_id` int(11) NOT NULL,
  `location` varchar(255) COLLATE utf16_vietnamese_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cabinet_id` varchar(11) COLLATE utf16_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cabinet_medium`
--

CREATE TABLE IF NOT EXISTS `cabinet_medium` (
  `item_id` int(11) NOT NULL,
  `location` varchar(255) COLLATE utf16_vietnamese_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cabinet_id` varchar(11) COLLATE utf16_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cabinet_small`
--

CREATE TABLE IF NOT EXISTS `cabinet_small` (
  `item_id` int(11) NOT NULL,
  `location` varchar(255) COLLATE utf16_vietnamese_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cabinet_id` varchar(11) COLLATE utf16_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `shop_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) COLLATE utf16_vietnamese_ci DEFAULT NULL,
  `phone_numbers` int(10) DEFAULT NULL,
  `email` varchar(255) COLLATE utf16_vietnamese_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf16_vietnamese_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items_large`
--

CREATE TABLE IF NOT EXISTS `items_large` (
  `id` int(11) NOT NULL,
  `length` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf16_vietnamese_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items_medium`
--

CREATE TABLE IF NOT EXISTS `items_medium` (
  `id` int(11) NOT NULL,
  `length` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf16_vietnamese_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items_small`
--

CREATE TABLE IF NOT EXISTS `items_small` (
  `id` int(11) NOT NULL,
  `length` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf16_vietnamese_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_type`
--

CREATE TABLE IF NOT EXISTS `item_type` (
  `item_id` int(11) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE IF NOT EXISTS `shop` (
  `shop_id` int(11) NOT NULL,
  `shop_name` varchar(255) COLLATE utf16_vietnamese_ci DEFAULT NULL,
  `phone_numbers` int(10) DEFAULT NULL,
  `email` varchar(255) COLLATE utf16_vietnamese_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf16_vietnamese_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_vietnamese_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabinet_large`
--
ALTER TABLE `cabinet_large`
 ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `cabinet_medium`
--
ALTER TABLE `cabinet_medium`
 ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `cabinet_small`
--
ALTER TABLE `cabinet_small`
 ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
 ADD PRIMARY KEY (`shop_id`), ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
 ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `items_large`
--
ALTER TABLE `items_large`
 ADD PRIMARY KEY (`id`), ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `items_medium`
--
ALTER TABLE `items_medium`
 ADD PRIMARY KEY (`id`), ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `items_small`
--
ALTER TABLE `items_small`
 ADD PRIMARY KEY (`id`), ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `item_type`
--
ALTER TABLE `item_type`
 ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
 ADD PRIMARY KEY (`shop_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cabinet_large`
--
ALTER TABLE `cabinet_large`
ADD CONSTRAINT `cabinet_large_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items_large` (`id`);

--
-- Constraints for table `cabinet_medium`
--
ALTER TABLE `cabinet_medium`
ADD CONSTRAINT `cabinet_medium_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items_medium` (`id`);

--
-- Constraints for table `cabinet_small`
--
ALTER TABLE `cabinet_small`
ADD CONSTRAINT `cabinet_small_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items_small` (`id`);

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- Constraints for table `items_large`
--
ALTER TABLE `items_large`
ADD CONSTRAINT `items_large_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- Constraints for table `items_medium`
--
ALTER TABLE `items_medium`
ADD CONSTRAINT `items_medium_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- Constraints for table `items_small`
--
ALTER TABLE `items_small`
ADD CONSTRAINT `items_small_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- Constraints for table `shop`
--
ALTER TABLE `shop`
ADD CONSTRAINT `shop_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `contact` (`shop_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
