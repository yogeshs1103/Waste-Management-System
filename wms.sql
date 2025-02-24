-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2025 at 06:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wms`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin_tbl`
--

CREATE TABLE `adminlogin_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminlogin_tbl`
--

INSERT INTO `adminlogin_tbl` (`id`, `name`, `email`, `password`, `code`, `status`) VALUES
(1, 'prathmesh', 'prathmeshshinde0506@gmail.com', '$2y$10$vI2lyCb/YqblwwVUv7XvDeku29EOgXfbSFdZ2Jq0SZYMxSOgbc.wC', 0, 'verified');

-- --------------------------------------------------------

--
-- Table structure for table `center`
--

CREATE TABLE `center` (
  `centerid` int(11) NOT NULL,
  `centername` varchar(255) NOT NULL,
  `contactno` decimal(10,0) NOT NULL,
  `email` varchar(255) NOT NULL,
  `workingon` varchar(255) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `taluka` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `code` mediumint(50) NOT NULL,
  `cstatus` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `center`
--

INSERT INTO `center` (`centerid`, `centername`, `contactno`, `email`, `workingon`, `district`, `taluka`, `city`, `password`, `code`, `cstatus`) VALUES
(3, 'shinde industries', 7774890506, 'sayalishinde1900@gmail.com', 'paper', 'kolhapur', 'panhala', 'kolhapur', '$2y$10$Rk72cHZBc/858VThJQYvp.OJKWillC9PMhqAgfoUym/1S1ihH050a', 0, 'verified'),
(7, 'devil\'s industries', 9545662353, 'mrdevil2706@gmail.com', 'electronics', 'kolhapur', 'panhala', 'kolhapur', '$2y$10$RvD.TEYsHJL9Sqj/Cj/RuechVb5vqKd47lGtWp7K3ypdx8AcpkKAa', 0, 'verified'),
(10, 'RC Industries', 7219439899, 'yogeshsawairam142@gmail.com', 'hazardous', 'sangli', 'shirala', 'shirala', '$2y$10$O99GYHNG3HYdh8fs4hblNO5.KjVlcEz3eA.mxNkaB2ynrC7MZE9Dm', 0, 'verified');

-- --------------------------------------------------------

--
-- Table structure for table `cost`
--

CREATE TABLE `cost` (
  `waste_Id` int(11) NOT NULL,
  `waste_type` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cost`
--

INSERT INTO `cost` (`waste_Id`, `waste_type`, `price`) VALUES
(1, 'newspaper', 10.00),
(2, 'books', 10.00),
(3, 'carton', 9.00),
(4, 'white_papers', 7.00),
(5, 'magazines', 6.00),
(6, 'polythene', 15.00),
(7, 'hard_plastic', 2.00),
(8, 'fibre', 6.00),
(9, 'soft_plastic', 6.00),
(10, 'copper', 450.00),
(11, 'brass', 250.00),
(12, 'alluminum', 80.00),
(13, 'steel', 28.00),
(14, 'iron', 25.00),
(15, 'tin', 15.00),
(16, 'wires', 5.00),
(17, 'E-waste', 50.00),
(18, 'battery', 60.00),
(19, 'tyre', 3.00),
(20, 'mix_waste', 2.00),
(21, 'glass', 50.00),
(22, 'solvents_chemicals', 100.00),
(23, 'oil_paints', 80.00),
(24, 'asbestos_material', 400.00),
(25, 'PCB_materials', 2400.00);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackid` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `contactno` decimal(10,0) DEFAULT NULL,
  `feedbacktext` varchar(255) NOT NULL,
  `feedbackdate` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedbackid`, `name`, `contactno`, `feedbacktext`, `feedbackdate`) VALUES
(1, 'Pradip Pandurang Patil', 8766508877, 'it is good', '2024-04-25'),
(3, 'yogesh sawairam', 7774890506, 'it is very nice', '2024-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `garbageinfo`
--

CREATE TABLE `garbageinfo` (
  `GarbageId` int(11) NOT NULL,
  `centerid` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `wastetype` varchar(255) NOT NULL,
  `subwastetype` varchar(255) NOT NULL,
  `scheduledate` date DEFAULT NULL,
  `timeslot` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `locationdescription` varchar(255) NOT NULL,
  `weight` decimal(10,3) NOT NULL,
  `probable_cost` decimal(10,2) NOT NULL,
  `file` blob NOT NULL,
  `date` date DEFAULT current_timestamp(),
  `wstatus` varchar(25) DEFAULT NULL,
  `accepteddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `garbageinfo`
--

INSERT INTO `garbageinfo` (`GarbageId`, `centerid`, `email`, `wastetype`, `subwastetype`, `scheduledate`, `timeslot`, `location`, `locationdescription`, `weight`, `probable_cost`, `file`, `date`, `wstatus`, `accepteddate`) VALUES
(32, 3, 'pradippatil1325@gmail.com', 'paper', '', '2024-05-01', '3pm-6pm', 'sangali', 'police station', 0.000, 0.00, 0x63656e7465722f75706c6f6164732f65366565383963616565323731333531663031303338376662313534376366352e706e67, '2024-04-26', 'accepted', '2024-05-01'),
(33, NULL, 'pradippatil1325@gmail.com', 'electronics', '', '2024-04-30', '9am-12pm', 'satara', 'ajinkyatara fort', 0.000, 0.00, 0x63656e7465722f75706c6f6164732f37356664333066393864306133353539646134363761393637346635306133662e706e67, '2024-04-26', 'pending', NULL),
(38, NULL, 'prathmeshshinde0506@gmail.com', 'electronics', 'E-waste', '2024-05-03', '3pm-6pm', 'Kolhapur', 'Chhatrapati Shivaji Maharaj Chowk Kolhapur ', 12.000, 600.00, 0x63656e7465722f75706c6f6164732f38626632376261613761303332353261323938306533636536393964636165352e706e67, '2024-05-01', 'pending', NULL),
(39, NULL, 'prathmeshshinde0506@gmail.com', 'paper', 'books', '2024-05-07', '3pm-6pm', 'pimple tarf thane', 'main road pimple tarf thane', 13.000, 130.00, 0x63656e7465722f75706c6f6164732f37383034316663383035343663326139623861646537353761303665653537312e706e67, '2024-05-01', 'pending', NULL),
(40, 10, 'prathmeshshinde0506@gmail.com', 'hazardous', 'battery', '2024-05-10', '9am-12pm', 'kolhapur', 'rajampuri 4th lane kolhapur', 5.600, 336.00, 0x63656e7465722f75706c6f6164732f63353466353737366635623630383266656362356631353865626363323430652e706e67, '2024-05-08', 'accepted', '2024-05-08');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contactno` decimal(10,0) NOT NULL,
  `email` varchar(255) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `taluka` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `name`, `contactno`, `email`, `district`, `taluka`, `city`, `password`, `code`, `status`) VALUES
(15, 'Pradip Pandurang Patil', 8766508877, 'pradippatil1325@gmail.com', 'sangli', 'walwa', 'Kurlap', '$2y$10$WbLZoUNctOJoIVoocG2FpOR8KZMtHcz30ZEp/uluJJjSGS5ZGiz8y', 0, 'verified'),
(16, 'prathmesh shinde', 7774890506, 'prathmeshshinde0506@gmail.com', 'kolhapur', 'panhala', 'pimple', '$2y$10$zatQxCTF3TIVxS8BnJ7Ny.I6J4Mdk7cgp3xOvJXXHgZX2Hvu9JdbG', 0, 'verified');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin_tbl`
--
ALTER TABLE `adminlogin_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `center`
--
ALTER TABLE `center`
  ADD PRIMARY KEY (`centerid`);

--
-- Indexes for table `cost`
--
ALTER TABLE `cost`
  ADD PRIMARY KEY (`waste_Id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackid`);

--
-- Indexes for table `garbageinfo`
--
ALTER TABLE `garbageinfo`
  ADD PRIMARY KEY (`GarbageId`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin_tbl`
--
ALTER TABLE `adminlogin_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `center`
--
ALTER TABLE `center`
  MODIFY `centerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cost`
--
ALTER TABLE `cost`
  MODIFY `waste_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `garbageinfo`
--
ALTER TABLE `garbageinfo`
  MODIFY `GarbageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
