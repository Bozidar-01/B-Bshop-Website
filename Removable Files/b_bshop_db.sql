-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2022 at 11:22 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `b&bshop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categoires`
--

CREATE TABLE `categoires` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categoires`
--

INSERT INTO `categoires` (`id`, `category`) VALUES
(1, 'Interior'),
(2, 'Exterior');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `sale` int(11) NOT NULL,
  `products_img` varchar(200) NOT NULL,
  `category_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `sale`, `products_img`, `category_id`, `stock`) VALUES
(1, 'Car Interior Flexible Neon Led ', 550, 450, 'https://www.kupuvajonline.mk/wp-content/uploads/2022/06/Screenshot_1-23.jpg', 1, 7),
(2, 'Shark Fin Antenna', 400, 300, 'https://www.ubuy.com.tr/productimg/?image=aHR0cHM6Ly9tLm1lZGlhLWFtYXpvbi5jb20vaW1hZ2VzL0kvNDFMeXhDemtCQ0wuX1NMMTAwMF8uanBn.jpg', 2, 5),
(3, 'Headlight/Stoplight Light Tint', 400, 350, 'https://i5.walmartimages.com/asr/2b7412e5-41f7-4390-9993-66c03235aede.615e11c24fbb0dbc99a9c2200d747b28.jpeg', 2, 2),
(4, 'Car Aux to Bluetooth Adapter', 500, 450, 'https://tedra.lk/wp-content/uploads/2019/11/Wireless-Car-Bluetooth-Musi-Receiver-02.jpg', 1, 11),
(5, 'Car Steering Wheel Cover Leather', NULL, 400, 'https://ae01.alicdn.com/kf/S4b491cc646ec4be0b4b6bff23a61d088N/Car-Steering-Wheel-Covers-Anti-Slip-Soft-Leather-Braid-On-The-Steering-Wheel-Of-Car-With.jpg_Q90.jpg_.webp', 1, 3),
(6, 'First Aid Kit ', NULL, 400, 'https://ae01.alicdn.com/kf/H7cfe053376284f9eb6112b5cdf8f1426m/13-items-39pcs-Waterproof-Mini-Outdoor-Travel-Car-First-Aid-kit-Home-Small-Medical-Box-Emergency.jpg_Q90.jpg_.webp', 1, 1),
(7, 'Car Windshield Repair Kit', 700, 600, 'https://ae01.alicdn.com/kf/H380cd13f873d474f916184b3f954f6ebP/DIY-Car-Windshield-Repair-Kit-Tools-Auto-Glass-Windscreen-Repair-Set-Give-Door-Handle-Protective-Decorative.jpg_Q90.jpg_.webp', 1, 3),
(8, 'Interior Brush Cleaner', NULL, 200, 'https://ae01.alicdn.com/kf/HTB1ePP7XFuWBuNjSszbq6AS7FXaO/1Pcs-Car-Double-Ended-Car-Air-Conditioner-Vent-Slit-Brush-Instrumentation-Dusting-Blind-Keyboard-Cleaning-Washer.jpg_Q90.jpg_.webp', 1, 5),
(9, 'Audi Car Folding Key Cover Case ', 400, 350, 'https://ae01.alicdn.com/kf/S8ac0ceb11f1a43ca89a40a24dad4a560f/Car-Folding-Key-Cover-Case-Fob-Holder-for-Audi-C5-C6-R8-A1-A3-A4-A5.jpg_Q90.jpg_.webp', 1, 3),
(10, 'Car Paint Scratch Filler Pen', NULL, 250, 'https://ae01.alicdn.com/kf/H96f74ab167694e61a59b099045da7a7cO/Car-Mending-Fill-Paint-Pen-Tool-Professional-Applicator-Waterproof-Touch-Up-Car-Paint-Repair-Coat-Painting.jpg_Q90.jpg_.webp', 2, 4),
(11, 'Car Interior Start Stop Button', NULL, 300, 'https://ae01.alicdn.com/kf/Sb95c74925b2c4a3991ea72b2368282b4F/Car-Interior-Engine-Ignition-Start-Stop-Button-Protective-Cover-Decoration-Sticker-Car-Interior-Accessories.jpg_Q90.jpg_.webp', 1, 3),
(12, 'Waterproof Car Tire Paint - White', 380, 300, 'https://ae01.alicdn.com/kf/Sa4fed491d0ec42a48b3511e956c054faT/Waterproof-Car-Tyre-Tire-Tread-Tire-Paint-Pen-Marker-DIY-Art-Drawing-Pen-Tool-For-BMW.jpg_Q90.jpg_.webp', 2, 3),
(13, 'Seat Side Organizer & Cup Holder', 550, 500, 'https://ae01.alicdn.com/kf/Sdd244e4fd85e445399ed2e4c3e8d50fdh/Seat-Side-Organizer-Cup-Holder-For-Cars-Leather-Multifunctional-Auto-Seat-Gap-Filler-Storage-Box-Seat.jpg_Q90.jpg_.webp', 1, 2),
(14, 'Car Trunk Organizer Belt', NULL, 350, 'https://ae01.alicdn.com/kf/H52d258de174f4d2f9998249c7bb993618/Car-Trunk-Organizer-Fixing-Belt-Storage-Bag-Magic-Tapes-Auto-Car-Accessries-Stowing-Tidying-Car-styling.jpg_Q90.jpg_.webp', 1, 2),
(15, 'DRL Led Sequential Headlight Strip (Pair)', 1000, 850, 'https://ae01.alicdn.com/kf/S812d7aa70d4e4b62b13b52905c8164ec9/2-pcs-DRL-LED-Strip-Turn-Signal-Light-Yellow-Bright-Flexible-Turn-signal-Light-Daytime-Running.jpg_Q90.jpg_.webp', 2, 2),
(16, 'Anti-Fog Rainproof Rear-View Mirror Film', NULL, 250, 'https://ae01.alicdn.com/kf/S49ef6cf3bb424d2f8d994fccdf475302f/2pcs-Universal-Anti-Fog-Anti-glare-Rainproof-Car-Tuning-Rearview-Mirror-Trim-Film-Cover-Exterior-Parts.jpg_Q90.jpg_.webp', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_info`
--

CREATE TABLE `product_info` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `sale` int(11) NOT NULL,
  `info` int(11) NOT NULL,
  `product_img` varchar(200) NOT NULL,
  `products_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoires`
--
ALTER TABLE `categoires`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoires`
--
ALTER TABLE `categoires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product_info`
--
ALTER TABLE `product_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
