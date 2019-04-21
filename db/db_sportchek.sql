-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 21, 2019 at 01:19 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sportchek`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE IF NOT EXISTS `tbl_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(20) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'men');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE IF NOT EXISTS `tbl_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(60) NOT NULL,
  `product_image` varchar(60) NOT NULL,
  `product_desc` varchar(250) NOT NULL,
  `product_price` varchar(15) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_image`, `product_desc`, `product_price`) VALUES
(2, 'PUMA Men\'s Sports Hoodie - Peacoat', 'menspumahoodie.png', 'The PUMA Modern Sports Pullover Hoodie is inspired by sport but is made for an on-trend lifestyle look. This graphic hoodie is perfect for pairing with sweatpants and sneakers.', '69.99'),
(3, 'Under Armour Men\'s Short Sleeve Hoodie', 'mensunderarmournosleeve.png', 'Slip on the UA x Project Rock Sleeveless Hoodie for that extra burn or as an extra layer over your favourite shirt for warming up.', '69.99'),
(4, 'Woods Men\'s Hector Crew Baseball Shirt - Peacoat', 'woodsbaseballshirt.png', 'Choose style and comfort with the Men’s Hector Crew Neck Baseball Shirt. Featuring a classic Woods graphic and 3/4 sleeve.', '40.00'),
(5, 'Nike Men\'s Breathe Graphic T Shirt', 'mensniketee.png', 'The short-sleeve silhouette of the Nike Breathe Top delivers breathable coverage with sweat-wicking fabric and a mesh back panel to help keep you cool when your route heats up.', '30.00'),
(6, 'Quiksilver Men\'s Art Tickle Tank - Aqua Splash', 'qstank.png', 'Constructed from fine ringspun combed cotton jersey, with a comfortable regular fit, and rounded out with a crew neckline. This t-shirt for men joins the line-up in the Quiksilver spring/summer tops collection.', '27.99');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_category`
--

DROP TABLE IF EXISTS `tbl_product_category`;
CREATE TABLE IF NOT EXISTS `tbl_product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` smallint(8) NOT NULL,
  `category_id` smallint(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_category`
--

INSERT INTO `tbl_product_category` (`id`, `product_id`, `category_id`) VALUES
(1, 2, 1),
(2, 3, 1),
(6, 5, 1),
(5, 4, 1),
(7, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(25) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_pass` varchar(30) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`) VALUES
(1, 'John', 'test', '123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
