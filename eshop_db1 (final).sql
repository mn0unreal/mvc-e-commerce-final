-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2023 at 07:36 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eshop_db1`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `url_address` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `post` text NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `date` datetime NOT NULL,
  `user_url` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `url_address`, `title`, `post`, `image`, `date`, `user_url`) VALUES
(8, 'a-final-title', 'IPhone 14', '6.1-inch durable design with Ceramic Shield.Â¹ Plus water and dust resistance\r\n\r\nAwesome all-day battery life with up to 20 hours video playbackÂ²\r\n\r\nEmergency SOS via satelliteÂ³ and Crash Detection â€” groundbreaking features designed to save livesâ´\r\n\r\nA new Pro-level Main camera and improved image processing for even more sensational shots in all kinds of light\r\n\r\nA15 Bionic, the same superspeedy chip thatâ€™s in iPhone 13 Pro\r\n', 'uploads/6HbyRTpPYzToowszZm3iizOEwVqBjikGSQeJojDh4N63QIvW9RQYzaEatMX5.jpg', '2023-07-09 11:35:02', 'IYHtfbbTBkpFExy'),
(10, 'how-to-make-a-burger', 'IPhone 14 Pro', 'Brighter 6.1â€ Super Retina XDR displayÂ¹ featuring Always-On, which keeps your info at a glance\r\n\r\nDynamic Island, a magical new way to interact with iPhone\r\n\r\nEmergency SOS via satelliteÂ² and Crash Detection â€” groundbreaking features designed to save livesÂ³\r\n\r\n48MP Main camera with an advanced quad-pixel sensor for up to 4x the resolution\r\n\r\nA16 Bionic chip â€” superfast and superefficient for amazing all-day battery life\r\n\r\n\r\n', 'uploads/xbQR6onM4qMidNQ1PBLsFHt11mzqpA5t6FEc8mjLdFqXZm1U8jlLWv6liyV4.jpg', '2023-07-09 11:35:02', 'IYHtfbbTBkpFExy');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `brand` varchar(30) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand`, `disabled`, `views`) VALUES
(1, 'google', 0, 0),
(2, 'apple', 0, 0),
(3, 'microsoft', 0, 0),
(4, 'nvidia', 0, 0),
(5, 'samsung', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(30) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `parent` int(11) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `disabled`, `parent`, `views`) VALUES
(1, 'iphone', 0, 12, 32),
(4, 'Android', 0, 12, 11),
(12, 'Smartphone', 0, 0, 3),
(13, 'Cars', 0, 0, 0),
(14, 'Bags', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `subject`, `message`, `date`) VALUES
(1, 'A Second Person', 'email2@email.com', 'a subject', 'a subject2', '2023-07-10 17:20:37'),
(2, 'Mahmoud', 'mahmoud@m.com', 'CONTACT US', 'CONTACT US\r\nCONTACT US\r\nCONTACT US\r\n', '2023-07-10 17:20:37'),
(3, 'Ahmed', 'ahmed@a.com', 'CONTACT US', 'CONTACT US\r\n', '2023-07-10 17:21:06'),
(5, 'Islam', 'islam@islam.com', 'islam', 'islamislam', '2023-07-10 23:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country` varchar(30) NOT NULL,
  `disabled` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country`, `disabled`) VALUES
(1, 'Egypt ', 0),
(2, 'Emirates', 0),
(3, 'Saudi arabia', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `user_url` varchar(60) NOT NULL,
  `description` varchar(20) NOT NULL,
  `delivery_address` varchar(1024) DEFAULT NULL,
  `total` double NOT NULL DEFAULT 0,
  `country` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `zip` varchar(6) DEFAULT NULL,
  `tax` double DEFAULT 0,
  `shipping` double DEFAULT 0,
  `date` datetime NOT NULL,
  `sessionid` varchar(30) NOT NULL,
  `home_phone` varchar(15) NOT NULL,
  `mobile_phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_url`, `description`, `delivery_address`, `total`, `country`, `state`, `zip`, `tax`, `shipping`, `date`, `sessionid`, `home_phone`, `mobile_phone`) VALUES
(1, 'IYHtfbbTBkpFExy', '', 'my address in town home town', 110.92, 'Egypt ', 'Alexandria ', '10101', 0, 0, '2021-04-21 20:38:25', 'egfghjpd9s0tri59fs8q7rlt7l', '0956789099', '2606753435'),
(2, 'IYHtfbbTBkpFExy', '', 'my address in town home town', 110.92, 'Egypt ', 'Alexandria ', '10101', 0, 0, '2021-04-21 20:38:46', 'egfghjpd9s0tri59fs8q7rlt7l', '0956789099', '2606753435'),
(3, 'IYHtfbbTBkpFExy', '', 'Emirates', 72.96, 'Emirates', 'Abu Dhabi', '10101', 0, 0, '2021-04-30 12:31:47', 'o9sln93qsk4u3rkl5qvhsulcdq', '075725722', '097563635'),
(4, 'IYHtfbbTBkpFExy', '', 'Emirates', 71.95, 'Emirates', 'Dubai', '10101', 0, 0, '2021-05-04 21:03:14', 'o9sln93qsk4u3rkl5qvhsulcdq', '0123456789', '0123456789'),
(5, 'IYHtfbbTBkpFExy', '', 'Emirates', 9.99, 'Emirates', 'Alexandria ', '10101', 0, 0, '2021-07-06 12:58:30', '4geg1pa308bcadbuqfhlvcvdjt', '0123456789', '2423424234'),
(6, 'IYHtfbbTBkpFExy', '', 'Emirates', 9.99, 'Emirates', 'Dubai', '1001', 0, 0, '2021-07-06 13:02:00', '4geg1pa308bcadbuqfhlvcvdjt', '0123456789', '0123456789'),
(8, 'IYHtfbbTBkpFExy', '', 'aeefdfdfda dsadcvd', 9.99, 'Egypt ', 'Alexandria ', '10011', 0, 0, '2021-07-09 13:32:51', '73d0bvfoijv78lfe8iau8q438i', '0123456789', '0123456789'),
(9, 'IYHtfbbTBkpFExy', 'order 8', 'Emirates', 20.99, 'Emirates', 'Alexandria', '1223', 0, 0, '2021-07-09 13:51:21', '73d0bvfoijv78lfe8iau8q438i', '0123456789', '0989787854'),
(10, 'IYHtfbbTBkpFExy', 'order 10', 'wfgsfvgf sfvfv', 20.99, 'Egypt', 'Alexandria ', '21212', 0, 0, '2021-07-09 13:54:11', '73d0bvfoijv78lfe8iau8q438i', '0123456789', '0123456789'),
(11, 'IYHtfbbTBkpFExy', 'order 11', 'aefdf wdfd', 12.99, 'Egypt', 'Alexandria ', '2121', 0, 0, '2021-07-09 14:00:03', '73d0bvfoijv78lfe8iau8q438i', '0123456789', '0123456789'),
(12, 'IYHtfbbTBkpFExy', 'order 12', 'aefdf wdfd', 12.99, 'Egypt', 'Alexandria ', '11322', 0, 0, '2021-07-09 14:02:57', '73d0bvfoijv78lfe8iau8q438i', '0123456789', '0123456789'),
(13, 'IYHtfbbTBkpFExy', 'order 13', 'aefdf wdfd', 25.98, 'Egypt', 'Alexandria ', '0101', 0, 0, '2021-07-09 20:40:10', '73d0bvfoijv78lfe8iau8q438i', '0123456789', '0123456789'),
(14, 'IYHtfbbTBkpFExy', '', 'Emirates', 110.92, 'Emirates', 'Dubai', '10101', 0, 0, '2021-04-21 20:38:25', 'egfghjpd9s0tri59fs8q7rlt7l', '0123456789', '0123456789'),
(15, 'IYHtfbbTBkpFExy', '', 'my address in town home town', 110.92, 'Emirates', 'Dubai', '10101', 0, 0, '2021-04-21 20:38:46', 'egfghjpd9s0tri59fs8q7rlt7l', '0123456789', '0123456789'),
(16, 'IYHtfbbTBkpFExy', '', 'Emirates', 72.96, 'Emirates', 'Abu Dhabi', '10101', 0, 0, '2021-04-30 12:31:47', 'o9sln93qsk4u3rkl5qvhsulcdq', '0123456789', '0123456789'),
(17, 'IYHtfbbTBkpFExy', '', 'Emirates', 71.95, 'Emirates', 'Dubai', '10101', 0, 0, '2021-05-04 21:03:14', 'o9sln93qsk4u3rkl5qvhsulcdq', '0123456789', '0123456789'),
(18, 'IYHtfbbTBkpFExy', 'order 5', 'Emirates', 22.98, 'Emirates', 'Dubai', '1001', 0, 0, '2021-07-09 19:25:22', 'ujaa4qq9p5logrg7kgigbrdvun', '0123456789', '0123456789'),
(19, 'IYHtfbbTBkpFExy', 'order 6', 'Emirates', 1.05, 'Emirates', 'Dubai', '1223', 0, 0, '2021-07-13 10:16:39', 'ujaa4qq9p5logrg7kgigbrdvun', '0123456789', '0123456789'),
(20, 'IYHtfbbTBkpFExy', 'order 7', 'Emirates', 0.42, 'Emirates', 'Abu Dhabi', '1001', 0, 0, '2021-07-13 10:19:18', 'ujaa4qq9p5logrg7kgigbrdvun', '0123456789', '0123456789'),
(21, 'IYHtfbbTBkpFExy', 'order 21', 'adfadf adfadfd', 0.63, 'Egypt', 'Alexandria', '3212', 0, 0, '2021-07-18 21:15:55', 'qqtd8h2cql5c3d8u59co74cn98', '0123456789', '0123456789'),
(22, 'ITBkpFE6oUmwR', 'order 22', 'anywhere anywhere', 30.98, 'Emirates', 'Dubai', '11765', 0, 0, '2023-07-08 15:31:10', 'gkdch08oekfk9jslutnnc18q2m', '123123', '0020111111111'),
(23, 'BX8z7P6oUmwRDwR3yGlJdJH', 'order 23', 'user anywhere', 10.07, 'Saudi arabia', 'Makkah', '123123', 0, 0, '2023-07-16 14:30:42', 'gkdch08oekfk9jslutnnc18q2m', '123123', '123123'),
(24, 'ITBkpFE6oUmwR', 'order 24', 'user anywhere', 9.99, 'Saudi arabia', 'Makkah', '123123', 0, 0, '2023-07-16 14:35:52', 'gkdch08oekfk9jslutnnc18q2m', '123123', '123123'),
(25, 'BX8z7P6oUmwRDwR3LOG', 'order 25', 'customer anywhere', 20.99, 'Saudi arabia', 'Makkah', '123123', 0, 0, '2023-07-16 14:38:45', 'gkdch08oekfk9jslutnnc18q2m', '123123', '123123'),
(26, 'ITBkpFE6oUmwR', 'order 26', 'anywhere anywhere', 20.99, 'Saudi arabia', 'Riyadh', '123123', 0, 0, '2023-07-16 14:42:03', 'gkdch08oekfk9jslutnnc18q2m', '123123', '123123');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) NOT NULL,
  `orderid` bigint(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `amount` double NOT NULL,
  `total` double NOT NULL,
  `productid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `orderid`, `qty`, `description`, `amount`, `total`, `productid`) VALUES
(1, 1, 3, 'Milo Candy Bar', 12.99, 38.97, 9),
(2, 1, 2, 'Weet Bix 1.4 Kg', 20.99, 41.98, 8),
(3, 1, 3, 'Burger 250g With Drink', 9.99, 29.97, 7),
(4, 2, 3, 'Milo Candy Bar', 12.99, 38.97, 9),
(5, 2, 2, 'Weet Bix 1.4 Kg', 20.99, 41.98, 8),
(6, 2, 3, 'Burger 250g With Drink', 9.99, 29.97, 7),
(7, 3, 1, 'Burger 250g With Drink', 9.99, 9.99, 7),
(8, 3, 3, 'Weet Bix 1.4 Kg', 20.99, 62.97, 8),
(9, 4, 3, 'Burger 250g With Drink', 9.99, 29.97, 7),
(10, 4, 2, 'Weet Bix 1.4 Kg', 20.99, 41.98, 8),
(11, 5, 1, 'Burger 250g With Drink', 9.99, 9.99, 7),
(12, 6, 1, 'Burger 250g With Drink', 9.99, 9.99, 7),
(13, 7, 1, 'Burger 250g With Drink', 9.99, 9.99, 7),
(14, 8, 1, 'Burger 250g With Drink', 9.99, 9.99, 7),
(15, 8, 1, 'Weet Bix 1.4 Kg', 20.99, 20.99, 8),
(16, 10, 1, 'Weet Bix 1.4 Kg', 20.99, 20.99, 8),
(17, 11, 1, 'Milo Candy Bar', 12.99, 12.99, 9),
(18, 12, 1, 'Milo Candy Bar', 12.99, 12.99, 9),
(19, 13, 2, 'Milo Candy Bar', 12.99, 25.98, 9),
(21, 22, 1, 'Burger 250g With Drink', 9.99, 9.99, 7),
(22, 22, 1, 'Weet Bix 1.4 Kg', 20.99, 20.99, 8),
(23, 23, 1, 'Burger 250g With Drink', 9.99, 9.99, 7),
(24, 23, 1, 'Some Product', 0.08, 0.08, 15),
(25, 24, 1, 'Burger 250g With Drink', 9.99, 9.99, 7),
(26, 25, 1, 'Weet Bix 1.4 Kg', 20.99, 20.99, 8),
(27, 26, 1, 'Weet Bix 1.4 Kg', 20.99, 20.99, 8);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `trans_id` varchar(255) NOT NULL,
  `raw` text NOT NULL,
  `event_type` varchar(100) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(100) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `payer_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `date`, `trans_id`, `raw`, `event_type`, `amount`, `status`, `order_id`, `summary`, `first_name`, `last_name`, `email`, `payer_id`) VALUES
(1, '2021-07-06 12:34:23', 'WH-72368620FC4839506-578153864S1803135', '{\"id\":\"WH-72368620FC4839506-578153864S1803135\",\"event_version\":\"1.0\",\"create_time\":\"2021-07-03T18:36:26.977Z\",\"resource_type\":\"checkout-order\",\"resource_version\":\"2.0\",\"event_type\":\"CHECKOUT.ORDER.APPROVED\",\"summary\":\"An order has been approved by buyer\",\"resource\":{\"create_time\":\"2021-07-03T18:31:44Z\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"6.00\",\"breakdown\":{\"item_total\":{\"currency_code\":\"USD\",\"value\":\"4.00\"},\"shipping\":{\"currency_code\":\"USD\",\"value\":\"2.00\"},\"tax_total\":{\"currency_code\":\"USD\",\"value\":\"0.00\"}}},\"payee\":{\"email_address\":\"eathorne2012-facilitator@yahoo.com\",\"merchant_id\":\"QKRY6BTWMQQ8C\"},\"description\":\"My item description\",\"shipping\":{\"name\":{\"full_name\":\"test buyer\"},\"address\":{\"address_line_1\":\"1 Main St\",\"admin_area_2\":\"San Jose\",\"admin_area_1\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}}}],\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/8D5278164K216725B\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/8D5278164K216725B\",\"rel\":\"update\",\"method\":\"PATCH\"},{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/8D5278164K216725B/capture\",\"rel\":\"capture\",\"method\":\"POST\"}],\"id\":\"8D5278164K216725B\",\"intent\":\"CAPTURE\",\"payer\":{\"name\":{\"given_name\":\"test\",\"surname\":\"buyer\"},\"email_address\":\"eathorne2012-buyer@yahoo.com\",\"payer_id\":\"QCEPS6HXTCW9N\",\"address\":{\"country_code\":\"US\"}},\"status\":\"APPROVED\"},\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/notifications/webhooks-events/WH-72368620FC4839506-578153864S1803135\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/notifications/webhooks-events/WH-72368620FC4839506-578153864S1803135/resend\",\"rel\":\"resend\",\"method\":\"POST\"}]}', 'CHECKOUT.ORDER.APPROVED', 6.00, 'APPROVED', 'My item description', 'An order has been approved by buyer', 'test', 'buyer', 'eathorne2012-buyer@yahoo.com', 'QCEPS6HXTCW9N'),
(2, '2021-07-09 19:26:44', 'WH-4U387217Y0402090W-29K29120XX664362Y', '{\"id\":\"WH-4U387217Y0402090W-29K29120XX664362Y\",\"event_version\":\"1.0\",\"create_time\":\"2021-07-09T19:26:34.680Z\",\"resource_type\":\"checkout-order\",\"resource_version\":\"2.0\",\"event_type\":\"CHECKOUT.ORDER.APPROVED\",\"summary\":\"An order has been approved by buyer\",\"resource\":{\"update_time\":\"2021-07-09T19:26:33Z\",\"create_time\":\"2021-07-09T19:25:30Z\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"22.98\",\"breakdown\":{\"item_total\":{\"currency_code\":\"USD\",\"value\":\"22.98\"},\"shipping\":{\"currency_code\":\"USD\",\"value\":\"0.00\"},\"tax_total\":{\"currency_code\":\"USD\",\"value\":\"0.00\"}}},\"payee\":{\"email_address\":\"eathorne2012-facilitator@yahoo.com\",\"merchant_id\":\"QKRY6BTWMQQ8C\"},\"description\":\"order 5\",\"shipping\":{\"name\":{\"full_name\":\"test buyer\"},\"address\":{\"address_line_1\":\"1 Main St\",\"admin_area_2\":\"San Jose\",\"admin_area_1\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}},\"payments\":{\"captures\":[{\"id\":\"29B44561UF627130H\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"22.98\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"seller_receivable_breakdown\":{\"gross_amount\":{\"currency_code\":\"USD\",\"value\":\"22.98\"},\"paypal_fee\":{\"currency_code\":\"USD\",\"value\":\"0.97\"},\"net_amount\":{\"currency_code\":\"USD\",\"value\":\"22.01\"}},\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/payments/captures/29B44561UF627130H\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v2/payments/captures/29B44561UF627130H/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/60J70994M39520325\",\"rel\":\"up\",\"method\":\"GET\"}],\"create_time\":\"2021-07-09T19:26:33Z\",\"update_time\":\"2021-07-09T19:26:33Z\"}]}}],\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/60J70994M39520325\",\"rel\":\"self\",\"method\":\"GET\"}],\"id\":\"60J70994M39520325\",\"intent\":\"CAPTURE\",\"payer\":{\"name\":{\"given_name\":\"test\",\"surname\":\"buyer\"},\"email_address\":\"eathorne2012-buyer@yahoo.com\",\"payer_id\":\"QCEPS6HXTCW9N\",\"address\":{\"country_code\":\"US\"}},\"status\":\"COMPLETED\"},\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/notifications/webhooks-events/WH-4U387217Y0402090W-29K29120XX664362Y\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/notifications/webhooks-events/WH-4U387217Y0402090W-29K29120XX664362Y/resend\",\"rel\":\"resend\",\"method\":\"POST\"}]}', 'CHECKOUT.ORDER.APPROVED', 22.98, 'COMPLETED', 'order 5', 'An order has been approved by buyer', 'test', 'buyer', 'eathorne2012-buyer@yahoo.com', 'QCEPS6HXTCW9N'),
(3, '2021-07-13 10:19:20', 'WH-7T326909W98431811-0PA11016TB7979214', '{\"id\":\"WH-7T326909W98431811-0PA11016TB7979214\",\"event_version\":\"1.0\",\"create_time\":\"2021-07-13T10:18:33.518Z\",\"resource_type\":\"checkout-order\",\"resource_version\":\"2.0\",\"event_type\":\"CHECKOUT.ORDER.APPROVED\",\"summary\":\"An order has been approved by buyer\",\"resource\":{\"update_time\":\"2021-07-13T10:18:17Z\",\"create_time\":\"2021-07-13T10:17:05Z\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"1.05\",\"breakdown\":{\"item_total\":{\"currency_code\":\"USD\",\"value\":\"1.05\"},\"shipping\":{\"currency_code\":\"USD\",\"value\":\"0.00\"},\"tax_total\":{\"currency_code\":\"USD\",\"value\":\"0.00\"}}},\"payee\":{\"email_address\":\"eathorne2012-facilitator@yahoo.com\",\"merchant_id\":\"QKRY6BTWMQQ8C\"},\"description\":\"order 6\",\"shipping\":{\"name\":{\"full_name\":\"test buyer\"},\"address\":{\"address_line_1\":\"1 Main St\",\"admin_area_2\":\"San Jose\",\"admin_area_1\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}},\"payments\":{\"captures\":[{\"id\":\"1BE01178RF206244J\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"1.05\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"seller_receivable_breakdown\":{\"gross_amount\":{\"currency_code\":\"USD\",\"value\":\"1.05\"},\"paypal_fee\":{\"currency_code\":\"USD\",\"value\":\"0.33\"},\"net_amount\":{\"currency_code\":\"USD\",\"value\":\"0.72\"}},\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/payments/captures/1BE01178RF206244J\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v2/payments/captures/1BE01178RF206244J/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/4PA73887R93208929\",\"rel\":\"up\",\"method\":\"GET\"}],\"create_time\":\"2021-07-13T10:18:17Z\",\"update_time\":\"2021-07-13T10:18:17Z\"}]}}],\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/4PA73887R93208929\",\"rel\":\"self\",\"method\":\"GET\"}],\"id\":\"4PA73887R93208929\",\"intent\":\"CAPTURE\",\"payer\":{\"name\":{\"given_name\":\"test\",\"surname\":\"buyer\"},\"email_address\":\"eathorne2012-buyer@yahoo.com\",\"payer_id\":\"QCEPS6HXTCW9N\",\"address\":{\"country_code\":\"US\"}},\"status\":\"COMPLETED\"},\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/notifications/webhooks-events/WH-7T326909W98431811-0PA11016TB7979214\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/notifications/webhooks-events/WH-7T326909W98431811-0PA11016TB7979214/resend\",\"rel\":\"resend\",\"method\":\"POST\"}]}', 'CHECKOUT.ORDER.APPROVED', 1.05, 'COMPLETED', 'order 6', 'An order has been approved by buyer', 'test', 'buyer', 'eathorne2012-buyer@yahoo.com', 'QCEPS6HXTCW9N');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `user_url` varchar(60) NOT NULL,
  `description` varchar(200) NOT NULL,
  `category` int(11) NOT NULL,
  `brand` int(11) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(500) NOT NULL,
  `image2` varchar(500) DEFAULT NULL,
  `image3` varchar(500) DEFAULT NULL,
  `image4` varchar(500) DEFAULT NULL,
  `date` datetime NOT NULL,
  `slag` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_url`, `description`, `category`, `brand`, `price`, `quantity`, `image`, `image2`, `image3`, `image4`, `date`, `slag`) VALUES
(13, 'IYHtfbbTBkpFExy', 'iphone-card-40-iphone12', 1, 2, 24.95, 6, 'uploads/uXVZtHytVADUh9LOUbmtcHDqufNObkUGPwDV66BGY5DQTF0d94yYJIBBfZk8.jpg', 'uploads/00346GCzW7bHbjc4Ng6Pjk9EaDhGaPFgX7zivyL5jl5c9V3xFSioVBfG25HK.jpg', 'uploads/DwQ65Zl8VcNTUvQ3mAm1oWJA5MDUNAD3hWYgDGLN89PxItnaYkKBorbjdJJz.jpg', 'uploads/ShOnR466K9ebYkKn6dp53Lke9v8LeIUEwn8zAGznaPPvKp7aDtNjiOiasW2o.jpg', '2023-07-09 15:06:21', 'iphone-card-40-iphone12'),
(14, 'IYHtfbbTBkpFExy', 'iphone-card-40-iphonese', 1, 2, 429.95, 6, 'uploads/Osi2TS8tXg8TCP4BsZfTmpSAf8bMi5c8YtAbhfAiIKuLxVc55HbXgUelOsCW.jpg', 'uploads/3VhNdkZQRjcwb0PsgtU4GX7VdsZxOlWCN7eh1TgBhmDKOcvKuRdpwzwvVDQR.jpg', 'uploads/0O7e1wmdHWjgJ9pizisxMWj7oltmNs4FyKsKpPpCWtKtojEmR1a7FBjnDNtJ.jpg', 'uploads/8vbgzWjc2YH2h32kTgvIVGbe1OqXR6VSrkRy7Sq2OUaekwx6gbOIiB1bwaNg.jpg', '2023-07-08 15:06:21', 'iphone-card-40-iphonese'),
(15, 'IYHtfbbTBkpFExy', 'iphone-card-40-iphone13', 1, 2, 599, 55, 'uploads/rNrZzyz1gOWLPTYngTL7dQ4csiEvH2YagczIGvpBemf779JPYLSMWC2hEWdv.jpg', 'uploads/ukxuUpnMYIjMgyk3E7dzhPS7dlLJjPTMHnuoCckTe97qtXSZ3lduh68Lassj.jpg', 'uploads/vcYRgMcGbDDZhkNHyb1YdiCmAo2dvy1k7uIvQ0AjnFvmCYeVsmGx6SvXUcno.jpg', 'uploads/yoduMoBfqbsR0rtXyD0UmMiJ8l8ST21E2MAfbDDVxDwkB5ASlyJcA8DiJiEt.jpg', '2023-07-07 15:06:21', 'iphone-card-40-iphone13'),
(16, 'IYHtfbbTBkpFExy', 'iphone-card-40-iphone14', 1, 2, 799, 6, 'uploads/9fhxXOD75f99x035GVCkaOFfUrwIoIeCjlves1mZs7WgFwn4VnYSVr791iOY.jpg', 'uploads/zFJlksGUofbZvhiQF58ljgVxMu6BmlYyWVCHAq1PABENDQCQF8BnHYnPiaZg.jpg', 'uploads/Je3LqrqzwFvF4OcEbWIZ9rYJA4qhMS7J9tGggjWUAFE7eW47YIzauk2mxsYO.jpg', 'uploads/3DWMkj157JuVDPwTiD9vED69a6X19sXfBacdLcRqATtU4T1HyPd5AstvfsBz.jpg', '2023-07-06 15:06:21', 'iphone-card-40-iphone14'),
(18, 'ITBkpFE6oUmwR', 'Pixel', 4, 1, 666.99, 11, 'uploads/XSCQ1rrPrCFLxj6xH8eBL3QEApVDdIzWfZR8g0WRnnJhch8KCVXb7kvghzz8.jpg', 'uploads/8ptkkwFOJ824vKGlrAXh13pSLHeJTor9iBpY9x7aZwDEPmue5TwQ7jeNRHDA.jpg', '', '', '2023-07-05 15:06:21', 'pixel'),
(22, 'ITBkpFE6oUmwR', 'iPhone 14 Pro Max', 4, 4, 999, 50, 'uploads/1WRM34IEixOSps40fgrL0nJnofALN9RjNK5496LyH4ic0r98tNrwayEwNuL4.jpg', 'uploads/1giDg1kDlNx0pOTWILrvuYjUtsFIisJXFJicQIILeVHal38vzjA0iXvu5BDO.jpg', 'uploads/dIxrj03IcHa9d9rRecMdE4z45M7y9tfjjBaGieeSsiEqsGwLHwYXaq3ISt36.jpg', 'uploads/EyWVH7ihKiGBlC3chj0hGOVwqJ9UXcGvfK6QBpTKzTCuuD8HgTkV3lX9YBlW.jpg', '2023-07-16 16:21:28', 'iphone-14-pro-iphone-14-pro-max');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `setting` varchar(30) DEFAULT NULL,
  `value` varchar(2048) DEFAULT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting`, `value`, `type`) VALUES
(1, 'phone_number', '00201147170572', ''),
(2, 'email', 'info@mywebsite.com', ''),
(3, 'facebook_link', 'https://www.facebook.com', ''),
(4, 'twitter_link', 'https://www.twitter.com', ''),
(5, 'linkedin_link', '', ''),
(6, 'instagram_link', 'https://www.instagram.com/', ''),
(7, 'website_link', '', ''),
(8, 'youtube_link', 'https://www.youtube.com', ''),
(9, 'contact_info', 'ecommerce \r\n<b>ecommerce</b>\r\necommerce\r\nMobile: +201147170572\r\nPhone :201147170572\r\nFax: 0000000\r\nEmail: email@ecommerce.com                                                                                                                                                                                                                             ', 'textarea');

-- --------------------------------------------------------

--
-- Table structure for table `slider_images`
--

CREATE TABLE `slider_images` (
  `id` int(11) NOT NULL,
  `header1_text` varchar(20) NOT NULL,
  `header2_text` varchar(30) DEFAULT NULL,
  `text` varchar(200) NOT NULL,
  `link` varchar(200) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `image2` varchar(500) DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `slider_images`
--

INSERT INTO `slider_images` (`id`, `header1_text`, `header2_text`, `text`, `link`, `image`, `image2`, `disabled`) VALUES
(7, 'E-SHOP', 'iphone card 40 iphone12', 'iphone-card-40-iphone12', 'product_details/iphone-card-40-iphone12', 'uploads/uXVZtHytVADUh9LOUbmtcHDqufNObkUGPwDV66BGY5DQTF0d94yYJIBBfZk8.jpg', NULL, 0),
(8, 'E-SHOP STUFF', 'iphone-card-40-iphone13', 'iphone-card-40-iphone13', 'product_details/iphone-card-40-iphone13', 'uploads/rNrZzyz1gOWLPTYngTL7dQ4csiEvH2YagczIGvpBemf779JPYLSMWC2hEWdv.jpg', NULL, 0),
(9, 'iphone14', 'iphone-card-40-iphone14', 'iphone-card-40-iphone14', 'product_details/iphone-card-40-iphone14', 'uploads/9fhxXOD75f99x035GVCkaOFfUrwIoIeCjlves1mZs7WgFwn4VnYSVr791iOY.jpg', NULL, 0),
(10, 'iphone-14-pro-max', 'iphone-14-pro', 'iphone-14-pro-iphone-14-pro-max', 'product_details/iphone-14-pro-iphone-14-pro-max', 'uploads/1WRM34IEixOSps40fgrL0nJnofALN9RjNK5496LyH4ic0r98tNrwayEwNuL4.jpg', NULL, 0),
(11, 'Pixel', 'Pixel', 'Pixel', 'product_details/pixel', 'uploads/XSCQ1rrPrCFLxj6xH8eBL3QEApVDdIzWfZR8g0WRnnJhch8KCVXb7kvghzz8.jpg', NULL, 0),
(13, 'Pixel2', 'Pixel2', 'Pixel2', 'product_details/pixel2', 'uploads/XSCQ1rrPrCFLxj6xH8eBL3QEApVDdIzWfZR8g0WRnnJhch8KCVXb7kvghzz8.jpg', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `state` varchar(30) NOT NULL,
  `disabled` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `parent`, `state`, `disabled`) VALUES
(1, 1, 'Aswan ', 0),
(2, 1, 'Alexandria ', 0),
(3, 1, 'Cairo ', 0),
(4, 1, 'Zagazig', 0),
(5, 1, 'Mansoura', 0),
(6, 2, 'Abu Dhabi', 0),
(7, 2, 'Dubai', 0),
(8, 2, 'Sharjah', 0),
(9, 2, 'Ajman', 0),
(10, 2, 'Al Quwain', 0),
(11, 2, 'Ras Al Khaimah', 0),
(12, 2, 'Fujairah', 0),
(13, 3, 'Abha', 0),
(14, 3, 'Makkah', 0),
(15, 3, 'Riyadh', 0),
(16, 3, 'Dammam', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `url_address` varchar(60) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(64) NOT NULL,
  `date` datetime NOT NULL,
  `rank` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `url_address`, `name`, `email`, `password`, `date`, `rank`) VALUES
(2, 'IYHtfbbTBkpFExy', 'mahmoud', 'mahmoud@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2023-01-27 17:44:36', 'customer'),
(3, 'BX8z7P6oUmwRDwR3yGlJdJH', 'User1', 'user@yahoo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2023-01-27 17:44:36', 'customer'),
(4, 'ITBkpFE6oUmwR', 'admin', 'admin@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2023-01-27 17:44:36', 'admin'),
(5, 'BX8z7P6oUmwRDwR3LOG', 'Customer', 'customer@yahoo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2023-01-27 17:44:36', 'customer'),
(6, 'BX8z7P6oUwRDwR3LOGsi', 'Ahmed', 'ahmed@yahoo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2023-01-27 17:44:36', 'customer'),
(7, 'mdCnpeHauNSga2X9aOrqp', 'Test', 'test@test.com', '8cb2237d0679ca88db6464eac60da96345513964', '2023-07-17 14:05:07', 'customer'),
(8, 'wV9GXFEUwRTOrFWafAwQ4Pi4WPlxer2DItehoTqADl4O41hWTpo3bQA01d', 'Hana', 'hana@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2023-07-17 17:32:59', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url_address` (`url_address`),
  ADD KEY `title` (`title`),
  ADD KEY `image` (`image`),
  ADD KEY `user_url` (`user_url`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`brand`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `views` (`views`),
  ADD KEY `brand` (`brand`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `parent` (`parent`),
  ADD KEY `views` (`views`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `subject` (`subject`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disabled` (`disabled`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`user_url`),
  ADD KEY `date` (`date`),
  ADD KEY `sessionid` (`sessionid`),
  ADD KEY `description` (`description`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderid` (`orderid`),
  ADD KEY `description` (`description`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `status` (`status`),
  ADD KEY `amount` (`amount`),
  ADD KEY `event_type` (`event_type`),
  ADD KEY `trans_id` (`trans_id`),
  ADD KEY `date` (`date`),
  ADD KEY `first_name` (`first_name`),
  ADD KEY `email` (`email`),
  ADD KEY `last_name` (`last_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slag` (`slag`),
  ADD KEY `date` (`date`),
  ADD KEY `quantity` (`quantity`),
  ADD KEY `price` (`price`),
  ADD KEY `category` (`category`),
  ADD KEY `description` (`description`),
  ADD KEY `user_url` (`user_url`),
  ADD KEY `brand` (`brand`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `setting` (`setting`);

--
-- Indexes for table `slider_images`
--
ALTER TABLE `slider_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disabled` (`disabled`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`),
  ADD KEY `disabled` (`disabled`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url_address` (`url_address`),
  ADD KEY `email` (`email`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`),
  ADD KEY `date` (`date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `slider_images`
--
ALTER TABLE `slider_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
