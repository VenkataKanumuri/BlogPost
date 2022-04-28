-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 15, 2022 at 05:48 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `Position` varchar(255) NOT NULL,
  `bio` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `email`, `password`, `Position`, `bio`) VALUES
(1, 'Raju', 'raju@gmail.com', '1543', 'Professor', 'New'),
(12, 'raju', 'raju@new.com', '1234', 'manage', 'hi'),
(13, 'danger', '', '', 'manage', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `parent_category_id` int(20) DEFAULT NULL,
  `comment` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `parent_category_id`, `comment`) VALUES
(1, 'Research', NULL, 'ParentTopic'),
(2, 'Litreture', NULL, 'ParentTopic'),
(3, 'Application', NULL, 'ParentTopic'),
(6, 'red', NULL, 'ParentTopic'),
(13, 'danger', 6, 'ChildTopic'),
(14, 'Noor Nabi', 1, 'ChildTopic'),
(15, 'sibt', 3, 'ChildTopic'),
(16, 'sibtH', 0, 'ParentTopic');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `name` varchar(200) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `name`, `post_id`, `created_at`) VALUES
(1, 'Random comment on the article', 'raju', 4, '2022-01-13 08:08:11'),
(2, 'This is a test comment', 'manish', 4, '2022-01-13 08:08:11'),
(3, 'Testing', 'kvsraju', 16, '2022-01-15 09:07:45'),
(4, 'dfsfsff', 'f', 16, '2022-01-15 09:11:09'),
(5, '017632715560', 'kvsraju', 16, '2022-01-16 11:01:21'),
(6, 'hi', 'Noor Nabi', 38, '2022-01-20 05:43:38'),
(7, 'hi', 'Noor Nabi', 38, '2022-01-20 05:48:23'),
(8, 'nbnb', 'bbv', 38, '2022-01-20 05:49:43'),
(9, 'b', 'Noor Nabi', 38, '2022-01-20 05:54:34'),
(10, 'hirtghg', 'Noor Nabi', 38, '2022-01-20 05:54:48'),
(11, 'hghg', 'hghg', 38, '2022-01-20 05:56:07'),
(12, 'hi', 'Noor Nabi', 9, '2022-01-20 06:17:46'),
(13, 'hi', 'Noor Nabi', 41, '2022-01-20 06:25:14'),
(14, 'hi', 'pretty', 41, '2022-01-20 06:25:41'),
(15, 'nbnb', 'M Khan', 41, '2022-01-20 06:25:53'),
(16, 'b', 'pretty', 41, '2022-01-20 06:28:46'),
(17, 'hirtghg', 'hi', 40, '2022-01-20 06:29:00'),
(18, 'hi', 'Noor Nabi', 40, '2022-01-20 06:32:07'),
(19, 'nice pic', 'Noor Nabi', 12, '2022-01-20 06:33:24'),
(20, 'nbnb', 'nhn', 41, '2022-01-20 06:34:35'),
(21, 'n gngh', 'ghng', 40, '2022-01-20 06:42:20'),
(22, 'hi', 'pretty', 12, '2022-01-20 07:55:41'),
(24, 'nbnb', 'Noor Nabi', 3, '2022-01-20 15:42:33'),
(25, 'hi1', 'delete ok', 42, '2022-01-20 16:31:25'),
(27, 'hi', 'Noor Nabi', 6, '2022-01-21 10:49:54'),
(28, 'b', 'sibt', 46, '2022-01-28 15:54:42'),
(29, 'hi', 'Noor Nabi', 46, '2022-01-29 03:20:35'),
(30, 's', 'M Khan', 46, '2022-01-29 03:20:51'),
(31, 's', 'Noor Nabi', 46, '2022-01-29 03:21:27'),
(32, 'hirtghg', 'Ateeb', 46, '2022-01-29 03:39:13'),
(33, 'zrezt', 'kvsraju', 52, '2022-02-24 17:57:11');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `post_id`, `image`) VALUES
(1, 12, 'tree.jpeg'),
(2, 4, 'rainbow.jpeg'),
(3, 4, 'river.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `action` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `action`) VALUES
(1, 'Home', '/myblog'),
(2, 'About', '#'),
(3, 'Category', '#');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) NOT NULL,
  `leader` varchar(255) DEFAULT NULL,
  `member` varchar(255) DEFAULT NULL,
  `member2` varchar(255) DEFAULT NULL,
  `member3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `image`, `created_at`, `category_id`, `leader`, `member`, `member2`, `member3`) VALUES
(1, 'Task name: Milestone 3', 'Description:\r\n1.Development of the design presented in milestone\r\n2.Writing your paper\r\nThe new deadline for paper evaluation is 16th January. By this date, you are supposed to have finished the related studies and added the literature review page as reco', '', '2022-01-12 23:26:33', 3, NULL, NULL, NULL, NULL),
(2, 'Project intro', 'Cooperative and collaborative work is a core component of everyday professional work in computer science-related disciplines. Depending on the task context, the team interacts directly or indirectly via a collaboration space. However, individual preferenc', '', '2022-01-12 23:30:20', 3, NULL, NULL, NULL, NULL),
(3, 'Milestone Activities', 'Literature Review. Target 40 papers. Deadline: 24th Nov.\r\n\r\nTentative Abstract. Target 350 words. Deadline: 27th Nov.\r\n\r\nTentative Introduction. Target 1000 words. Deadline: 30th Nov.\r\n\r\nPrototype Design Presentation. Deadline: 22-23.\r\n\r\nPresentation. Fin', '', '2022-01-13 01:38:05', 1, NULL, NULL, NULL, NULL),
(4, 'dump', 'Description: Literature Review. Target 40 papers. Deadline: 24th Nov.\r\n\r\nDescription: Tentative Abstract. Target 350 words. Deadline: 27th Nov.\r\n\r\nDescription: Tentative Introduction. Target 1000 words. Deadline: 30th Nov.\r\n\r\nDescription: Prototype Design', '', '2022-01-13 01:39:28', 1, NULL, NULL, NULL, NULL),
(5, 'dump', 'Description: Literature Review. Target 40 papers. Deadline: 24th Nov.\r\n\r\nDescription: Tentative Abstract. Target 350 words. Deadline: 27th Nov.\r\n\r\nDescription: Tentative Introduction. Target 1000 words. Deadline: 30th Nov.\r\n\r\nDescription: Prototype Design', '', '2022-01-13 01:39:28', 3, NULL, NULL, NULL, NULL),
(6, 'fdss', 'fas', '', '2022-01-13 01:39:28', 6, NULL, NULL, NULL, NULL),
(7, 'dump', 'Description: Literature Review. Target 40 papers. Deadline: 24th Nov.\r\n\r\nDescription: Tentative Abstract. Target 350 words. Deadline: 27th Nov.\r\n\r\nDescription: Tentative Introduction. Target 1000 words. Deadline: 30th Nov.\r\n\r\nDescription: Prototype Design', '', '2022-01-13 01:39:28', 1, NULL, NULL, NULL, NULL),
(8, 'dump', 'Description: Literature Review. Target 40 papers. Deadline: 24th Nov.\r\n\r\nDescription: Tentative Abstract. Target 350 words. Deadline: 27th Nov.\r\n\r\nDescription: Tentative Introduction. Target 1000 words. Deadline: 30th Nov.\r\n\r\nDescription: Prototype Design', '', '2022-01-13 01:39:28', 1, NULL, NULL, NULL, NULL),
(9, 'dump', 'Description: Literature Review. Target 40 papers. Deadline: 24th Nov.\r\n\r\nDescription: Tentative Abstract. Target 350 words. Deadline: 27th Nov.\r\n\r\nDescription: Tentative Introduction. Target 1000 words. Deadline: 30th Nov.\r\n\r\nDescription: Prototype Design', '', '2022-01-13 01:39:28', 1, NULL, NULL, NULL, NULL),
(10, 'dump', 'Description: Literature Review. Target 40 papers. Deadline: 24th Nov.\r\n\r\nDescription: Tentative Abstract. Target 350 words. Deadline: 27th Nov.\r\n\r\nDescription: Tentative Introduction. Target 1000 words. Deadline: 30th Nov.\r\n\r\nDescription: Prototype Design', '', '2022-01-13 01:39:28', 2, NULL, NULL, NULL, NULL),
(11, 'dump', 'Description: Literature Review. Target 40 papers. Deadline: 24th Nov.\r\n\r\nDescription: Tentative Abstract. Target 350 words. Deadline: 27th Nov.\r\n\r\nDescription: Tentative Introduction. Target 1000 words. Deadline: 30th Nov.\r\n\r\nDescription: Prototype Design', '', '2022-01-13 01:40:43', 3, NULL, NULL, NULL, NULL),
(12, 'dump', 'Description: Literature Review. Target 40 papers. Deadline: 24th Nov.\r\n\r\nDescription: Tentative Abstract. Target 350 words. Deadline: 27th Nov.\r\n\r\nDescription: Tentative Introduction. Target 1000 words. Deadline: 30th Nov.\r\n\r\nDescription: Prototype Design', '', '2022-01-13 01:40:43', 1, NULL, NULL, NULL, NULL),
(13, 'du', 'Description: Literature Review. Target 40 papers. Deadline: 24th Nov.\r\n\r\nDescription: Tentative Abstract. Target 350 words. Deadline: 27th Nov.\r\n\r\nDescription: Tentative Introduction. Target 1000 words. Deadline: 30th Nov.\r\n\r\nDescription: Prototype Design', '', '2022-01-13 01:40:43', 2, NULL, NULL, NULL, NULL),
(14, 'du', 'Description: Literature Review. Target 40 papers. Deadline: 24th Nov.\r\n\r\nDescription: Tentative Abstract. Target 350 words. Deadline: 27th Nov.\r\n\r\nDescription: Tentative Introduction. Target 1000 words. Deadline: 30th Nov.\r\n\r\nDescription: Prototype Design', '', '2022-01-13 01:40:43', 2, NULL, NULL, NULL, NULL),
(15, 'we', 'Description: Literature Review. Target 40 papers. Deadline: 24th Nov.\r\n\r\nDescription: Tentative Abstract. Target 350 words. Deadline: 27th Nov.\r\n\r\nDescription: Tentative Introduction. Target 1000 words. Deadline: 30th Nov.\r\n\r\nDescription: Prototype Design', '', '2022-01-13 01:40:43', 2, NULL, NULL, NULL, NULL),
(38, 'dd', 'ghyt', 'images/1253693642white.jpg', '2022-01-17 06:57:30', 2, NULL, NULL, NULL, NULL),
(44, 'hi', 'hi', 'images/1885665747comment.PNG', '2022-01-26 17:13:41', 1, 'noorgamingyt6@gmail.com', 'noorgamingyt6@gmail.com', 'noorgamingyt6@gmail.com', 'noorgamingyt6@gmail.com'),
(45, 'ok', 'ok', 'images/46702628rainbow.jpeg', '2022-01-26 17:14:44', 1, 'noorgamingyt6@gmail.com', 'noorgamingyt6@gmail.com', 'noorgamingyt6@gmail.com', 'noorgamingyt6@gmail.com'),
(46, 'hi', 'n;kjh', 'images/1603157037river.jpeg', '2022-01-26 17:19:11', 1, 'noorgamingyt6@gmail.com', 'noorgamingyt6@gmail.com', 'noorgamingyt6@gmail.com', 'noorgamingyt6@gmail.com'),
(47, 'das', 'dsa', 'images/353064445tre.jpeg', '2022-02-03 12:36:27', 2, 'noorgamingyt6@gmail.com', 'noorgamingyt6@gmail.com', 'noorgamingyt6@gmail.com', 'noorgamingyt6@gmail.com'),
(48, 'gdg', 'dg', 'images/1092016897tre.jpeg', '2022-02-03 12:38:24', 1, NULL, NULL, NULL, NULL),
(49, 'dde', 'wde', 'images/152148212', '2022-02-04 14:50:27', 3, NULL, NULL, NULL, NULL),
(50, 'neu', 'Book', '', '2022-02-10 11:06:12', 3, NULL, NULL, NULL, NULL),
(51, 'fdss', 'fas', '', '2022-02-10 11:06:26', 1, NULL, NULL, NULL, NULL),
(52, 'ttt', 'ttt', '', '2022-02-24 17:56:51', 1, NULL, NULL, NULL, NULL),
(53, 'dfsf', 'fsf', '', '2022-03-12 09:47:33', 13, NULL, NULL, NULL, NULL),
(54, 'cdsc', 'csdcMachine learning (ML) is the study of computer algorithms that can improve automatically through experience and by the use of data.[1] It is seen as a part of artificial intelligence. Machine learning algorithms build a model based on sample data, known as training data, in order to make predictions or decisions without being explicitly programmed to do so.[2] Machine learning algorithms are used in a wide variety of applications, such as in medicine, email filtering, speech recognition, and computer vision, where it is difficult or unfeasible to develop conventional algorithms to perform the needed tasks.[3]\r\n\r\nA subset of machine learning is closely related to computational statistics, which focuses on making predictions using computers; but not all machine learning is statistical learning. The study of mathematical optimization delivers methods, theory and application domains to the field of machine learning. Data mining is a related field of study, focusing on exploratory data analysis through unsupervised learning.[5][6] Some implementations of machine learning use data and neural networks in a way that mimics the working of a biological brain.[7][8] In its application across business problems, machine learning is also referred to as predictive analytics.', '', '2022-03-15 15:51:02', 6, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `id` int(11) NOT NULL,
  `parent_menu_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `action` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id`, `parent_menu_id`, `name`, `action`) VALUES
(1, 3, 'Application', '#'),
(2, 3, 'Research', '#'),
(3, 3, 'Literature', '#');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `Name` varchar(32) CHARACTER SET armscii8 DEFAULT NULL,
  `leader` varchar(255) CHARACTER SET armscii8 DEFAULT NULL,
  `member1` varchar(255) CHARACTER SET armscii8 DEFAULT NULL,
  `member2` varchar(255) CHARACTER SET armscii8 DEFAULT NULL,
  `member3` varchar(255) CHARACTER SET armscii8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `Name`, `leader`, `member1`, `member2`, `member3`) VALUES
(3, 'Kick', 'raju@new.com', 'raju@new.com', 'raju@new.com', 'raju@new.com'),
(4, '', 'ki@g.v', 'ki@g.v', 'ki@g.v', 'ki@g.v');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
