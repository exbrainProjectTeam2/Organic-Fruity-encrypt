-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 07, 2021 at 04:24 AM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cusaccount`
--

CREATE TABLE `cusaccount` (
  `id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `del_flag` int DEFAULT '0',
  `create_date` varchar(10) DEFAULT NULL,
  `update_date` varchar(10) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `customer_lists`
--

CREATE TABLE `customer_lists` (
  `customer_id` int NOT NULL,
  `name` varchar(40) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `address` varchar(255)  DEFAULT NULL,
  `membership` varchar(2) NOT NULL,
  `total_orders` int DEFAULT NULL,
  `d_flag` int NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Table structure for table `m_product`
--

CREATE TABLE `m_product` (
  `product_id` int NOT NULL,
  `name` varchar(126) NOT NULL,
  `category` varchar(20) NOT NULL,
  `p_id` varchar(20) NOT NULL,
  `salePrice` int NOT NULL,
  `initPrice` int NOT NULL,
  `rating` int NOT NULL,
  `quantity` int NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `del_flg` int NOT NULL DEFAULT '0',
  `create_date` varchar(10) NOT NULL,
  `update_date` varchar(10) NOT NULL
);

--
-- Dumping data for table `m_product`
--

INSERT INTO `m_product` (`product_id`, `name`, `category`, `p_id`, `salePrice`, `initPrice`, `rating`, `quantity`, `image`, `description`, `del_flg`, `create_date`, `update_date`) VALUES
(1, 'StrawBerry', 'fruits', 'F001', 2000, 1800, 4, 14, 'strawberry1.png', ' A strawberry is both a low-growing, flowering plant and also the name of the fruit that it produces.', 0, '2021/11/18', ''),
(2, 'Green Apple', 'fruits', 'F002', 1500, 1400, 4, 22, 'greenApple1.png', 'Green apples contain a compound called pectin, a fiber source that works as a prebiotic to promote the growth of healthy bacteria in your gut.', 0, '2021/11/18', ''),
(3, 'Cabbage', 'fruits', 'F003', 700, 650, 4, 1, 'cabbage.png', 'The cabbage plant, Brassica oleracea, is an herbaceous annual or biennial vegetable in the family Brassicaceae grown for its edible head. The head of the cabbage is round and forms on a short thick stem.', 0, '2021/11/18', ''),
(4, 'Carrots', 'vegetables', 'V001', 500, 500, 4, 8, 'carrot.png', 'carrot, (Daucus carota), herbaceous, generally biennial plant of the Apiaceae family that produces an edible taproot.', 0, '2021/11/18', ''),
(5, 'Chicken', 'meat', 'M001', 8000, 7000, 5, 5, 'chicken1.png', 'Chicken meat is known by its nutritional quality, as it contains significant amount of high-quality and easily digestible protein and a low portion of saturated fat.', 0, '2021/11/18', ''),
(6, 'FruitDragon', 'fruits', 'F004', 1500, 1400, 4, 13, 'fruitdragon.png', 'Dragon fruit may look exotic, but its flavors are similar to other fruits. Its taste has been described as a slightly sweet cross between a kiwi and a pear.', 0, '2021/11/18', ''),
(7, 'Grapes', 'fruits', 'F005', 5000, 4500, 4, 17, 'grape.png', 'Grapes are fleshy, rounded fruits that grow in clusters made up of many fruits of greenish, yellowish or purple skin.', 0, '2021/11/18', ''),
(8, 'Watermelon', 'fruits', 'F006', 2500, 2500, 4, 18, 'watermelon.png', 'The watermelon is a large fruit of a more or less spherical shape. It has an oval or spherical shape and a dark green and smooth rind, sometimes showing irregular areas of a pale green colour. It has a sweet, juicy, refreshing flesh of yellowish or reddis', 0, '2021/11/18', ''),
(9, 'Pork', 'meat', 'M002', 15000, 13000, 5, 11, 'Pork.png', 'The most desirable pork is grayish pink in colour, firm and fine-grained, well-marbled, and covered with an outer layer of firm white fat.', 0, '2021/11/18', ''),
(10, 'Avocado', 'fruits', 'F007', 1000, 1000, 4, 12, 'avocado.png', 'Avocado trees produce clusters of small, green-yellow flowers at the end of twigs and a large, fleshy, pear-shaped fruit with a single large seed.', 0, '2021/11/18', ''),
(11, 'Beef', 'meat', 'M003', 20000, 19000, 5, 19, 'beef.png', 'Beef, flesh of mature cattle, as distinguished from veal, the flesh of calves. The best beef is obtained from early maturing, special beef breeds. High-quality beef has firm, velvety, fine-grained lean, bright red in colour and well-marbled.', 0, '2021/11/18', ''),
(12, 'Cherry', 'fruits', 'F008', 8000, 7500, 4, 19, 'cherry.png', 'Cherry, any of various trees belonging to the genus Prunus and their edible fruits. The fruit is a fleshy drupe (stone fruit) that is generally heart-shaped to nearly globular,', 0, '2021/11/18', ''),
(13, 'Onion', 'vegetables', 'V002', 600, 550, 4, 19, 'onion.png', 'An onion is a round vegetable with a brown skin that grows underground. It has many white layers on its inside which have a strong, sharp smell and taste.', 0, '2021/11/18', ''),
(14, 'Celery', 'vegetables', 'V003', 500, 450, 4, 26, 'celery1.png', 'Celery is a vegetable with long petioles, meaty and succulent that are known by the name of stalks.', 0, '2021/11/18', ''),
(15, 'Peach', 'fruits', 'F009', 6000, 5500, 4, 15, 'peach1.png', 'A peach is a very sweet, juicy fruit with an edible peel and a hard pit in the middle. Peaches vary in color from almost white to yellow and pinkish-red.', 0, '2021/11/18', ''),
(16, 'Mangoo', 'fruits', 'F010', 1500, 1500, 4, 10, 'mango.png', 'A mango is a sweet tropical fruit, and it\'s also the name of the trees on which the fruit grows. Ripe mangoes are juicy, fleshy, and delicious.', 0, '2021/11/18', ''),
(17, 'Fish', 'meat', 'M004', 5000, 5000, 5, 6, 'fish.png', 'Fish is among the healthiest foods on the planet.\r\nIt’s loaded with important nutrients, such as protein and vitamin D.', 0, '2021/11/18', ''),
(18, 'Mutton Meat', 'meat', 'M005', 16000, 15000, 5, 11, 'muttonMeat.png', 'Mutton refers to the flesh of the mature ram or ewe at least one year old; the meat of sheep between 12 and 20 months old may be called yearling mutton.', 0, '2021/11/18', '');

-- --------------------------------------------------------

--
-- Table structure for table `m_rating`
--

CREATE TABLE `m_rating` (
  `id` int NOT NULL,
  `name` varchar(128) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `rating` int NOT NULL,
  `rating_date` varchar(30) DEFAULT NULL,
  `customer_id` int NOT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `total_price` int NOT NULL,
  `del_flag` int NOT NULL DEFAULT '0',
  `buy_date` varchar(10)NOT NULL,
  `updatae_date` varchar(10) DEFAULT NULL,
  `create_date` varchar(10)  NOT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` varchar(30)  NOT NULL,
  `quantity` int NOT NULL,
  `create_date` varchar(10)  NOT NULL,
  `total_price` int NOT NULL,
  `del_flag` int DEFAULT '0',
  `update_date` varchar(10) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int NOT NULL,
  `setting` varchar(15) NOT NULL,
  `checks` int NOT NULL DEFAULT '0'
);

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting`, `checks`) VALUES
(1, 'maintenance', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cusaccount`
--
ALTER TABLE `cusaccount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_lists`
--
ALTER TABLE `customer_lists`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `m_product`
--
ALTER TABLE `m_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `m_rating`
--
ALTER TABLE `m_rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cusaccount`
--
ALTER TABLE `cusaccount`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_lists`
--
ALTER TABLE `customer_lists`
  MODIFY `customer_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m_product`
--
ALTER TABLE `m_product`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `m_rating`
--
ALTER TABLE `m_rating`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
