-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2023 at 03:03 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_management_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `appointment_Date` date NOT NULL,
  `appointment_time` varchar(250) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `dieseas` varchar(250) NOT NULL,
  `note` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 For Pending,\r\n1 For Updated',
  `Approved` int(11) NOT NULL,
  `prescribed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `appointment_Date`, `appointment_time`, `doctor_id`, `patient_id`, `role_id`, `dieseas`, `note`, `status`, `Approved`, `prescribed`) VALUES
(1, '2023-08-09', '9:00 AM', 19, 49, 5, 'Cough and Cold', 'Normal Health Checkup', 0, 0, 0),
(2, '2023-06-12', '9:00 AM', 19, 56, 5, 'Cough and Cold', 'Normal Health Checkup', 0, 0, 0),
(3, '2023-05-30', '5:00 PM', 50, 53, 5, 'Cardiac', 'New Patient', 1, 1, 1),
(4, '2023-05-30', '5:00 PM', 50, 53, 5, 'Cardiac', 'New Patient', 1, 1, 0),
(5, '2023-05-30', '2:00 PM', 50, 53, 5, 'High Blood Pressure', 'Second Checkup', 1, 1, 1),
(6, '2023-05-20', '9:00 AM', 50, 53, 5, 'Cough', '', 1, 1, 0),
(7, '2023-06-01', '5:00 PM', 50, 53, 5, 'Cough', '', 1, 1, 1),
(8, '2023-06-02', '6:00 PM', 50, 53, 5, 'Kidney Dysfunctioning', 'Test Note', 0, 1, 1),
(9, '2023-06-03', '9:00 PM', 50, 53, 5, 'Cardiac', 'ABCTEST', 1, 1, 1),
(10, '2023-06-06', '5:00 PM', 50, 53, 5, 'Cough', 'notetest', 1, 1, 1),
(11, '2023-06-05', '5:00 PM', 50, 53, 5, 'Cough ', 'Notetest', 0, 0, 0),
(12, '2023-06-06', '12:00 AM', 50, 88, 5, 'High Blood Pressure', 'New Patient', 1, 1, 1),
(13, '2023-06-06', '8:00 PM', 50, 89, 5, 'Fever', '', 1, 1, 1),
(14, '2023-06-15', '9:00 PM', 50, 90, 5, 'HeadAche', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `chemist_details`
--

CREATE TABLE `chemist_details` (
  `id` int(11) NOT NULL,
  `degree` varchar(250) NOT NULL,
  `shift_start` varchar(250) NOT NULL,
  `shift_end` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chemist_details`
--

INSERT INTO `chemist_details` (`id`, `degree`, `shift_start`, `shift_end`, `user_id`) VALUES
(1, 'M Pharm', '8:00 AM', '6:00 PM', 79),
(2, 'B Pharm', '11:00 PM', '6:00 AM', 80);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_details`
--

CREATE TABLE `doctor_details` (
  `id` int(11) NOT NULL,
  `degree` varchar(250) NOT NULL,
  `speciality` varchar(250) NOT NULL,
  `education_College` varchar(250) NOT NULL,
  `experience` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `shift_start` varchar(250) NOT NULL,
  `shift_end` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor_details`
--

INSERT INTO `doctor_details` (`id`, `degree`, `speciality`, `education_College`, `experience`, `user_id`, `status`, `created_at`, `updated_at`, `shift_start`, `shift_end`) VALUES
(2, 'MBBS', 'Cardiologist', 'ABS', '10 year', 19, 1, '2023-05-18 07:27:14', '2023-05-18 07:27:14', '9:00 AM', '1:00 PM'),
(3, 'MD', 'Neurologist', 'Gmers', '8 YEars', 20, 1, '2023-05-18 09:16:26', '2023-05-18 09:16:26', '9:00 PM', '5:00 AM'),
(4, 'MBBS', 'Cardiologist', 'ABS', '10 year', 21, 1, '2023-05-23 04:58:14', '2023-05-23 04:58:14', '9:00 AM', '1:00 PM'),
(5, 'MBBS', 'Cardiologist', 'ABS', '10 year', 22, 1, '2023-05-23 11:50:05', '2023-05-23 11:50:05', '9:00 AM', '1:00 PM'),
(6, 'MD', 'Pharmacology', 'MSU', '22 YEARS', 23, 1, '2023-05-23 12:03:18', '2023-05-23 12:03:18', '9:00 PM', '9:00 AM'),
(7, 'MD', 'Pharmacology', 'MSU', '22 YEARS', 24, 1, '2023-05-23 12:04:54', '2023-05-23 12:04:54', '9:00 PM', '9:00 AM'),
(8, 'MD', 'Pharmacology', 'MSU', '22 YEARS', 25, 1, '2023-05-23 12:12:21', '2023-05-23 12:12:21', '9:00 PM', '9:00 AM'),
(9, 'MD', 'Pharmacology', 'MSU', '22 YEARS', 36, 1, '2023-05-24 11:34:01', '2023-05-24 11:34:01', '9:00 PM', '9:00 AM'),
(10, 'MD', 'Pharmacology', 'MSU', '22 YEARS', 44, 1, '2023-05-26 07:51:48', '2023-05-26 07:51:48', '9:00 PM', '9:00 AM'),
(11, 'MD', 'Pharmacology', 'MSU', '22 YEARS', 45, 1, '2023-05-26 09:29:32', '2023-05-26 09:29:32', '9:00 PM', '9:00 AM'),
(12, 'MD', 'Pharmacology', 'MSU', '22 YEARS', 46, 1, '2023-05-26 10:07:53', '2023-05-26 10:07:53', '9:00 PM', '9:00 AM'),
(13, 'MBBS', 'Nephrologist', 'Gmers , Surat', '42 Years', 50, 1, '2023-05-29 09:50:22', '2023-05-29 09:50:22', '2:00 AM', '5:00 PM'),
(14, 'MBBS', 'Cardiologist', 'ABS', '10 year', 57, 1, '2023-05-31 07:29:28', '2023-05-31 07:29:28', '9:00 AM', '1:00 PM'),
(16, 'MBBS', 'Cardiologist', 'CHARUSAT', '45 Years', 59, 1, '2023-06-01 08:59:21', '2023-06-01 08:59:21', '5:00 PM', '8:00 PM'),
(17, 'MBBS', 'Cardiologist', 'CHARUSAT', '45 Years', 60, 1, '2023-06-01 09:06:10', '2023-06-01 09:06:10', '5:00 PM', '8:00 PM'),
(18, 'MBBS', 'Cardiologist', 'CHARUSAT', '45 Years', 61, 1, '2023-06-01 09:39:22', '2023-06-01 09:39:22', '5:00 PM', '8:00 PM'),
(19, 'ICCIM', 'Critical Care Unit', 'AIMS', '52 Years', 62, 1, '2023-06-01 09:50:56', '2023-06-01 09:50:56', '1:00 PM', '5:00 PM'),
(20, 'MBBS', 'Cardiologist', 'CHARUSAT', '45 Years', 63, 1, '2023-06-02 05:15:43', '2023-06-02 05:15:43', '5:00 PM', '8:00 PM'),
(21, 'MBBS', 'Cardiologist', 'CHARUSAT', '45 Years', 64, 1, '2023-06-02 05:19:17', '2023-06-02 05:19:17', '5:00 PM', '8:00 PM'),
(22, 'MBBS', 'Cardiologist', 'CHARUSAT', '45 Years', 65, 1, '2023-06-02 05:22:09', '2023-06-02 05:22:09', '5:00 PM', '8:00 PM'),
(23, 'MBBS', 'Cardiologist', 'CHARUSAT', '45 Years', 66, 1, '2023-06-02 05:33:51', '2023-06-02 05:33:51', '5:00 PM', '8:00 PM'),
(24, 'MBBS', 'Cardiologist', 'CHARUSAT', '45 Years', 67, 1, '2023-06-02 05:55:00', '2023-06-02 05:55:00', '5:00 PM', '8:00 PM'),
(25, 'MBBS', 'Cardiologist', 'CHARUSAT', '45 Years', 68, 1, '2023-06-02 05:56:20', '2023-06-02 05:56:20', '5:00 PM', '8:00 PM'),
(26, 'MBBS', 'Cardiologist', 'CHARUSAT', '45 Years', 69, 1, '2023-06-02 06:09:32', '2023-06-02 06:09:32', '5:00 PM', '8:00 PM'),
(27, 'MBBS', 'Cardiologist', 'CHARUSAT', '45 Years', 70, 1, '2023-06-02 06:10:28', '2023-06-02 06:10:28', '5:00 PM', '8:00 PM'),
(28, 'MBBS', 'Cardiologist', 'CHARUSAT', '45 Years', 71, 1, '2023-06-02 06:11:54', '2023-06-02 06:11:54', '5:00 PM', '8:00 PM'),
(29, 'MBBS', 'Cardiologist', 'CHARUSAT', '45 Years', 72, 1, '2023-06-02 06:14:16', '2023-06-02 06:14:16', '5:00 PM', '8:00 PM'),
(30, 'MBBS', 'Cardiologist', 'CHARUSAT', '45 Years', 73, 1, '2023-06-02 06:27:27', '2023-06-02 06:27:27', '5:00 PM', '8:00 PM'),
(31, 'MBBS', 'Cardiologist', 'CHARUSAT', '45 Years', 74, 1, '2023-06-02 06:29:24', '2023-06-02 06:29:24', '5:00 PM', '8:00 PM'),
(32, 'MBBS', 'Cardiologist', 'CHARUSAT', '45 Years', 75, 1, '2023-06-02 06:30:45', '2023-06-02 06:30:45', '5:00 PM', '8:00 PM'),
(33, 'MBBS', 'Cardiologist', 'CHARUSAT', '45 Years', 76, 1, '2023-06-02 06:43:34', '2023-06-02 06:43:34', '5:00 PM', '8:00 PM'),
(34, 'MBBS', 'Cardiologist', 'CHARUSAT', '45 Years', 77, 1, '2023-06-02 06:45:55', '2023-06-02 06:45:55', '5:00 PM', '8:00 PM'),
(35, 'MBBS', 'Cardiologist', 'ABS', '10 year', 81, 1, '2023-06-03 05:25:39', '2023-06-03 05:25:39', '9:00 AM', '1:00 PM'),
(36, 'MBBS', 'Cardiologist', 'ABS', '10 year', 82, 1, '2023-06-03 05:27:57', '2023-06-03 05:27:57', '9:00 AM', '1:00 PM'),
(37, 'MBBS', 'Cardiologist', 'ABS', '10 year', 83, 1, '2023-06-03 05:59:46', '2023-06-03 05:59:46', '9:00 AM', '1:00 PM'),
(38, 'MBBS', 'Cardiologist', 'ABS', '10 year', 84, 1, '2023-06-03 06:02:31', '2023-06-03 06:02:31', '9:00 AM', '1:00 PM'),
(39, 'MBBS', 'Cardiologist', 'ABS', '10 year', 85, 1, '2023-06-03 06:03:45', '2023-06-03 06:03:45', '9:00 AM', '1:00 PM'),
(40, 'MBBS', 'Cardiologist', 'ABS', '10 year', 86, 1, '2023-06-03 06:04:43', '2023-06-03 06:04:43', '9:00 AM', '1:00 PM'),
(41, 'MBBS', 'Cardiologist', 'ABS', '10 year', 87, 1, '2023-06-03 06:19:28', '2023-06-03 06:19:28', '9:00 AM', '1:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(11) NOT NULL,
  `content` varchar(250) NOT NULL,
  `medicine` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `content`, `medicine`, `status`) VALUES
(1, 'Paracetamol', 'Dolo-650', 1),
(2, 'Painkiller', 'OxyContin', 1),
(3, 'Paracetamol', 'Acetaminophen', 1),
(4, 'Buprenorphine', 'Bunavail', 1),
(5, 'Cough Syrup', 'CNC-150', 1),
(6, 'Paracetamol', 'Dolo-366', 1),
(7, 'Paracetamol', 'Dolo-366', 0);

-- --------------------------------------------------------

--
-- Table structure for table `patient_details`
--

CREATE TABLE `patient_details` (
  `id` int(11) NOT NULL,
  `age` int(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `dieseas` varchar(250) NOT NULL,
  `insurance_id` varchar(250) NOT NULL,
  `insurance_company` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_details`
--

INSERT INTO `patient_details` (`id`, `age`, `gender`, `dieseas`, `insurance_id`, `insurance_company`, `user_id`, `doctor_id`) VALUES
(1, 62, 'Female', 'High Blood Pressure', '998544895615321687435312684', 'Star Health', 47, 5),
(2, 56, 'Male', 'Fever', '654654897546546546548789746', 'Max Health', 48, 19),
(3, 56, 'Male', 'Fever', '', '', 49, 19),
(4, 54, 'Female', 'Cardiac Arrest', '', '', 51, 50),
(5, 0, 'Male', 'Jaundice', '', '', 52, 50),
(6, 68, 'Male', 'Jaundice', '', '', 53, 50),
(7, 86, 'Male', 'Diarrhea', '65', 'LIC ', 56, 68),
(8, 56, 'Female', 'High Blood Pressure', '', '', 88, 50),
(9, 21, 'Male', 'Fever', '', '', 89, 50),
(10, 18, 'Female', 'HeadAche', '', '', 90, 50);

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `medication` varchar(250) NOT NULL,
  `route` varchar(250) NOT NULL,
  `dosage` varchar(250) NOT NULL,
  `dosage_type` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `appointment_id`, `medication`, `route`, `dosage`, `dosage_type`, `status`) VALUES
(1, 3, 'aspirin-500', 'Oral', 'Every 12 Hours', 'After Meal', 0),
(2, 3, 'Dolo-650', 'Oral', 'Every 8 Hours', 'After Meal', 0),
(3, 3, 'Azithral-650', 'Oral', 'Every 12 Hours', 'Before Meal', 0),
(4, 3, 'Azithral-650', 'Oral', 'Every 12 Hours', 'Before Meal', 0),
(5, 3, 'Azithral-650', 'Oral', 'Every 12 Hours', 'Before Meal', 0),
(6, 3, 'Dolo-650', 'Oral', 'Every 8 Hours', 'After Meal', 0),
(7, 3, 'Dolo-650', 'Oral', 'Every 8 Hours', 'After Meal', 0),
(8, 3, 'LemoLate', 'Oral', 'Every 8 Hour', 'Before meal', 0),
(9, 3, 'Unienzyme', 'Oral', 'Every 10 hour', 'Before Meal', 0),
(10, 3, 'Dolo-650', 'Inject', 'Every 24 hour', '-', 0),
(11, 3, 'Azithral', 'Oral', 'Every 8 Hour', 'Before Meal', 0),
(12, 3, 'Aspirin', 'Oral', 'Every 12 hour', 'After Meal', 0),
(13, 3, '1', 'ORAL', 'Every 10 hour', 'Before MEal', 0),
(14, 3, 'OxyContin', 'Oral', 'Every 10 Hour', 'Before Meal', 0),
(15, 3, 'Dolo-650', 'Inject', 'Every 16 Hour', 'After Meal', 0),
(16, 3, 'Dolo-650', 'Inject', 'Every 16 Hour', 'After Meal', 0),
(17, 4, 'Acetaminophen', 'Inject', 'Every 24 Hour', 'After Meal', 0),
(18, 4, 'Acetaminophen', 'Inject', 'Every 20 Hour', 'After Meal', 0),
(19, 4, 'OxyContin', 'Oral', 'Every 12 Hour', 'Before Meal', 0),
(20, 4, 'Dolo-650', 'Oral', 'Every 8 Hour', 'Before Meal', 1),
(21, 3, 'Dolo-650', 'Inject', 'Every 24 Hour', 'Before Meal', 0),
(22, 3, 'Dolo-650', 'Oral', 'Every 24 Hour', 'Before Meal', 0),
(23, 3, 'Acetaminophen', 'Oral', 'Every 12 Hour', 'Before Meal', 1),
(24, 3, 'Bunavail', 'Inject', 'Every 4 Hour', 'After Meal', 0),
(25, 3, 'OxyContin', 'Inject', 'Every 20 Hour', 'Before Meal', 0),
(26, 3, 'Dolo-650', 'Oral', 'Every 8 Hour', 'After Meal', 1),
(27, 3, 'Bunavail', 'Oral', 'Every 8 Hour', 'Before Meal', 1),
(28, 3, 'Dolo-650', 'Inject', 'Every 24 Hour', 'Before Meal', 1),
(29, 3, 'Acetaminophen', 'Inject', 'Every 4 Hour', 'After Meal', 1),
(30, 6, 'Dolo-650', 'Oral', 'Every 12 Hour', 'Before Meal', 0),
(31, 6, 'Acetaminophen', 'Inject', 'Every 12 Hour', 'Before Meal', 0),
(32, 6, 'Bunavail', 'Oral', 'Every 16 Hour', 'After Meal', 0),
(33, 5, 'Acetaminophen', 'Oral', 'Every 12 Hour', 'After Meal', 1),
(34, 5, 'Dolo-650', 'Oral', 'Every 8 Hour', 'After Meal', 1),
(35, 5, 'OxyContin', 'Oral', 'Every 20 Hour', 'Before Meal', 1),
(36, 5, 'Acetaminophen', 'Inject', 'Every 24 Hour', 'Before Meal', 1),
(37, 8, 'Dolo-650', 'Oral', 'Every 8 Hour', 'After Meal', 1),
(38, 9, 'OxyContin', 'Inject', 'Every 4 Hour', 'Before Meal', 0),
(39, 9, 'Acetaminophen', 'Inject', 'Every 24 Hour', 'Before Meal', 1),
(40, 9, 'Bunavail', 'Inject', 'Every 12 Hour', 'After Meal', 1),
(41, 9, 'OxyContin', 'Inject', 'Every 8 Hour', 'Before Meal', 1),
(42, 10, 'Dolo-650', 'Oral', 'Every 12 Hour', 'After Meal', 1),
(43, 12, 'Acetaminophen', 'Oral', 'Every 8 Hour', 'Before Meal', 1),
(44, 13, 'Dolo-650', 'Oral', 'Every 12 Hour', 'After Meal', 1),
(45, 4, 'Acetaminophen', 'Oral', 'Every 8 Hour', 'Before Meal', 1),
(46, 8, 'Dolo-650', 'Inject', 'Every 4 Hour', 'After Meal', 1),
(47, 4, 'Bunavail', 'Inject', 'Every 24 Hour', 'Before Meal', 1),
(48, 6, 'CNC-150', 'Oral', 'Every 8 Hour', 'After Meal', 1),
(49, 13, 'CNC-150', 'Oral', 'Every 12 Hour', 'After Meal', 1),
(50, 7, 'OxyContin', 'Oral', 'Every 8 Hour', 'Before Meal', 1),
(51, 14, 'Dolo-650', 'Oral', 'Every 12 Hour', 'After Meal', 1),
(52, 14, 'CNC-150', 'Oral', 'Every 8 Hour', 'After Meal', 1);

-- --------------------------------------------------------

--
-- Table structure for table `receptionist_details`
--

CREATE TABLE `receptionist_details` (
  `id` int(11) NOT NULL,
  `degree` varchar(250) NOT NULL,
  `experience` varchar(250) NOT NULL,
  `shift_start` varchar(250) NOT NULL,
  `shift_end` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `aadhar_card` varchar(250) NOT NULL,
  `doctor_id` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receptionist_details`
--

INSERT INTO `receptionist_details` (`id`, `degree`, `experience`, `shift_start`, `shift_end`, `address`, `aadhar_card`, `doctor_id`, `user_id`) VALUES
(1, 'MBA', '9 Years', '4:00PM', '4:00 AM', 'Rani Tower , Rajkot', '3214-6549-9842', '57', 0),
(2, 'MBA', '9 Years', '4:00PM', '4:00 AM', 'Rani Tower , Rajkot', '3214-6549-9842', '57', 0),
(3, 'MBA', '9 Years', '4:00PM', '4:00 AM', 'Rani Tower , Rajkot', '3214-6549-9842', '57', 0),
(4, 'MBA', '9 Years', '4:00PM', '4:00 AM', 'Rani Tower , Rajkot', '3214-6549-9842', '57', 0),
(5, 'MBA', '9 Years', '4:00PM', '4:00 AM', 'Rani Tower , Rajkot', '3214-6549-9842', '57', 0),
(6, 'MD', '22 YEARS', '9:00 PM', '9:00 AM', '98,Twin Tower , USA', '32165498765', '23', 39),
(7, 'MBA', '25 years', '5:00 AM', '8:00 PM', 'Rani Tower , Rajkot', '32165432135', '23', 40),
(8, 'MBA', '25 years', '9:00 AM', '5:00 PM', 'Rani Tower , Rajkot', '32165432135', '20', 41),
(9, 'MBA', '25 years', '9:00 AM', '5:00 PM', 'Rani Tower , Rajkot', '32165432135', '24', 42),
(10, 'MBA', '25 years', '9:00 AM', '5:00 PM', 'Rani Tower , Rajkot', '32165432135', '20', 43),
(11, 'MBBS', '5 Years', '2:00 AM', '5:00 PM', 'Pushkardham Society , Rajkot', '321654987', '50', 54),
(12, 'MBA', '9 Years', '4:00PM', '4:00 AM', 'Rani Tower , Rajkot', '3214-6549-9842', '57', 55);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'Doctor'),
(3, 'Patient'),
(4, 'Receptionist'),
(5, 'Chemist');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `mobile_number` varchar(13) NOT NULL,
  `profile_image` varchar(250) DEFAULT NULL,
  `password` varchar(250) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` smallint(1) NOT NULL DEFAULT 1 COMMENT '0 for inactive,1 for active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `mobile_number`, `profile_image`, `password`, `role_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '1234567890', NULL, '$2a$10$pqmkI4RzhHRKkXRWuFNaHedL4XMUpuWxq8amkbj.p3jT2N7l85bzW', 1, 1, '2023-05-18 06:10:29', '2023-05-24 13:02:37'),
(19, 'Akshay', 'Kumar', 'Khan@gmail.com', '5643219875', NULL, '$2a$10$H1fL0uX2ex/YBcnO.Et7WO/NtAMhfHfZgIm6etBDPMAYp/8HOo0YC', 2, 0, '2023-05-18 07:27:14', '2023-06-05 16:55:15'),
(20, 'Samir', 'Udeshi', 'S@gmail.com', '9874563215', NULL, '$2a$10$AEKUBzmrtC7P0ZLxIwwdz.nexskBpxpL7zh7.xQoA1ukV3rATzbj.', 2, 1, '2023-05-18 09:16:26', '2023-05-30 12:33:38'),
(21, 'Jaimin', 'Joshi', 'JAIMIN@gmail.com', '5643219875', NULL, '$2a$10$aOj0k77AoEpE5ZGP9u8Iju7O7YB8QpnseRrjCJuu2qaGXonDekvj6', 2, 0, '2023-05-23 04:58:14', '2023-05-26 10:44:43'),
(22, 'Jaimin', 'Joshi', 'Mark@gmail.com', '5643219875', NULL, '$2a$10$uV95XOa0rRj4fXEC8rCu/O8AXVYCpI7EnyADZNqejkkSCNqtbNyTi', 2, 0, '2023-05-23 11:50:05', '2023-05-25 12:43:32'),
(23, 'Mark', 'Otto', 'MarkOTTO@gmail.com', '1321231232', NULL, '$2a$10$gZV5QXnD1jrLAJ1AwCOdO.uLKUy.tCE5X2EQ5qwObJvWnE2dA.8JK', 2, 0, '2023-05-23 12:03:17', '2023-05-26 09:44:22'),
(24, 'Mark', 'Auto', 'Auto@gmail.com', '3216549875', NULL, '$2a$10$dLfV1WBlaoALgoSPDOzsMOdecEMc6TXDW2QLw/AqQBO88J8/CxXJ.', 2, 0, '2023-05-23 12:04:54', '2023-05-25 12:10:50'),
(25, 'Ajayraj', 'Chauhan', 'Ajay@gmail.com', '9876543212', NULL, '$2a$10$CeyY4Sff9UBeUzcPKenyq.zlDle6FmpnsMWtGfOirxOknGfr5wBDe', 2, 0, '2023-05-23 12:12:21', '2023-05-25 05:44:52'),
(26, 'Radha', 'Krishna', 'recep@gmail.com', '9925627444', NULL, '$2a$10$9zeTRjTqHJ0Vzby3yYkRSeHA.6xWcQ49yjEud2AfHPjUBlkSi7Zcu', 4, 0, '2023-05-24 05:50:07', '2023-05-25 11:52:35'),
(27, 'Radha', 'Krishna', 'ram@gmail.com', '9925627444', NULL, '$2a$10$B1eb..neHP/FmoXYXq6srO3vLiDGf0xK0T4vj.h1Ora27xRuwEpn.', 4, 0, '2023-05-24 06:01:20', '2023-05-25 11:52:37'),
(28, 'Radha', 'Krishna', 'ramkrishna@gmail.com', '9925627444', NULL, '$2a$10$qOf8xG1PyeB8cK91AvqfcuOYW3Lem9iCCSiuhY.rUWJEG5mMFczjy', 4, 0, '2023-05-24 06:02:47', '2023-05-25 11:52:39'),
(29, 'Sita', 'Raman', 'Sita@gmail.com', '9925627444', NULL, '$2a$10$PGQ9Mfz9nJn.6JC6y84qMeId2bfiF0kbHQfRdxICeC/3y1u2CS7Sm', 4, 0, '2023-05-24 06:03:49', '2023-05-25 11:52:44'),
(30, 'Sita', 'Raman', 'SitaRaman@gmail.com', '9925627444', NULL, '$2a$10$qvwlP0B9NZKYMImwogVy/.n99Cs.Uxgo9ViwnFd/wH3mIIoNJhZjS', 4, 0, '2023-05-24 06:05:36', '2023-05-25 11:53:37'),
(31, 'Sita', 'Raman', 'SitaRaman1234@gmail.com', '9925627444', NULL, '$2a$10$1jRxgcImSqtd9gdCOAoS7uC9VQhTLtBRHhLCl3/SRlhEfHEEDhAm.', 4, 0, '2023-05-24 06:07:21', '2023-05-25 11:53:35'),
(32, 'Sita', 'Raman', 'SitaRaman1234897@gmail.com', '9925627444', NULL, '$2a$10$4uU3hz9/7n9LJFtSO/6WtOBsO/hzTEGD7GOjKS6SQU.6bCz.Dp3WO', 4, 0, '2023-05-24 06:08:33', '2023-05-25 11:53:09'),
(33, 'MARK', 'OTTO', 'MARKOTTO123@gmail.com', '6543216543', NULL, '$2a$10$TcLHtxL.l5KmSSVmMoKRCeozvrJkw4/i8YV4nU3veUmUeJhOdO6bm', 4, 0, '2023-05-24 07:02:36', '2023-05-25 11:52:48'),
(34, 'MARK', 'OTTO', 'MARKOTTO1234567@gmail.com', '6543216543', NULL, '$2a$10$thPNgrSjnkZjhNhzs4D.5uVSPDSePJzZJvxMMo6DbrSOtpZGUp09C', 4, 0, '2023-05-24 07:03:47', '2023-05-25 11:52:47'),
(35, 'MARK', 'OTTO', 'MARKOTTO123789@gmail.com', '9925627446', NULL, '$2a$10$1i3GHTw7SpA2McY.84NK1uQDaTWbty85rp2sSfx2Gt.cXqkF56zJS', 4, 0, '2023-05-24 07:07:05', '2023-05-25 11:52:46'),
(36, 'Bhavesh', 'Virani', 'Bhavesh@gmail.com', '9876543214', NULL, '$2a$10$QUbliFCkG2XZwXDlEJP83uTy5kS3wqnpYx1grj5jJDbbHUDnl8fUq', 2, 0, '2023-05-24 11:34:01', '2023-05-25 05:44:49'),
(37, 'Sita', 'Raman', 'SitaRamanSITA@gmail.com', '3625478455', NULL, '$2a$10$bdIdUwwsyINat6lOKg09z.odFYgUtiEZnpe6d5o96Vswm3fnKTgg.', 4, 0, '2023-05-25 09:16:04', '2023-05-26 04:55:05'),
(38, 'Radha', 'Krishna', 'Radha@gmail.com`', '9966332255', NULL, '$2a$10$BZ6fom62SaTls8btK5bT0uvzwZTisZ1TwXBjVWcbXmQYDIGS1nfoK', 4, 0, '2023-05-25 09:25:25', '2023-05-26 04:55:08'),
(39, 'Ram', 'Sita', 'SitaSita@gmail.com', '3216549875', NULL, '$2a$10$i.5jiw02XkBflKW3pInwsObwQosc4btyjmo3HCzKqPr6EtvTiM576', 4, 1, '2023-05-25 11:31:09', '2023-05-25 12:52:16'),
(40, 'Samir', 'Udeshi', 'Samir@gmail.com', '6543216549', NULL, '$2a$10$crGmGJsIE.T1lAhdighHF.fdBIaaL5yS7zq.pA6V1.e.XL5CqGTx2', 4, 1, '2023-05-25 12:09:15', '2023-05-25 12:52:18'),
(41, 'Samir', 'Lakhani', 'SamirLakhani@gmail.com', '6543216549', NULL, '$2a$10$pdh/mpdKpOkvdmS6x9Eo2OOmP3s2MWL74JmzQVHJw/Bi/G6ZO7oHe', 4, 0, '2023-05-25 12:09:45', '2023-05-26 04:55:12'),
(42, 'Rushi', 'Lakhani', 'RushiLakhani@gmail.com', '6543216549', NULL, '$2a$10$5ab0x7/zJXVsBraVzKnSuurJ7.SnTOQL9fn.jDcuA6eMQGHSSxapm', 4, 0, '2023-05-25 12:10:02', '2023-05-25 12:52:29'),
(43, 'Rushi', 'Sardhara', 'RushiSardhara@gmail.com', '6543216549', NULL, '$2a$10$PNEkMLUjbY/ut3Yndtzgy.E9HfuukbdM9FYbDZF8xUUY4j5C4YnaS', 4, 0, '2023-05-25 12:10:27', '2023-05-25 12:50:34'),
(44, 'Love', 'Babber', 'Love@gmail.com', '3216549875', NULL, '$2a$10$d9VD6S.FJFP84ZD3R8rPvepWdYmqJR5jlSYs4pm270Fqmn5idfB02', 2, 0, '2023-05-26 07:51:48', '2023-05-26 09:04:51'),
(45, 'Jaimin', 'Joshi', 'Jaimin987@gmail.com', '6655447788', NULL, '$2a$10$t.Kw7bZedjMbN8ZmjKu/hOyZp1/CT7t7q5a0tRGUkehbQK/tGiMNy', 2, 0, '2023-05-26 09:29:32', '2023-05-26 09:44:20'),
(46, 'Markkk', 'Ottooo', 'MARKOTTO123asd@gmail.com', '9925627446', NULL, '$2a$10$z0lxgQuIyWE03A5VGn1Y6uuvUk2HVyUaKGFNd2SHHJ2Cb1P/ZJf0G', 2, 0, '2023-05-26 10:07:53', '2023-05-26 10:44:47'),
(47, 'Hindu', 'Muslim', 'Hindu@gmail.com', '9966335874', NULL, '$2a$10$ju.4YDQWaMQSUUzyZJXV8uqSZkrWc.Yy.W6SQ.Ebj8ezLAOcfk3VS', 3, 0, '2023-05-26 12:35:38', '2023-05-29 05:46:18'),
(48, 'Rahul', 'Chadhary', 'Rahul@gmail.com', '7788996655', NULL, '$2a$10$7AgyiK/Cbz.2RDDLrlmwz.m8JJEfnHIKJi5Y9Fjo.NKaLVEJcOznu', 3, 0, '2023-05-26 12:46:51', '2023-05-30 04:53:45'),
(49, 'Rahul', 'Chadhary', 'Chaudhary@gmail.com', '7788996655', NULL, '$2a$10$6EK5R4ATVSH2er3wc.Ms.OErOISfo8yrrQ2Fb3Gam69QGgoJxpcWe', 3, 1, '2023-05-26 12:47:59', '2023-05-26 13:07:43'),
(50, 'Doctor', 'Doctor', 'doctor@gmail.com', '1234567896', NULL, '$2a$10$Gp/nwev1.Rlkx4Qs7vt2pOnBrZaSHtzD/tIvdMFgfpAc6zvo3pk9q', 2, 1, '2023-05-29 09:50:22', '2023-05-29 09:50:22'),
(51, 'Patient', 'Patient ', '@gmail.com', '1212121212', NULL, '$2a$10$2MZd37j3DXFZupSoleyxtOxgJ/SF9rMp.0ypp59Pt/4MLeOF.RMia', 3, 0, '2023-05-29 09:59:54', '2023-05-29 10:03:46'),
(52, 'Patient', 'Patient', 'patient', '3216549875', NULL, '$2a$10$snv/d6nBcxm0X9MbbO3Lo.klDt4ndfaYa02foqJfJTipOTiryl1GC', 3, 0, '2023-05-29 10:01:25', '2023-05-29 10:02:24'),
(53, 'Patient', 'Patient', 'patient@gmail.com', '1212121212', NULL, '$2a$10$f4/Jrn0qGwekbYWKonEe9ecGxB0d/sG35Bn2qxxhRRt6pQ.FiiVnu', 3, 1, '2023-05-29 10:03:56', '2023-05-29 10:03:56'),
(54, 'Receptionist', 'Receptionist', 'receptionist@gmail.com', '3366998855', NULL, '$2a$10$COQGphNFlEn4qT8tRXB01enETvCu1Az76/e20i9cbgJueAOg701DS', 4, 1, '2023-05-29 10:36:13', '2023-05-29 10:36:13'),
(55, 'Sonu', 'SoodasReceptionist', 'Sood@gmail.com', '5643219875', NULL, '$2a$10$5avh1BCjHd3pNCKwYA5uFuQA0k.9hLiO./2yXzvYDYT9d5CvlPZ1i', 4, 1, '2023-05-29 10:52:13', '2023-06-01 07:52:10'),
(56, 'Sonu', 'Sood', 'Sood@gmail.com', '5643219875', NULL, '$2a$10$cPCGd3cll9TNDlHomigVdurhFZaWh3DqxDJ5DgD.9BTluCtQuwtOi', 3, 1, '2023-05-29 11:45:13', '2023-06-01 07:23:16'),
(57, 'Sonu', 'Sood', 'Sonu@gmail.com', '5643219875', NULL, '$2a$10$8zItCo2zreLy68K3/cDG6uQHB6egm4XgL//y35oObRvsaWGEUyRMq', 2, 1, '2023-05-31 07:29:28', '2023-06-01 05:10:01'),
(58, 'Ram', 'Sita', 'Ram@gmail.com', '', NULL, '$2a$10$Xet3PITyKZecKzut3pnErO428Nz1C5tkgnRgj/T268g3kw.B.Paji', 2, 0, '2023-06-01 04:42:15', '2023-06-01 06:20:52'),
(59, 'Sonu', 'Sood', 'SOnuSOOd@gmail.com', '5643219875', NULL, '$2a$10$slKlpPbu12g490nICAEYGemzX6Fc0lFPlkqCAi5tHhzvzwkM9Kb6G', 2, 1, '2023-06-01 08:59:21', '2023-06-01 08:59:21'),
(60, 'Sonu', 'Sood', 'Ranumandal@gmail.com', '5643219875', NULL, '$2a$10$q2Qn32cqUDSnnt5r36aIU.H3q.5i8PTOIWApBMtWTeD8/Myow3L7C', 2, 1, '2023-06-01 09:06:10', '2023-06-01 09:06:10'),
(61, 'Patel', 'Shyam', 'Shyam@gmail.com', '5643219875', NULL, '$2a$10$B8E9BLNerT0rTxapiWZk8eHoFYUXTW/XfqZpfNWt7frz29isRaDFi', 2, 1, '2023-06-01 09:39:22', '2023-06-01 09:39:22'),
(62, 'Rahul', 'Gandhi', 'Papu@gmail.com', '9876543215', NULL, '$2a$10$8l6oQ41DBb/DfEyJ4FTpx.3jsaftgWkxVj4wNNfU6uEypgJI2sxv.', 2, 0, '2023-06-01 09:50:56', '2023-06-02 13:06:11'),
(63, 'Patel', 'Shyam', 'Shyam2@gmail.com', '5643219875', NULL, '$2a$10$rvlRa7XU9J14Fuy2zKdOxObPkOUn8iZX8ZjJZPabJdOvzGoiOh.D2', 2, 1, '2023-06-02 05:15:43', '2023-06-02 05:15:43'),
(64, 'Patel', 'Shyam', 'Shyam3@gmail.com', '5643219875', NULL, '$2a$10$SlZBEU8.SSl5vNxx.vAHReSfc00wGDWhTBqNTFeueuLj22PmVktpq', 2, 1, '2023-06-02 05:19:17', '2023-06-02 05:19:17'),
(65, 'Patel', 'Shyam', 'Shyam4@gmail.com', '5643219875', NULL, '$2a$10$k.ocuMspgG42KAXVCtRi6.NfO0.PYhJebWwTCP7a6glCAipMP4eRm', 2, 1, '2023-06-02 05:22:09', '2023-06-02 05:22:09'),
(66, 'Patel', 'Shyam', 'Shyam5@gmail.com', '5643219875', NULL, '$2a$10$vs0J0RE9p9grarh8NxIjsuGeXlFtZMHz2rHku6V285Lr4mn38wg7.', 2, 1, '2023-06-02 05:33:51', '2023-06-02 05:33:51'),
(67, 'Patel', 'Shyam', 'Shyam66@gmail.com', '5643219875', NULL, '$2a$10$/DndkLIQmHnk3yBwj2QU4unToRwtgWV0SZCb0jzvADs.MT6yreOLe', 2, 1, '2023-06-02 05:55:00', '2023-06-02 05:55:00'),
(68, 'Patel', 'Shyam', 'Shyam68@gmail.com', '5643219875', NULL, '$2a$10$8yeKtoTFg/94QcL4xmUJ8eLI3xECB93ovgrFLar75cFqCZy04aI9O', 2, 1, '2023-06-02 05:56:20', '2023-06-02 05:56:20'),
(69, 'Patel', 'Shyam', 'Shyam8@gmail.com', '5643219875', NULL, '$2a$10$qamhIkUAF.kJTKy/0iKStuyCaNW366qKhN2rDqC/dIUwzicwlOTyS', 2, 1, '2023-06-02 06:09:32', '2023-06-02 06:09:32'),
(70, 'Patel', 'Shyam', 'Shyam89@gmail.com', '5643219875', NULL, '$2a$10$1RgagWC98W/6wU6TfihSOOTRaqXQn3Kxbh.scpTRKpv17veras0yS', 2, 1, '2023-06-02 06:10:28', '2023-06-02 06:10:28'),
(71, 'Patel', 'Shyam', 'Shyam52@gmail.com', '5643219875', NULL, '$2a$10$ZA4BoLcTa3Tp6GJ2tflISOqeNFiConukvMPawYdwsYRaQFtdLW7Lq', 2, 1, '2023-06-02 06:11:54', '2023-06-02 06:11:54'),
(72, 'Patel', 'Shyam', 'Shyam59@gmail.com', '5643219875', NULL, '$2a$10$T.xSEvMdJluwnjzTN1RrE.UoSJAiTVk1vgsXWFw1LX..LgLVrc1o.', 2, 1, '2023-06-02 06:14:16', '2023-06-02 06:14:16'),
(73, 'Patel', 'Shyam', 'Shyam529@gmail.com', '5643219875', NULL, '$2a$10$n2FyOzHZgtyKE4xJNJhDdO2RN.RJTZKcDlIHD5GVkvuFdwmLigYL2', 2, 1, '2023-06-02 06:27:27', '2023-06-02 06:27:27'),
(74, 'Patel', 'Shyam', 'Shyam987@gmail.com', '5643219875', NULL, '$2a$10$FdWzbYW5fUEPEALptafMweTz9Jk/DJNY28eoB5NKiLtLAewfdM0je', 2, 1, '2023-06-02 06:29:24', '2023-06-02 06:29:24'),
(75, 'Patel', 'Shyam', 'Shyam9875@gmail.com', '5643219875', NULL, '$2a$10$PTakgTHgg5W7Daey0ddvFO3lUXclduBCZW1qhC/rp3FEwcoZ3hGLC', 2, 1, '2023-06-02 06:30:45', '2023-06-02 06:30:45'),
(76, 'Patel', 'Shyam', 'Shyam532@gmail.com', '5643219875', NULL, '$2a$10$xWtH0YbfxirmyrblavgTge8xY3ZgkC6yBUn5lbBNHek.DtFVfrU0e', 2, 1, '2023-06-02 06:43:34', '2023-06-02 06:43:34'),
(77, 'Patel', 'Shyam', 'Shyam5642@gmail.com', '5643219875', NULL, '$2a$10$vUX6GOEJU40/IJznX9qBieqL3/M26bIfxTQieOT.9hDvO37Xp3WxC', 2, 1, '2023-06-02 06:45:55', '2023-06-02 06:45:55'),
(78, 'Narendra', 'Modi', 'Modi@gmail.com', '3216549875', NULL, '$2a$10$gPgPaeNrBoH6erNTtBXY7.3KkJR7pyw3kxqBsMALljA7MvF5g5fla', 5, 0, '2023-06-02 12:14:27', '2023-06-02 12:32:58'),
(79, 'Narendra', 'Modi', 'Modi5@gmail.com', '3216549875', NULL, '$2a$10$u0.I5MUXxfQbDBGuLjrqpushysYg1xT5RKPXIlHI6WhImihHVWgsm', 5, 1, '2023-06-02 12:15:40', '2023-06-02 12:38:13'),
(80, 'Chemist', 'Chemist', 'Chemist@gmail.com', '9876543216', NULL, '$2a$10$xtPxma4NodskYlKIak61zexkQNoKjgNyZ1c3wh6.OXSm6d5odB7yi', 5, 1, '2023-06-02 13:17:41', '2023-06-02 13:17:41'),
(81, 'admin', 'admin', 'admin', '1234567890', NULL, '$2a$10$VvtqkbhSHn0Rdx8JXAkdEO1OgYERPERGl9VbL2gAS5nNWOxUYMzUS', 2, 1, '2023-06-03 05:25:39', '2023-06-03 05:25:39'),
(82, 'admin', 'admin', 'admin12@gmail.com', '1234567890', NULL, '$2a$10$z2fiob2XtEq9Y86zXRUHkuog1oB0GN3a900Fy1y3lhB7LbyanLF4K', 2, 1, '2023-06-03 05:27:57', '2023-06-03 05:27:57'),
(83, 'admin', 'admin', 'admin122@gmail.com', '1234567890', NULL, '$2a$10$dtMVz3NpaPZSib896oDywu334IKxpVp4y5iLoUVBxQZRXCK6om1uW', 2, 1, '2023-06-03 05:59:46', '2023-06-03 05:59:46'),
(84, 'admin', 'admin', 'admin1225@gmail.com', '1234567890', NULL, '$2a$10$tzFsJgQZG1H9bre31XCRPebaes8SwEViibL8hwXKW9xSiUoqiOd2K', 2, 1, '2023-06-03 06:02:31', '2023-06-03 06:02:31'),
(85, 'admin', 'admin', 'admin1221@gmail.com', '1234567890', NULL, '$2a$10$qADgBA3qvqcTO7/2LLh.f.KVjyvejZP/EuvG4QoGc4flM.mZPzd7y', 2, 1, '2023-06-03 06:03:45', '2023-06-03 06:03:45'),
(86, 'admin', 'admin', 'admin1211@gmail.com', '1234567890', NULL, '$2a$10$RYBqLTs1X9ahryBeVs0h5ewlsBQ3bd/nMXvQRVxtCbSXnNw5bHJMG', 2, 1, '2023-06-03 06:04:43', '2023-06-03 06:04:43'),
(87, 'admin', 'admin', 'admin1111@gmail.com', '1234567890', 'uploads/Screenshot(4).png', '$2a$10$AvFr3gV5kY8P9B1oyvRGSud3kRplfpWpddLX5POoi3OxUYYZw7JRi', 2, 1, '2023-06-03 06:19:28', '2023-06-03 06:19:28'),
(88, 'Patient', 'Patient', 'PatientTest1@gmail.com', '6655447788', NULL, '$2a$10$ZlPjT4uO7Gsh5oP00yzA4uHiN7cH1A2fhrtcDf4tOFGVqt0UY4pbO', 3, 1, '2023-06-06 04:47:49', '2023-06-06 04:47:49'),
(89, 'Jaimin', 'Joshi', 'Jaiminadmin@gmail.com', '9988556644', NULL, '$2a$10$6gXJOJcRoI2iJ7KlpAqRP.vKBFlzcaJZ8vEwWb5mkWVdiyoOPZkAy', 3, 1, '2023-06-06 05:13:13', '2023-06-06 05:13:13'),
(90, 'Tanesha', 'Dave', 'Dave@gmail.com', '9955663322', NULL, '$2a$10$QVHR4ImrSsUIqxUCtDj9HurcCSjjvmg8MERlt7hYYjPhIxwvGjeDa', 3, 1, '2023-06-15 08:58:58', '2023-06-15 08:58:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chemist_details`
--
ALTER TABLE `chemist_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_details`
--
ALTER TABLE `doctor_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_details`
--
ALTER TABLE `patient_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receptionist_details`
--
ALTER TABLE `receptionist_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `chemist_details`
--
ALTER TABLE `chemist_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctor_details`
--
ALTER TABLE `doctor_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `patient_details`
--
ALTER TABLE `patient_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `receptionist_details`
--
ALTER TABLE `receptionist_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
