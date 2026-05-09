-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql100.infinityfree.com
-- Generation Time: May 06, 2026 at 12:16 PM
-- Server version: 11.4.10-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_41285542_stockora`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `key` varchar(100) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`key`, `value`) VALUES
('accent2_color', '#10b981'),
('accent_color', '#3b82f6'),
('app_name', 'QubitSale'),
('app_tagline', 'POS System'),
('bg2_color', '#1e293b'),
('bg_color', '#0f172a'),
('border_radius', '12'),
('danger_color', '#ef4444'),
('favicon_file', 'favicon_1778082787.png'),
('font_family', 'Poppins'),
('logo_emoji', '🏪'),
('logo_file', 'logo_1778082326.png'),
('logo_size', '68'),
('logo_type', 'image'),
('sidebar_width', '230');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `description`, `amount`, `created_at`) VALUES
(7, 'hlassdslajk', '121212.00', '2026-01-28 14:22:11'),
(8, 'Chai', '50.00', '2026-02-06 11:14:19'),
(9, 'Chai', '50.00', '2026-04-26 16:17:48'),
(10, 'Chai', '50.00', '2026-04-26 16:17:51'),
(11, 'raita', '80.00', '2026-04-28 12:05:24'),
(12, 'raita', '80.00', '2026-04-28 12:05:30'),
(13, 'rent', '15000.00', '2026-05-05 19:05:56');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `barcode` varchar(50) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `stock`, `barcode`, `image`) VALUES
(24, 'chat masala', '200.00', 48, '69622e866e5a0', NULL),
(25, 'patato', '70.00', 55, '69622e866e6f0', NULL),
(26, 'tomato', '90.00', 100, '69622e866e87c', 'prod_1777120237_938.webp'),
(27, 'pakola', '150.00', 1114, '69622e866ea17', 'prod_1772537329_222.webp'),
(28, 'red chilli', '35.00', 23, '69622e866eba1', NULL),
(29, 'Apples', '120.00', 41, '69622e866eded', NULL),
(31, 'pizza', '250.00', 73, '69622e866f100', NULL),
(32, 'hunain kashif', '500.00', 992, '8038338692', 'prod_1772622227_999.png'),
(10, 'Sugar', '50.00', 86, '695fbcd35260c', NULL),
(11, 'Tea', '120.00', 49, '695fbcd3534c7', NULL),
(12, 'Coffee', '200.00', 100, '695fbcd353601', 'prod_1777119509_355.webp'),
(13, 'Brown Sugar', '70.00', 76, '695fbcd35373d', NULL),
(14, 'Milk', '90.00', 1, '695fbcd353863', NULL),
(15, 'Chocolate', '150.00', 120, '695fbcd353987', NULL),
(16, 'Bread', '35.00', 33, '695fbcd353aa7', NULL),
(17, 'Butter', '120.00', 6, '695fbcd353ba5', NULL),
(18, 'Eggs', '10.00', 163, '695fbcd353ca2', NULL),
(19, 'Cheese', '250.00', 9, '695fbcd353db4', NULL),
(34, 'ABC', '100.00', 56, '9682287719', 'prod_1772537181_716.png'),
(36, 'Handle', '100.00', 98, '69775e185677c', NULL),
(37, 'acrylic-basket-l', '50.00', 29, '69775e1856946', NULL),
(38, 'acrylic-cosmetic-organizer', '30.00', 12, '69775e1856abe', NULL),
(39, 'acrylic-fnc-holder', '80.00', 68, '69775e1856c22', NULL),
(40, 'acrylic-glass-pack', '60.00', 46, '69775e1856d5c', NULL),
(41, 'acrylic-organiser-with-lid', '40.00', 38, '69775e1856ea3', NULL),
(42, 'acrylic-organizer', '90.00', 89, '69775e1857065', NULL),
(43, 'acrylic-plates-set', '50.00', 49, '69775e18571ac', NULL),
(44, 'acrylic-rack-holder', '200.00', 192, '69775e18573fb', NULL),
(45, 'acrylic-rectangle-rack', '25.00', 25, '69775e1857577', NULL),
(46, 'acrylic-triangle-rack', '100.00', 99, '69775e18576de', NULL),
(47, 'aluminium-chana-big', '50.00', 49, '69775e185784e', NULL),
(48, 'aluminium-chana-small', '30.00', 30, '69775e1857999', NULL),
(49, 'aluminium-peeler', '80.00', 79, '69775e1857aee', NULL),
(50, 'anti-slip-matt', '60.00', 59, '69775e1857c35', NULL),
(51, 'anti-slip-matt-printed', '40.00', 40, '69775e1857d73', NULL),
(52, 'arc-lighter', '90.00', 89, '69775e1857ec3', NULL),
(53, 'bath-belt', '50.00', 50, '69775e1858022', NULL),
(54, 'black-brush-pair', '200.00', 200, '69775e1858163', NULL),
(55, 'black-stainsteel-dust-bin', '25.00', 25, '69775e18582b4', NULL),
(56, 'bottle-brush', '100.00', 99, '69775e18583e4', NULL),
(57, 'bruno-slicer-1', '50.00', 50, '69775e185851f', NULL),
(58, 'brush-spetula', '30.00', 27, '69775e1858646', NULL),
(59, 'brush-wiper', '80.00', 80, '69775e185877b', NULL),
(60, 'cake-cutter', '60.00', 60, '69775e18588a4', NULL),
(61, 'camod-brush', '40.00', 40, '69775e18589cd', NULL),
(62, 'carrot-sealer', '90.00', 90, '69775e1858b09', NULL),
(63, 'ceramic-salt-n-pepper', '50.00', 50, '69775e1858c58', NULL),
(64, 'chani-big', '200.00', 200, '69775e1858d83', NULL),
(65, 'chai-chani', '25.00', 25, '69775e1858ea6', NULL),
(66, 'charities-chopper', '100.00', 99, '69775e1858fd2', NULL),
(67, 'chimta', '50.00', 50, '69775e1859115', NULL),
(68, 'chocolate-mould', '30.00', 30, '69775e1859252', NULL),
(69, 'chota-acrylic-basket', '80.00', 79, '69775e185937f', NULL),
(70, 'chutki-pack-12-pca', '60.00', 60, '69775e18594a4', NULL),
(71, 'chutki-pouch', '40.00', 40, '69775e18595d6', NULL),
(72, 'cloth-brush', '90.00', 90, '69775e1859737', NULL),
(73, 'cloth-brush(-china)', '50.00', 50, '69775e185985b', NULL),
(74, 'cofee-beater', '200.00', 200, '69775e18599a1', NULL),
(75, 'coffe-mug', '25.00', 24, '69775e1859ae9', NULL),
(76, 'coffe-mug-small', '100.00', 100, '69775e1859c24', NULL),
(77, 'coffee-mug', '50.00', 50, '69775e1859d57', NULL),
(78, 'dastarkhan', '30.00', 30, '69775e1859e89', NULL),
(79, 'dino-soap-dish', '80.00', 80, '69775e1859fca', NULL),
(80, 'dori-chopper-big', '60.00', 60, '69775e185a0f4', NULL),
(81, 'dough-maker', '40.00', 40, '69775e185a226', NULL),
(82, 'dust-pan-set', '90.00', 90, '69775e185a360', NULL),
(83, 'ear-wax-kit', '50.00', 49, '69775e185a4e7', NULL),
(84, 'fan-duster-(microfiber)', '200.00', 200, '69775e185a64d', NULL),
(85, 'flat-mop', '25.00', 25, '69775e185a7b0', NULL),
(86, 'flower-mop', '100.00', 99, '69775e185a909', NULL),
(87, 'frigde-cover', '50.00', 48, '69775e185aa3e', NULL),
(88, 'fruit-knife', '30.00', 30, '69775e185ab93', NULL),
(89, 'fry-pan-l', '80.00', 80, '69775e185acd3', NULL),
(90, 'fry-pan-m', '60.00', 60, '69775e185ae2f', NULL),
(91, 'fry-pan-s', '40.00', 40, '69775e185af6b', NULL),
(92, 'garlic-press-1', '90.00', 90, '69775e185b0a5', NULL),
(93, 'garlic-press', '50.00', 50, '69775e185b1f3', NULL),
(94, 'gas-lighter', '200.00', 200, '69775e185b357', NULL),
(95, 'gloves-big', '25.00', 25, '69775e185b497', NULL),
(96, 'gloves', '100.00', 100, '69775e185b5e6', NULL),
(97, 'golden-hooks-3pcs', '50.00', 37, '69775e185b73a', NULL),
(98, 'grater', '30.00', 30, '69775e185b86b', NULL),
(99, 'grey-duster-(9-foot-)', '80.00', 80, '69775e185b9ab', NULL),
(100, 'handy-jhona', '60.00', 60, '69775e185bce7', NULL),
(101, 'hanger', '40.00', 40, '69775e185be36', NULL),
(102, 'home-hook', '90.00', 90, '69775e185bf68', NULL),
(103, 'hook-white--(6-pcs-)', '50.00', 50, '69775e185c0ac', NULL),
(104, 'hot-pot-picker', '200.00', 200, '69775e185c1e5', NULL),
(105, 'ice-bucket-1', '25.00', 25, '69775e185c32b', NULL),
(106, 'ice-cube-tray', '100.00', 100, '69775e185c46c', NULL),
(107, 'ice-roller', '50.00', 50, '69775e185c59e', NULL),
(108, 'ice-tray-(cube)', '30.00', 30, '69775e185c6de', NULL),
(109, 'ice-tray-with-lid', '80.00', 79, '69775e185c811', NULL),
(110, 'jali', '60.00', 60, '69775e185c949', NULL),
(111, 'juice-mug(acrylic)', '40.00', 40, '69775e185ca6d', NULL),
(112, 'kh-mahroon-rajistani', '90.00', 90, '69775e185cbb1', NULL),
(113, 'kh-mahroon-rajistani', '50.00', 50, '69775e185d046', NULL),
(114, 'kh-mahroon-rajistani', '200.00', 200, '69775e185d17f', NULL),
(115, 'kh-mahroon-rajistani', '25.00', 25, '69775e185d2dc', NULL),
(116, 'kh-mahroon-rajistani', '100.00', 100, '69775e185d438', NULL),
(117, 'kitchen-dispenser', '50.00', 50, '69775e185d54e', NULL),
(118, 'kitchen-knife-black-big', '30.00', 30, '69775e185d670', NULL),
(119, 'kitchen-knife-black-small', '80.00', 80, '69775e185d79d', NULL),
(120, 'kitchen-sticker', '60.00', 60, '69775e185d8ed', NULL),
(121, 'kp-antique-flowers', '40.00', 40, '69775e185da6b', NULL),
(122, 'kp-antique-flowers', '90.00', 90, '69775e185db8a', NULL),
(123, 'kp-antique-flowers', '50.00', 50, '69775e185dcac', NULL),
(124, 'kp-antique-flowers', '200.00', 200, '69775e185ddc6', NULL),
(125, 'kp-antique-flowers', '25.00', 25, '69775e185df3c', NULL),
(126, 'lemon-squeezer', '100.00', 100, '69775e185e07b', NULL),
(127, 'lid-covers-(100pcs)', '50.00', 50, '69775e185e338', NULL),
(128, 'masala-box-(acrylic)', '30.00', 30, '69775e185e473', NULL),
(129, 'micro-fibre-towel-pack', '80.00', 80, '69775e185e587', NULL),
(130, 'mini-beater', '60.00', 60, '69775e185e689', NULL),
(131, 'mini-cotton-duster', '40.00', 40, '69775e185e7ad', NULL),
(132, 'mini-tong', '90.00', 90, '69775e185e913', NULL),
(133, 'multi-brush-(3pcs)', '50.00', 50, '69775e185eb70', NULL),
(134, 'nali-brush', '200.00', 200, '69775e185ecb4', NULL),
(135, 'nice-bottle', '25.00', 25, '69775e185edf2', NULL),
(136, 'null-shower', '100.00', 100, '69775e185ef37', NULL),
(137, 'nylon-rope', '50.00', 50, '69775e185f061', NULL),
(138, 'oil-comb', '30.00', 30, '69775e185f16f', NULL),
(139, 'oil-container-(stainless-steel)', '80.00', 78, '69775e185f2b1', NULL),
(140, 'oil-spray-bottle', '60.00', 60, '69775e185f3d5', NULL),
(141, 'pata-hook', '40.00', 40, '69775e185f506', NULL),
(142, 'pizza-cutter', '90.00', 90, '69775e185f64c', NULL),
(143, 'plastic-basket', '50.00', 50, '69775e185f77b', NULL),
(144, 'plastic-chai-chani', '200.00', 200, '69775e185f895', NULL),
(145, 'plastic-chani-l', '25.00', 25, '69775e185f9a5', NULL),
(146, 'plastic-chani-m', '100.00', 100, '69775e185fb61', NULL),
(147, 'plastic-cutting-board', '50.00', 50, '69775e185fca5', NULL),
(148, 'plastic-dustbin', '30.00', 30, '69775e185fdef', NULL),
(149, 'plastic-namak-dani', '80.00', 80, '69775e185ff1b', NULL),
(150, 'plastic-salt-n-pepper', '60.00', 60, '69775e1860052', NULL),
(151, 'plstc-beater', '40.00', 40, '69775e1860173', NULL),
(152, 'portable-keef', '90.00', 89, '69775e18602a5', NULL),
(153, 'potato-masher-(steel)', '50.00', 49, '69775e18603f2', NULL),
(154, 'potato-masher', '200.00', 197, '69775e186053b', NULL),
(155, 'press-chopper-0.7-litre', '25.00', 25, '69775e1860682', NULL),
(156, 'chopper-1.5-litre', '100.00', 100, '69775e18607b4', NULL),
(157, 'press-chopper-2-litre', '50.00', 50, '69775e18608cb', NULL),
(158, 'rectangle-hanging-rack', '30.00', 30, '69775e18609ff', NULL),
(159, 'cloth-line-(rope)', '80.00', 80, '69775e1860b4b', NULL),
(160, 'roti-chimta', '60.00', 60, '69775e1860c7c', NULL),
(161, 'roti-matt', '40.00', 40, '69775e1860daf', NULL),
(162, 's.s-straw-2pcs', '90.00', 90, '69775e1860f28', NULL),
(163, 'scalp-massager', '50.00', 50, '69775e186106d', NULL),
(164, 'self-drainage-soap-dish', '200.00', 200, '69775e18611a7', NULL),
(165, 'self-mop', '25.00', 25, '69775e18612eb', NULL),
(166, 'semi-auto-beater', '100.00', 100, '69775e1861436', NULL),
(167, 'semi-auto-beater-(-small)', '50.00', 50, '69775e1861561', NULL),
(168, 'shoe-wipe', '30.00', 30, '69775e18616ba', NULL),
(169, 'silicon-spetula', '80.00', 80, '69775e186182d', NULL),
(170, 'silicone-air-fryer-basket', '60.00', 60, '69775e1861990', NULL),
(171, 'silicone-beater', '40.00', 40, '69775e1861ae4', NULL),
(172, 'silicone-deep-spetula', '90.00', 90, '69775e1861c05', NULL),
(173, 'silicone-deep-spoon', '50.00', 50, '69775e1861d7e', NULL),
(174, 'silicone-palta', '200.00', 200, '69775e1861ea7', NULL),
(175, 'silicone-socks', '25.00', 25, '69775e1861ff6', NULL),
(176, 'silicone-soup-spoon', '100.00', 99, '69775e1862147', NULL),
(177, 'silicone-spetula', '50.00', 50, '69775e186229a', NULL),
(178, 'silicone-spetula-set-(10pcs)', '30.00', 30, '69775e18623ea', NULL),
(179, 'silicone-travel-glass', '80.00', 80, '69775e18626b0', NULL),
(180, 'skeleton-soap-tray', '60.00', 60, '69775e18627f1', NULL),
(181, 'small-dori-chopper', '40.00', 40, '69775e1862934', NULL),
(182, 'small-steel-beater', '90.00', 90, '69775e1862a8c', NULL),
(183, 'soap-box-acrylic', '50.00', 50, '69775e1862be2', NULL),
(184, 'soap-dish-(peach)', '200.00', 200, '69775e1862d13', NULL),
(185, 'soap-dish-(t.r)', '25.00', 25, '69775e1862e6c', NULL),
(186, 'soap-dish-(wall-mounted)', '100.00', 99, '69775e1862fbc', NULL),
(187, 'soap-dish-duck', '50.00', 50, '69775e1863152', NULL),
(188, 'soap-dish-smp', '30.00', 30, '69775e1863292', NULL),
(189, 'soap-dispenser-plastic', '80.00', 80, '69775e18633e1', NULL),
(190, 'spray-bottle', '60.00', 60, '69775e1863542', NULL),
(191, 'steam-jali', '40.00', 40, '69775e1863696', NULL),
(192, 'steel-chana-big', '90.00', 90, '69775e18637fc', NULL),
(193, 'steel-chana-small', '50.00', 50, '69775e1863958', NULL),
(194, 'chai-chani-l', '200.00', 200, '69775e1863a79', NULL),
(195, 'steel-chani-small', '25.00', 25, '69775e1863bb1', NULL),
(196, 'steel-chani', '100.00', 100, '69775e1863d2a', NULL),
(197, 'chai-chani-xl', '50.00', 47, '69775e1863e72', NULL),
(198, 'steel-chuki-20pcs', '30.00', 30, '69775e1863fca', NULL),
(199, 'steel-chutki', '80.00', 80, '69775e1864106', NULL),
(200, 'steel-container', '60.00', 60, '69775e1864252', NULL),
(201, 'peeler', '40.00', 40, '69775e18643b5', NULL),
(202, 'steel-spoon', '90.00', 90, '69775e18644f4', NULL),
(203, 'steel-straw-(pink)', '50.00', 50, '69775e1864653', NULL),
(204, 'steel-straw-2-pcs', '200.00', 200, '69775e18647ce', NULL),
(205, 'steel-straw-blue', '25.00', 25, '69775e1864914', NULL),
(206, 'stickon-hook-patti', '100.00', 100, '69775e1864aa8', NULL),
(207, 'tea-ball', '50.00', 50, '69775e1864be3', NULL),
(208, 'transparent-hook', '30.00', 30, '69775e1864d2f', NULL),
(209, 'travel-kit', '80.00', 80, '69775e1864e75', NULL),
(210, 'triangle-hanging-rack', '60.00', 60, '69775e1864fb8', NULL),
(211, 'tumbler(800ml)', '40.00', 40, '69775e1865126', NULL),
(212, 'water-pump', '90.00', 89, '69775e18652a5', NULL),
(213, 'white-soap-dish-e.r', '50.00', 50, '69775e18653fc', NULL),
(214, 'wiper-yellow', '200.00', 198, '69775e186554d', NULL),
(215, 'wire-brush-small-pack', '25.00', 24, '69775e18656e9', NULL),
(216, 'pen', '1200.00', 100, '5839197906', '');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_phone` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `cashier_id` int(11) DEFAULT NULL,
  `cashier_name` varchar(100) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT 'Cash'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `product_id`, `qty`, `price`, `customer_name`, `customer_phone`, `created_at`, `cashier_id`, `cashier_name`, `payment_method`) VALUES
(83, 377, 1, '50.00', 'Walk-in', '-', '2026-01-29 18:24:38', NULL, NULL, 'Cash'),
(82, 386, 1, '100.00', 'Walk-in', '-', '2026-01-29 18:24:38', NULL, NULL, 'Cash'),
(81, 389, 1, '80.00', 'Walk-in', '-', '2026-01-29 18:24:38', NULL, NULL, 'Cash'),
(84, 345, 8, '25.00', 'Walk-in', '-', '2026-01-29 20:26:16', NULL, NULL, 'Cash'),
(85, 346, 1, '100.00', 'Walk-in', '-', '2026-01-29 20:26:16', NULL, NULL, 'Cash'),
(86, 24, 1, '200.00', 'Walk-in', '-', '2026-01-30 10:51:34', NULL, NULL, 'Cash'),
(87, 26, 1, '90.00', 'Walk-in', '-', '2026-01-30 10:51:34', NULL, NULL, 'Cash'),
(88, 28, 1, '35.00', 'Walk-in', '-', '2026-01-30 10:52:23', NULL, NULL, 'Cash'),
(89, 25, 1, '70.00', 'Walk-in', '-', '2026-01-30 10:52:23', NULL, NULL, 'Cash'),
(90, 18, 1, '10.00', 'Walk-in', '-', '2026-01-30 14:53:24', NULL, NULL, 'Cash'),
(91, 16, 1, '35.00', 'Walk-in', '-', '2026-01-30 14:53:24', NULL, NULL, 'Cash'),
(92, 17, 1, '120.00', 'Walk-in', '-', '2026-01-30 15:10:13', NULL, NULL, 'Cash'),
(93, 14, 1, '90.00', 'Walk-in', '-', '2026-01-30 15:10:13', NULL, NULL, 'Cash'),
(94, 17, 1, '120.00', 'Walk-in', '-', '2026-01-30 15:10:42', NULL, NULL, 'Cash'),
(95, 15, 1, '150.00', 'Walk-in', '-', '2026-01-30 15:10:42', NULL, NULL, 'Cash'),
(96, 15, 1, '150.00', 'Walk-in', '-', '2026-01-30 15:26:25', NULL, NULL, 'Cash'),
(97, 13, 1, '70.00', 'Walk-in', '-', '2026-01-30 15:26:25', NULL, NULL, 'Cash'),
(98, 28, 9, '35.00', 'Walk-in', '-', '2026-01-30 16:59:06', NULL, NULL, 'Cash'),
(99, 15, 9, '150.00', 'Walk-in', '-', '2026-01-30 16:59:06', NULL, NULL, 'Cash'),
(100, 27, 1, '150.00', 'Walk-in', '-', '2026-02-01 01:25:41', NULL, NULL, 'Cash'),
(101, 28, 6, '35.00', 'Walk-in', '-', '2026-02-01 01:25:41', NULL, NULL, 'Cash'),
(102, 212, 1, '90.00', 'Walk-in', '-', '2026-02-01 18:45:26', NULL, NULL, 'Cash'),
(103, 186, 1, '100.00', 'Walk-in', '-', '2026-02-01 18:45:26', NULL, NULL, 'Cash'),
(104, 27, 1, '150.00', 'ahmed', '-', '2026-02-06 16:13:22', NULL, NULL, 'Cash'),
(107, 25, 1, '70.00', 'anas', '-', '2026-02-09 19:32:27', NULL, NULL, 'Cash'),
(108, 27, 1, '150.00', 'anas', '-', '2026-02-09 19:32:27', NULL, NULL, 'Cash'),
(109, 28, 1, '35.00', 'Walk-in', '-', '2026-02-09 20:46:40', NULL, NULL, 'Cash'),
(110, 25, 1, '70.00', 'Walk-in', '-', '2026-02-09 20:46:40', NULL, NULL, 'Cash'),
(116, 27, 1, '150.00', 'Walk-in', '-', '2026-03-03 16:31:21', NULL, NULL, 'Cash'),
(113, 36, 2, '100.00', 'Walk-in', '-', '2026-03-02 02:53:18', NULL, NULL, 'Cash'),
(114, 17, 1, '120.00', 'Walk-in', '-', '2026-03-02 14:46:00', NULL, NULL, 'Cash'),
(115, 58, 2, '30.00', 'Walk-in', '-', '2026-03-02 14:46:00', NULL, NULL, 'Cash'),
(117, 154, 1, '200.00', 'Walk-in', '-', '2026-03-06 01:58:15', NULL, NULL, 'Cash'),
(118, 37, 1, '50.00', 'Walk-in', '-', '2026-03-06 01:58:15', NULL, NULL, 'Cash'),
(119, 40, 1, '60.00', 'Walk-in', '-', '2026-03-06 01:58:15', NULL, NULL, 'Cash'),
(120, 34, 3, '100.00', 'Walk-in', '-', '2026-03-16 23:31:49', NULL, NULL, 'Cash'),
(121, 37, 1, '50.00', 'Walk-in', '-', '2026-03-16 23:31:49', NULL, NULL, 'Cash'),
(122, 38, 1, '30.00', 'Walk-in', '-', '2026-03-16 23:31:49', NULL, NULL, 'Cash'),
(123, 19, 1, '250.00', 'Walk-in', '-', '2026-03-23 21:38:29', NULL, NULL, 'Cash'),
(124, 197, 3, '50.00', 'Walk-in', '-', '2026-03-23 21:38:29', NULL, NULL, 'Cash'),
(125, 37, 1, '50.00', 'Walk-in', '-', '2026-03-24 18:07:54', NULL, NULL, 'Cash'),
(126, 47, 1, '50.00', 'Walk-in', '-', '2026-03-24 18:07:54', NULL, NULL, 'Cash'),
(127, 34, 1, '100.00', 'Walk-in', '-', '2026-03-24 18:10:10', NULL, NULL, 'Cash'),
(128, 27, 1, '150.00', 'Walk-in', '-', '2026-03-24 18:10:10', NULL, NULL, 'Cash'),
(129, 34, 1, '100.00', 'Walk-in', '-', '2026-03-24 18:37:12', NULL, NULL, 'Cash'),
(130, 37, 1, '50.00', 'Walk-in', '-', '2026-03-24 18:37:24', NULL, NULL, 'Cash'),
(131, 38, 1, '30.00', 'Walk-in', '-', '2026-03-24 18:37:24', NULL, NULL, 'Cash'),
(132, 34, 1, '100.00', 'Walk-in', '-', '2026-03-24 18:39:55', NULL, NULL, 'Cash'),
(133, 40, 1, '60.00', 'Walk-in', '-', '2026-03-24 18:39:55', NULL, NULL, 'Cash'),
(134, 37, 1, '50.00', 'Walk-in', '-', '2026-03-24 18:40:18', NULL, NULL, 'Cash'),
(135, 38, 1, '30.00', 'Walk-in', '-', '2026-03-24 18:40:18', NULL, NULL, 'Cash'),
(136, 39, 1, '80.00', 'Walk-in', '-', '2026-03-24 18:40:18', NULL, NULL, 'Cash'),
(137, 40, 1, '60.00', 'Walk-in', '-', '2026-03-24 18:40:18', NULL, NULL, 'Cash'),
(138, 37, 2, '50.00', 'Walk-in', '-', '2026-03-24 18:42:04', NULL, NULL, 'Cash'),
(139, 38, 1, '30.00', 'Walk-in', '-', '2026-03-24 18:42:04', NULL, NULL, 'Cash'),
(140, 39, 1, '80.00', 'Walk-in', '-', '2026-03-24 18:42:04', NULL, NULL, 'Cash'),
(141, 40, 1, '60.00', 'Walk-in', '-', '2026-03-24 18:42:04', NULL, NULL, 'Cash'),
(142, 34, 4, '100.00', 'Walk-in', '-', '2026-03-24 18:42:31', NULL, NULL, 'Cash'),
(143, 38, 1, '30.00', 'Walk-in', '-', '2026-03-27 20:49:03', NULL, NULL, 'Cash'),
(144, 37, 1, '50.00', 'Walk-in', '-', '2026-03-27 20:49:03', NULL, NULL, 'Cash'),
(145, 34, 4, '100.00', 'Walk-in', '-', '2026-03-27 20:49:03', NULL, NULL, 'Cash'),
(146, 34, 1, '100.00', 'Walk-in', '-', '2026-03-27 20:58:44', NULL, NULL, 'Cash'),
(147, 37, 1, '50.00', 'Walk-in', '-', '2026-03-27 20:58:44', NULL, NULL, 'Cash'),
(148, 38, 1, '30.00', 'Walk-in', '-', '2026-03-27 20:58:44', NULL, NULL, 'Cash'),
(149, 40, 1, '60.00', 'Walk-in', '03222346893', '2026-03-28 19:57:02', NULL, NULL, 'Cash'),
(150, 39, 1, '80.00', 'Walk-in', '03222346893', '2026-03-28 19:57:02', NULL, NULL, 'Cash'),
(151, 37, 1, '50.00', 'Walk-in', '-', '2026-03-31 20:41:37', NULL, NULL, 'Cash'),
(152, 34, 1, '100.00', 'Walk-in', '-', '2026-04-08 10:30:22', NULL, NULL, 'Cash'),
(153, 37, 2, '50.00', 'Walk-in', '-', '2026-04-08 10:30:22', NULL, NULL, 'Cash'),
(154, 38, 1, '30.00', 'Walk-in', '-', '2026-04-08 10:30:22', NULL, NULL, 'Cash'),
(155, 39, 1, '80.00', 'Walk-in', '-', '2026-04-08 10:30:22', NULL, NULL, 'Cash'),
(156, 38, 1, '30.00', 'Walk-in', '-', '2026-04-13 19:28:52', NULL, NULL, 'Cash'),
(157, 39, 1, '80.00', 'Walk-in', '-', '2026-04-13 19:28:52', NULL, NULL, 'Cash'),
(158, 40, 1, '60.00', 'Walk-in', '-', '2026-04-13 19:31:03', NULL, NULL, 'Cash'),
(159, 41, 1, '40.00', 'Walk-in', '-', '2026-04-13 19:31:03', NULL, NULL, 'Cash'),
(160, 34, 2, '100.00', 'Walk-in', '-', '2026-04-13 19:38:45', NULL, NULL, 'Cash'),
(161, 37, 1, '50.00', 'Walk-in', '-', '2026-04-13 19:38:45', NULL, NULL, 'Cash'),
(162, 34, 1, '100.00', 'Walk-in', '-', '2026-04-13 19:44:46', NULL, NULL, 'Cash'),
(163, 37, 1, '50.00', 'Walk-in', '-', '2026-04-13 19:44:46', NULL, NULL, 'Cash'),
(164, 38, 1, '30.00', 'Walk-in', '-', '2026-04-13 19:44:46', NULL, NULL, 'Cash'),
(165, 34, 1, '100.00', 'Walk-in', '-', '2026-04-13 19:51:06', NULL, NULL, 'Cash'),
(166, 37, 1, '50.00', 'Walk-in', '-', '2026-04-13 19:51:06', NULL, NULL, 'Cash'),
(167, 38, 1, '30.00', 'Walk-in', '-', '2026-04-13 19:51:06', NULL, NULL, 'Cash'),
(168, 34, 1, '100.00', 'Walk-in', '-', '2026-04-13 19:51:27', NULL, NULL, 'Cash'),
(169, 37, 1, '50.00', 'Walk-in', '-', '2026-04-13 19:51:27', NULL, NULL, 'Cash'),
(170, 39, 1, '80.00', '12123', '2323123', '2026-04-13 19:52:58', NULL, NULL, 'Cash'),
(171, 40, 1, '60.00', '12123', '2323123', '2026-04-13 19:52:58', NULL, NULL, 'Cash'),
(172, 34, 1, '100.00', 'Walk-in', '-', '2026-04-24 21:27:13', NULL, NULL, 'Cash'),
(173, 24, 2, '200.00', 'Walk-in', '-', '2026-04-25 15:10:22', NULL, NULL, 'Cash'),
(174, 154, 2, '200.00', 'Walk-in', '-', '2026-04-25 15:10:22', NULL, NULL, 'Cash'),
(175, 32, 1, '500.00', 'Walk-in', '-', '2026-04-25 15:10:22', NULL, NULL, 'Cash'),
(176, 29, 1, '120.00', 'Walk-in', '-', '2026-04-25 15:10:22', NULL, NULL, 'Cash'),
(177, 152, 1, '90.00', 'Walk-in', '-', '2026-04-25 16:02:10', NULL, NULL, 'Cash'),
(178, 38, 1, '30.00', 'Walk-in', '-', '2026-04-25 20:44:23', NULL, NULL, 'Cash'),
(179, 40, 1, '60.00', 'Walk-in', '-', '2026-04-25 20:53:14', NULL, NULL, 'Cash'),
(180, 37, 1, '50.00', 'abeer', '03233273974', '2026-04-26 21:15:38', NULL, NULL, 'Cash'),
(181, 34, 1, '100.00', 'Walk-in', '-', '2026-04-26 21:16:55', NULL, NULL, 'Cash'),
(182, 38, 1, '30.00', 'Walk-in', '-', '2026-04-27 16:37:18', 8, 'hunain', 'Cash'),
(183, 39, 1, '80.00', 'Walk-in', '-', '2026-04-27 16:37:18', 8, 'hunain', 'Cash'),
(184, 34, 1, '100.00', 'Walk-in', '-', '2026-04-27 16:52:41', 8, 'hunain', 'Cash'),
(185, 37, 1, '50.00', 'Walk-in', '-', '2026-04-27 16:52:41', 8, 'hunain', 'Cash'),
(186, 38, 1, '30.00', 'Walk-in', '-', '2026-04-27 16:52:51', 8, 'hunain', 'Cash'),
(187, 34, 1, '100.00', 'Walk-in', '-', '2026-04-27 16:52:51', 8, 'hunain', 'Cash'),
(188, 39, 1, '80.00', 'Walk-in', '-', '2026-04-27 17:00:36', 8, 'hunain', 'Cash'),
(189, 40, 1, '60.00', 'Walk-in', '-', '2026-04-27 17:00:36', 8, 'hunain', 'Cash'),
(190, 41, 1, '40.00', 'Walk-in', '-', '2026-04-27 17:00:36', 8, 'hunain', 'Cash'),
(191, 39, 1, '80.00', 'Walk-in', '-', '2026-04-27 17:00:48', 8, 'hunain', 'Cash'),
(192, 40, 1, '60.00', 'Walk-in', '-', '2026-04-27 17:00:48', 8, 'hunain', 'Cash'),
(193, 38, 1, '30.00', 'Walk-in', '-', '2026-04-27 20:14:34', 8, 'hunain', 'Cash'),
(194, 37, 1, '50.00', 'Walk-in', '-', '2026-04-27 20:14:34', 8, 'hunain', 'Cash'),
(195, 87, 1, '50.00', 'Walk-in', '-', '2026-04-28 16:53:38', 16, 'abeer', 'Cash'),
(196, 46, 1, '100.00', 'Walk-in', '-', '2026-04-28 17:40:12', 16, 'abeer', 'Credit'),
(197, 29, 3, '120.00', 'Walk-in', '-', '2026-04-30 16:20:18', 8, 'hunain', 'Cash'),
(198, 27, 2, '150.00', 'Walk-in', '-', '2026-04-30 16:20:18', 8, 'hunain', 'Cash'),
(199, 34, 1, '100.00', 'Walk-in', '-', '2026-04-30 16:47:41', 13, 'Anas', 'Cash'),
(200, 50, 1, '60.00', 'hunain', '-', '2026-05-05 23:59:08', 16, 'abeer', 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `role` enum('admin','cashier','viewer') NOT NULL DEFAULT 'viewer'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user`, `pass`, `created_at`, `role`) VALUES
(13, 'Anas', '$2y$10$fLM48C7tAEJ5e91cgYYML.U2MRtYADdJgRtfpqhk1Z0I2e3DVbkvK', '2026-01-24 09:01:52', 'admin'),
(11, 'dayan', '$2y$10$Zx7S.tXC.Xf7UtfxrTlRLulLKC2JZ9WKzbpJAH0dQ0AiaKlDUFzQO', '2026-01-23 15:01:50', 'viewer'),
(12, 'Abdulsamad', '$2y$10$yIo4EcqIKal4IVgZRniyVOt9qNEBAPaFEgNj1XCPQKoJEUJbQm0a.', '2026-01-23 15:38:41', 'viewer'),
(10, 'ibrahim', '$2y$10$g1x5cSR6R0B5YumxNF1kz.EWtBGBPTNPSrfPu4Hqjn7q6uDvLqKNW', '2026-01-23 11:50:11', 'viewer'),
(16, 'abeer', '$2y$10$/U4o/tZepZ4CE3MlEnehyedp9sB7gSYKAUBKNXT6/RcE3.ugSFgh2', '2026-01-24 20:41:57', 'admin'),
(8, 'hunain', '$2y$10$0q4PVRN.HKJabtxhd.nY1OsEaORItDfeQ/LUwF1wlxKsUvga0sDOC', '2026-01-23 11:49:29', 'admin'),
(17, 'Sheikhu', '$2y$10$QRypUMHCtt5JU2kozDgA5uhdk1uTDAjJl78y5wQAAqTKUnCwDtfgu', '2026-01-27 20:09:53', 'viewer'),
(15, 'anasasif', '$2y$10$lTUTYVnVc96BLVat.ztpzuKrN5MhEhTtSdPpN3UdUWsnaxkcXc5Ou', '2026-01-24 20:39:57', 'viewer'),
(18, 'Ahmed', '$2y$10$Iype8Ao6L/ISH90SfaswpuqCuUhQkjj.ghILWQ/jWvHuOrPOQbIxy', '2026-01-30 12:03:21', 'admin'),
(19, 'Samad', '$2y$10$/h0ZrDoDVL8BCwTCZIgI1ux8OeheJWbdtJJlzPR6IiKLAV0zsvFEK', '2026-02-01 13:28:13', 'viewer'),
(20, 'faisal', '$2y$10$JTe/IO8GhL90WbgnplcUWua8TLChccJFtkpXcS2wojBgve8YOJOwO', '2026-03-12 10:21:32', 'viewer'),
(21, 'subhan', '$2y$10$5U8HZSPRj9UjxvhY3nw3IuhPZ4hYpZhrEiTdrC5E39TBE.6aF4Aty', '2026-03-18 10:53:42', 'viewer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
