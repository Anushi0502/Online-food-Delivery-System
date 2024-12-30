-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2024 at 06:06 AM
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
-- Database: `ofd`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categorieId` int(12) NOT NULL,
  `categorieName` varchar(255) NOT NULL,
  `categorieDesc` text NOT NULL,
  `categorieCreateDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categorieId`, `categorieName`, `categorieDesc`, `categorieCreateDate`) VALUES
(1, 'Starters', 'A delight for veggie lovers! Choose from our wide range of delicious vegetarian s, it\'s softer and tastier', '2021-03-17 18:16:28'),
(2, 'NorthIndian', 'Choose your favourite non-veg s from the Domino\'s  menu. Get fresh non-veg  with your choice of crusts & toppings', '2021-03-17 18:17:14'),
(3, 'South Indian', 'Indulge into mouth-watering taste of  mania range, perfect answer to all your food cravings', '2021-03-17 18:17:43'),
(4, 'Special Combos', 'Complement your  with wide range of sides available at Domino\'s  India', '2021-03-17 18:19:10'),
(5, 'BEVERAGES', 'Complement your  with wide range of beverages available at Domino\'s  India', '2021-03-17 21:58:58'),
(6, 'Pizza', 'Fresh Pan  Tastiest Pan . ... Domino\'s freshly made pan-baked ; deliciously soft ,buttery,extra cheesy and delightfully crunchy.', '2021-03-18 07:55:28'),
(7, 'BURGER ', 'Domino’s  Introducing all new Burger  with the tag line looks like a burger, tastes like a . Burger  is burger sized but comes in a small  box. It is come with  toppings such as herbs, vegetables, tomato sauce and mozzarella,', '2021-03-18 08:06:30'),
(8, 'Momos', 'CHOICE OF TOPPINGS', '2021-03-18 08:13:47');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactId` int(21) NOT NULL,
  `userId` int(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phoneNo` bigint(21) NOT NULL,
  `orderId` int(21) NOT NULL DEFAULT 0                                                         COMMENT 'If problem is not related to the order then order id = 0',
  `message` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contactreply`
--

CREATE TABLE `contactreply` (
  `id` int(21) NOT NULL,
  `contactId` int(21) NOT NULL,
  `userId` int(23) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliverydetails`
--

CREATE TABLE `deliverydetails` (
  `id` int(21) NOT NULL,
  `orderId` int(21) NOT NULL,
  `deliveryBoyName` varchar(35) NOT NULL,
  `deliveryBoyPhoneNo` bigint(25) NOT NULL,
  `deliveryTime` int(200) NOT NULL COMMENT 'Time in minutes',
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `foodId` int(12) NOT NULL,
  `foodName` varchar(255) NOT NULL,
  `foodPrice` int(12) NOT NULL,
  `foodDesc` text NOT NULL,
  `foodCategorieId` int(12) NOT NULL,
  `foodPubDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`foodId`, `foodName`, `foodPrice`, `foodDesc`, `foodCategorieId`, `foodPubDate`) VALUES
(1, 'Margherita', 99, 'A hugely popular margherita, with a deliciously tangy single cheese topping\r\n\r\n', 6, '2021-03-17 21:03:26'),
(2, 'Double Cheese Margherita', 199, 'The ever-popular Margherita - loaded with extra cheese... oodies of it', 6, '2021-03-17 21:20:58'),
(3, 'Farm House\r\n', 149, 'A  that goes ballistic on veggies! Check out this mouth watering overload of crunchy, crisp capsicum, succulent mushrooms and fresh tomatoes\r\n\r\n', 6, '2021-03-17 21:22:07'),
(4, 'Peppy Paneer', 249, 'Chunky paneer with crisp capsicum and spicy red pepper - quite a mouthful!\r\n\r\n', 6, '2021-03-17 21:23:05'),
(5, 'Mexican Green Wave\r\n', 149, 'A  loaded with crunchy onions, crisp capsicum, juicy tomatoes and jalapeno with a liberal sprinkling of exotic Mexican herbs.\r\n\r\n', 6, '2021-03-17 21:23:48'),
(6, 'Deluxe Veggie\r\n', 319, 'For a vegetarian looking for a BIG treat that goes easy on the spices, this one\'s got it all.. The onions, the capsicum, those delectable mushrooms - with paneer and golden corn to top it all.\r\n\r\n', 6, '2021-03-17 21:24:38'),
(7, 'Veg Extravaganza\r\n', 299, 'A  that decidedly staggers under an overload of golden corn, exotic black olives, crunchy onions, crisp capsicum, succulent mushrooms, juicyfresh tomatoes and jalapeno - with extra cheese to go all around.\r\n\r\n', 6, '2021-03-17 21:25:42'),
(8, 'Cheese N Corn\r\n', 199, 'Cheese I Golden Corn', 6, '2021-03-17 21:26:31'),
(9, 'PANEER MAKHANI\r\n', 219, 'Paneer and Capsicum on Makhani Sauce', 6, '2021-03-17 21:27:21'),
(10, 'VEGGIE PARADISE\r\n', 299, 'Goldern Corn, Black Olives, Capsicum & Red Paprika\r\n\r\n', 6, '2021-03-17 21:28:06'),
(11, 'FRESH VEGGIE', 149, 'Onion I Capsicum', 6, '2021-03-17 21:28:49'),
(12, 'Indi Tandoori Paneer\r\n', 349, 'It is hot. It is spicy. It is oh-so-Indian. Tandoori paneer with capsicum I red paprika I mint mayo\r\n\r\n', 6, '2021-03-17 21:29:41'),
(37, 'Lipton Ice Tea', 25, ' 250ml', 5, '2021-03-17 22:12:53'),
(38, 'Mirinda', 35, '500ml', 5, '2021-03-17 22:13:38'),
(39, 'PEPSI BLACK CAN', 45, 'PEPSI BLACK CAN', 5, '2021-03-17 22:14:24'),
(40, 'Pepsi\r\n', 52, '500ml', 5, '2021-03-17 22:16:29'),
(41, '7Up', 52, '500ml', 5, '2021-03-17 22:17:08'),
(47, 'PIZZA BURGER - CLASSIC VEG', 129, 'Bite into delight! Witness the epic combination of  and burger with our classic Burger , that looks good and tastes great!', 7, '2021-03-18 08:09:17'),
(48, 'BURGER - PREMIUM VEG', 139, 'The good just got better! Treat yourself to the premium taste of the Burger , that looks good and tastes great with paneer and red paprika.', 7, '2021-03-18 08:09:59'),
(53, 'Packaged Drinking Water', 20, 'Drinking Water	', 5, '2021-03-18 08:20:40'),
(69, 'Rajma Chawal', 129, 'Rajma Chawal, a classic North Indian comfort dish, features tender red kidney beans cooked in a fragrant tomato-based gravy, served alongside fluffy, aromatic basmati rice. Infused with a medley of spices like cumin, coriander, and garam masala, this hearty meal is a symphony of flavors and textures. Whether enjoyed as a satisfying lunch or a comforting dinner, Rajma Chawal promises to warm the soul and satisfy the palate with its wholesome goodness.', 2, '2024-04-17 13:40:54'),
(70, 'Kadhai Paneer', 229, 'Kadhai Paneer is a vibrant and aromatic dish that originates from North Indian cuisine. It features succulent cubes of paneer cooked with colorful bell peppers, onions, tomatoes, and a blend of aromatic spices. The dish derives its name from the \'kadhai\' or traditional Indian wok in which it is cooked, imparting a unique smoky flavor. With its rich tomato-based gravy and bold flavors, Kadhai Paneer is a true culinary delight, best enjoyed with freshly made naan or steamed rice.', 2, '2024-04-17 13:42:31'),
(71, 'Paneer Naan', 55, 'Paneer naan, a heavenly fusion of soft, fluffy bread and creamy paneer cheese, offers a tantalizing twist on traditional Indian flatbread. Each bite boasts the perfect balance of chewy texture and savory richness, with the paneer lending a subtle yet satisfying creaminess. Whether enjoyed on its own or paired with aromatic curries or chutneys, paneer naan promises a culinary experience that\'s both comforting and indulgent, sure to leave taste buds craving more.', 2, '2024-04-17 13:42:31'),
(72, 'Idli Sambhar', 110, 'Fresh idlies made from fermented rice mix served with Sweet and Tangy Sambhar', 3, '2024-04-17 13:43:58'),
(74, 'Shahi Paneer', 249, 'Soft Cooked paneer chunks sinked in freshly made gravy garnished with coriander', 2, '2024-04-17 13:53:17'),
(75, 'Samosa', 20, 'Golden, triangular pockets of delight, samosas are a beloved Indian snack bursting with flavor. Crispy on the outside and filled with a tantalizing mixture of spiced potatoes, peas, and sometimes meat or lentils, these savory pastries are a delightful blend of textures and spices. Served hot and accompanied by tangy chutneys, samosas are the perfect indulgence for any occasion, from casual gatherings to festive celebrations.', 1, '2024-04-17 13:55:52'),
(77, 'French Fries', 49, 'Crispy on the outside, fluffy on the inside, French fries are the ultimate comfort food. These golden batons of potato goodness are fried to perfection, offering a satisfying crunch with every bite. Whether enjoyed as a side dish, a snack on the go, or topped with decadent sauces and seasonings, French fries are a timeless classic that never fails to satisfy cravings for something savory and delicious.', 1, '2024-04-17 14:00:56'),
(78, 'Manchurian', 129, 'Crispy, bite-sized balls of goodness made from a savory mixture of vegetables or meat, coated in a tangy and spicy Manchurian sauce. This Indo-Chinese favorite combines the rich flavors of garlic, ginger, soy sauce, and green onions, delivering a delightful balance of sweet and savory notes with a hint of heat. Whether enjoyed as a starter or paired with steamed rice, Manchurian promises a flavor-packed culinary adventure.', 1, '2024-04-17 14:00:56'),
(79, 'Tomato Rasam', 99, 'Made with Red Tomatos Freshly Harvested Garnished with Fresh Coriander.', 3, '2024-04-19 23:12:11'),
(80, 'Meedu Wada ', 96, 'It is just like idli but made up of pulses and very light in weignt and also served with sambhar.', 3, '2024-04-19 23:16:11'),
(81, 'Coconut Rice', 129, 'Rice cooked with fine cutted coconut pieces gives amazing aroma and flavor.', 3, '2024-04-19 23:17:14'),
(82, 'Tandoori Momos', 139, 'Momos cooked in fire flames', 8, '2024-04-19 23:24:15'),
(83, 'Paneer Momos', 259, 'Momos filled with fried paneer stuffing in it', 8, '2024-04-19 23:24:15'),
(84, 'Schezwan Paneer Momos', 149, 'Paneer momos with Schezwan chutney', 8, '2024-04-19 23:30:48'),
(85, 'Fried Momos', 149, 'Momos fried after Steam in Vegetable Oil that gives a Brown Texture to it', 8, '2024-04-19 23:32:18'),
(86, 'Special Veg Thali I', 269, 'Contains-Lauki (Ghiya) Kofta Curry, Chana Masala, Raita, Methi Lachha Paratha, Papad, Mango ', 4, '2024-04-20 09:15:00'),
(87, 'Special Veg Thali II', 249, 'Contains-Dal Tadka, Bhindi Sabzi, Rajma Masala, Soya Chaap Tikka Masala, Mango Pickle, Chapati, Rice.', 4, '2024-04-20 09:15:50'),
(88, 'Veg Thali III', 255, 'Contains-Dhaba Dal Tadka, Paneer Butter Masala, Karela Sabzi, Boondi Raita, Chutney, Salad, Paratha.', 4, '2024-04-20 09:16:46'),
(89, 'Veg Thali IV', 199, 'Contains-Chana Curry, Dal Fry, Aloo Gutke, Tandoori Paratha, Rice, Salad, Achaar, Masala Chaas, Mango. \r\n\r\n', 4, '2024-04-20 09:17:50'),
(90, 'Barbeque Paneer chunks', 99, 'Juicy cubes of paneer, marinated in a smoky blend of spices and grilled to perfection, offering a delectable twist on traditional barbecue flavors. Tender and flavorful, these barbecue paneer cubes are a vegetarian delight, perfect for grilling sessions or as a tantalizing appetizer for any occasion.', 1, '2024-04-20 09:22:00');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int(21) NOT NULL,
  `orderId` int(21) NOT NULL,
  `foodId` int(21) NOT NULL,
  `itemQuantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderId` int(21) NOT NULL,
  `userId` int(21) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipCode` int(21) NOT NULL,
  `phoneNo` bigint(21) NOT NULL,
  `amount` int(200) NOT NULL,
  `paymentMode` enum('0','1') NOT NULL DEFAULT '0'                             COMMENT '0=cash on delivery, \r\n1=online ',
  `orderStatus` enum('0','1','2','3','4','5','6') NOT NULL DEFAULT '0'            COMMENT '0=Order Placed.\r\n1=Order Confirmed.\r\n2=Preparing your Order.\r\n3=Your order is on the way!\r\n4=Order Delivered.\r\n5=Order Denied.\r\n6=Order Cancelled.',
  `orderDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sitedetail`
--

CREATE TABLE `sitedetail` (
  `tempId` int(11) NOT NULL,
  `systemName` varchar(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `contact1` bigint(21) NOT NULL,
  `contact2` bigint(21) DEFAULT NULL COMMENT 'Optional',
  `address` text NOT NULL,
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sitedetail`
--

INSERT INTO `sitedetail` (`tempId`, `systemName`, `email`, `contact1`, `contact2`, `address`, `dateTime`) VALUES
(1, 'Food World', 'foodworld@gmail.com', 6785768478,4588878747 , 'food world', '2021-03-23 19:56:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(21) NOT NULL,
  `username` varchar(21) NOT NULL,
  `firstName` varchar(21) NOT NULL,
  `lastName` varchar(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `userType` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=user\r\n1=admin',
  `password` varchar(255) NOT NULL,
  `joinDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `phone`, `userType`, `password`, `joinDate`) VALUES
(1, 'rahul24', 'Rahul', 'Patel', 'rahul@example.com', '9876543210', 'admin', 'rahul24', '2024-04-21'),
(2, 'meenakshi', 'Meenakshi', 'Sharma', 'meenakshi@example.com', '8765432109', 'user', 'meenakshi', '2024-04-21'),
(3, 'vijay_kumar', 'Vijay', 'Kumar', 'vijay@example.com', '7654321098', 'user', 'vijay_kumar', '2024-04-21'),
(4, 'priya_singh', 'Priya', 'Singh', 'priya@example.com', '6543210987', 'user', 'priya_singh', '2024-04-21'),
(5, 'suresh_indulkar', 'Suresh', 'Indulkar', 'suresh@example.com', '5432109876', 'user', 'suresh_indulkar', '2024-04-21'),
(6, 'anjali_desai', 'Anjali', 'Desai', 'anjali@example.com', '4321098765', 'user', 'anjali_desai', '2024-04-21'),
(7, 'akash_rao', 'Akash', 'Rao', 'akash@example.com', '3210987654', 'user', 'akash_rao', '2024-04-21'),
(8, 'deepika_nair', 'Deepika', 'Nair', 'deepika@example.com', '2109876543', 'user', 'deepika_nair', '2024-04-21'),
(9, 'arjun_gupta', 'Arjun', 'Gupta', 'arjun@example.com', '1098765432', 'user', 'arjun_gupta', '2024-04-21'),
(10, 'sunita_chopra', 'Sunita', 'Chopra', 'sunita@example.com', '0987654321', 'user', 'sunita_chopra', '2024-04-21');

-- --------------------------------------------------------

--
-- Table structure for table `viewcart`
--

CREATE TABLE `viewcart` (
  `cartItemId` int(11) NOT NULL,
  `foodId` int(11) NOT NULL,
  `itemQuantity` int(100) NOT NULL,
  `userId` int(11) NOT NULL,
  `addedDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categorieId`);
ALTER TABLE `categories` ADD FULLTEXT KEY `categorieName` (`categorieName`,`categorieDesc`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactId`);

--
-- Indexes for table `contactreply`
--
ALTER TABLE `contactreply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliverydetails`
--
ALTER TABLE `deliverydetails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderId` (`orderId`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`foodId`);
ALTER TABLE `food` ADD FULLTEXT KEY `foodName` (`foodName`,`foodDesc`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `sitedetail`
--
ALTER TABLE `sitedetail`
  ADD PRIMARY KEY (`tempId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `viewcart`
--
ALTER TABLE `viewcart`
  ADD PRIMARY KEY (`cartItemId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categorieId` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contactId` int(21) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contactreply`
--
ALTER TABLE `contactreply`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliverydetails`
--
ALTER TABLE `deliverydetails`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `foodId` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(21) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sitedetail`
--
ALTER TABLE `sitedetail`
  MODIFY `tempId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `viewcart`
--
ALTER TABLE `viewcart`
  MODIFY `cartItemId` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
