-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 01, 2025 at 03:15 PM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u170082150_ama_2024`
--

-- --------------------------------------------------------

--
-- Table structure for table `admit_cards`
--

CREATE TABLE `admit_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mother` varchar(255) DEFAULT NULL,
  `father` varchar(255) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `dob` date DEFAULT NULL,
  `aadhaar` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `class_order` int(11) NOT NULL,
  `roll` bigint(20) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admit_cards`
--

INSERT INTO `admit_cards` (`id`, `name`, `mother`, `father`, `gender`, `dob`, `aadhaar`, `mobile`, `address`, `class`, `class_order`, `roll`, `image`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Priyanshu Kumari', 'Rameshwar Paswan', 'Rina Devi', 'Female', '2019-02-14', NULL, '9117724155', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'Std.2', 5, 11, 'Priyanshu_20230408-211215.jpg', 'Mukesh Kumar', NULL, '2023-04-06 22:27:00', '2023-04-08 21:12:00', NULL),
(3, 'Akash Kumar', 'Rekha Devi', 'Santosh Singh', 'Male', '2012-10-16', NULL, '9117724155', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'Std.3', 6, 4, 'Akash_20230408-211243.jpg', 'Mukesh Kumar', 'Mukesh Kumar', '2023-04-06 22:32:00', '2023-04-13 09:19:00', NULL),
(4, 'Aman Kumar', 'Nibha Devi', 'Bharosh Paswan', 'Male', '2015-08-21', NULL, '9572469167', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'LKG', 2, 7, 'Aman_20230408-211309.jpg', 'Sanjana Kumari', 'Sanjana Kumari', '2023-04-07 15:56:00', '2023-04-08 21:13:00', NULL),
(10, 'Ishani Bharti', 'Guriya Devi', 'Subodh Thakur', 'Female', '2016-07-09', NULL, '8434917876', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'LKG', 2, 1, 'Ishani_20230414-093252.jpg', 'Sanjana Kumari', NULL, '2023-04-07 16:36:00', '2023-04-14 09:32:00', NULL),
(11, 'Surabhi Sikha', 'Komal Kumari', 'Santosh Kr Sah', 'Female', '2017-08-25', NULL, '9135287509', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'LKG', 2, 3, 'Surabhi_20230412-072811.jpg', 'Sanjana Kumari', NULL, '2023-04-07 16:42:00', '2023-04-12 07:28:00', NULL),
(13, 'Rajan Kumar', 'Poonam Devi', 'Vikash Ram', 'Male', '2015-02-18', NULL, '9390253587', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'UKG', 3, 3, 'Rajan_20230423-100107.jpg', 'Sanjana Kumari', NULL, '2023-04-08 12:29:00', '2023-04-23 10:01:00', NULL),
(14, 'Divyanshu Kumar', 'Sanju Devi', 'Ranjeet Sah', 'Male', '2016-07-19', NULL, '9006526788', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'UKG', 3, 2, 'Divyanshu_20230408-212728.jpg', 'Sanjana Kumari', NULL, '2023-04-08 12:32:00', '2023-04-08 21:27:00', NULL),
(16, 'Manav Kumar', 'Vibha Devi', 'Randhir Singh', 'Male', '2015-01-17', NULL, '6381481217', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'UKG', 3, 9, 'Manav_20230408-212648.jpg', 'Sanjana Kumari', NULL, '2023-04-08 12:39:00', '2023-04-08 21:26:00', NULL),
(20, 'Satyajeet Kumar', 'Anjani Devi', 'Umesh Sah', 'Male', '2015-07-25', NULL, '8875587326', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'UKG', 3, 12, 'Satyajeet_20230408-212455.jpg', 'Sanjana Kumari', 'Mukesh Kumar', '2023-04-08 12:48:00', '2023-04-30 06:55:00', NULL),
(22, 'Trisha Manshi', 'Pinky Kumari', 'Avinash Patel', 'Female', '2017-04-26', NULL, '7563048909', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'UKG', 3, 10, 'Trisha_20230412-072851.jpg', 'Sanjana Kumari', 'Mukesh Kumar', '2023-04-08 12:54:00', '2023-04-12 07:28:00', NULL),
(24, 'Isha Bharti', 'Guriya Devi', 'Subodh Thakur', 'Female', '2013-04-21', NULL, '8434917876', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'UKG', 3, 1, 'Isha_20230414-093511.jpg', 'Sanjana Kumari', NULL, '2023-04-08 13:01:00', '2023-04-14 09:35:00', NULL),
(25, 'Vidyanshu Kumar', 'Anshu Devi', 'Jitendra Ray', 'Male', '2013-03-10', NULL, '9708323054', 'Rajapakar, Vaishali, Bihar', 'Std.2', 5, 10, 'Vidyanshu_20230408-212323.jpg', 'Sanjana Kumari', NULL, '2023-04-08 13:03:00', '2023-04-08 21:23:00', NULL),
(26, 'Kunal Kumar', 'Urmila Devi', 'Arun Ray', 'Male', '2015-05-31', NULL, '9708865307', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'Std.1', 4, 5, 'Kunal_20230408-212203.jpg', 'Sanjana Kumari', NULL, '2023-04-08 13:10:00', '2023-04-08 21:22:00', NULL),
(28, 'Ritesh Raj', 'Suchita Devi', 'Virchandar Ray', 'Male', '2014-03-01', NULL, '7557568762', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'Std.1', 4, 4, 'Ritesh_20230408-212112.jpg', 'Sanjana Kumari', NULL, '2023-04-08 13:17:00', '2023-04-08 21:21:00', NULL),
(29, 'Adarsh Kumar', 'Heena Devi', 'Rajesh Sah', 'Male', '2015-08-12', NULL, '8757928798', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'Std.1', 4, 12, 'Adarsh_20230414-094342.jpg', 'Sanjana Kumari', NULL, '2023-04-08 15:36:00', '2023-04-14 09:43:00', NULL),
(30, 'Divyani Kumari', 'Pooja Devi', 'Umesh Sah', 'Female', '2014-09-21', NULL, '8540834570', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'Std.1', 4, 9, 'Divyani_20230408-211907.jpg', 'Sanjana Kumari', NULL, '2023-04-08 15:38:00', '2023-04-08 21:19:00', NULL),
(31, 'Aditya Kumar', 'Sanju Devi', 'Ranjeet Sah', 'Male', '2011-09-06', NULL, '9006526788', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'Std.1', 4, 11, 'Aditya_20230408-211832.jpg', 'Sanjana Kumari', NULL, '2023-04-08 15:40:00', '2023-04-08 21:18:00', NULL),
(33, 'Prithivi Raj', 'Pooja Sharma', 'Rajshekhar Sharma', 'Male', '2015-10-24', NULL, '9525311365', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'Std.1', 4, 8, 'Prithivi_20230412-072444.jpg', 'Sanjana Kumari', 'Mukesh Kumar', '2023-04-08 16:07:00', '2023-04-12 07:24:00', NULL),
(35, 'Sakshi Kumari', 'Rina Devi', 'Rameshwar Paswan', 'Female', '2014-03-11', NULL, '8969824088', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'Std.1', 4, 14, 'Sakshi_20230408-210317.jpg', 'Sanjana Kumari', NULL, '2023-04-08 16:11:00', '2023-04-08 21:03:00', NULL),
(42, 'Aditya Kumar', 'Meela Devi', 'Rishi Singh', 'Male', '2014-03-11', NULL, '9572344995', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'Std.3', 6, 2, 'Aditya_20230412-071930.jpg', 'Sanjana Kumari', NULL, '2023-04-08 19:51:00', '2023-04-12 07:19:00', NULL),
(43, 'Adarsh Kumar', 'Meela Devi', 'Rishi Singh', 'Male', '2014-03-11', NULL, '9572344995', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'Std.3', 6, 3, 'Adarsh_20230412-071846.jpg', 'Sanjana Kumari', NULL, '2023-04-08 19:52:00', '2023-04-12 07:18:00', NULL),
(47, 'Vikash Kumar', 'Mintu Devi', 'Jaglal Ray', 'Male', '2010-07-26', NULL, '7554668327', 'Rajapakar, Vaishali', 'Std.4', 7, 4, 'Vikash_20230408-205537.jpg', 'Sanjana Kumari', NULL, '2023-04-08 20:02:00', '2023-04-08 20:55:00', NULL),
(48, 'Sunny Kumar', 'Mamta Devi', 'Santosh Paswan', 'Male', '2013-08-01', NULL, '9525004011', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'Std.4', 7, 3, 'Sunny_20230408-204712.jpg', 'Sanjana Kumari', NULL, '2023-04-08 20:04:00', '2023-04-08 20:47:00', NULL),
(55, 'Abhishek Kumar', 'Rina Devi', 'Shivlal Yadav', 'Male', '2016-08-24', NULL, '8757180368', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'Std.2', 5, 5, 'Abhishek_20230408-205653.jpg', 'Sanjana Kumari', NULL, '2023-04-08 20:23:00', '2023-04-08 20:56:00', NULL),
(56, 'Aishwariya Kumari', 'Rina Devi', 'Shivlal Yadav', 'Female', '2013-09-23', NULL, '8757180368', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'Std.2', 5, 2, 'Aishwariya_20230408-205704.jpg', 'Sanjana Kumari', NULL, '2023-04-08 20:25:00', '2023-04-08 20:57:00', NULL),
(57, 'Virat Kohali', 'Rina Devi', 'Shivlal Yadav', 'Male', '2017-12-16', NULL, '8757180368', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'UKG', 3, 7, 'Virat_20230408-204145.jpg', 'Sanjana Kumari', NULL, '2023-04-08 20:27:00', '2023-04-08 20:41:00', NULL),
(58, 'Ritik Kumar', 'Suchita Devi', 'Virchandar Ray', 'Male', '2017-03-12', NULL, '7557568762', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'Nursery', 1, 2, 'Ritik_20230412-073514.jpg', 'Sanjana Kumari', NULL, '2023-04-08 20:33:00', '2023-04-12 07:35:00', NULL),
(63, 'Ashwani Sah', 'Heena Devi', 'Rajesh Sah', 'Female', '2018-03-24', NULL, '8757928798', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'Nursery', 1, 1, 'Ashwani_20230412-072321.jpg', 'Mukesh Kumar', NULL, '2023-04-11 06:59:00', '2023-04-12 07:23:00', NULL),
(65, 'Gaurav Kumar', 'Savita Devi', 'Sanjay Ray', 'Male', '2016-03-05', NULL, '9428822215', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'UKG', 3, 6, 'Gaurav_20230412-070627.jpg', 'Mukesh Kumar', NULL, '2023-04-11 08:22:00', '2023-04-12 07:06:00', NULL),
(67, 'Utkarsh Kumar', 'Anita Devi', 'Rajkumar Paswan', 'Male', '2016-12-23', NULL, '8873269139', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'UKG', 3, 17, 'Utkarsh_20230412-070650.jpg', 'Mukesh Kumar', NULL, '2023-04-11 08:29:00', '2023-04-12 07:06:00', NULL),
(68, 'Aditya Raj', 'Anita Devi', 'Rajkumar Paswan', 'Male', '2014-10-23', NULL, '8873264139', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'Std.2', 5, 7, 'Aditya_20230414-094205.jpg', 'Mukesh Kumar', NULL, '2023-04-11 08:31:00', '2023-04-14 09:42:00', NULL),
(70, 'Durga Patel', 'Poonam Kumari', 'Nitesh Patel', 'Female', '2016-10-01', NULL, '9507001379', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'UKG', 3, 4, 'Durga_20230412-072034.jpg', 'Mukesh Kumar', NULL, '2023-04-11 08:40:00', '2023-04-12 07:20:00', NULL),
(71, 'Aruhi Kumari', 'Sima Devi', 'Mukesh Kumar Patel', 'Female', '2017-01-25', NULL, '7870998060', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'Nursery', 1, 3, 'Aruhi_20230412-072742.jpg', 'Mukesh Kumar', NULL, '2023-04-11 08:45:00', '2023-04-12 07:27:00', NULL),
(72, 'Nanav Kumar', 'Vibha Devi', 'Randhir Singh', 'Male', '2017-08-05', NULL, '6381481217', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'Nursery', 1, 6, 'Nanav_20230412-070213.jpg', 'Mukesh Kumar', NULL, '2023-04-11 09:19:00', '2023-04-12 07:02:00', NULL),
(73, 'Runjhun Kumari', 'Guriya Devi', 'Ajeet Ray', 'Female', '2016-11-05', NULL, '9677517470', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'UKG', 3, 14, 'Runjhun_20230412-070151.jpg', 'Mukesh Kumar', NULL, '2023-04-11 09:46:00', '2023-04-12 07:01:00', NULL),
(74, 'Adarsh Kumar', 'Guriya Devi', 'Ajeet Ray', 'Male', '2014-09-14', NULL, '9677517470', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'Std.1', 4, 10, 'Adarsh_20230412-070235.jpg', 'Mukesh Kumar', NULL, '2023-04-11 09:51:00', '2023-04-12 07:02:00', NULL),
(75, 'Chandni Kumari', 'Reshami Devi', 'Dharm Singh', 'Female', '2018-04-05', NULL, '8809164026', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'Nursery', 1, 3, 'Chandni_20230414-093016.jpg', 'Mukesh Kumar', NULL, '2023-04-11 09:55:00', '2023-04-14 09:30:00', NULL),
(76, 'Sahil Kumar', 'Chunchun Devi', 'Bhushan Singh', 'Male', '2012-09-21', NULL, '9934669171', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'Std.3', 6, 5, 'Sahil_20230412-070115.jpg', 'Mukesh Kumar', NULL, '2023-04-11 10:08:00', '2023-04-12 07:01:00', NULL),
(79, 'Rohan Kumar', 'Mamta Devi', 'Rajesh Paswan', 'Male', '2016-01-31', NULL, '8207879333', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'UKG', 3, 27, 'Rohan_20230412-070026.jpg', 'Mukesh Kumar', NULL, '2023-04-11 10:16:00', '2023-04-12 07:00:00', NULL),
(81, 'Rishav Kumar', 'Pooja Devi', 'Bajrangi Singh', 'Male', '2012-03-07', NULL, '9096911517', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'UKG', 3, 16, 'Rishav_20230412-065941.jpg', 'Mukesh Kumar', NULL, '2023-04-11 10:49:00', '2023-04-12 06:59:00', NULL),
(82, 'Sushant Kumar', 'Nilam Devi', 'Shashi Singh', 'Male', '2015-09-26', NULL, '9162642726', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'UKG', 3, 8, 'Sushant_20230412-065910.jpg', 'Mukesh Kumar', NULL, '2023-04-11 10:57:00', '2023-04-12 06:59:00', NULL),
(85, 'Jag Nandani Kumari', 'Poonam Kumari', 'Dilip Singh', 'Female', '2017-02-08', NULL, '7371890177', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'UKG', 3, 13, 'Jag_20230412-065758.jpg', 'Mukesh Kumar', NULL, '2023-04-11 11:12:00', '2023-04-12 06:57:00', NULL),
(86, 'Ayush Kumar', 'Sindhu Devi', 'Gajanand Paswan', 'Male', '2014-07-31', NULL, '7250723123', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'UKG', 3, 5, 'Ayush_20230412-065747.jpg', 'Mukesh Kumar', NULL, '2023-04-11 11:15:00', '2023-04-12 06:57:00', NULL),
(88, 'Bajrangi Kumar', 'Anju Kumari', 'Deepak Singh', 'Male', '2016-03-19', NULL, '8838105286', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'Std.2', 5, 8, 'Bajrangi_20230414-092953.jpg', 'Mukesh Kumar', NULL, '2023-04-12 06:38:00', '2023-04-14 09:29:00', NULL),
(89, 'Arnav Kumar', 'Namita Kumari', 'Gulshan Kumar', 'Male', '2015-04-12', NULL, '7654183551', 'Bhatha Dasi, Rajapakar, Vaishali, Bihar', 'LKG', 2, 6, 'Arnav_20230412-065645.jpg', 'Mukesh Kumar', NULL, '2023-04-12 06:42:00', '2023-04-12 06:56:00', NULL),
(90, 'Prince Kumar', 'Krishana Devi', 'Pachu Paswan', 'Male', '2024-04-19', NULL, '9999999999', 'Bhatha Dasi Rajapakar', 'LKG', 2, 9, NULL, 'Manish Kumar', NULL, '2024-04-24 06:49:54', '2024-04-24 06:49:54', NULL),
(91, 'Prince Kumar', 'Krishana Devi', 'Pachu Paswan', 'Male', '2024-04-19', NULL, '9999999999', 'Bhatha Dasi Rajapakar', 'LKG', 2, 29, NULL, 'Manish Kumar', NULL, '2024-04-24 06:51:13', '2024-04-24 06:56:32', '2024-04-24 06:56:32'),
(92, 'Yesh Raj', 'Sabita Kumari', 'Surendar Ram', 'Male', '2024-04-24', NULL, '9999999999', 'Bhathadasi', 'UKG', 3, 23, NULL, 'Manish Kumar', NULL, '2024-04-24 07:00:03', '2024-04-24 07:00:03', NULL),
(93, 'Adarsh Kumar', 'Nitu Devi', 'Upendar Paswa', 'Male', '2024-04-24', NULL, '9999999999', 'Bhathadasi', 'UKG', 3, 24, NULL, 'Manish Kumar', NULL, '2024-04-24 07:01:51', '2024-04-24 07:01:51', NULL),
(94, 'Srishti Sharma', 'Seema Sharma', 'Sunil Sharma', 'Female', '2024-04-24', NULL, '9999999999', 'Bhathadasi', 'Play', 0, 10, NULL, 'Manish Kumar', NULL, '2024-04-24 07:05:08', '2024-04-24 07:05:08', NULL),
(95, 'Piyush Kumar', 'Pooja Devi', 'Umesh Sah', 'Male', '2024-04-24', NULL, '9999999999', 'Bhathadasi', 'Play', 0, 28, NULL, 'Manish Kumar', NULL, '2024-04-24 07:09:18', '2024-04-24 07:09:18', NULL),
(96, 'Golu Kumar', 'Phool Kumari Devi', 'Dev Das Ram', 'Male', '2024-04-24', NULL, '9999999999', 'Bhathadasi', 'Play', 0, 14, NULL, 'Manish Kumar', NULL, '2024-04-24 07:11:42', '2024-04-24 07:11:42', NULL),
(97, 'Meethi Kumari', 'Phool Kumari Devi', 'Dev Das Ra', 'Female', '2024-04-24', NULL, '9999999999', 'Bhatha Dasi', 'Play', 0, 13, NULL, 'Manish Kumar', NULL, '2024-04-24 07:14:02', '2024-04-24 07:14:02', NULL),
(98, 'Srishti Kumari', 'Ashmita Devi', 'Rakesh Singh', 'Female', '2024-04-24', NULL, '9999999999', 'Bhathadasi', 'Play', 0, 30, NULL, 'Manish Kumar', NULL, '2024-04-24 07:16:44', '2024-04-24 07:16:44', NULL),
(99, 'Simanjali Kumari', 'Baby Devi', 'Ajeet Paswan', 'Female', '2024-04-24', NULL, '9999999999', 'Bhathadasi', 'Play', 0, 12, NULL, 'Manish Kumar', NULL, '2024-04-24 07:25:04', '2024-04-24 07:25:04', NULL),
(100, 'Amrita Kumari', 'Santi Devi', 'Deepak Paswan', 'Female', '2024-04-24', NULL, '9999999999', 'Bhatha Dasi', 'Nursery', 1, 26, NULL, 'Manish Kumar', NULL, '2024-04-24 07:33:06', '2024-04-24 07:33:06', NULL),
(101, 'Anushka Kumari', 'Neeva Devi', 'Bharosh Paswan', 'Female', '2024-04-24', NULL, '9999999999', 'Bhatha Dasi', 'Nursery', 1, 27, NULL, 'Manish Kumar', NULL, '2024-04-24 07:35:00', '2024-04-24 07:35:00', NULL),
(102, 'Ritika Kumari', 'Aarati Kumari', 'Rajeev Singh', 'Female', '2024-04-24', NULL, '9999999999', 'Bhathadasi', 'Nursery', 1, 18, NULL, 'Manish Kumar', NULL, '2024-04-24 07:37:19', '2024-04-24 07:37:19', NULL),
(103, 'Ayush Kumar', 'Sabita Devi', 'Pankaj Paswan', 'Male', '2024-04-24', NULL, '9999999999', 'Bhathadasi', 'Nursery', 1, 28, NULL, 'Manish Kumar', NULL, '2024-04-24 07:40:45', '2024-04-24 07:40:45', NULL),
(104, 'Anjali Kumari', 'Munni Devi', 'Kamal Paswan', 'Female', '2024-04-24', NULL, '9999999999', 'Bhathadasi', 'Nursery', 1, 30, NULL, 'Manish Kumar', NULL, '2024-04-24 07:51:12', '2024-04-24 07:51:12', NULL),
(105, 'Sonam Kumar', 'Renu Devi', 'Ranjeet Ray', 'Female', '2024-04-24', NULL, '9999999999', 'Bhathadasi', 'Nursery', 1, 19, NULL, 'Manish Kumar', NULL, '2024-04-24 07:53:10', '2024-04-24 07:53:10', NULL),
(106, 'Aarushi Kumari', 'Kanchan Devi', 'Amit Kumar', 'Female', '2024-04-24', NULL, '9999999999', 'Bhathadasi', 'Nursery', 1, 20, NULL, 'Manish Kumar', NULL, '2024-04-24 07:55:42', '2024-04-24 07:55:42', NULL),
(107, 'Tannu Kumari', 'Chanda Devi', 'Abhay Singh', 'Female', '2024-04-24', NULL, '9999999999', 'Bhathadasi', 'Nursery', 1, 9, NULL, 'Manish Kumar', NULL, '2024-04-24 07:57:29', '2024-04-24 07:57:29', NULL),
(108, 'Piyush Kumar', 'Krishana Devi', 'Pachu Paswan', 'Female', '2024-04-24', NULL, '9999999999', 'Bhathadasi', 'Nursery', 1, 25, NULL, 'Manish Kumar', NULL, '2024-04-24 07:58:53', '2024-04-24 07:58:53', NULL),
(109, 'Ayush Kumar', 'Rekha Devi', 'Santosh Singh', 'Male', '2024-04-24', NULL, '9999999999', 'Bhathadasi', 'UKG', 3, 19, NULL, 'Manish Kumar', NULL, '2024-04-24 08:26:18', '2024-04-24 08:26:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_22_064515_create_admit_cards_table', 1),
(6, '2022_04_15_204123_create_results_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('00satish2015@gmail.com', '$2y$10$pBgDAnKtYMPFnxHfKe0zeO/QiOgPuZKZDTXDBEFcy/TL/GPjcyOnu', '2023-04-13 12:53:09'),
('00mukesh2015@gmail.com', '$2y$10$IVuMbHIgEnE52q9pXZUq/uLuwuGpO1u/EfbLON79OQ.Idx/GJedNm', '2023-04-18 21:04:03');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admit_card_id` bigint(20) UNSIGNED NOT NULL,
  `session` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `class_order` int(11) DEFAULT NULL,
  `roll` int(11) NOT NULL,
  `marks` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`marks`)),
  `total` int(11) NOT NULL,
  `total_text` varchar(255) NOT NULL,
  `full_marks` int(11) NOT NULL,
  `position` bigint(20) DEFAULT NULL,
  `uploaded_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `admit_card_id`, `session`, `class`, `class_order`, `roll`, `marks`, `total`, `total_text`, `full_marks`, `position`, `uploaded_by_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 58, '2023-24', 'Play', NULL, 12, '{\"hindi\":\"80\",\"english\":\"97\",\"maths\":\"91\",\"drawing\":\"35\"}', 268, 'Two hundred sixty eight', 300, 1, 4, NULL, '2024-04-22 22:42:33', '2024-04-24 08:59:44'),
(2, 63, '2023-24', 'Play', NULL, 8, '{\"hindi\":\"83\",\"english\":\"91\",\"maths\":\"75\",\"drawing\":\"35\"}', 249, 'Two hundred forty nine', 300, 4, 4, NULL, '2024-04-22 22:43:11', '2024-04-24 08:59:44'),
(3, 71, '2023-24', 'Play', NULL, 19, '{\"hindi\":\"70\",\"english\":\"94\",\"maths\":\"70\",\"drawing\":\"35\"}', 234, 'Two hundred thirty four', 300, 6, 4, NULL, '2024-04-22 22:43:55', '2024-04-24 08:59:44'),
(4, 75, '2023-24', 'Nursery', NULL, 5, '{\"hindi\":\"70\",\"english\":\"64\",\"maths\":\"67\",\"drawing\":\"35\"}', 201, 'Two hundred one', 300, 10, 4, NULL, '2024-04-22 22:45:20', '2024-04-24 08:59:44'),
(5, 2, '2021-22', 'Std.2', NULL, 11, '{\"hindi\":\"79\",\"english\":\"80\",\"maths\":\"82\",\"drawing\":\"40\",\"science\":\"75\",\"sst\":\"65\",\"computer\":\"66\",\"gk\":\"62\",\"science_oral\":\"15\",\"sst_oral\":\"14\"}', 538, 'Five hundred thirty eight', 700, 1, 4, NULL, '2024-04-23 08:21:42', '2024-04-24 06:46:03'),
(6, 3, '2021-22', 'Std.3', NULL, 4, '{\"hindi\":\"79\",\"english\":\"78\",\"maths\":\"78\",\"drawing\":\"40\",\"science\":\"69\",\"sst\":\"65\",\"computer\":\"68\",\"gk\":\"65\",\"science_oral\":\"14\",\"sst_oral\":\"15\"}', 531, 'Five hundred thirty one', 700, 1, 4, NULL, '2024-04-23 08:23:19', '2024-04-24 06:46:03'),
(7, 4, '2023-24', 'Nursery', NULL, 1, '{\"hindi\":\"70\",\"english\":\"76\",\"maths\":\"60\",\"drawing\":\"35\"}', 206, 'Two hundred six', 300, 9, 4, NULL, '2024-04-23 08:29:57', '2024-04-24 08:59:44'),
(8, 10, '2023-24', 'Nursery', NULL, 17, '{\"hindi\":\"90\",\"english\":\"90\",\"maths\":\"90\",\"drawing\":\"35\"}', 270, 'Two hundred seventy', 300, 2, 4, NULL, '2024-04-23 08:31:20', '2024-04-24 06:46:03'),
(9, 11, '2023-24', 'Nursery', NULL, 6, '{\"hindi\":\"90\",\"english\":\"96\",\"maths\":\"96\",\"drawing\":\"35\"}', 282, 'Two hundred eighty two', 300, 1, 4, NULL, '2024-04-23 08:31:58', '2024-04-24 06:46:03'),
(10, 13, '2023-24', 'LKG', NULL, 6, '{\"hindi\":\"83\",\"english\":\"77\",\"maths\":\"72\",\"drawing\":\"35\"}', 232, 'Two hundred thirty two', 300, 4, 4, NULL, '2024-04-23 08:33:53', '2024-04-24 06:46:03'),
(11, 14, '2023-24', 'LKG', NULL, 7, '{\"hindi\":\"95\",\"english\":\"86\",\"maths\":\"95\",\"drawing\":\"35\"}', 276, 'Two hundred seventy six', 300, 1, 4, NULL, '2024-04-23 08:34:25', '2024-04-24 06:46:03'),
(12, 16, '2023-24', 'LKG', NULL, 10, '{\"hindi\":\"80\",\"english\":\"65\",\"maths\":\"78\",\"drawing\":\"35\"}', 223, 'Two hundred twenty three', 300, 7, 4, NULL, '2024-04-23 08:35:23', '2024-04-24 08:59:44'),
(13, 20, '2023-24', 'LKG', NULL, 20, '{\"hindi\":\"90\",\"english\":\"67\",\"maths\":\"71\",\"drawing\":\"35\"}', 228, 'Two hundred twenty eight', 300, 5, 4, NULL, '2024-04-23 08:36:34', '2024-04-24 06:46:03'),
(14, 22, '2023-24', 'LKG', NULL, 25, '{\"hindi\":\"90\",\"english\":\"72\",\"maths\":\"81\",\"drawing\":\"35\"}', 243, 'Two hundred forty three', 300, 3, 4, NULL, '2024-04-23 08:37:36', '2024-04-24 06:46:03'),
(15, 24, '2023-24', 'LKG', NULL, 30, '{\"hindi\":\"96\",\"english\":\"85\",\"maths\":\"83\",\"drawing\":\"35\"}', 264, 'Two hundred sixty four', 300, 2, 4, NULL, '2024-04-23 08:38:19', '2024-04-24 06:46:03'),
(16, 28, '2023-24', 'Std.1', NULL, 4, '{\"hindi\":\"75\",\"english\":\"75\",\"maths\":\"95\",\"drawing\":\"40\",\"science\":\"76\",\"sst\":\"65\",\"computer\":\"70\",\"gk\":\"60\",\"science_oral\":\"12\",\"sst_oral\":\"15\"}', 543, 'Five hundred forty three', 700, 1, 4, NULL, '2024-04-24 05:40:13', '2024-04-24 06:46:03'),
(17, 25, '2023-24', 'Std.2', NULL, 10, '{\"hindi\":\"79\",\"english\":\"80\",\"maths\":\"68\",\"drawing\":\"40\",\"science\":\"79\",\"sst\":\"60\",\"computer\":\"68\",\"gk\":\"62\",\"science_oral\":\"12\",\"sst_oral\":\"14\"}', 522, 'Five hundred twenty two', 700, 3, 4, NULL, '2024-04-24 05:43:09', '2024-04-24 06:46:03'),
(18, 26, '2023-24', 'Std.1', NULL, 5, '{\"hindi\":\"65\",\"english\":\"79\",\"maths\":\"90\",\"drawing\":\"40\",\"science\":\"77\",\"sst\":\"65\",\"computer\":\"70\",\"gk\":\"60\",\"science_oral\":\"14\",\"sst_oral\":\"12\"}', 532, 'Five hundred thirty two', 700, 2, 4, NULL, '2024-04-24 05:44:46', '2024-04-24 06:46:03'),
(19, 29, '2021-22', 'Std.1', NULL, 12, '{\"hindi\":\"72\",\"english\":\"73\",\"maths\":\"70\",\"drawing\":\"40\",\"science\":\"65\",\"sst\":\"65\",\"computer\":\"70\",\"gk\":\"60\",\"science_oral\":\"15\",\"sst_oral\":\"12\"}', 502, 'Five hundred two', 700, 5, 4, NULL, '2024-04-24 05:46:38', '2024-04-24 06:46:03'),
(20, 30, '2023-24', 'Std.1', NULL, 9, '{\"hindi\":\"75\",\"english\":\"80\",\"maths\":\"65\",\"drawing\":\"40\",\"science\":\"66\",\"sst\":\"68\",\"computer\":\"71\",\"gk\":\"60\",\"science_oral\":\"15\",\"sst_oral\":\"14\"}', 514, 'Five hundred ten four', 700, 3, 4, NULL, '2024-04-24 05:49:19', '2024-04-24 06:46:03'),
(21, 31, '2023-24', 'Std.1', NULL, 11, '{\"hindi\":\"60\",\"english\":\"65\",\"maths\":\"63\",\"drawing\":\"40\",\"science\":\"65\",\"sst\":\"65\",\"computer\":\"60\",\"gk\":\"60\",\"science_oral\":\"12\",\"sst_oral\":\"12\"}', 462, 'Four hundred sixty two', 700, 8, 4, NULL, '2024-04-24 05:50:42', '2024-04-24 06:46:03'),
(22, 33, '2023-24', 'Std.1', NULL, 8, '{\"hindi\":\"68\",\"english\":\"75\",\"maths\":\"71\",\"drawing\":\"40\",\"science\":\"69\",\"sst\":\"60\",\"computer\":\"71\",\"gk\":\"60\",\"science_oral\":\"15\",\"sst_oral\":\"13\"}', 502, 'Five hundred two', 700, 6, 4, NULL, '2024-04-24 05:52:24', '2024-04-24 06:46:03'),
(23, 35, '2023-24', 'Std.1', NULL, 14, '{\"hindi\":\"69\",\"english\":\"81\",\"maths\":\"65\",\"drawing\":\"40\",\"science\":\"73\",\"sst\":\"62\",\"computer\":\"71\",\"gk\":\"60\",\"science_oral\":\"15\",\"sst_oral\":\"12\"}', 508, 'Five hundred eight', 700, 4, 4, NULL, '2024-04-24 05:53:53', '2024-04-24 06:46:03'),
(24, 42, '2023-24', 'Std.3', NULL, 2, '{\"hindi\":\"69\",\"english\":\"65\",\"maths\":\"68\",\"drawing\":\"40\",\"science\":\"78\",\"sst\":\"65\",\"computer\":\"65\",\"gk\":\"69\",\"science_oral\":\"15\",\"sst_oral\":\"14\"}', 508, 'Five hundred eight', 700, 4, 4, NULL, '2024-04-24 05:55:42', '2024-04-24 06:46:03'),
(25, 43, '2023-24', 'Std.3', NULL, 3, '{\"hindi\":\"76\",\"english\":\"75\",\"maths\":\"78\",\"drawing\":\"40\",\"science\":\"76\",\"sst\":\"61\",\"computer\":\"68\",\"gk\":\"65\",\"science_oral\":\"15\",\"sst_oral\":\"13\"}', 527, 'Five hundred twenty seven', 700, 2, 4, NULL, '2024-04-24 06:01:02', '2024-04-24 06:46:03'),
(26, 47, '2023-24', 'Std.4', NULL, 4, '{\"hindi\":\"75\",\"english\":\"75\",\"maths\":\"85\",\"drawing\":\"40\",\"science\":\"76\",\"sst\":\"59\",\"computer\":\"62\",\"gk\":\"65\",\"science_oral\":\"15\",\"sst_oral\":\"14\"}', 526, 'Five hundred twenty six', 700, 2, 4, NULL, '2024-04-24 06:02:03', '2024-04-24 06:46:03'),
(27, 48, '2023-24', 'Std.4', NULL, 3, '{\"hindi\":\"73\",\"english\":\"80\",\"maths\":\"80\",\"drawing\":\"40\",\"science\":\"78\",\"sst\":\"60\",\"computer\":\"64\",\"gk\":\"65\",\"science_oral\":\"15\",\"sst_oral\":\"12\"}', 527, 'Five hundred twenty seven', 700, 1, 4, NULL, '2024-04-24 06:03:00', '2024-04-24 06:46:03'),
(28, 55, '2023-24', 'Std.2', NULL, 5, '{\"hindi\":\"80\",\"english\":\"80\",\"maths\":\"69\",\"drawing\":\"40\",\"science\":\"78\",\"sst\":\"60\",\"computer\":\"66\",\"gk\":\"65\",\"science_oral\":\"15\",\"sst_oral\":\"14\"}', 527, 'Five hundred twenty seven', 700, 2, 4, NULL, '2024-04-24 06:04:16', '2024-04-24 06:46:03'),
(29, 56, '2023-24', 'Std.2', NULL, 2, '{\"hindi\":\"75\",\"english\":\"79\",\"maths\":\"68\",\"drawing\":\"40\",\"science\":\"77\",\"sst\":\"56\",\"computer\":\"64\",\"gk\":\"60\",\"science_oral\":\"15\",\"sst_oral\":\"14\"}', 508, 'Five hundred eight', 700, 6, 4, NULL, '2024-04-24 06:08:20', '2024-04-24 06:46:03'),
(30, 57, '2023-24', 'UKG', NULL, 7, '{\"hindi\":\"95\",\"english\":\"91\",\"maths\":\"95\",\"drawing\":\"40\"}', 281, 'Two hundred eighty one', 300, 1, 4, NULL, '2024-04-24 06:09:25', '2024-04-24 06:46:03'),
(31, 65, '2023-24', 'UKG', NULL, 6, '{\"hindi\":\"90\",\"english\":\"86\",\"maths\":\"88\",\"drawing\":\"40\"}', 264, 'Two hundred sixty four', 300, 4, 4, NULL, '2024-04-24 06:11:25', '2024-04-24 06:46:03'),
(32, 67, '2021-22', 'UKG', NULL, 17, '{\"hindi\":\"80\",\"english\":\"63\",\"maths\":\"70\",\"drawing\":\"40\"}', 213, 'Two hundred ten three', 300, 11, 4, NULL, '2024-04-24 06:12:35', '2024-04-24 08:59:44'),
(33, 70, '2023-24', 'UKG', NULL, 4, '{\"hindi\":\"95\",\"english\":\"74\",\"maths\":\"72\",\"drawing\":\"40\"}', 241, 'Two hundred forty one', 300, 7, 4, NULL, '2024-04-24 06:14:19', '2024-04-24 06:46:03'),
(34, 73, '2023-24', 'UKG', NULL, 14, '{\"hindi\":\"95\",\"english\":\"70\",\"maths\":\"70\",\"drawing\":\"40\"}', 235, 'Two hundred thirty five', 300, 8, 4, NULL, '2024-04-24 06:15:00', '2024-04-24 06:46:03'),
(35, 79, '2023-24', 'UKG', NULL, 27, '{\"hindi\":\"85\",\"english\":\"77\",\"maths\":\"82\",\"drawing\":\"40\"}', 244, 'Two hundred forty four', 300, 6, 4, NULL, '2024-04-24 06:15:55', '2024-04-24 06:46:03'),
(36, 81, '2023-24', 'UKG', NULL, 16, '{\"hindi\":\"95\",\"english\":\"88\",\"maths\":\"84\",\"drawing\":\"40\"}', 267, 'Two hundred sixty seven', 300, 2, 4, NULL, '2024-04-24 06:16:46', '2024-04-24 06:46:03'),
(37, 82, '2023-24', 'UKG', NULL, 8, '{\"hindi\":\"90\",\"english\":\"90\",\"maths\":\"86\",\"drawing\":\"40\"}', 266, 'Two hundred sixty six', 300, 3, 4, NULL, '2024-04-24 06:17:17', '2024-04-24 06:46:03'),
(38, 85, '2023-24', 'UKG', NULL, 13, '{\"hindi\":\"85\",\"english\":\"70\",\"maths\":\"65\",\"drawing\":\"40\"}', 220, 'Two hundred twenty', 300, 10, 4, NULL, '2024-04-24 06:17:58', '2024-04-24 08:59:44'),
(39, 86, '2023-24', 'UKG', NULL, 5, '{\"hindi\":\"95\",\"english\":\"67\",\"maths\":\"90\",\"drawing\":\"40\"}', 252, 'Two hundred fifty two', 300, 5, 4, NULL, '2024-04-24 06:19:00', '2024-04-24 06:46:03'),
(40, 88, '2023-24', 'Std.2', NULL, 8, '{\"hindi\":\"75\",\"english\":\"80\",\"maths\":\"65\",\"drawing\":\"40\",\"science\":\"73\",\"sst\":\"60\",\"computer\":\"68\",\"gk\":\"60\",\"science_oral\":\"15\",\"sst_oral\":\"13\"}', 509, 'Five hundred nine', 700, 5, 4, NULL, '2024-04-24 06:22:06', '2024-04-24 06:46:03'),
(41, 76, '2023-24', 'Std.3', NULL, 5, '{\"hindi\":\"81\",\"english\":\"78\",\"maths\":\"71\",\"drawing\":\"40\",\"science\":\"76\",\"sst\":\"59\",\"computer\":\"69\",\"gk\":\"62\",\"science_oral\":\"15\",\"sst_oral\":\"13\"}', 524, 'Five hundred twenty four', 700, 3, 4, NULL, '2024-04-24 06:25:47', '2024-04-24 06:46:03'),
(42, 68, '2023-24', 'Std.2', NULL, 7, '{\"hindi\":\"80\",\"english\":\"69\",\"maths\":\"69\",\"drawing\":\"40\",\"science\":\"73\",\"sst\":\"60\",\"computer\":\"68\",\"gk\":\"65\",\"science_oral\":\"15\",\"sst_oral\":\"13\"}', 512, 'Five hundred ten two', 700, 4, 4, NULL, '2024-04-24 06:28:21', '2024-04-24 06:46:03'),
(43, 74, '2023-24', 'Std.1', NULL, 10, '{\"hindi\":\"69\",\"english\":\"79\",\"maths\":\"69\",\"drawing\":\"40\",\"science\":\"62\",\"sst\":\"64\",\"computer\":\"70\",\"gk\":\"60\",\"science_oral\":\"15\",\"sst_oral\":\"13\"}', 501, 'Five hundred one', 700, 7, 4, NULL, '2024-04-24 06:35:16', '2024-04-24 06:46:03'),
(44, 90, '2023-24', 'LKG', NULL, 9, '{\"hindi\":\"80\",\"english\":\"70\",\"maths\":\"77\",\"drawing\":\"40\"}', 227, 'Two hundred twenty seven', 300, 6, 4, NULL, '2024-04-24 06:57:45', '2024-04-24 08:59:44'),
(45, 92, '2023-24', 'UKG', NULL, 23, '{\"hindi\":\"80\",\"english\":\"60\",\"maths\":\"60\",\"drawing\":\"40\"}', 200, 'Two hundred', 300, 12, 4, NULL, '2024-04-24 07:28:31', '2024-04-24 08:59:44'),
(46, 93, '2023-24', 'UKG', NULL, 24, '{\"hindi\":\"75\",\"english\":\"55\",\"maths\":\"69\",\"drawing\":\"40\"}', 199, 'One hundred ninety nine', 300, 13, 4, NULL, '2024-04-24 07:29:24', '2024-04-24 08:59:44'),
(47, 100, '2023-24', 'Nursery', NULL, 26, '{\"hindi\":\"70\",\"english\":\"62\",\"maths\":\"50\",\"drawing\":\"40\"}', 182, 'One hundred eighty two', 300, 13, 4, NULL, '2024-04-24 07:44:06', '2024-04-24 08:59:44'),
(48, 102, '2023-24', 'Nursery', NULL, 18, '{\"hindi\":\"80\",\"english\":\"97\",\"maths\":\"91\",\"drawing\":\"40\"}', 268, 'Two hundred sixty eight', 300, 3, 4, NULL, '2024-04-24 07:46:31', '2024-04-24 08:59:44'),
(49, 103, '2023-24', 'Nursery', NULL, 28, '{\"hindi\":\"75\",\"english\":\"88\",\"maths\":\"54\",\"drawing\":\"40\"}', 217, 'Two hundred ten seven', 300, 7, 4, NULL, '2024-04-24 07:47:33', '2024-04-24 08:59:44'),
(50, 104, '2023-24', 'Nursery', NULL, 30, '{\"hindi\":\"69\",\"english\":\"70\",\"maths\":\"53\",\"drawing\":\"40\"}', 192, 'One hundred ninety two', 300, 12, 4, NULL, '2024-04-24 08:04:49', '2024-04-24 08:59:44'),
(51, 105, '2023-24', 'Nursery', NULL, 19, '{\"hindi\":\"70\",\"english\":\"99\",\"maths\":\"99\",\"drawing\":\"40\"}', 268, 'Two hundred sixty eight', 300, 4, 4, NULL, '2024-04-24 08:06:11', '2024-04-24 08:59:44'),
(52, 108, '2023-24', 'Nursery', NULL, 25, '{\"hindi\":\"75\",\"english\":\"84\",\"maths\":\"73\",\"drawing\":\"40\"}', 232, 'Two hundred thirty two', 300, 6, 4, NULL, '2024-04-24 08:08:48', '2024-04-24 08:59:44'),
(53, 106, '2023-24', 'Nursery', NULL, 20, '{\"hindi\":\"75\",\"english\":\"97\",\"maths\":\"87\",\"drawing\":\"40\"}', 259, 'Two hundred fifty nine', 300, 5, 4, NULL, '2024-04-24 08:09:53', '2024-04-24 08:59:44'),
(54, 107, '2023-24', 'Nursery', NULL, 9, '{\"hindi\":\"70\",\"english\":\"74\",\"maths\":\"70\",\"drawing\":\"40\"}', 214, 'Two hundred ten four', 300, 8, 4, NULL, '2024-04-24 08:10:38', '2024-04-24 08:59:44'),
(55, 101, '2023-24', 'Nursery', NULL, 27, '{\"hindi\":\"69\",\"english\":\"65\",\"maths\":\"60\",\"drawing\":\"40\"}', 194, 'One hundred ninety four', 300, 11, 4, NULL, '2024-04-24 08:13:03', '2024-04-24 08:59:44'),
(56, 109, '2023-24', 'UKG', NULL, 19, '{\"hindi\":\"90\",\"english\":\"67\",\"maths\":\"71\",\"drawing\":\"40\"}', 228, 'Two hundred twenty eight', 300, 9, 4, NULL, '2024-04-24 08:27:51', '2024-04-24 08:59:44'),
(57, 94, '2023-24', 'Play', NULL, 10, '{\"hindi\":\"85\",\"english\":\"80\",\"maths\":\"90\",\"drawing\":\"40\"}', 255, 'Two hundred fifty five', 300, 2, 4, NULL, '2024-04-24 08:37:44', '2024-04-24 08:59:44'),
(58, 95, '2023-24', 'Play', NULL, 28, '{\"hindi\":\"70\",\"english\":\"60\",\"maths\":\"68\",\"drawing\":\"40\"}', 198, 'One hundred ninety eight', 300, 8, 4, NULL, '2024-04-24 08:39:01', '2024-04-24 08:59:44'),
(59, 96, '2023-24', 'Play', NULL, 14, '{\"hindi\":\"90\",\"english\":\"60\",\"maths\":\"69\",\"drawing\":\"40\"}', 219, 'Two hundred ten nine', 300, 7, 4, NULL, '2024-04-24 08:39:33', '2024-04-24 08:59:44'),
(60, 97, '2023-24', 'Play', NULL, 13, '{\"hindi\":\"90\",\"english\":\"75\",\"maths\":\"75\",\"drawing\":\"40\"}', 240, 'Two hundred forty', 300, 5, 4, NULL, '2024-04-24 08:39:59', '2024-04-24 08:59:44'),
(61, 98, '2023-24', 'Play', NULL, 30, '{\"hindi\":\"90\",\"english\":\"80\",\"maths\":\"85\",\"drawing\":\"40\"}', 255, 'Two hundred fifty five', 300, 3, 4, NULL, '2024-04-24 08:40:50', '2024-04-24 08:59:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Mukesh Kumar', '00mukesh2015@gmail.com', NULL, '$2y$10$CF7o/HQTpd89qCit/lLLVeCva9oV4WGDixPRREurTPznSmkqCxQVq', NULL, '2023-04-06 21:53:08', '2023-04-06 21:53:08', NULL),
(2, 'Satish Sharma', '00satish2015@gmail.com', NULL, '$2y$10$0ajvBIj.JQuqTkgh3aSJieZLRejhpzYMNT97NoBbc9cHA5BKEpjMG', 'LCXCu1M1q9QWnHikSfxpiEpuSsIsSNTM2DUAdz3fu1S0rQXSXaRYCp49u7D7', '2023-04-07 05:33:14', '2023-04-07 05:33:14', NULL),
(3, 'Sanjana Kumari', 'sanjanakumari06122004@gmail.com', NULL, '$2y$10$9GlxoYQK9K02UWndR8BkoO/hXx1G3QK7gAuPCPmwwWavWSz7zfnCm', NULL, '2023-04-07 15:53:52', '2023-04-07 15:53:52', NULL),
(4, 'Manish Kumar', 'mks555manish@gmail.com', NULL, '$2y$10$1hjOLaVtsG3r.XqdpTio9OASXKHP3fHHZ.Tx/XVPq/6TSc1J2GtWK', NULL, '2023-04-09 21:26:50', '2023-04-09 21:26:50', NULL),
(5, 'Mohit Kumar', 'rjmohit15022001@gmail.com', NULL, '$2y$10$HdHvZRBuBtipFQTxw0A8.efCYbNn6TEZsaR34aCWocSxti3dUjDwq', NULL, '2023-04-10 19:05:32', '2023-04-10 19:05:32', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admit_cards`
--
ALTER TABLE `admit_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `results_admit_card_id_foreign` (`admit_card_id`),
  ADD KEY `results_uploaded_by_id_foreign` (`uploaded_by_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admit_cards`
--
ALTER TABLE `admit_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_admit_card_id_foreign` FOREIGN KEY (`admit_card_id`) REFERENCES `admit_cards` (`id`),
  ADD CONSTRAINT `results_uploaded_by_id_foreign` FOREIGN KEY (`uploaded_by_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
