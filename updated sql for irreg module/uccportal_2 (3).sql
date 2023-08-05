-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2023 at 06:13 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uccportal_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `uccp_accpaidaddmission`
--

CREATE TABLE `uccp_accpaidaddmission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ornumber` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uccp_accpaidaddmission`
--

INSERT INTO `uccp_accpaidaddmission` (`id`, `name`, `ornumber`, `status`) VALUES
(1, 'ANGELO CHARLES DELLOSA PERLOTA', 'OR-74522033', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `uccp_accpaidenrollment`
--

CREATE TABLE `uccp_accpaidenrollment` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `ornumber` varchar(255) NOT NULL,
  `status` text NOT NULL,
  `balance` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uccp_accpaidenrollment`
--

INSERT INTO `uccp_accpaidenrollment` (`id`, `name`, `course`, `year`, `ornumber`, `status`, `balance`) VALUES
(1, 'ANGELO CHARLES DELLOSA PERLOTA', 'Bachelor of Science in Computer Science', '1st Year', 'OR-1853637948', 'Paid', '0');

-- --------------------------------------------------------

--
-- Table structure for table `uccp_add_courses`
--

CREATE TABLE `uccp_add_courses` (
  `id` int(11) NOT NULL,
  `courses` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `abbreviation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uccp_add_courses`
--

INSERT INTO `uccp_add_courses` (`id`, `courses`, `status`, `abbreviation`) VALUES
(1, 'Bachelor of Science in Computer Science', 'Enable', 'BSCS');

-- --------------------------------------------------------

--
-- Table structure for table `uccp_adminacc_tbl`
--

CREATE TABLE `uccp_adminacc_tbl` (
  `id` int(11) NOT NULL,
  `usertype` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `uccp_admission`
--

CREATE TABLE `uccp_admission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `birthplace` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `guardian` varchar(255) NOT NULL,
  `g-Occupation` varchar(255) NOT NULL,
  `g-Contact` varchar(255) NOT NULL,
  `g-Adress` varchar(255) NOT NULL,
  `primary` varchar(255) NOT NULL,
  `primary-Sy` varchar(255) NOT NULL,
  `highschool` varchar(255) NOT NULL,
  `highschool-Sy` varchar(255) NOT NULL,
  `shs` varchar(255) NOT NULL,
  `shs-Sy` varchar(255) NOT NULL,
  `firstchoice` varchar(255) NOT NULL,
  `requirements` varchar(255) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `proof` varchar(255) DEFAULT NULL,
  `card` varchar(255) DEFAULT NULL,
  `schoolyear` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `uccp_admission_billing`
--

CREATE TABLE `uccp_admission_billing` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Birthday` date NOT NULL,
  `Birthplace` varchar(255) NOT NULL,
  `Number` varchar(255) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Guardian` varchar(255) NOT NULL,
  `G-Occupation` varchar(255) NOT NULL,
  `G-Contact` varchar(255) NOT NULL,
  `G-Adress` varchar(255) NOT NULL,
  `Primary` varchar(255) NOT NULL,
  `Primary-Sy` varchar(255) NOT NULL,
  `Highschool` varchar(255) NOT NULL,
  `Highschool-Sy` varchar(255) NOT NULL,
  `Shs` varchar(255) NOT NULL,
  `Shs-Sy` varchar(255) NOT NULL,
  `Firstchoice` varchar(255) NOT NULL,
  `Requirements` varchar(255) NOT NULL,
  `Picture` varchar(255) NOT NULL,
  `Proof` varchar(255) NOT NULL,
  `Card` varchar(255) NOT NULL,
  `Schoolyear` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `ornumber` varchar(255) NOT NULL,
  `totalprice` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `uccp_admission_schedule`
--

CREATE TABLE `uccp_admission_schedule` (
  `id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `schoolyear` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uccp_admission_schedule`
--

INSERT INTO `uccp_admission_schedule` (`id`, `status`, `schoolyear`) VALUES
(1, 'Open', '2022-2023');

-- --------------------------------------------------------

--
-- Table structure for table `uccp_approvedcurriculum`
--

CREATE TABLE `uccp_approvedcurriculum` (
  `id` int(11) NOT NULL,
  `Schoolyear` varchar(255) NOT NULL,
  `Course` varchar(255) NOT NULL,
  `Year` varchar(255) NOT NULL,
  `Subcode` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Units` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `Sem` varchar(255) NOT NULL,
  `availability` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uccp_approvedcurriculum`
--

INSERT INTO `uccp_approvedcurriculum` (`id`, `Schoolyear`, `Course`, `Year`, `Subcode`, `Description`, `Units`, `Status`, `Sem`, `availability`) VALUES
(1, '2', 'BSCS', '2nd Year', '2', '2', '2', 'APPROVED', '1st', 'Accredit'),
(2, '2022-2023', 'BSCS', '1st Year', 'GEM 001', 'Rizals Life Works and Writings', '3', 'APPROVED', '2nd', 'Accredit'),
(3, '2022-2023', 'BSCS', '1st Year', 'GPGI', 'GELOPOGI', '5', 'APPROVED', '1st', 'Accredit');

-- --------------------------------------------------------

--
-- Table structure for table `uccp_bor_tbl`
--

CREATE TABLE `uccp_bor_tbl` (
  `id` int(11) NOT NULL COMMENT 'board of regents id',
  `bor_name` varchar(60) NOT NULL COMMENT 'board of regents name',
  `bor_position` varchar(60) NOT NULL COMMENT 'board of regents position',
  `bor_description` text NOT NULL COMMENT 'board of regents description',
  `bor_image` varchar(60) DEFAULT NULL COMMENT 'board of regents image',
  `bor_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `uccp_course`
--

CREATE TABLE `uccp_course` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `courses` varchar(255) NOT NULL,
  `yearlevel` varchar(255) NOT NULL,
  `totalprice` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `uccp_coursefee`
--

CREATE TABLE `uccp_coursefee` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uccp_coursefee`
--

INSERT INTO `uccp_coursefee` (`id`, `type`, `price`) VALUES
(1, 'admission', 100),
(2, 'z', 0);

-- --------------------------------------------------------

--
-- Table structure for table `uccp_curriculum`
--

CREATE TABLE `uccp_curriculum` (
  `id` int(11) NOT NULL,
  `Schoolyear` varchar(255) NOT NULL,
  `Course` varchar(255) NOT NULL,
  `Year` varchar(255) NOT NULL,
  `Subcode` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Units` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `Sem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `uccp_enrolled`
--

CREATE TABLE `uccp_enrolled` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `birthplace` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `schoolyear` varchar(255) NOT NULL,
  `sem` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `diploma` varchar(255) NOT NULL,
  `goodmoral` varchar(255) NOT NULL,
  `psa` varchar(255) NOT NULL,
  `card` varchar(255) NOT NULL,
  `proof` varchar(255) NOT NULL,
  `erf` varchar(255) NOT NULL,
  `records` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `account_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uccp_enrolled`
--

INSERT INTO `uccp_enrolled` (`id`, `name`, `gender`, `birthday`, `birthplace`, `email`, `phone`, `address`, `course`, `year`, `section`, `schoolyear`, `sem`, `picture`, `diploma`, `goodmoral`, `psa`, `card`, `proof`, `erf`, `records`, `status`, `username`, `password`, `account_type`) VALUES
(1, 'ANGELO CHARLES DELLOSA PERLOTA', 'Male', '2023-05-19', 'Manila', 'angeloperlota38@gmail.com', '1231231231', '123', 'Bachelor of Science in Computer Science', '1st Year', 'BSCS-1A', '2022-2023', '1st', '16844575212592023.05.08 Rizal Exhibit (66).JPG', '50533725637772023.05.08 Rizal Exhibit (64).JPG', '67378300850362023.05.08 Rizal Exhibit (66).JPG', '33689150425182023.05.08 Rizal Exhibit (66).JPG', '84222876062952023.05.08 Rizal Exhibit (64).JPG', '101067451275542023.05.08 Rizal Exhibit (64).JPG', '', '', 'Enrolled', 'angeloperlota38@gmail.com', 'ANGELOCHARLESDELLOSAPERLOTA', '1'),
(7, '1', '[value-3]', '[value-4]', '', '[value-5]', '[value-6]', '', '[value-7]', '[value-8]', 'BSCS-1A', '[value-10]', '[value-11]', '[value-12]', '[value-13]', '[value-14]', '[value-15]', '[value-16]', '[value-17]', '[value-18]', '[value-19]', 'INC', '[value-21]', '[value-22]', '1');

-- --------------------------------------------------------

--
-- Table structure for table `uccp_enrollee`
--

CREATE TABLE `uccp_enrollee` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `birthplace` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `schoolyear` varchar(255) NOT NULL,
  `sem` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `diploma` varchar(255) NOT NULL,
  `goodmoral` varchar(255) NOT NULL,
  `psa` varchar(255) NOT NULL,
  `card` varchar(255) NOT NULL,
  `proof` varchar(255) NOT NULL,
  `erf` varchar(255) NOT NULL,
  `records` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `account_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `uccp_enrollment_billing`
--

CREATE TABLE `uccp_enrollment_billing` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `birthplace` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `schoolyear` varchar(255) NOT NULL,
  `sem` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `diploma` varchar(255) NOT NULL,
  `goodmoral` varchar(255) NOT NULL,
  `psa` varchar(255) NOT NULL,
  `card` varchar(255) NOT NULL,
  `proof` varchar(255) NOT NULL,
  `erf` varchar(255) NOT NULL,
  `records` varchar(255) NOT NULL,
  `ornumber` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `feetype` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `totalprice` varchar(255) NOT NULL,
  `balance` varchar(255) NOT NULL,
  `payable_fee` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `account_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `uccp_enrollment_schedule`
--

CREATE TABLE `uccp_enrollment_schedule` (
  `id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `schoolyear` varchar(255) NOT NULL,
  `sem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uccp_enrollment_schedule`
--

INSERT INTO `uccp_enrollment_schedule` (`id`, `status`, `schoolyear`, `sem`) VALUES
(1, 'Open', '2022-2023', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `uccp_eval`
--

CREATE TABLE `uccp_eval` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `schoolyear` varchar(255) NOT NULL,
  `sem` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `diploma` varchar(255) NOT NULL,
  `goodmoral` varchar(255) NOT NULL,
  `psa` varchar(255) NOT NULL,
  `card` varchar(255) NOT NULL,
  `proof` varchar(255) NOT NULL,
  `erf` varchar(255) NOT NULL,
  `records` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `account_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uccp_eval`
--

INSERT INTO `uccp_eval` (`id`, `name`, `gender`, `birthday`, `email`, `phone`, `course`, `year`, `section`, `schoolyear`, `sem`, `picture`, `diploma`, `goodmoral`, `psa`, `card`, `proof`, `erf`, `records`, `status`, `remarks`, `username`, `password`, `account_type`) VALUES
(1, 'ANGELO CHARLES DELLOSA PERLOTA', 'Male', '2023-05-19', 'angeloperlota38@gmail.com', '1231231231', 'Bachelor of Science in Computer Science', '1st Year', 'BSCS-1A', '2022-2023', '1st', '16844575212592023.05.08 Rizal Exhibit (66).JPG', '50533725637772023.05.08 Rizal Exhibit (64).JPG', '67378300850362023.05.08 Rizal Exhibit (66).JPG', '33689150425182023.05.08 Rizal Exhibit (66).JPG', '84222876062952023.05.08 Rizal Exhibit (64).JPG', '101067451275542023.05.08 Rizal Exhibit (64).JPG', '', '', '', 'PASSED', 'angeloperlota38@gmail.com', 'ANGELOCHARLESDELLOSAPERLOTA', '1'),
(4, '1', '[value-3]', '[value-4]', '', '[value-5]', '[value-6]', '[value-7]', 'BSCS-1A', '', '[value-10]', '[value-12]', '[value-13]', '[value-14]', '[value-15]', '[value-16]', '[value-17]', '[value-18]', '[value-19]', '', 'INC', '[value-21]', '[value-22]', '1');

-- --------------------------------------------------------

--
-- Table structure for table `uccp_examinees`
--

CREATE TABLE `uccp_examinees` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Birthday` date NOT NULL,
  `Birthplace` varchar(255) NOT NULL,
  `Number` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Guardian` varchar(255) NOT NULL,
  `G-Occupation` varchar(255) NOT NULL,
  `G-Contact` varchar(255) NOT NULL,
  `G-Adress` varchar(255) NOT NULL,
  `Primary` varchar(255) NOT NULL,
  `Primary-Sy` varchar(255) NOT NULL,
  `Highschool` varchar(255) NOT NULL,
  `Highschool-Sy` varchar(255) NOT NULL,
  `Shs` varchar(255) NOT NULL,
  `Shs-Sy` varchar(255) NOT NULL,
  `Firstchoice` varchar(255) NOT NULL,
  `Requirements` varchar(255) NOT NULL,
  `Picture` varchar(255) NOT NULL,
  `Proof` varchar(255) NOT NULL,
  `Card` varchar(255) NOT NULL,
  `Schoolyear` varchar(255) NOT NULL COMMENT 'what year they admitted',
  `batch` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `gwarange` varchar(255) NOT NULL,
  `schedule` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `syexisting` varchar(255) NOT NULL COMMENT 'schoolyear assigned based on what''s opened',
  `schedid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `uccp_examsched`
--

CREATE TABLE `uccp_examsched` (
  `id` int(11) NOT NULL,
  `batch` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `gwarange` int(11) NOT NULL,
  `schedule` varchar(255) DEFAULT NULL,
  `room` varchar(255) NOT NULL,
  `syexisting` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `usercount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uccp_examsched`
--

INSERT INTO `uccp_examsched` (`id`, `batch`, `category`, `gwarange`, `schedule`, `room`, `syexisting`, `size`, `usercount`) VALUES
(1, 1, 'UCC', 80, '2023-05-19', '1', '2022-2023', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uccp_grading`
--

CREATE TABLE `uccp_grading` (
  `id` int(11) NOT NULL,
  `schoolyear` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `courseyearsection` varchar(255) NOT NULL,
  `subjectcode` varchar(255) NOT NULL,
  `midterm` double NOT NULL,
  `finals` double NOT NULL,
  `average` double NOT NULL,
  `remarks` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `uccp_gradingsystem_tbl`
--

CREATE TABLE `uccp_gradingsystem_tbl` (
  `id` int(11) NOT NULL,
  `firstname` varchar(191) NOT NULL,
  `lastname` varchar(191) NOT NULL,
  `course` varchar(191) NOT NULL,
  `midterm` float NOT NULL,
  `finalterm` float NOT NULL,
  `average` float NOT NULL,
  `remarks` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `uccp_ht_tbl`
--

CREATE TABLE `uccp_ht_tbl` (
  `id` int(11) NOT NULL,
  `ht_title` varchar(60) NOT NULL,
  `ht_image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `uccp_irregular`
--

CREATE TABLE `uccp_irregular` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `Subcode` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Sem` varchar(255) NOT NULL,
  `Units` varchar(255) NOT NULL,
  `StartTime` varchar(255) NOT NULL,
  `EndTime` varchar(255) NOT NULL,
  `Professor` varchar(255) NOT NULL,
  `Day` varchar(255) NOT NULL,
  `Room` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uccp_irregular`
--

INSERT INTO `uccp_irregular` (`id`, `name`, `Subcode`, `Description`, `Sem`, `Units`, `StartTime`, `EndTime`, `Professor`, `Day`, `Room`) VALUES
(2, '1', 'GEM 001', 'Rizals Life Works and Writings', '2nd', '3', '1', '1', '1 1 1', 'Tuesday', '1');

-- --------------------------------------------------------

--
-- Table structure for table `uccp_login`
--

CREATE TABLE `uccp_login` (
  `id` int(11) NOT NULL,
  `Username` varchar(300) NOT NULL,
  `Email` varchar(300) NOT NULL,
  `Usertype` varchar(50) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `otp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uccp_login`
--

INSERT INTO `uccp_login` (`id`, `Username`, `Email`, `Usertype`, `Password`, `otp`) VALUES
(1, 'registrar', 'registrar@gmail.com', '3', 'registrar', ''),
(2, 'accounting', 'accounting@gmail.com', '4', 'accounting', ''),
(3, 'deans', 'dean@gmail.com', '5', 'deans', ''),
(4, 'admin', 'admin@gmail.com', '6', 'admin', ''),
(5, '1', '1', '2', '1 1 1', ''),
(7, '[value-21]', '[value-3]', '1', '[value-22]', ''),
(603, 'angeloperlota38@gmail.com', 'angeloperlota38@gmail.com', '1', 'ANGELOCHARLESDELLOSAPERLOTA', '');

-- --------------------------------------------------------

--
-- Table structure for table `uccp_masterlist`
--

CREATE TABLE `uccp_masterlist` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `schoolyear` varchar(255) NOT NULL,
  `sem` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `diploma` varchar(255) NOT NULL,
  `goodmoral` varchar(255) NOT NULL,
  `psa` varchar(255) NOT NULL,
  `card` varchar(255) NOT NULL,
  `proof` varchar(255) NOT NULL,
  `erf` varchar(255) NOT NULL,
  `records` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `account_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `uccp_news_tbl`
--

CREATE TABLE `uccp_news_tbl` (
  `id` int(11) NOT NULL,
  `author` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `body` mediumtext NOT NULL,
  `imgdir` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `uccp_passers`
--

CREATE TABLE `uccp_passers` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Birthday` date NOT NULL,
  `Birthplace` varchar(255) NOT NULL,
  `Number` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Guardian` varchar(255) NOT NULL,
  `G-Occupation` varchar(255) NOT NULL,
  `G-Contact` varchar(255) NOT NULL,
  `G-Adress` varchar(255) NOT NULL,
  `Primary` varchar(255) NOT NULL,
  `Primary-Sy` varchar(255) NOT NULL,
  `Highschool` varchar(255) NOT NULL,
  `Highschool-Sy` varchar(255) NOT NULL,
  `Shs` varchar(255) NOT NULL,
  `Shs-Sy` varchar(255) NOT NULL,
  `Firstchoice` varchar(255) NOT NULL,
  `Requirements` varchar(255) NOT NULL,
  `Picture` varchar(255) NOT NULL,
  `Proof` varchar(255) NOT NULL,
  `Card` varchar(255) NOT NULL,
  `Schoolyear` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uccp_passers`
--

INSERT INTO `uccp_passers` (`id`, `Name`, `Gender`, `Birthday`, `Birthplace`, `Number`, `Email`, `Address`, `Guardian`, `G-Occupation`, `G-Contact`, `G-Adress`, `Primary`, `Primary-Sy`, `Highschool`, `Highschool-Sy`, `Shs`, `Shs-Sy`, `Firstchoice`, `Requirements`, `Picture`, `Proof`, `Card`, `Schoolyear`) VALUES
(1, 'ANGELO CHARLES DELLOSA PERLOTA', 'Male', '2023-05-19', 'Manila', '1231231231', 'angeloperlota38@gmail.com', '123', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'Bachelor of Science in Computer Science', '16844573259102023.05.08 Rizal Exhibit (66).JPG', '50533719777302023.05.08 Rizal Exhibit (66).JPG', '67378293036402023.05.08 Rizal Exhibit (64).JPG', '33689146518202023.05.08 Rizal Exhibit (64).JPG', '2022-2023');

-- --------------------------------------------------------

--
-- Table structure for table `uccp_professor`
--

CREATE TABLE `uccp_professor` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `account_type` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uccp_professor`
--

INSERT INTO `uccp_professor` (`id`, `fullname`, `address`, `email`, `gender`, `contact`, `faculty`, `account_type`, `username`, `password`) VALUES
(5, '1 1 1', '1', '1', 'Male', '1', '1', '2', '1', '1 1 1');

-- --------------------------------------------------------

--
-- Table structure for table `uccp_sched`
--

CREATE TABLE `uccp_sched` (
  `id` int(11) NOT NULL,
  `courseyearsection` varchar(255) NOT NULL,
  `subjectcode` varchar(255) NOT NULL,
  `subjectname` varchar(255) NOT NULL,
  `units` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `starttime` varchar(255) NOT NULL,
  `endtime` varchar(255) NOT NULL,
  `professor` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uccp_sched`
--

INSERT INTO `uccp_sched` (`id`, `courseyearsection`, `subjectcode`, `subjectname`, `units`, `day`, `starttime`, `endtime`, `professor`, `room`) VALUES
(1, 'BSCS-1A', '2', '2', '2', 'Friday', '3:33 pm', '2', '1 1 1', '1'),
(2, 'BSCS-1A', '2', '2', '2', 'Saturday', '2:00 pm', '12:10 am', '1 1 1', '2'),
(3, 'BSCS-1A', 'GEM 001', 'Rizals Life Works and Writings', '3', 'Friday', '3:45 pm', '1', '1 1 1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `uccp_section`
--

CREATE TABLE `uccp_section` (
  `id` int(11) NOT NULL,
  `course` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `courseyearsection` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uccp_section`
--

INSERT INTO `uccp_section` (`id`, `course`, `year`, `section`, `courseyearsection`) VALUES
(1, 'BSCS', '1st', 'A', 'BSCS-1A');

-- --------------------------------------------------------

--
-- Table structure for table `uccp_studentinfo`
--

CREATE TABLE `uccp_studentinfo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `schoolyear` varchar(255) NOT NULL,
  `sem` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `diploma` varchar(255) NOT NULL,
  `goodmoral` varchar(255) NOT NULL,
  `psa` varchar(255) NOT NULL,
  `card` varchar(255) NOT NULL,
  `proof` varchar(255) NOT NULL,
  `erf` varchar(255) NOT NULL,
  `records` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `account_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uccp_studentinfo`
--

INSERT INTO `uccp_studentinfo` (`id`, `name`, `gender`, `birthday`, `email`, `phone`, `address`, `course`, `year`, `section`, `schoolyear`, `sem`, `picture`, `diploma`, `goodmoral`, `psa`, `card`, `proof`, `erf`, `records`, `status`, `username`, `password`, `account_type`) VALUES
(1, 'ANGELO CHARLES DELLOSA PERLOTA', 'Male', '2023-05-19', 'angeloperlota38@gmail.com', '1231231231', '123', 'BSCS', '1st Year', 'BSCS-1A', '2022-2023', '1st', '16844575212592023.05.08 Rizal Exhibit (66).JPG', '50533725637772023.05.08 Rizal Exhibit (64).JPG', '67378300850362023.05.08 Rizal Exhibit (66).JPG', '33689150425182023.05.08 Rizal Exhibit (66).JPG', '84222876062952023.05.08 Rizal Exhibit (64).JPG', '101067451275542023.05.08 Rizal Exhibit (64).JPG', '', '', 'Enrolled', 'angeloperlota38@gmail.com', 'ANGELOCHARLESDELLOSAPERLOTA', '1'),
(7, '1', '[value-3]', '[value-4]', '[value-5]', '[value-6]', '', '[value-7]', '[value-8]', 'BSCS-1A', '[value-10]', '[value-11]', '[value-12]', '[value-13]', '[value-14]', '[value-15]', '[value-16]', '[value-17]', '[value-18]', '[value-19]', 'INC', '[value-21]', '[value-22]', '1');

-- --------------------------------------------------------

--
-- Table structure for table `uccp_xo_tbl`
--

CREATE TABLE `uccp_xo_tbl` (
  `id` int(11) NOT NULL COMMENT 'executive offices id',
  `xo_name` varchar(60) NOT NULL COMMENT 'executive offices name',
  `xo_position` varchar(60) NOT NULL COMMENT 'executive offices position',
  `xo_description` text NOT NULL COMMENT 'executive offices description',
  `xo_image` varchar(60) NOT NULL COMMENT 'executive offices image'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `uccp_accpaidaddmission`
--
ALTER TABLE `uccp_accpaidaddmission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_accpaidenrollment`
--
ALTER TABLE `uccp_accpaidenrollment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_add_courses`
--
ALTER TABLE `uccp_add_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_adminacc_tbl`
--
ALTER TABLE `uccp_adminacc_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_admission`
--
ALTER TABLE `uccp_admission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_admission_billing`
--
ALTER TABLE `uccp_admission_billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_admission_schedule`
--
ALTER TABLE `uccp_admission_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_approvedcurriculum`
--
ALTER TABLE `uccp_approvedcurriculum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_bor_tbl`
--
ALTER TABLE `uccp_bor_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_course`
--
ALTER TABLE `uccp_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_coursefee`
--
ALTER TABLE `uccp_coursefee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_curriculum`
--
ALTER TABLE `uccp_curriculum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_enrolled`
--
ALTER TABLE `uccp_enrolled`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_enrollee`
--
ALTER TABLE `uccp_enrollee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_enrollment_billing`
--
ALTER TABLE `uccp_enrollment_billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_enrollment_schedule`
--
ALTER TABLE `uccp_enrollment_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_eval`
--
ALTER TABLE `uccp_eval`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_examinees`
--
ALTER TABLE `uccp_examinees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_examsched`
--
ALTER TABLE `uccp_examsched`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_grading`
--
ALTER TABLE `uccp_grading`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_gradingsystem_tbl`
--
ALTER TABLE `uccp_gradingsystem_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_ht_tbl`
--
ALTER TABLE `uccp_ht_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_irregular`
--
ALTER TABLE `uccp_irregular`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_login`
--
ALTER TABLE `uccp_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_masterlist`
--
ALTER TABLE `uccp_masterlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_news_tbl`
--
ALTER TABLE `uccp_news_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_passers`
--
ALTER TABLE `uccp_passers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_professor`
--
ALTER TABLE `uccp_professor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_sched`
--
ALTER TABLE `uccp_sched`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_section`
--
ALTER TABLE `uccp_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_studentinfo`
--
ALTER TABLE `uccp_studentinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uccp_xo_tbl`
--
ALTER TABLE `uccp_xo_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `uccp_accpaidaddmission`
--
ALTER TABLE `uccp_accpaidaddmission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uccp_accpaidenrollment`
--
ALTER TABLE `uccp_accpaidenrollment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uccp_add_courses`
--
ALTER TABLE `uccp_add_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uccp_adminacc_tbl`
--
ALTER TABLE `uccp_adminacc_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uccp_admission`
--
ALTER TABLE `uccp_admission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uccp_admission_billing`
--
ALTER TABLE `uccp_admission_billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uccp_admission_schedule`
--
ALTER TABLE `uccp_admission_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uccp_approvedcurriculum`
--
ALTER TABLE `uccp_approvedcurriculum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `uccp_bor_tbl`
--
ALTER TABLE `uccp_bor_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'board of regents id';

--
-- AUTO_INCREMENT for table `uccp_course`
--
ALTER TABLE `uccp_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uccp_coursefee`
--
ALTER TABLE `uccp_coursefee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uccp_curriculum`
--
ALTER TABLE `uccp_curriculum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `uccp_enrolled`
--
ALTER TABLE `uccp_enrolled`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `uccp_enrollee`
--
ALTER TABLE `uccp_enrollee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uccp_enrollment_billing`
--
ALTER TABLE `uccp_enrollment_billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uccp_enrollment_schedule`
--
ALTER TABLE `uccp_enrollment_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uccp_eval`
--
ALTER TABLE `uccp_eval`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `uccp_examinees`
--
ALTER TABLE `uccp_examinees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uccp_examsched`
--
ALTER TABLE `uccp_examsched`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uccp_grading`
--
ALTER TABLE `uccp_grading`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uccp_gradingsystem_tbl`
--
ALTER TABLE `uccp_gradingsystem_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uccp_ht_tbl`
--
ALTER TABLE `uccp_ht_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uccp_irregular`
--
ALTER TABLE `uccp_irregular`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uccp_login`
--
ALTER TABLE `uccp_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;

--
-- AUTO_INCREMENT for table `uccp_masterlist`
--
ALTER TABLE `uccp_masterlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `uccp_news_tbl`
--
ALTER TABLE `uccp_news_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uccp_passers`
--
ALTER TABLE `uccp_passers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uccp_professor`
--
ALTER TABLE `uccp_professor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `uccp_sched`
--
ALTER TABLE `uccp_sched`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `uccp_section`
--
ALTER TABLE `uccp_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uccp_studentinfo`
--
ALTER TABLE `uccp_studentinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `uccp_xo_tbl`
--
ALTER TABLE `uccp_xo_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'executive offices id';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
