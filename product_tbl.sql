-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2021 at 02:19 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pb_search_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_tbl`
--

CREATE TABLE `product_tbl` (
  `id` int(11) NOT NULL COMMENT 'product id',
  `p_name` varchar(100) DEFAULT NULL COMMENT 'product name',
  `p_img_src` varchar(500) DEFAULT NULL COMMENT 'product image source or path',
  `p_incentive` varchar(50) DEFAULT NULL COMMENT 'product incentive',
  `p_url` varchar(200) DEFAULT NULL COMMENT 'Product url',
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_tbl`
--

INSERT INTO `product_tbl` (`id`, `p_name`, `p_img_src`, `p_incentive`, `p_url`, `created_date`, `updated_date`) VALUES
(1, 'Calumet Photographic', 'https://www.payback.de/res/mam/1/calumet/43/0/1/calumet.png', '1  °P pro 2 €', 'https://www.payback.de/shop/calumetphotographic', '2021-12-10 08:40:24', NULL),
(2, 'smartphoto', 'https://www.payback.de/res/mam/1/smartphoto_fs/43/0/1/smartphoto_fs.png', '1  °P pro 2 €', 'https://www.payback.de/res/mam/1/smartphoto_fs/43/0/1/smartphoto_fs.png', '2021-12-10 08:42:37', NULL),
(3, 'ABOUT YOU', 'https://www.payback.de/res/mam/1/aboutyou_fs/43/0/1/aboutyou_fs.png', '1  °P pro 2 €', 'https://www.payback.de/shop/aboutyou', '2021-12-10 08:54:26', NULL),
(4, 'Babista', 'https://www.payback.de/res/mam/1/babista/43/0/1/babista.png', '1  °P pro 2 €', 'https://www.payback.de/shop/babista', '2021-12-10 08:54:26', NULL),
(5, 'Baby Sweets', 'https://www.payback.de/res/mam/1/lp702942/43/0/1/lp702942.png', '1  °P pro 2 €', 'https://www.payback.de/shop/baby-sweets', '2021-12-10 08:54:26', NULL),
(6, 'baby-walz', 'https://www.payback.de/res/mam/1/baby_walz/43/0/1/baby_walz.png', '1  °P pro 2 €', 'https://www.payback.de/shop/babywalz', '2021-12-10 08:58:28', NULL),
(7, 'Kabelmeister', 'https://www.payback.de/res/mam/1/kabelmeister/43/0/1/kabelmeister.png', '1  °P pro 2 €', 'https://www.payback.de/shop/kabelmeister', '2021-12-10 08:58:28', NULL),
(8, 'tecedo', 'https://www.payback.de/res/mam/1/tecedo/43/0/1/tecedo.png', '1  °P pro 2 €', 'https://www.payback.de/shop/tecedo', '2021-12-10 08:58:28', NULL),
(9, 'Ted Baker', 'https://www.payback.de/res/mam/1/lp665311/43/0/1/lp665311.png', '1  °P pro 2 €', 'https://www.payback.de/shop/tedbaker', '2021-12-10 09:05:23', NULL),
(10, 'Tee Gschwendner', 'https://www.payback.de/res/mam/1/tee-gschwendner/43/0/1/tee-gschwendner.png', '1  °P pro 1 €', 'https://www.payback.de/shop/tee-gschwendner', '2021-12-10 09:05:23', NULL),
(11, 'Tennis-Point', 'https://www.payback.de/res/mam/1/tennis_point_1/43/0/1/tennis_point_1.png', '1  °P pro 2 €', 'https://www.payback.de/shop/tennispoint', '2021-12-10 09:05:23', NULL),
(12, 'Terra Canis', 'https://www.payback.de/res/mam/1/terra_canis/43/0/1/terra_canis.png', '1  °P pro 2 €', 'https://www.payback.de/shop/terracanis', '2021-12-10 09:05:23', NULL),
(13, 'Thalia', 'https://www.payback.de/res/mam/1/thalia_de/43/0/1/thalia_de.png', '1  °P pro 2 €', 'https://www.payback.de/shop/thalia', '2021-12-10 09:05:23', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_tbl`
--
ALTER TABLE `product_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_tbl`
--
ALTER TABLE `product_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'product id', AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
