-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2019 at 08:20 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crime`
--

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE `complain` (
  `ID` int(50) NOT NULL,
  `IDno` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sex` text NOT NULL,
  `adress` varchar(50) NOT NULL,
  `phone` int(10) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL,
  `complain` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`ID`, `IDno`, `name`, `sex`, `adress`, `phone`, `occupation`, `time`, `date`, `complain`) VALUES
(14, '10006', 'Alia Bhat', 'Female', 'Rajshahi', 185678976, 'Actor', '00:00:00', '2019-01-30', 'Missing my Car......'),
(13, '10003', 'Shabuddin Ahmed', 'Male', 'Saouraoardi hall, RU', 14587875, 'Student', '00:00:00', '2019-01-30', 'Lost my mobile phone...'),
(12, '10004', 'Saruar Rakib', 'Male', 'Binodepur, Rajshahi', 1798567895, 'Engineer', '00:00:00', '2019-01-30', 'Snatched my Laptop...'),
(11, '10005', 'Joya Hasan', 'Female', 'Mirpur, Dhaka', 1785220685, 'Actor', '00:00:00', '2019-01-30', 'Tease'),
(10, '10001', 'Md.Rubel Rana', 'Male', 'SHRH, Rajshahi', 1558925547, 'Student', '00:00:00', '2019-01-30', 'Stolen Phone');

-- --------------------------------------------------------

--
-- Table structure for table `criminal`
--

CREATE TABLE `criminal` (
  `id` int(50) NOT NULL,
  `IDno` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `sex` text NOT NULL,
  `age` int(20) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `crimetype` varchar(50) NOT NULL,
  `adress` varchar(50) NOT NULL,
  `wanted` varchar(50) NOT NULL,
  `image1` varchar(900) NOT NULL,
  `image2` varchar(900) NOT NULL,
  `image3` varchar(900) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `criminal`
--

INSERT INTO `criminal` (`id`, `IDno`, `name`, `nickname`, `sex`, `age`, `occupation`, `crimetype`, `adress`, `wanted`, `image1`, `image2`, `image3`) VALUES
(59, '10001', 'Jhon', 'Doe', 'Male', 25, 'Student', 'Robery', 'Motizil, Dhaka', 'MostWanted', 'IMG-20131230-WA0006.jpg', 'upload251120131156.jpg', 'Man ima.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `fir`
--

CREATE TABLE `fir` (
  `id` int(11) NOT NULL,
  `firno` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `choose` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `infotype` varchar(100) NOT NULL,
  `info` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fir`
--

INSERT INTO `fir` (`id`, `firno`, `date`, `address`, `district`, `choose`, `place`, `infotype`, `info`) VALUES
(13, '10004', '2019-01-30', 'Dhaka', 'Rangpur', 'Local', 'Rangpur', 'Murder', 'one people murder...'),
(12, 'A10005', '2019-01-30', 'Rajshahi', 'Rajshahi', 'Local', 'Rajshahi University', 'Accident', 'Car Accident....');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL DEFAULT '',
  `usertype` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `usertype`, `password`) VALUES
('10003', 'user', '33333'),
('10002', 'user', '22222'),
('admin', 'admin', 'qwert'),
('10001', 'user', '11111'),
('10000', 'admin', 'admin'),
('10004', 'user', '44444'),
('10005', 'user', '55555');

-- --------------------------------------------------------

--
-- Table structure for table `postmortem`
--

CREATE TABLE `postmortem` (
  `id` int(50) NOT NULL,
  `image` varchar(400) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sex` varchar(8) NOT NULL,
  `FirNo` varchar(50) NOT NULL,
  `ResultMortem` text NOT NULL,
  `DateDeath` date NOT NULL,
  `info` text NOT NULL,
  `House` varchar(50) NOT NULL,
  `Doctor` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postmortem`
--

INSERT INTO `postmortem` (`id`, `image`, `name`, `sex`, `FirNo`, `ResultMortem`, `DateDeath`, `info`, `House`, `Doctor`) VALUES
(43, 'upload251120131156.jpg', 'Rashed Karim', 'Male', '10005', 'Death due to car accident.', '2019-01-30', 'Murder case....', 'Binodepur', 'Ismot Ara');

-- --------------------------------------------------------

--
-- Table structure for table `suspect`
--

CREATE TABLE `suspect` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` text NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `height` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL,
  `officer` varchar(50) NOT NULL,
  `remark` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suspect`
--

INSERT INTO `suspect` (`id`, `name`, `age`, `sex`, `occupation`, `address`, `height`, `weight`, `time`, `date`, `officer`, `remark`) VALUES
(6, 'Isa Akhter', 32, 'Female', 'Doctor', 'Nordan, Rajshahi', 60, 65, '00:00:00', '2019-01-30', 'Kamal Hossen', 'Killed one People'),
(5, 'Josim khan', 26, 'Male', 'Teacher', 'Kajla, Rajshahi', 65, 70, '00:00:00', '2019-01-30', 'Kamal Hossen', 'Black'),
(7, 'Kibria Khan', 29, 'Male', 'Farmer', 'Station Bazar, RU', 67, 75, '00:00:00', '2019-01-30', 'Kamal Hossen', 'Shamla....');

-- --------------------------------------------------------

--
-- Table structure for table `wanted`
--

CREATE TABLE `wanted` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `sex` text NOT NULL,
  `age` int(11) NOT NULL,
  `date` date NOT NULL,
  `location` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(900) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wanted`
--

INSERT INTO `wanted` (`id`, `name`, `nickname`, `sex`, `age`, `date`, `location`, `description`, `image`) VALUES
(12, 'Babu Mia', 'Babu', 'male', 27, '2019-01-30', 'Rajshahi', 'Bank Robbery', 'upload131120131108.jpg'),
(15, 'Joki Ray', 'Joki', 'male', 20, '2019-01-30', 'Saheb Bazar', 'Black.....', 'upload251120131156.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complain`
--
ALTER TABLE `complain`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `criminal`
--
ALTER TABLE `criminal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fir`
--
ALTER TABLE `fir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `postmortem`
--
ALTER TABLE `postmortem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suspect`
--
ALTER TABLE `suspect`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wanted`
--
ALTER TABLE `wanted`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complain`
--
ALTER TABLE `complain`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `criminal`
--
ALTER TABLE `criminal`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `fir`
--
ALTER TABLE `fir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `postmortem`
--
ALTER TABLE `postmortem`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `suspect`
--
ALTER TABLE `suspect`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wanted`
--
ALTER TABLE `wanted`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
