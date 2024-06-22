-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2024 at 07:04 PM
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
-- Database: `fuelindeed`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(15) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `b_id` int(15) NOT NULL,
  `b_uid` int(15) NOT NULL,
  `b_fsid` int(15) NOT NULL,
  `b_dpid` int(15) NOT NULL,
  `b_assigned_date` varchar(256) NOT NULL,
  `fuel_type` varchar(256) NOT NULL,
  `quantity` float NOT NULL,
  `total_bill` int(15) NOT NULL,
  `b_status` varchar(256) NOT NULL,
  `b_code` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`b_id`, `b_uid`, `b_fsid`, `b_dpid`, `b_assigned_date`, `fuel_type`, `quantity`, `total_bill`, `b_status`, `b_code`) VALUES
(1, 3, 101, 0, '2024-02-10', 'Petrol', 3, 300, 'pending ', 0),
(2, 2, 102, 11103, '2024-02-10', 'Petrol', 3, 300, 'assigned', 9480),
(3, 1, 102, 0, '2024-02-10', 'petrol', 10, 2250, 'delivered ', 0),
(4, 1, 102, 11103, '2024-02-10', 'diesel', 5, 780, 'assigned', 9922),
(5, 1, 102, 11103, '2024-02-11', 'petrol', 10, 2250, 'delivered', 4401);

-- --------------------------------------------------------

--
-- Table structure for table `deliveryperson`
--

CREATE TABLE `deliveryperson` (
  `dp_id` int(15) NOT NULL,
  `dp_name` varchar(256) NOT NULL,
  `dp_fs_id` int(100) NOT NULL,
  `dp_city` varchar(256) NOT NULL,
  `dp_contact` varchar(256) NOT NULL,
  `dp_address` varchar(256) NOT NULL,
  `dp_pincode` int(15) NOT NULL,
  `dp_email` varchar(256) NOT NULL,
  `dp_password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deliveryperson`
--

INSERT INTO `deliveryperson` (`dp_id`, `dp_name`, `dp_fs_id`, `dp_city`, `dp_contact`, `dp_address`, `dp_pincode`, `dp_email`, `dp_password`) VALUES
(11101, 'Prathamesh', 101, 'Dhule ', '3692581470', '65, Sector 6, Shivaji Nagar, Pune', 400401, 'p@gmail.com', 'pathya'),
(11103, 'Sakshi', 102, 'Shindkheda', '3265232123', 'near bus stand, Shindkheda', 425423, 'sakshi@gmail.com', 'pawar');

-- --------------------------------------------------------

--
-- Table structure for table `fuelstation`
--

CREATE TABLE `fuelstation` (
  `fs_id` int(15) NOT NULL,
  `fs_name` varchar(256) NOT NULL,
  `fs_opentime` varchar(256) NOT NULL,
  `fs_closetime` varchar(256) NOT NULL,
  `fs_address` varchar(256) NOT NULL,
  `fs_area` varchar(256) NOT NULL,
  `fs_city` varchar(256) NOT NULL,
  `fs_pincode` int(15) NOT NULL,
  `fs_petrolqty` float NOT NULL,
  `fs_petrolrate` float NOT NULL,
  `fs_dieselqty` float NOT NULL,
  `fs_dieselrate` float NOT NULL,
  `fs_contact` varchar(15) NOT NULL,
  `fs_email` varchar(256) NOT NULL,
  `fs_password` varchar(256) NOT NULL,
  `fs_status` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fuelstation`
--

INSERT INTO `fuelstation` (`fs_id`, `fs_name`, `fs_opentime`, `fs_closetime`, `fs_address`, `fs_area`, `fs_city`, `fs_pincode`, `fs_petrolqty`, `fs_petrolrate`, `fs_dieselqty`, `fs_dieselrate`, `fs_contact`, `fs_email`, `fs_password`, `fs_status`) VALUES
(101, 'Indian', '9:00 AM', '10:00 PM', 'Sector 1, Nimzari Naka, Shahada Road', 'Nimzari Naka', 'Shirpur', 425405, 15.5, 119, 0, 195, '1010101010', 'fs.indian@gmail.com', 'india', 'disapproved'),
(102, 'HP', '10:00 AM', '06:00 PM', 'Sector 2, Karvand Naka, Hulesing Nagar', 'Karvand Naka', 'Shirpur', 425405, 276.2, 119, 184, 156, '20202020', 'fs.hp@gmail.com', 'abc', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(15) NOT NULL,
  `u_name` varchar(256) NOT NULL,
  `u_city` varchar(256) NOT NULL,
  `u_contact` varchar(256) NOT NULL,
  `u_address` varchar(256) NOT NULL,
  `u_pincode` int(15) NOT NULL,
  `u_email` varchar(256) NOT NULL,
  `u_password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_name`, `u_city`, `u_contact`, `u_address`, `u_pincode`, `u_email`, `u_password`) VALUES
(1, 'Anurag', 'Thalner', '7666411318', 'At post Thalner, Tal Shirpur, Dist Dhule', 425421, 'anni@gmail.com', 'anu'),
(2, 'Prem', 'Shirpur', '5064923155', 'Karvand Naka', 425405, 'pk@gmail.com', 'pk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `deliveryperson`
--
ALTER TABLE `deliveryperson`
  ADD PRIMARY KEY (`dp_id`);

--
-- Indexes for table `fuelstation`
--
ALTER TABLE `fuelstation`
  ADD PRIMARY KEY (`fs_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `b_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `deliveryperson`
--
ALTER TABLE `deliveryperson`
  MODIFY `dp_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11104;

--
-- AUTO_INCREMENT for table `fuelstation`
--
ALTER TABLE `fuelstation`
  MODIFY `fs_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
