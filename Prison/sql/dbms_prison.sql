-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2019 at 12:38 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbms_prison`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `password`) VALUES
('anusha', 'anusha'),
('bharat', 'naga'),
('alfreda', 'alfreda'),
('janvee', 'janvee');

-- --------------------------------------------------------

--
-- Table structure for table `cell_location`
--

CREATE TABLE `cell_location` (
  `cell_no` char(4) NOT NULL,
  `block_no` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


insert into `cell_location` (`cell_no`,`block_no`) VALUES
('1100','9999'),
('5767','9998'),
('1001','8888');

-- --------------------------------------------------------

--
-- Table structure for table `cleaner`
--

CREATE TABLE `cleaner` (
  `cno` char(4) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `sex` varchar(6) NOT NULL,
  `starting_date` date NOT NULL,
  `caddress` varchar(20) NOT NULL,
  `cell_no` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cleaner`
--

INSERT INTO `cleaner` (`cno`, `cname`, `DOB`, `sex`, `starting_date`, `caddress`, `cell_no`) VALUES
('1000', 'Nitin', '1998-11-12', 'Male', '2000-11-12', 'Goa', '1100'),
('2000', 'Anurag', '1999-11-12', 'Male', '2000-11-12', 'dsadsa', '5767'),
('3333', 'Adriel', '1996-08-06', 'Male', '2005-06-08', 'Udupi', '1001'),
('6969', 'Anany Sagar', '1998-11-11', 'Male', '2018-10-20', 'Patna', '5767');

-- --------------------------------------------------------

--
-- Table structure for table `guard`
--

CREATE TABLE `guard` (
  `gno` char(5) NOT NULL,
  `gname` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `address` varchar(20) NOT NULL,
  `starting_date` date NOT NULL,
  `sex` varchar(8) NOT NULL,
  `block_no` char(4) NOT NULL,
  `shift` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guard`
--

INSERT INTO `guard` (`gno`, `gname`, `DOB`, `address`, `starting_date`, `sex`, `block_no`, `shift`, `password`) VALUES
('1111', 'Amar', '1997-11-13', 'Goa', '2000-11-12', 'Female', '9999', 'Morning', 'icecream');

INSERT INTO `guard` (`gno`, `gname`, `DOB`, `address`, `starting_date`, `sex`, `block_no`, `shift`, `password`) VALUES
('1112', 'Anusha', '2000-11-13', 'Bangalore', '2000-11-12', 'Female', '8888', 'Morning', 'anu1234');

INSERT INTO `guard` (`gno`, `gname`, `DOB`, `address`, `starting_date`, `sex`, `block_no`, `shift`, `password`) VALUES
('1113', 'Alfreda', '1997-11-13', 'Goa', '2000-11-12', 'Female', '9998', 'Night', 'alfreda123');

-- --------------------------------------------------------

--
-- Table structure for table `prisoner`
--

CREATE TABLE `prisoner` (
  `pno` char(4) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `admit_date` date NOT NULL,
  `DOB` date NOT NULL,
  `address` varchar(20) NOT NULL,
  `crime` varchar(20) NOT NULL,
  `sex` varchar(6) NOT NULL,
  `ptype` varchar(20) NOT NULL,
  `duration` varchar(30) NOT NULL,
  `cell_no` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prisoner`
--

INSERT INTO `prisoner` (`pno`, `Name`, `admit_date`, `DOB`, `address`, `crime`, `sex`, `ptype`, `duration`, `cell_no`) VALUES
('1111', 'Amaresh', '2002-11-12', '1998-01-13', 'Patna', 'Murder', 'Male', 'Maximum security', '10 Months', '1100'),
('1112', 'Anurag', '2012-08-12', '1994-08-17', 'Bangalore', 'Theft', 'Male', 'Minimum security', '2 Months', '5767'),
('1113', 'Anurag', '2020-02-12', '1998-11-13', 'Bangalore', 'Murder', 'Male', 'Maximum security', '10 Months', '1100');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `cleaner`
--
ALTER TABLE `cleaner`
  ADD PRIMARY KEY (`cno`);

--
-- Indexes for table `guard`
--
ALTER TABLE `guard`
  ADD PRIMARY KEY (`gno`);

--
-- Indexes for table `prisoner`
--
ALTER TABLE `prisoner`
  ADD PRIMARY KEY (`pno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
