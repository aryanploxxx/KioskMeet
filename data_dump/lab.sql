-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2022 at 06:12 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lab`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `s_id` int(11) DEFAULT NULL,
  `day` date DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`s_id`, `day`, `subject`, `status`) VALUES
(1, '2022-11-28', 'Data Structures', '1'),
(2, '2022-11-28', 'Data Structures', '1'),
(7, '2022-11-28', 'Data Structures', '0'),
(8, '2022-11-28', 'Data Structures', '1'),
(1, '2022-11-22', 'Data Structures', '1'),
(2, '2022-11-22', 'Data Structures', '0'),
(7, '2022-11-22', 'Data Structures', '0'),
(8, '2022-11-22', 'Data Structures', '1'),
(11, '2022-11-28', 'Electrical Science', '1'),
(12, '2022-11-28', 'Electrical Science', '1'),
(3, '2022-11-28', 'TFCS', '0'),
(9, '2022-11-28', 'TFCS', '1'),
(10, '2022-11-28', 'TFCS', '1'),
(1, '2022-11-28', 'Database Systems', '1'),
(2, '2022-11-28', 'Database Systems', '0'),
(7, '2022-11-28', 'Database Systems', '1'),
(8, '2022-11-28', 'Database Systems', '1'),
(1, '2022-11-01', 'Data Structures', '1'),
(2, '2022-11-01', 'Data Structures', '1'),
(7, '2022-11-01', 'Data Structures', '0'),
(8, '2022-11-01', 'Data Structures', '0'),
(3, '2022-11-28', 'Data Structures', '1'),
(9, '2022-11-28', 'Data Structures', '1'),
(10, '2022-11-28', 'Data Structures', '0');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phno` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `name`, `phno`, `password`, `dept`) VALUES
(1, 'Arpita Jadhav Bhatt', 99999999, 'pass', 'CSE'),
(2, 'Nisha Venkatesh', 987654321, 'pass', 'ECE'),
(3, 'Amit Mishra', 123455432, 'pass', 'BIO'),
(4, 'Apeksha Aggarwal', 2147483647, 'pass', 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_subjects`
--

CREATE TABLE `faculty_subjects` (
  `f_id` int(11) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `batch` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculty_subjects`
--

INSERT INTO `faculty_subjects` (`f_id`, `subject`, `batch`) VALUES
(1, 'Data Structures', 'B14'),
(1, 'Data Structures', 'B15'),
(1, 'Data Structures', 'B11'),
(2, 'Electrical Science', 'F1'),
(2, 'Electrical Science', 'F2'),
(2, 'Electrical Science', 'F8'),
(3, 'TFCS', 'B1'),
(3, 'TFCS', 'B2'),
(3, 'TFCS', 'B15'),
(4, 'Database Systems', 'F2'),
(4, 'Database Systems', 'B14'),
(4, 'Database Systems', 'B15');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `s_id` int(11) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `grade` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`s_id`, `subject`, `semester`, `grade`) VALUES
(1, 'Data Structures', 4, 'B'),
(2, 'Data Structures', 3, 'D'),
(7, 'Data Structures', 2, 'B'),
(8, 'Data Structures', 2, 'B'),
(12, 'Electrical Science', 3, 'B'),
(3, 'TFCS', 3, 'C'),
(9, 'TFCS', 5, 'B'),
(10, 'TFCS', 5, 'A'),
(4, 'TFCS', 2, 'A'),
(5, 'TFCS', 2, 'B'),
(1, 'Database Systems', 4, 'B'),
(2, 'Database Systems', 3, 'D'),
(7, 'Database Systems', 2, 'B'),
(8, 'Database Systems', 2, 'B');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `batch` varchar(5) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `dob`, `semester`, `batch`, `course`, `password`) VALUES
(1, 'Aryan Gupta', '2003-05-13', 4, 'B14', 'CSE', 'pass'),
(2, 'Pritpal Singh', '2012-05-17', 3, 'B14', 'CSE', 'pass'),
(3, 'Samarpit Kandhari', '2002-07-08', 3, 'B15', 'CSE', 'pass'),
(4, 'Dweep', '2003-04-26', 2, 'B2', 'CSE', 'pass'),
(5, 'Akshat', '2021-04-16', 2, 'B2', 'CSE', 'pass'),
(6, 'ansh', '2021-04-16', 3, 'B11', 'IT', 'pass'),
(7, 'vivek', '2021-04-16', 2, 'B14', 'IT', 'pass'),
(8, 'tanmay', '2021-04-16', 2, 'B14', 'IT', 'pass'),
(9, 'shahrukh', '2021-05-08', 5, 'B15', 'IT', 'pass'),
(10, 'shreya', '2021-04-16', 5, 'B15', 'IT', 'pass'),
(11, 'shrinjal', '2021-04-16', 3, 'F2', 'BIO', 'pass'),
(12, 'sritama', '2021-04-16', 3, 'F8', 'BIO', 'pass'),
(13, 'pankaj', '0000-00-00', 4, 'A4', 'ECE', 'pass'),
(14, 'nitya', '2021-04-16', 3, 'A4', 'ECE', 'pass'),
(15, 'akshita', '2002-10-30', 3, 'A4', 'ECE', 'pass');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
