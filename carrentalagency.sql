-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Oct 03, 2021 at 06:26 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrentalagency`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `BId` int(100) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Mob_Num` bigint(100) NOT NULL,
  `Veh_Num` varchar(100) NOT NULL,
  `Days` int(100) NOT NULL,
  `Rent` int(11) NOT NULL,
  `Total_Rent` double NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`BId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`BId`, `Name`, `Mob_Num`, `Veh_Num`, `Days`, `Rent`, `Total_Rent`, `Date`) VALUES
(1, 'Nikita', 8447149499, 'HR13Q9575', 7, 500, 3500, '2021-10-05'),
(2, 'Ritu', 9876543210, 'HR13P9975', 4, 900, 3600, '2021-10-17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `Type` varchar(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Username`, `Password`, `Type`) VALUES
(4, 'nikita', '123', 'Customer'),
(3, '', '', ''),
(5, 'agent', '1234', 'Agent'),
(6, 'chhillar', 'chhillar', 'Agent'),
(7, '', '', ''),
(8, 'Nikita', 'Nikita', 'Customer'),
(9, 'agent', '1234', '-Select-'),
(10, 'agent', '1234', 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
CREATE TABLE IF NOT EXISTS `vehicle` (
  `VId` int(11) NOT NULL AUTO_INCREMENT,
  `Number` varchar(100) NOT NULL,
  `Model` varchar(11) NOT NULL,
  `Capacity` int(11) NOT NULL,
  `Rent` double NOT NULL,
  PRIMARY KEY (`VId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`VId`, `Number`, `Model`, `Capacity`, `Rent`) VALUES
(1, 'HR13P9975', '2020', 5, 900),
(2, 'HR13P9975', '2020', 6, 900);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
