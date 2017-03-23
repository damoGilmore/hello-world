-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 23, 2017 at 01:12 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ReceptionQueue`
--

-- --------------------------------------------------------

--
-- Table structure for table `WalkInQueue`
--

CREATE TABLE `WalkInQueue` (
  `Num` smallint(5) UNSIGNED NOT NULL,
  `Type` set('Citizen','Organisation','Anonymous','') NOT NULL,
  `Title` set('Mr.','Mrs.','Ms.','') DEFAULT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `Service` set('Housing','Benefits','Council Tax','Fly-tipping','Missed Bin') NOT NULL,
  `QueuedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `WalkInQueue`
--

INSERT INTO `WalkInQueue` (`Num`, `Type`, `Title`, `FirstName`, `LastName`, `Service`, `QueuedAt`) VALUES
(1, '', 'Ms.', 'Susie', 'Slowhands', 'Missed Bin', '2017-03-22 23:55:11'),
(2, '', 'Mr.', 'Damien', 'Gilmore', 'Benefits', '2017-03-22 23:55:26'),
(3, '', 'Ms.', 'Jolene', 'jolene', 'Housing', '2017-03-22 23:55:50'),
(4, '', 'Mr.', 'John', 'Snow', 'Council Tax', '2017-03-22 23:56:05'),
(5, '', 'Mr.', 'Patrick', 'McGinty', 'Fly-tipping', '2017-03-22 23:56:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `WalkInQueue`
--
ALTER TABLE `WalkInQueue`
  ADD PRIMARY KEY (`Num`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `WalkInQueue`
--
ALTER TABLE `WalkInQueue`
  MODIFY `Num` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
