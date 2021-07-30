-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 30, 2021 at 07:19 AM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `c_category_id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`contact_id`, `name`, `email`, `message`, `user_id`, `c_category_id`, `date`) VALUES
(1, 'David Lee', '123xjiubwe@kmis.com', 'message 1', 3, 1, '2021-07-29 16:00:24'),
(2, 'David Lee', '123xjiubwe@kmis.com', 'message 1', 3, 2, '2021-07-29 16:37:12'),
(3, 'Ken Lee', '123xjiubwe@kmis.com', 'message 1 and 2', 4, 1, '2021-07-30 13:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `contact_categories`
--

CREATE TABLE `contact_categories` (
  `c_category_id` int(11) NOT NULL,
  `c_category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_categories`
--

INSERT INTO `contact_categories` (`c_category_id`, `c_category`) VALUES
(1, 'About Salon'),
(2, 'About online shop'),
(3, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `co_name` varchar(255) NOT NULL,
  `co_desc` varchar(255) NOT NULL,
  `co_fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `co_name`, `co_desc`, `co_fee`) VALUES
(1, 'Course A', 'course A description', 7000),
(2, 'Course B', 'course B description', 4510),
(3, 'Course C', 'course C description', 6500),
(4, 'Course D', 'course D description', 5000),
(5, 'Course E', 'course E description', 2500);

-- --------------------------------------------------------

--
-- Table structure for table `dates`
--

CREATE TABLE `dates` (
  `date_id` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'AVAILABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dates`
--

INSERT INTO `dates` (`date_id`, `month`, `day`, `time`, `status`) VALUES
(1, 'March', '2', '10:00', 'AVAILABLE'),
(2, 'April', '23', '15:00', 'BOOKED'),
(3, 'June', '5', '14:00', 'BOOKED'),
(4, 'August', '1', '14:00', 'AVAILABLE'),
(5, 'March', '5', '12:00', 'AVAILABLE'),
(6, 'March', '7', '14:00', 'AVAILABLE');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_desc` varchar(255) NOT NULL,
  `item_price` int(11) NOT NULL,
  `item_img` varchar(255) NOT NULL,
  `i_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `item_desc`, `item_price`, `item_img`, `i_category_id`) VALUES
(1, 'item 1', 'item 1 description', 2000, 'bread.jpg', 1),
(2, 'item 2', 'item 2 description', 1000, 'eggs.jpg', 2),
(3, 'item 3', 'item 3 description', 1500, 'milk.jpg', 1),
(4, 'item 4', 'item 4 description', 2500, 'cheese.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_categories`
--

CREATE TABLE `item_categories` (
  `i_category_id` int(11) NOT NULL,
  `i_category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_categories`
--

INSERT INTO `item_categories` (`i_category_id`, `i_category`) VALUES
(1, 'food'),
(2, 'snack');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'U'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `username`, `password`, `status`) VALUES
(1, 'mike', '5f4dcc3b5aa765d61d8327deb882cf99', 'A'),
(3, 'david123', '5f4dcc3b5aa765d61d8327deb882cf99', 'U'),
(4, 'ken123', '5f4dcc3b5aa765d61d8327deb882cf99', 'U');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `content` varchar(500) NOT NULL,
  `news_date` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `topic`, `content`, `news_date`, `date`) VALUES
(1, 'About News 1', 'content 1 content 1 content 1 content 1 content 1 content 1 content 1 content 1 content 1 content 1 content 1 content 1 content 1 content 1 content 1 content 1 content 1 content 1 content 1 content 1 content 1 content 1 content 1 content 1 content 1 content 1 content 1 ', '2021-07-21', '2021-07-27 11:19:12'),
(2, 'About News 2', 'content 2 content 2 content 2 content 2 content 2 content 2 content 2 content 2 content 2 content 2 content 2 content 2 content 2 content 2 content 2 content 2 content 2 content 2 content 2 content 2 content 2 content 2 content 2 content 2 content 2 content 2 content 2 ', '2021-07-22', '2021-07-27 11:19:46'),
(3, 'About News 3', 'content 3 content 3 content 3 content 3 content 3 content 3 content 3 content 3 content 3 content 3 content 3 content 3 content 3 content 3 content 3 content 3 content 3 content 3 content 3 content 3 content 3 content 3 content 3 content 3 content 3 content 3 content 3 ', '2021-07-23', '2021-07-27 11:20:06'),
(4, 'About News 4', 'content 4 content 4 content 4 content 4 content 4 content 4 content 4 content 4 content 4 content 4 content 4 content 4 content 4 content 4 content 4 content 4 content 4 content 4 content 4 content 4 content 4 content 4 content 4 content 4 content 4 content 4 content 4 ', '2021-07-24', '2021-07-27 11:20:26'),
(5, 'About News 5', 'content 5 content 5 content 5 content 5 content 5 content 5 content 5 content 5 content 5 content 5 content 5 content 5 content 5 content 5 content 5 content 5 content 5 content 5 ', '2021-07-25', '2021-07-27 11:20:52'),
(6, 'About News 6', 'content 6 content 6 content 6 content 6 content 6 content 6 content 6 content 6 content 6 content 6 content 6 content 6 content 6 content 6 content 6 content 6 content 6 content 6 ', '2021-07-26', '2021-07-27 11:21:14'),
(7, 'About News 7', 'content 7 content 7 content 7 content 7 content 7 content 7 content 7 content 7 content 7 ', '2021-07-27', '2021-07-27 11:21:34'),
(8, 'About News 8', 'content 8 content 8 content 8 content 8 content 8 content 8 content 8 content 8 content 8 content 8 content 8 content 8 content 8 content 8 content 8 content 8 content 8 content 8 content 8 content 8 content 8 ', '2021-07-28', '2021-07-27 11:21:52'),
(9, 'About News 9', 'content 9 content 9 content 9 content 9 content 9 content 9 content 9 content 9 content 9 content 9 content 9 content 9 content 9 content 9 content 9 content 9 content 9 content 9 content 9 content 9 content 9 content 9 content 9 content 9 ', '2021-07-29', '2021-07-27 11:22:12'),
(10, 'About News 10 ', 'content 10 content 10 content 10 content 10 content 10 content 10 content 10 content 10 content 10 content 10 content 10 content 10 content 10 content 10 content 10 content 10 content 10 content 10 content 10 content 10 content 10 content 10 content 10 content 10 content 10 content 10 content 10 ', '2021-07-19', '2021-07-30 00:00:00'),
(11, 'About News 11', 'content 11 content 11 content 11 content 11 content 11 content 11 content 11 content 11 content 11 content 11 content 11 ', '2021-07-20', '2021-07-27 14:35:16'),
(12, 'About News 12', 'content 12 content 12 content 12 content 12 content 12 content 12 content 12 content 12 content 12 content 12 content 12 content 12 content 12 content 12 content 12 content 12 content 12 content 12 content 12 content 12 content 12 ', '2021-07-22', '2021-07-27 14:35:38'),
(13, 'About News 13', 'content 13 content 13 content 13 content 13 content 13 content 13 content 13 content 13 content 13 content 13 ', '2021-07-22', '2021-07-27 14:36:14'),
(14, 'About News 14', 'content 14 content 14 content 14 content 14 content 14 content 14 content 14 content 14 content 14 content 14 content 14 content 14 content 14 content 14 content 14 content 14 content 14 content 14 ', '2021-07-24', '2021-07-27 14:36:35');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `sum` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'unpaid',
  `payment` varchar(11) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `item_id`, `sum`, `quantity`, `status`, `payment`, `date`) VALUES
(2, 3, 2, 2000, 2, 'paid', 'on', '2021-07-30 11:08:35');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `reserve_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`reserve_id`, `user_id`, `course_id`, `date`, `date_id`) VALUES
(1, 3, 2, '2021-07-29 23:08:59', 2),
(2, 3, 2, '2021-07-30 10:50:11', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `c_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `login_id` int(11) NOT NULL,
  `user_img` varchar(255) DEFAULT 'profile.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `fname`, `lname`, `email`, `c_number`, `address`, `login_id`, `user_img`) VALUES
(1, 'Mike', 'Smith', 'xjiubwe@kmis.com', '12345', '', 1, 'profile.jpg'),
(3, 'David', 'Lee', '123xjiubwe@kmis.com', '12345', 'USA', 3, 'Canada.jpg'),
(4, 'Ken', 'Lee', '123xjiubwe@kmis.com', '00-1111-2222', '', 4, 'profile.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `contact_categories`
--
ALTER TABLE `contact_categories`
  ADD PRIMARY KEY (`c_category_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `dates`
--
ALTER TABLE `dates`
  ADD PRIMARY KEY (`date_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `item_categories`
--
ALTER TABLE `item_categories`
  ADD PRIMARY KEY (`i_category_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reserve_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_categories`
--
ALTER TABLE `contact_categories`
  MODIFY `c_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dates`
--
ALTER TABLE `dates`
  MODIFY `date_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `item_categories`
--
ALTER TABLE `item_categories`
  MODIFY `i_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reserve_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
