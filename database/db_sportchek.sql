-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 22, 2019 at 01:40 AM
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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'men'),
(2, 'women'),
(3, 'kids'),
(4, 'shoes'),
(5, 'gear'),
(6, 'electronics'),
(8, 'jerseys');

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
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_image`, `product_desc`, `product_price`) VALUES
(2, 'PUMA Men\'s Sports Hoodie - Peacoat', 'menspumahoodie.png', 'The PUMA Modern Sports Pullover Hoodie is inspired by sport but is made for an on-trend lifestyle look. This graphic hoodie is perfect for pairing with sweatpants and sneakers.', '69.99'),
(3, 'Under Armour Men\'s Short Sleeve Hoodie', 'mensunderarmournosleeve.png', 'Slip on the UA x Project Rock Sleeveless Hoodie for that extra burn or as an extra layer over your favourite shirt for warming up.', '69.99'),
(4, 'Woods Men\'s Hector Crew Baseball Shirt - Peacoat', 'woodsbaseballshirt.png', 'Choose style and comfort with the Men’s Hector Crew Neck Baseball Shirt. Featuring a classic Woods graphic and 3/4 sleeve.', '40.00'),
(5, 'Nike Men\'s Breathe Graphic T Shirt', 'mensniketee.png', 'The short-sleeve silhouette of the Nike Breathe Top delivers breathable coverage with sweat-wicking fabric and a mesh back panel to help keep you cool when your route heats up.', '30.00'),
(6, 'Quiksilver Men\'s Art Tickle Tank - Aqua Splash', 'qstank.png', 'Constructed from fine ringspun combed cotton jersey, with a comfortable regular fit, and rounded out with a crew neckline. This t-shirt for men joins the line-up in the Quiksilver spring/summer tops collection.', '27.99'),
(7, 'PUMA Women\'s SG x PUMA Full Zip Hoodie', 'womenspumaziphoodie.png', 'The Selena Gomez collection has strength stitched into every piece. It’s inspired by, and designed for, the strong girl. Not strong in the sense of power, but strong in her passions, her expression, and strong in how she wants to leave her mark.', '126.97'),
(8, 'Champion Women\'s Fleece Hoodie', 'champsweater.png', 'Women’s Champion powerblend Fleece Pullover Hoodie features raglan sleeves for comfort and an exaggerated rib cuff and ribbed hem. Scuba hood with drawstring. Front kanga pocket for storage.', '59.99'),
(9, 'Helly Hansen Women\'s Power Jacket - Grey', 'hellyhansen.png', 'Great looking semi technical hoodie in the Hydro Power design capsule with clean look and technical details.', '149.99'),
(28, 'Arcteryx Women\'s Contenta Sleeveless Top - Whiskey Jack', '1555893618.png', 'Casual sleeveless top that is ideal for use in hot weather or while traveling. Comfortable, stretchy, soft-to-the-touch Diem polyester textile dries quickly, packs well, doesn\'t wrinkle and is easy to care for.', '59.99'),
(29, 'Woods Women\'s Silvertip Sleeveless Top - Rose', '1555893862.png', 'Made from an ultra-comfortable stretch woven fabric with moisture-wicking properties to ensure you stay cool and stylish when the weather starts to warm up.', '60.00'),
(30, 'PUMA Women\'s Classic Logo T Shirt - Yellow', '1555894040.png', 'Perfect to pair with your favourite leggings, the PUMA Classics Logo T Shirt is a staple for your sport-inspired closet.', '29.99'),
(31, 'Nike Sportswear Boys\' Woven Full Zip Jacket', '1555894209.png', 'Zip up and move out in comfort with Nike Sportswear Boys’ Woven Jacket. A full-zip design with a paneled hood offers versatile, lightweight coverage to help you stay warm when the seasons start to change.', '37.97'),
(32, 'Nike Sportswear Boys Full Zip Wind Jacket', '1555894344.png', 'With water-resistant fabric and a shaped hood, Nike Sportswear Windrunner Boys Full-Zip Hoodie delivers lightweight coverage from the elements. Its classic full-zip design is lined for comfort and includes zippered pockets for secure storage.', '47.97'),
(33, 'Roxy Girls\' Mermaid Her Fantasy Dress', '1555894433.png', 'This beautiful mid-length dress in a floral printed viscose fabric is part of the ROXY x Disney Little Mermaid Collection. Featuring a regular fit, short sleeves, v-neck with crossed over panels at front and hidden metal snap at front.', '54.99'),
(34, 'Columbia Girls\' Outdoor Elements Top', '1555894546.png', 'Soft and stretchy, this baseball-style shirt features raglan sleeves, moisture-wicking technology, and built-in UPF 50.', '29.99'),
(35, 'Under Armour Girls\' Armour Pullover Hoodie', '1555894697.png', 'Under Armour Girls\' Armour Fleece Dual Logo Big Logo Pullover Hoodie is light, incredibly warm, and has just the right amount of stretch.', '49.99'),
(36, 'ASICS Men\'s GT 1000 7 4E Running Shoes - Grey/Black', '1555894907.png', 'Exceptional performance meets incredible value. With its balanced support and guided stability, the sleek GT-1000 7 road stability running shoe for men has been created to protect your feet and help you run further than ever before.', '139.99'),
(37, 'Saucony Men\'s Everun ISO Running Shoe - Grey/Blue/Black', '1555895191.png', 'Stiffness is no longer the price to pay for support in your stability running shoe. Designed to support overpronation, the Hurricane ISO 4 raises the bar with full-length EVERUNTM cushioning and ISOFIT dynamic lacing.', '189.99'),
(38, 'Brooks Men\'s Cascadia 13 Running Shoes - Red/Yellow/Black', '1555895144.png', 'As famous on the trails as Bigfoot, the latest Cascadia offers the traction, stability and cushioning you love, with bolder, sleeker design.', '159.99'),
(39, 'New Balance Men\'s Fuelcore Running Shoes - Black/ Green', '1555895344.png', 'The New Balance Men\'s Fuelcore Quicka Running Shoes feature Rapid Rebound midsole technology to help give every step a boost, mile after mile. Meanwhile, a no-sew synthetic mesh upper offers a low-to-the-ground, more natural ride.', '119.99'),
(40, 'Nike Men\'s Flyknit 3.0 Running Shoes - Grey/Black/White', '1555895509.png', 'The Nike Men’s Free RN Flyknit 3.0 Running Shoes are lace-free – letting you slip in and hit your stride. Supportive yarns join stretchy Flyknit for a lightweight upper that feels like a second skin.', '170.00'),
(41, 'Wilson NCAA Solution Official Game Basketball', '1555895608.png', 'The Wilson Solution basketball is the official game ball of the NCAA and March Madness. Built with a cushion core which has superior softness and grip making those slick moves on the court much easier.', '89.99'),
(42, 'Nike Strike Size 5 Soccer Ball - Crimson/Black/Sil', '1555895714.png', 'Maintain your form on the practice pitch as you focus on building your craft by playing with the Nike Strike Soccer Ball. ', '35.00'),
(43, 'Demarini New Breed Slowpitch Bat', '1555895858.png', 'The 2018 NewBreed/GTS Signature Series bat comes loaded with features like a new 12\" Advanced Performance Composite (APC) barrel and ZnX alloy handle that deliver unreal distance and laser-guided screamers from line to line.', '329.99'),
(44, 'Easton Beast Usabb Tee Ball Bat', '1555895969.png', 'The 2-1/4” barrel one-piece design is constructed of lightweight and durable ALX50™ Aircraft Grade Alloy, with a rolled end and All-Sports grip, for better hold and comfort.', '34.99'),
(45, 'Wilson Uproar 13\" Glove', '1555896042.png', 'The 13\" Uproar Slow Pitch Glove is a great option for all positions. It has an hourglass web with a slow pitch-specific design.', '99.99'),
(46, 'Fitbit Versa Lite Smart Watch - White', '1555896209.png', 'Open a world of possibilities with Fitbit Versa™ Lite Edition, the versatile, everyday smartwatch. With all the core fitness and smart features, vibrant colors and an easy one-button design, this watch will inspire you make your goals reality.', '199.95'),
(47, 'Fitbit Inspire Fitness Tracker - Black', '1555896316.png', 'This encouraging companion motivates you to reach your weight and fitness goals and even enjoy the journey with calorie burn tracking, goal celebrations, sleep tracking & guidance, Reminders to Move and up to 5 days of battery life.', '99.95'),
(48, 'GoPro HERO7 White Edition Action Camera', '1555896432.png', 'Say hello to New GoPro HERO 7 White, the perfect partner on any adventure. It’s tough, tiny and totally waterproof so it can go wherever you do. An intuitive touch screen makes it simple to get great shots. Just swipe and tap.', '269.95'),
(49, 'GoPro HERO7 Black Edition Action Camera', '1555896530.png', 'Freakishly smooth footage. Smart-capture superpowers. Battle-tested and waterproof without a housing. This is HERO 7 Black, the most advanced GoPro ever. With HyperSmooth stabilization, you’ll get gimbal-like video—without the gimbal.', '529.99'),
(50, 'GoPro Fusion Action Camera', '1555896593.png', 'The GoPro Fusion Action Camera captures spherical video and photos, recording everything so you can find the best shots later. Play it back in VR or use OverCapture to create traditional videos and photos you can share right on your phone.', '639.99'),
(51, 'Toronto Maple Leafs adidas John Tavares Away Jersey', '1555896724.png', 'Show Support for Your Toronto Maple Leafs in this adidas Men’s Authentic Pro Away Hockey Jersey. Enjoy the game comfortably and let your colors fly.', '249.99'),
(52, 'Boston Bruins adidas Authentic Marchand Home Jersey', '1555896794.png', 'Practise the gritty, physical style of your favourite team in this adidas adizero authentic Pro Bruins jersey. ', '249.99'),
(53, 'Vegas Golden Knights Authentic Home Hockey Jersey', '1555896978.png', 'Not only is it a new hockey season but also a brand new hockey jersey to support your favorite NHL team. ', '199.99'),
(54, 'Winnipeg Jets adidas Patrik Laine Authentic 3rd Jersey', '1555897086.png', 'Be The First Of Your Friends To Rep The Winnipeg Jets adidas Men\'s 3rd Jersey. Wear The Exclusive Authentic Jersey As Worn By Your Favorite Players.', '249.99'),
(55, 'Calgary Flames adidas Johnny Gaudreau Authentic 3rd Jersey', '1555897156.png', 'Be The First Of Your Friends To Rep The Calgary Flames adidas Men\'s Johnny Gaudreau 3rd Jersey. Wear The Exclusive Authentic Jersey As Worn By Your Favorite Players.', '249.99');

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
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_category`
--

INSERT INTO `tbl_product_category` (`id`, `product_id`, `category_id`) VALUES
(1, 2, 1),
(2, 3, 1),
(6, 5, 1),
(5, 4, 1),
(7, 6, 1),
(8, 7, 2),
(9, 8, 2),
(16, 29, 2),
(15, 28, 2),
(17, 30, 2),
(18, 31, 3),
(19, 32, 3),
(20, 33, 3),
(21, 34, 3),
(22, 35, 3),
(23, 36, 4),
(24, 37, 4),
(25, 38, 4),
(26, 39, 4),
(27, 40, 4),
(28, 41, 5),
(29, 42, 5),
(30, 43, 5),
(31, 44, 5),
(32, 45, 5),
(33, 46, 6),
(34, 47, 6),
(35, 48, 6),
(36, 49, 6),
(37, 50, 6),
(38, 51, 8),
(39, 52, 8),
(40, 0, 8),
(41, 53, 8),
(42, 54, 8),
(43, 55, 8);

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
