-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2018 at 12:43 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `questionary`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` varchar(150) NOT NULL,
  `option1` varchar(150) NOT NULL,
  `opton2` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer`, `option1`, `opton2`) VALUES
(3, 'Which is the tallest buiding in india', 'tajmahal', 'tajmahal', 'qutabminar'),
(4, 'Which is the new airpot in kerala', 'kannur', 'kannur', 'cochin'),
(5, 'Who won the 6 title in boxing', 'kim', 'kim', 'sathu'),
(6, 'who  is know as the brave heart of kerala', 'ayyankali', 'ayyankali', 'pinaryi'),
(7, 'Who is the famous music director of india', 'arrahman', 'arrahman', 'vidyasagar'),
(8, 'First turbain power generation india', 'trivandrum', 'trivandrum', 'cochin'),
(9, 'Who is the father of nation', 'mahatma gandhi', 'mahatma gandhi', 'patel'),
(10, 'Who is the iron man of india', 'sardar valabai patel', 'sardar valabai patel', 'sarbai'),
(11, 'who is know as the missile man of india', 'apj abdhulkalam', 'apj abdhulkalam', 'sarabi'),
(12, 'who directed the movie baahubali', 'ss rajamouli', 'ss rajamouli', 'shankar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
