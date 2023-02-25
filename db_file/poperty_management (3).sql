-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2023 at 11:11 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poperty_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_notification`
--

CREATE TABLE `admin_notification` (
  `notify_id` int(11) NOT NULL,
  `issue_name` varchar(255) NOT NULL,
  `issue_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `who_will_get` varchar(100) NOT NULL COMMENT 'Super Admin=1,employee=2,tenent=3,owner=5',
  `user_id` int(11) NOT NULL,
  `tenant_status` int(11) NOT NULL,
  `emp_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_notification`
--

INSERT INTO `admin_notification` (`notify_id`, `issue_name`, `issue_id`, `type`, `admin_status`, `property_id`, `who_will_get`, `user_id`, `tenant_status`, `emp_status`) VALUES
(9, 'Complain', 25, 'add complain', 0, 17, '1', 44, 0, 0),
(10, 'Complain', 26, 'add complain', 1, 17, '1', 44, 0, 0),
(11, 'Complain', 25, 'Assign Complain', 1, 17, '2,3', 1, 0, 0),
(12, 'Complain', 26, 'Assign Complain', 1, 17, '2,3', 1, 0, 0),
(13, 'Complain', 25, 'Add Solution', 1, 17, '3', 1, 0, 0),
(15, 'Complain', 26, 'Add Solution', 1, 17, '3', 1, 0, 0),
(16, 'Complain', 27, 'add complain', 1, 17, '1', 44, 0, 0),
(17, 'Complain', 27, 'Assign Complain', 1, 17, '2,3', 1, 0, 0),
(18, 'Complain', 27, 'Assign Complain', 1, 17, '2,3', 1, 0, 0),
(19, 'Complain', 27, 'Add Solution', 1, 17, '3', 1, 0, 0),
(20, 'Complain', 28, 'add complain', 1, 17, '1', 44, 0, 0),
(21, 'Complain', 28, 'Add Solution', 1, 17, '3', 1, 0, 0),
(22, 'Complain', 28, 'Assign Complain', 1, 17, '2,3', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `billsetups`
--

CREATE TABLE `billsetups` (
  `id` int(11) NOT NULL,
  `billtype` varchar(50) NOT NULL,
  `property_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `billsetups`
--

INSERT INTO `billsetups` (`id`, `billtype`, `property_id`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'Gas Bill', 0, 1, '2021-11-18 13:41:52', '2021-11-24 05:26:15'),
(2, 'Electric Bill', 0, 1, '2021-11-18 13:43:21', '2021-11-24 05:26:18'),
(3, 'Water Bill', 0, 1, '2021-11-23 09:06:32', '2021-11-24 05:26:21'),
(11, 'test bill', 17, 1, '2021-11-23 10:11:09', '2021-11-24 05:26:24');

-- --------------------------------------------------------

--
-- Table structure for table `bill_diposit`
--

CREATE TABLE `bill_diposit` (
  `id` int(100) NOT NULL,
  `bill_type` int(11) NOT NULL,
  `bill_date` varchar(100) NOT NULL,
  `month` varchar(100) NOT NULL,
  `year` int(100) NOT NULL,
  `total_amount` int(100) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `details` varchar(1000) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill_diposit`
--

INSERT INTO `bill_diposit` (`id`, `bill_type`, `bill_date`, `month`, `year`, `total_amount`, `bank_name`, `details`, `property_id`) VALUES
(7, 0, '2020-11-09', 'January', 2021, 21000, 'sonali Bank', 'details is details..', 0),
(9, 2, '1976-06-04', 'April', 2017, 0, 'Isaac Mclaughlin', 'Est est quia ad iste', 17),
(10, 1, '2021-07-22', 'June', 2017, 111, 'Maris Garner', 'Optio dolorem unde ', 17),
(12, 1, '1973-07-12', 'November', 2020, 0, 'Jena Mcdowell', 'Quia error ut quod p', 17),
(13, 3, '2016-04-02', 'January', 2021, 98, 'Lev Fletcher', 'Ea sequi beatae dolo', 17);

-- --------------------------------------------------------

--
-- Table structure for table `committees`
--

CREATE TABLE `committees` (
  `id` int(11) NOT NULL,
  `mmembername` varchar(30) NOT NULL,
  `memail` varchar(40) NOT NULL,
  `mpassword` varchar(30) NOT NULL,
  `mphone` varchar(20) NOT NULL,
  `mpresentads` varchar(50) NOT NULL,
  `mpermanentads` varchar(50) NOT NULL,
  `mnid` varchar(20) NOT NULL,
  `mdesignation` varchar(20) NOT NULL,
  `mjoiningdate` varchar(20) NOT NULL,
  `mendingdate` varchar(20) NOT NULL,
  `mstaus` int(5) NOT NULL,
  `mimage` varchar(50) NOT NULL,
  `property_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `committees`
--

INSERT INTO `committees` (`id`, `mmembername`, `memail`, `mpassword`, `mphone`, `mpresentads`, `mpermanentads`, `mnid`, `mdesignation`, `mjoiningdate`, `mendingdate`, `mstaus`, `mimage`, `property_id`, `created_at`, `updated_at`) VALUES
(1, 'Octavia Dale', 'nuciz@mailinator.com', 'Pa$$w0rd!', '+1 (451) 911-8969', 'Alias quo excepteur ', 'In vel eos mollit c', '44', 'Security Gard', '2016-03-22', '2020-02-03', 1, '1637043080_b5030f023d0e7daf1efe.png', 0, '2021-11-16 06:10:49', '2021-11-16 06:11:20'),
(2, 'Oscar Knight', 'gyfe@mailinator.com', 'Pa$$w0rd!', '+1 (142) 512-6719', 'Repudiandae recusand', 'Ad distinctio Et co', 'Ut sint in duis magn', 'Pion', '1974-11-29', '1976-06-26', 1, '', 0, '2021-11-16 06:12:03', '2021-11-16 06:12:03'),
(3, 'Drake Bullock2', 'kulivufofa@mailinator.com', 'Pa$$w0rd!', '+1 (602) 572-7261', 'Fuga Paria', 'Alias ut v', '12123', 'Secretary General', '1982-03-20', '1998-03-21', 1, '1638338663_7ac8050b4a9129f0ca0f.png', 17, '2021-11-18 08:49:29', '2022-02-07 09:28:46'),
(4, 'Davis Mcneil', 'hyxypux@mailinator.com', 'Pa$$w0rd!', '+1 (789) 146-2724', 'Quia id quia recusa', 'Occaecat temporibus ', 'Fugiat est omnis sun', 'Secretary General', '1996-01-22', '2019-09-22', 1, '1638338624_92d3bb77f6dae250b044.png', 17, '2021-12-01 06:03:44', '2021-12-01 06:03:44');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `company_owner_id` int(11) NOT NULL,
  `status` smallint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_owner_id`, `status`) VALUES
(1, 1, 1),
(11, 4, 1),
(13, 5, 1),
(17, 13, 1),
(19, 16, 1),
(20, 35, 1),
(21, 37, 1),
(22, 38, 1),
(23, 40, 1),
(24, 46, 1),
(25, 49, 1),
(26, 50, 1),
(27, 52, 1),
(28, 56, 1),
(29, 61, 1),
(30, 62, 1),
(31, 68, 1),
(32, 76, 1),
(33, 85, 1),
(34, 87, 1),
(35, 82, 1),
(36, 88, 1),
(37, 91, 1),
(38, 98, 1),
(39, 105, 1),
(40, 109, 1),
(41, 113, 1),
(42, 115, 1),
(43, 116, 1),
(44, 117, 1),
(45, 118, 1),
(46, 119, 1),
(47, 120, 1),
(48, 121, 1),
(49, 122, 1),
(50, 123, 1),
(51, 124, 1),
(52, 125, 1),
(53, 128, 1),
(54, 130, 1),
(55, 133, 1),
(56, 134, 1);

-- --------------------------------------------------------

--
-- Table structure for table `complains`
--

CREATE TABLE `complains` (
  `id` int(11) NOT NULL,
  `comtitle` varchar(50) NOT NULL,
  `comdescription` text NOT NULL,
  `comdate` varchar(20) NOT NULL,
  `comperson` int(5) NOT NULL,
  `comstatus` varchar(30) NOT NULL,
  `comsolution` text NOT NULL,
  `comass` varchar(100) NOT NULL,
  `property_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `complains`
--

INSERT INTO `complains` (`id`, `comtitle`, `comdescription`, `comdate`, `comperson`, `comstatus`, `comsolution`, `comass`, `property_id`, `created_at`, `updated_at`) VALUES
(25, 'gas problem', 'gas problemgas problemgas problemgas problemgas problemgas problemgas problemgas problemgas problem', '2022-01-31', 44, 'In progress', 'work on it', '1', 17, '2022-01-31 11:08:36', '2022-01-31 11:12:23'),
(26, 'water problem', 'water problemwater problemwater problemwater problemwater problemwater problemwater problemwater problemwater problem', '2022-01-31', 44, 'Completed', 'Complete', '1', 17, '2022-01-31 11:09:02', '2022-01-31 11:14:38'),
(27, 'security missing', 'Security guard is missing from 2 days check it', '2022-02-03', 44, 'Completed', 'New security guard added', '1', 17, '2022-02-03 04:41:41', '2022-02-03 04:42:50'),
(28, 'Electricity problem ', 'i am facing Electricity problem from 6 hours please solve it', '2022-02-03', 44, 'In progress', 'it will complete within 2 hours', '1', 17, '2022-02-03 04:47:10', '2022-02-03 04:49:38');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(100) NOT NULL,
  `symbol` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `symbol`, `name`, `property_id`) VALUES
(7, '£', 'euro', 17),
(8, '$', 'dolar', 17),
(9, '৳', 'Taka', 17);

-- --------------------------------------------------------

--
-- Table structure for table `date`
--

CREATE TABLE `date` (
  `id` int(11) NOT NULL,
  `date_format` varchar(100) NOT NULL,
  `property_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `date`
--

INSERT INTO `date` (`id`, `date_format`, `property_id`, `name`) VALUES
(1, 'Y/m/d', 17, 'yy/mm/dd'),
(2, 'm/Y/d', 17, 'mm/yy/dd'),
(3, 'd/Y/m', 17, 'mm/yy/dd'),
(5, 'd/m/Y', 17, 'dd/mm/yy');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `contact_no` varchar(100) NOT NULL,
  `present_address` varchar(500) NOT NULL,
  `parmanent_address` varchar(500) NOT NULL,
  `nid` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `join_date` varchar(100) NOT NULL,
  `end_date` varchar(100) NOT NULL,
  `salary_per_month` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `password`, `contact_no`, `present_address`, `parmanent_address`, `nid`, `designation`, `join_date`, `end_date`, `salary_per_month`, `status`, `image`, `property_id`) VALUES
(1, 'Denton Hodge', 'zopot@mailinator.com', 'Pa$$w0rd!', '27', 'Consequat Voluptate', 'Voluptas quo ullamco', '69', 'Secretary General', '2021-12-02', '2021-12-02', '5000', 'Active', '1638424718_274e0a092e00fb0f8592.png', 17);

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary`
--

CREATE TABLE `employee_salary` (
  `id` int(100) NOT NULL,
  `employee_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `month` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `salary_per_month` double(10,2) NOT NULL,
  `issue_date` varchar(100) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_salary`
--

INSERT INTO `employee_salary` (`id`, `employee_id`, `name`, `designation`, `month`, `year`, `salary_per_month`, `issue_date`, `property_id`) VALUES
(18, 18, 'Kaka', 'Secretary General', 'October', '2021', 15000.00, '2021-11-16', 0),
(19, 19, 'kaka2', 'Moderator', 'November', '2021', 20000.00, '2021-11-16', 0),
(21, 20, 'Cecilia Robertson', 'Maker', 'February', '2019', 200.00, '2021-11-18', 17),
(22, 20, 'Cecilia Robertson', 'Maker', 'February', '2022', 3000.00, '2021-11-18', 17),
(23, 20, 'Cecilia Robertson', 'Maker', 'February', '2021', 3000.00, '2021-12-07', 17);

-- --------------------------------------------------------

--
-- Table structure for table `floors`
--

CREATE TABLE `floors` (
  `id` int(11) NOT NULL,
  `floorno` varchar(50) NOT NULL,
  `property_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `floors`
--

INSERT INTO `floors` (`id`, `floorno`, `property_id`, `created_at`, `updated_at`) VALUES
(1, '1st floor', 17, '2021-12-02 05:46:00', '2021-12-02 05:46:00'),
(3, '2nd floor', 17, '2021-12-02 05:47:24', '2021-12-02 05:47:24'),
(4, '3rd floor', 17, '2021-12-02 05:47:31', '2021-12-02 05:47:31'),
(5, '4th floor', 17, '2022-01-30 10:39:35', '2022-01-30 10:39:35'),
(6, '5th floor', 17, '2022-01-30 10:39:49', '2022-01-30 10:39:49'),
(7, '44th floor', 43, '2022-02-06 09:40:05', '2022-02-06 09:40:05'),
(8, '55th floor', 43, '2022-02-06 09:40:31', '2022-02-06 09:40:31'),
(9, '13 th floor ', 45, '2022-02-06 10:47:22', '2022-02-06 10:47:22'),
(10, '33th floor', 47, '2022-02-07 06:10:33', '2022-02-07 06:10:33'),
(11, '5th floor', 18, '2022-09-29 07:15:27', '2022-09-29 07:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `funds`
--

CREATE TABLE `funds` (
  `id` int(100) NOT NULL,
  `owner_id` int(100) NOT NULL,
  `owner_name` varchar(100) NOT NULL,
  `owner_image` varchar(500) NOT NULL,
  `month` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `issue_date` varchar(100) NOT NULL,
  `total_amount` double(10,2) NOT NULL,
  `purpose` varchar(500) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `funds`
--

INSERT INTO `funds` (`id`, `owner_id`, `owner_name`, `owner_image`, `month`, `year`, `issue_date`, `total_amount`, `purpose`, `property_id`) VALUES
(1, 2, 'Germaine Rasmussen', '1638424257_94a0b143629fc5d9346a.png', 'January', '2022', '2022-01-29', 900.00, 'df rg ', 17),
(2, 2, 'Germaine Rasmussen', '1638424257_94a0b143629fc5d9346a.png', 'February', '2022', '2022-02-28', 1000.00, 'ngbvn mb hbgj', 17),
(3, 2, 'Germaine Rasmussen', '1638424257_94a0b143629fc5d9346a.png', 'July', '2017', '2014-09-15', 500.00, 'Ut commodi non conse', 17);

-- --------------------------------------------------------

--
-- Table structure for table `mailsms`
--

CREATE TABLE `mailsms` (
  `id` int(11) NOT NULL,
  `maildate` varchar(20) NOT NULL,
  `mailsub` varchar(50) NOT NULL,
  `mailmess` text NOT NULL,
  `mailtenant` varchar(20) DEFAULT '',
  `mailemployee` varchar(20) DEFAULT '',
  `mailowner` varchar(20) DEFAULT '',
  `schedule` varchar(20) NOT NULL,
  `mailmesstype` varchar(20) NOT NULL,
  `mailstatus` int(5) NOT NULL DEFAULT 0,
  `property_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mailsms`
--

INSERT INTO `mailsms` (`id`, `maildate`, `mailsub`, `mailmess`, `mailtenant`, `mailemployee`, `mailowner`, `schedule`, `mailmesstype`, `mailstatus`, `property_id`, `created_at`, `updated_at`) VALUES
(2, '2021-11-27', 'Reset Password', 'Hi {receiver_name}\n\nYour request for reset password has been approved from {app_name}. Press the button below to reset the password.\n\nReset Password\n\nWe are highly expecting you as soon as possible. Hope you\'ll join us.\n\nThanks for being with us.\n\nThanks & Regards,\n\n{app_name}', '0', '0', '0', '2021-11-27', 'email', 1, 17, '2021-11-27 06:06:18', '2021-11-29 10:25:26'),
(3, '02/12/21', '33', 'Hi {receiver_name}\r\n\r\nYour request for reset password has been approved from {app_name}. Press the button below to reset the password.\r\n\r\nReset Password\r\n\r\nWe are highly expecting you as soon as possible. Hope you\'ll join us.\r\n\r\nThanks for being with us.\r\n\r\nThanks & Regards,\r\n\r\n{app_name}', '', '', '', '2021-11-27', 'sms,email', 1, 17, '2021-11-27 06:21:13', '2021-12-02 13:52:19'),
(5, '2021-11-29', 'kk', 'hikk', '', '18', '', '2021-11-29', 'email', 1, 17, '2021-11-29 08:46:34', '2021-11-29 08:47:16'),
(6, '2021-11-29', 'kk', 'hjjj', '', '19', '', '2021-11-29', 'sms', 1, 17, '2021-11-29 08:49:22', '2021-11-29 08:49:38'),
(7, '2021-11-29', 'kk', 'dsfsdg', '', '20', '', '2021-11-29', 'sms,email', 1, 17, '2021-11-29 08:51:49', '2021-11-29 08:51:56');

-- --------------------------------------------------------

--
-- Table structure for table `mailsmsdatas`
--

CREATE TABLE `mailsmsdatas` (
  `id` int(11) NOT NULL,
  `dmailname` varchar(50) NOT NULL,
  `dmailemail` varchar(40) NOT NULL,
  `dmailphone` varchar(20) NOT NULL,
  `dmailsubject` varchar(50) NOT NULL,
  `dmailmessage` text NOT NULL,
  `dmailstatus` int(5) NOT NULL,
  `dmailtype` varchar(50) NOT NULL,
  `property_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mailsmsdatas`
--

INSERT INTO `mailsmsdatas` (`id`, `dmailname`, `dmailemail`, `dmailphone`, `dmailsubject`, `dmailmessage`, `dmailstatus`, `dmailtype`, `property_id`, `created_at`, `updated_at`) VALUES
(21, 'Kaka', 'Kaka@gmail.com', '123456', 'kk', 'hikk', 1, 'email', 17, '2021-11-29 08:47:16', '2021-11-29 08:48:23'),
(22, 'kaka 3', 'kaka2@gmail.com', '222222', 'kk', 'hjjj', 1, 'sms', 17, '2021-11-29 08:49:38', '2021-11-29 08:50:58'),
(23, 'Cecilia Robertson', 'pure@mailinator.com', 'Ut quia ut harum est', 'kk', 'dsfsdg', 1, 'all', 17, '2021-11-29 08:51:56', '2021-11-29 08:52:06');

-- --------------------------------------------------------

--
-- Table structure for table `maintenances`
--

CREATE TABLE `maintenances` (
  `id` int(11) NOT NULL,
  `maindate` varchar(20) NOT NULL,
  `mainmonth` int(20) NOT NULL,
  `mainyear` varchar(20) NOT NULL,
  `maintitle` varchar(50) NOT NULL,
  `mainamount` double(10,2) NOT NULL,
  `maindetails` text NOT NULL,
  `property_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `maintenances`
--

INSERT INTO `maintenances` (`id`, `maindate`, `mainmonth`, `mainyear`, `maintitle`, `mainamount`, `maindetails`, `property_id`, `created_at`, `updated_at`) VALUES
(2, '2022-07-14', 3, '2022', 'Officia vel facere r', 150.00, 'Itaque ut voluptate ', 17, '2021-11-22 12:36:29', '2022-01-30 05:30:47'),
(6, '2022-02-12', 4, '2022', 'Ipsa molestias faci', 350.00, 'Cupidatat dolores re', 17, '2022-02-12 05:19:11', '2022-02-05 14:05:19'),
(7, '2022-01-29', 8, '2022', 'building color ', 200.00, 'Color price is too cost', 17, '2022-01-29 13:59:19', '2022-01-30 05:30:51'),
(8, '2022-03-08', 6, '2022', 'piling cost', 300.00, 'sdf  nhn  ', 17, '2022-01-29 14:01:02', '2022-01-30 05:28:15'),
(9, '2022-02-22', 4, '2022', 'Ipsa molestias faci', 700.00, 'Cupidatat dolores Cupidatat dolores reCupidatat dolores reCupidatat dolores re re', 17, '2022-02-22 05:19:11', '2022-02-05 14:04:56'),
(10, '2022-02-05', 4, '2022', 'Ipsa molestias faci', 500.00, 'Cupidatat dolores re', 17, '2022-02-05 05:19:11', '2022-02-05 14:04:31'),
(11, '2022-09-12', 9, '2022', 'Ipsa molestias faci', 1350.00, 'asdf jhbug', 17, '2022-09-12 05:19:11', '2022-09-05 14:05:19');

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` int(11) NOT NULL,
  `meeissuedate` varchar(20) NOT NULL,
  `meetitle` varchar(50) NOT NULL,
  `meedescription` text NOT NULL,
  `property_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `meeissuedate`, `meetitle`, `meedescription`, `property_id`, `created_at`, `updated_at`) VALUES
(5, '2021-11-19', 'title1', '<p>hello worlds</p>', 17, '2021-11-18 10:08:47', '2022-02-07 09:44:47');

-- --------------------------------------------------------

--
-- Table structure for table `membersetups`
--

CREATE TABLE `membersetups` (
  `id` int(11) NOT NULL,
  `membertype` varchar(50) NOT NULL,
  `property_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membersetups`
--

INSERT INTO `membersetups` (`id`, `membertype`, `property_id`, `created_at`, `updated_at`) VALUES
(6, 'member2', 17, '2021-11-18 13:52:33', '2021-11-18 13:53:10'),
(7, 'mem', 1, '2021-11-18 13:52:41', '2021-11-18 13:52:55'),
(8, 'www', 17, '2021-11-20 05:22:30', '2021-11-20 05:22:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(5, '2021-10-30-091114', 'App\\Database\\Migrations\\Useraccounts', 'default', 'App', 1635658759, 1),
(6, '2021-10-31-052620', 'App\\Database\\Migrations\\Poperties', 'default', 'App', 1635658760, 1);

-- --------------------------------------------------------

--
-- Table structure for table `monthsetups`
--

CREATE TABLE `monthsetups` (
  `id` int(11) NOT NULL,
  `monthname` varchar(20) NOT NULL,
  `property_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `monthsetups`
--

INSERT INTO `monthsetups` (`id`, `monthname`, `property_id`, `created_at`, `updated_at`) VALUES
(1, 'January', 17, '2021-11-11 13:07:53', '2021-11-17 12:00:19'),
(2, 'February', 17, '2021-11-11 13:08:03', '2021-11-17 12:00:19'),
(3, 'March', 17, '2021-11-11 13:08:10', '2021-11-17 12:00:19'),
(4, 'April', 17, '2021-11-11 13:08:19', '2021-11-18 13:56:24'),
(5, 'May', 17, '2021-11-11 13:08:25', '2021-11-17 12:00:19'),
(6, 'June', 17, '2021-11-11 13:08:30', '2021-11-17 12:00:19'),
(7, 'July', 17, '2021-11-11 13:08:36', '2021-11-17 12:00:19'),
(8, 'August', 17, '2021-11-11 13:08:43', '2021-11-23 08:53:29'),
(9, 'September', 17, '2021-11-11 13:08:53', '2021-11-17 12:00:19'),
(10, 'October', 17, '2021-11-11 13:09:02', '2021-11-17 12:00:19'),
(11, 'November', 17, '2021-11-11 13:09:09', '2021-11-17 12:00:19'),
(12, 'December', 17, '2021-11-11 13:09:16', '2021-11-17 12:00:19'),
(15, 'jan', 18, '2022-09-29 07:14:57', '2022-09-29 07:14:57');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(100) NOT NULL,
  `title` varchar(500) NOT NULL,
  `date` varchar(100) NOT NULL,
  `status` int(100) NOT NULL,
  `notice_type` int(100) NOT NULL,
  `text_area` varchar(5000) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `title`, `date`, `status`, `notice_type`, `text_area`, `property_id`) VALUES
(5, 'notice 1', '22-22-2344', 0, 1, '<p>please always be quiet..</p>', 0),
(7, 'Non incididunt dolor', '31-May-2009', 1, 3, '<p>hello world</p>', 17),
(8, 'weewee  wew w ewe3', '12-Apr-2018', 1, 3, '<p>hello&nbsp;</p>', 17),
(9, 'Est aut exercitatio', '07-Nov-1989', 1, 2, '<p>fgtghyk i</p>', 17),
(10, 'Sint earum est et es', '17-Jul-1997', 0, 3, '<p>yhujty u&nbsp;</p>', 17);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `mailsub` text DEFAULT NULL,
  `mailbody` text DEFAULT NULL,
  `mailtags` text DEFAULT NULL,
  `systags` varchar(1000) DEFAULT NULL,
  `syscontent` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `mailsub`, `mailbody`, `mailtags`, `systags`, `syscontent`) VALUES
(1, 'User invitation formm {app_name}', '                                                                      <p><img src=\"http://property_final.com/uploads/avater.png\" alt=\"app_logo\" height=\"50px\" style=\"border:1px solid black;\"></p><p>Hi {receiver_name}</p>\r\n\r\n          <p>Hope this mail finds you well and healthy. We are informing you that you\'ve been invited to our application by {action_by}. It\'ll be a great opportunity to work with you.</p>\r\n          <p><button class=\"btn btn-primary btn-sm\">Accept Invitation</button></p>\r\n\r\n          <p>Thanks &amp; Regards,</p>\r\n\r\n          <p>{app_name}</p><p></p>                                           ', 'action_by,app_name,app_logo,receiver_name,invitation_url', NULL, NULL),
(2, 'Password reset link provided by {app_name}', '                               \r\n          <p>Hi {receiver_name}</p>\r\n\r\n          <p>Your request for reset password has been approved from {app_name}. Press the button below to reset the password.</p>\r\n          <p><a href=\"{link}\" class=\"btn btn-primary btn-sm\">Reset Password</a></p>\r\n          <p>We are highly expecting you as soon as possible. Hope you\'ll join us.</p>\r\n          <p>Thanks for being with us.</p>\r\n\r\n          <p>Thanks &amp; Regards,</p>\r\n\r\n          <p>{app_name}</p>                                   ', 'app_name,app_logo,receiver_name,reset_password_url', NULL, NULL),
(3, 'You have been invited to join {app_name} by {action_by}', '                                    <p><img src=\"http://property_final2.com/uploads/empty_image.jpg\" alt=\"app_logo\" height=\"50px\" style=\"border:1px solid black;\"><br></p>                                       <p class=\"text_add\"><br></p>      \r\n          <p>Hello {receiver_name}</p>\r\n\r\n          <p>Your Login credentials are given,\r\n          Email : {email}\r\n          Password : {password}\r\n          To set up your account, please use these credentials and go to the following link.</p>\r\n\r\n          <p><button class=\"btn btn-primary btn-sm\">Go to your account</button></p>\r\n          <p>You can change your password from your account password settings.</p>\r\n          <p>Hope you will find useful!</p>\r\n          <p>Thanks for being with us.</p>\r\n          <p>Regards,</p>  \r\n          <p>Thanks &amp; Regards,</p>\r\n\r\n          <p>{app_name}</p>                                    ', 'action_by,app_name,app_logo,receiver_name,invitation_url,email,password', NULL, NULL),
(4, 'Invoice {invoice_number} for due {date}', '                                            <p class=\"text_add\"><img src=\"#\" alt=\"app_logo\" height=\"50px\" style=\"border:1px solid black;\">{invoice_number}<img src=\"#\" alt=\"logo\" height=\"60px\" style=\"border:1px solid black;\"></p>      \r\n          <p>Hello {receiver_name}</p>\r\n\r\n          <p>I hope you’re well!\r\n          Please see attached invoice {invoice_number}.\r\n          Don’t hesitate to contact us if you have any questions.</p>\r\n\r\n          <p>Thanks for being with us.</p>\r\n\r\n          <p>Regards,</p>  \r\n\r\n          <p>{app_name}</p>                           ', 'app_name,app_logo,receiver_name,invoice_number,date', NULL, NULL),
(5, 'Payment reminder for invoice {invoice_number}', '                                      <p class=\"text_add\">{app_name}{date}{receiver_name}<img src=\"#\" alt=\"app_logo\" height=\"50px\" style=\"border:1px solid black;\">{date}<img src=\"#\" alt=\"logo\" height=\"60px\" style=\"border:1px solid black;\"></p>      \r\n          <p>Hello {receiver_name}</p>\r\n\r\n          <p>We hope that you’re enjoying our service\r\n          We did want to quickly mention that we haven’t received payment from you yet.</p>\r\n          <p>If you have any questions don’t hesitate to reply to this email.</p>\r\n          <p>Thanks for being with us.</p>\r\n\r\n          <p>Regards,</p>  \r\n\r\n          <p>{app_name}</p>                        ', 'app_name,app_logo,receiver_name,invoice_number,date', NULL, NULL),
(6, 'Registration Confirmed', '<p><img src=\"http://property_final.com/uploads/avater.png\" alt=\"app_logo\" height=\"50px\" style=\"border:1px solid black;\"></p><p>Hi {receiver_name}</p>\r\n\r\n          <p>Welcome to our {app_name}.</p>\r\n\r\n          <p>Thanks &amp; Regards,</p>\r\n\r\n          <p>{app_name}</p><p></p> ', 'name,action_by,app_name,app_logo,receiver_name,resource_url', 'app_name', 'A new user has been joined in {app_name}{app_name}'),
(7, 'A new roles has been created in {app_name}', '                    <p>{name}{name}<img src=\"#\" alt=\"logo\" height=\"60px\" style=\"border:1px solid black;\"></p>      \r\n            <p>Hi {receiver_name}</p>\r\n\r\n            <p>It\'s a piece of good news that a new roles named {name} has been created in our application by {action_by}. Please have a look at that.</p>\r\n\r\n            <p><button class=\"btn btn-primary btn-sm\">View Roles</button></p>\r\n            <p>Thanks for being with us.</p>\r\n\r\n            <p>Regards,</p>  \r\n\r\n            <p>{app_name}</p>                   ', 'name,action_by,app_name,app_logo,receiver_name,resource_url', 'name,action_by', 'A new roles named {name} has been created by {action_by}.'),
(8, 'A roles has been updated in {app_name}', '                    <p>{name}{name}<img src=\"#\" alt=\"logo\" height=\"60px\" style=\"border:1px solid black;\"></p>      \r\n            <p>Hi {receiver_name}</p>\r\n\r\n            <p>It\'s a piece of good news that a new roles named {name} has been created in our application by {action_by}. Please have a look at that.</p>\r\n\r\n            <p><button class=\"btn btn-primary btn-sm\">View Roles</button></p>\r\n            <p>Thanks for being with us.</p>         ', 'name,action_by,app_name,app_logo,receiver_name,resource_url', 'name,action_by', 'A roles named {name} has been updated by {action_by}.'),
(9, 'A roles has been deleted in {app_name}', '          <p class=\"text_add\">{name}<img src=\"#\" alt=\"logo\" height=\"60px\" style=\"border:1px solid black;\"></p>      \r\n            <p>Hi {receiver_name}</p>\r\n\r\n            <p>We are going to inform you that a roles named has been deleted from our application by {action_by}.</p>\r\n\r\n            <p>Thanks for being with us.</p>\r\n\r\n            <p>Regards,</p>  \r\n\r\n            <p>{app_name}</p>         ', 'name,action_by,app_name,app_logo,receiver_name', 'name,action_by', 'A roles named {name} has been deleted by {action_by}.');

-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

CREATE TABLE `owners` (
  `owner_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `contact_no` varchar(100) NOT NULL,
  `present_address` varchar(500) NOT NULL,
  `parmanent_address` varchar(500) NOT NULL,
  `nid` int(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owners`
--

INSERT INTO `owners` (`owner_id`, `name`, `email`, `password`, `contact_no`, `present_address`, `parmanent_address`, `nid`, `image`, `property_id`) VALUES
(2, 'Germaine Rasmussen', 'ruxoq@mailinator.com', 'Pa$$w0rd!', '97', 'Vero et id temporib', 'Fugiat in cillum ve', 21, '1644221931_4b192d30bf10503da48e.jpg', 17),
(3, 'Dexter Bartlett', 'goge@mailinator.com', 'Pa$$w0rd!', '75', 'Quia qui facilis lor', 'Asperiores placeat ', 20, '1638424286_6e69792834e6ad195f79.png', 17);

-- --------------------------------------------------------

--
-- Table structure for table `owners_utility`
--

CREATE TABLE `owners_utility` (
  `id` int(100) NOT NULL,
  `floor_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `owner_name` varchar(100) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `month` varchar(100) NOT NULL,
  `year` int(100) NOT NULL,
  `water_bill` varchar(100) NOT NULL,
  `electric_bill` varchar(100) NOT NULL,
  `gas_bill` varchar(100) NOT NULL,
  `security_bill` varchar(100) NOT NULL,
  `utility_bill` varchar(100) NOT NULL,
  `others_bill` varchar(100) NOT NULL,
  `total_rent` varchar(100) NOT NULL,
  `issue_date` varchar(1000) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owners_utility`
--

INSERT INTO `owners_utility` (`id`, `floor_id`, `unit_id`, `owner_name`, `owner_id`, `month`, `year`, `water_bill`, `electric_bill`, `gas_bill`, `security_bill`, `utility_bill`, `others_bill`, `total_rent`, `issue_date`, `property_id`) VALUES
(1, 3, 2, 'Germaine Rasmussen', 2, 'December', 2021, '11', '0.00', '800', '900', '0.00', '0.00', '1711', '2021-12-02', 17),
(2, 1, 1, 'Germaine Rasmussen', 2, 'April', 2019, '0.00', '0.00', '800', '900', '11', '0.00', '1711', '2021-12-02', 17);

-- --------------------------------------------------------

--
-- Table structure for table `owner_to_unit`
--

CREATE TABLE `owner_to_unit` (
  `id` int(100) NOT NULL,
  `unit_id` int(100) NOT NULL,
  `unit_name` varchar(500) NOT NULL,
  `owner_id` int(100) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owner_to_unit`
--

INSERT INTO `owner_to_unit` (`id`, `unit_id`, `unit_name`, `owner_id`, `property_id`) VALUES
(2, 3, 'Unit 3A', 3, 17),
(3, 1, 'Unit 1A', 2, 17);

-- --------------------------------------------------------

--
-- Table structure for table `pakage`
--

CREATE TABLE `pakage` (
  `id` int(11) NOT NULL,
  `pakage_title` varchar(100) NOT NULL,
  `pakage_objective` varchar(1000) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `d_m_y` int(11) DEFAULT NULL,
  `how_many` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `property_limit` int(11) NOT NULL,
  `employee_limit` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `price_key` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pakage`
--

INSERT INTO `pakage` (`id`, `pakage_title`, `pakage_objective`, `duration`, `d_m_y`, `how_many`, `cost`, `property_limit`, `employee_limit`, `status`, `price_key`) VALUES
(16, 'premium', '<p><span style=\"background-color: #e03e2d; color: #ffffff;\"><strong>This is premium package.</strong></span></p>', '6', 0, 0, 499, 2, 5, 1, 'price_1KTlzyAz8PdWFeeX5uXuwKcr'),
(17, 'premium3', '<p>e3rew</p>', '2', NULL, 0, 333, 33, 33, 0, 'price_1KTm8rAz8PdWFeeXyzcY5q9g'),
(18, 'Silver', '<p>Hi i am Silver</p>', '3', NULL, 0, 299, 1, 20, 1, 'price_1KTmAzAz8PdWFeeXRLEq2cBC'),
(19, 'Bronge', '<p>Bronge is always great</p>', '2', NULL, 0, 199, 15, 12, 1, 'price_1KTmC9Az8PdWFeeXXW7XbUuJ'),
(20, 'Gold', '<p>Hello lets see gold</p>', 'other', 1, 30, 99, 10, 10, 1, 'price_1KTmEdAz8PdWFeeX7JaQ2osF'),
(22, 'Daimond', '<p>1. new one.</p>\r\n<p>2. new two.</p>\r\n<p>2. new Three.</p>', '1', NULL, 0, 149, 12, 12, 1, 'price_1KU1leAz8PdWFeeXnqVsGqDV'),
(23, 'Molly Myers', '<p>1. new one&nbsp; w.</p>\r\n<p>2. new two w.</p>\r\n<p>2. new Three w.</p>', '2', NULL, 0, 222, 22, 22, 1, 'price_1KU2ESAz8PdWFeeXHcDLS6Fb');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `payment_status` varchar(200) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `payment_by` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `transaction_id` varchar(200) NOT NULL,
  `payment_date` varchar(100) NOT NULL,
  `details` text NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `payment_expire_date` varchar(100) NOT NULL,
  `package_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `payment_status`, `owner_id`, `payment_by`, `amount`, `transaction_id`, `payment_date`, `details`, `customer_id`, `payment_expire_date`, `package_id`) VALUES
(1, 'completed', 71, 'stripe', 100, 'cs_test_a15ogxgtFabAfzayn3WVWxyvwYidKXgdeqYpIyNO8bwe4xZsnXbVwInBhu', '2022-02-15', '{\"id\":\"cs_test_a15ogxgtFabAfzayn3WVWxyvwYidKXgdeqYpIyNO8bwe4xZsnXbVwInBhu\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":10000,\"amount_total\":10000,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_L9dBvh2qhn84mg\",\"customer_creation\":null,\"customer_details\":{\"email\":\"shukriti@sahajjo.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1644990192,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"payment\",\"payment_intent\":\"pi_3KTJoiAz8PdWFeeX453GcfNz\",\"payment_link\":null,\"payment_method_options\":{},\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":null,\"success_url\":\"http:\\/\\/poperty_management.com\\/payment_method_check\\/71\\/100\\/6\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_L9dBvh2qhn84mg', '2022-08-15', 0),
(2, 'completed', 71, 'stripe', 100, 'cs_test_a15ogxgtFabAfzayn3WVWxyvwYidKXgdeqYpIyNO8bwe4xZsnXbVwInBhu', '2022-02-15', '{\"id\":\"cs_test_a15ogxgtFabAfzayn3WVWxyvwYidKXgdeqYpIyNO8bwe4xZsnXbVwInBhu\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":10000,\"amount_total\":10000,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_L9dBvh2qhn84mg\",\"customer_creation\":null,\"customer_details\":{\"email\":\"shukriti@sahajjo.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1644990192,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"payment\",\"payment_intent\":\"pi_3KTJoiAz8PdWFeeX453GcfNz\",\"payment_link\":null,\"payment_method_options\":{},\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":null,\"success_url\":\"http:\\/\\/poperty_management.com\\/payment_method_check\\/71\\/100\\/6\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_L9dBvh2qhn84mg', '2022-08-15', 0),
(3, 'completed', 82, 'stripe', 100, 'cs_test_a1lEizxBjH5HsKy7oWR51rusi0Wi6HL697L0XvWCphZcJPZL3Py0dczXwN', '2022-02-15', '{\"id\":\"cs_test_a1lEizxBjH5HsKy7oWR51rusi0Wi6HL697L0XvWCphZcJPZL3Py0dczXwN\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":10000,\"amount_total\":10000,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_L9h3FMeFnQdEY2\",\"customer_creation\":null,\"customer_details\":{\"email\":\"test@gmail.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645004771,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"payment\",\"payment_intent\":\"pi_3KTNbrAz8PdWFeeX3Xa49074\",\"payment_link\":null,\"payment_method_options\":{},\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":null,\"success_url\":\"http:\\/\\/poperty_management.com\\/payment_method_check\\/82\\/500\\/01\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_L9h3FMeFnQdEY2', '2022-03-15', 0),
(4, 'completed', 83, 'stripe', 100, 'cs_test_a11Ty3wrmdAUFPvwJIEvG4Fdik2D94jNCD5q97JJFL11Lq76klyoOnEU9j', '2022-02-15', '{\"id\":\"cs_test_a11Ty3wrmdAUFPvwJIEvG4Fdik2D94jNCD5q97JJFL11Lq76klyoOnEU9j\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":10000,\"amount_total\":10000,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_L9hRi3UZi8QipE\",\"customer_creation\":null,\"customer_details\":{\"email\":\"ranjan-35-1457@diu.edu.bd\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645006405,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"payment\",\"payment_intent\":\"pi_3KTO2DAz8PdWFeeX4RdwIyDZ\",\"payment_link\":null,\"payment_method_options\":{},\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":null,\"success_url\":\"http:\\/\\/poperty_management.com\\/payment_method_check\\/83\\/500\\/01\\/14\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_L9hRi3UZi8QipE', '2022-03-15', 14),
(5, 'completed', 83, 'stripe', 100, 'cs_test_a11Ty3wrmdAUFPvwJIEvG4Fdik2D94jNCD5q97JJFL11Lq76klyoOnEU9j', '2022-02-15', '{\"id\":\"cs_test_a11Ty3wrmdAUFPvwJIEvG4Fdik2D94jNCD5q97JJFL11Lq76klyoOnEU9j\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":10000,\"amount_total\":10000,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_L9hRi3UZi8QipE\",\"customer_creation\":null,\"customer_details\":{\"email\":\"ranjan-35-1457@diu.edu.bd\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645006405,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"payment\",\"payment_intent\":\"pi_3KTO2DAz8PdWFeeX4RdwIyDZ\",\"payment_link\":null,\"payment_method_options\":{},\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":null,\"success_url\":\"http:\\/\\/poperty_management.com\\/payment_method_check\\/83\\/500\\/01\\/14\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_L9hRi3UZi8QipE', '2022-03-15', 14),
(6, 'completed', 83, 'stripe', 100, 'cs_test_a11Ty3wrmdAUFPvwJIEvG4Fdik2D94jNCD5q97JJFL11Lq76klyoOnEU9j', '2022-02-15', '{\"id\":\"cs_test_a11Ty3wrmdAUFPvwJIEvG4Fdik2D94jNCD5q97JJFL11Lq76klyoOnEU9j\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":10000,\"amount_total\":10000,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_L9hRi3UZi8QipE\",\"customer_creation\":null,\"customer_details\":{\"email\":\"ranjan-35-1457@diu.edu.bd\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645006405,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"payment\",\"payment_intent\":\"pi_3KTO2DAz8PdWFeeX4RdwIyDZ\",\"payment_link\":null,\"payment_method_options\":{},\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":null,\"success_url\":\"http:\\/\\/poperty_management.com\\/payment_method_check\\/83\\/500\\/01\\/14\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_L9hRi3UZi8QipE', '2022-03-15', 14),
(7, 'completed', 84, 'stripe', 100, 'cs_test_a1t1bBI5598gap327PvNxqKRgX8ekoTkSmzsvIOzywS0aUXbMhqY96xu8Z', '2022-02-15', '{\"id\":\"cs_test_a1t1bBI5598gap327PvNxqKRgX8ekoTkSmzsvIOzywS0aUXbMhqY96xu8Z\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":10000,\"amount_total\":10000,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_L9hffjWoCYI4ii\",\"customer_creation\":null,\"customer_details\":{\"email\":\"fb_user@gmail.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645007210,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"payment\",\"payment_intent\":\"pi_3KTOFCAz8PdWFeeX3zv1q6lk\",\"payment_link\":null,\"payment_method_options\":{},\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":null,\"success_url\":\"http:\\/\\/poperty_management.com\\/payment_method_check\\/84\\/500\\/01\\/14\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_L9hffjWoCYI4ii', '2022-03-15', 14),
(8, 'completed', 85, 'stripe', 100, 'cs_test_a14T6FPPQ2TRjZXZqzjWshVv3kkh3n918dvMRago7kMFYAUGwoIybiiOoe', '2022-02-15', '{\"id\":\"cs_test_a14T6FPPQ2TRjZXZqzjWshVv3kkh3n918dvMRago7kMFYAUGwoIybiiOoe\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":10000,\"amount_total\":10000,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_L9i7QSri1slPmx\",\"customer_creation\":null,\"customer_details\":{\"email\":\"dd@gmail.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645008941,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"payment\",\"payment_intent\":\"pi_3KTOh7Az8PdWFeeX3NVyX3k9\",\"payment_link\":null,\"payment_method_options\":{},\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":null,\"success_url\":\"http:\\/\\/poperty_management.com\\/payment_method_check\\/85\\/500\\/01\\/14\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_L9i7QSri1slPmx', '2022-03-15', 14),
(9, 'completed', 85, 'stripe', 100, 'cs_test_a15mbELW2LqhbVMmUeB5wDDNgcM7mwW5pgFaUCOTlzWM6uqFVP9Bkphq7J', '2022-02-15', '{\"id\":\"cs_test_a15mbELW2LqhbVMmUeB5wDDNgcM7mwW5pgFaUCOTlzWM6uqFVP9Bkphq7J\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":10000,\"amount_total\":10000,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_L9ibbNPRVbKM95\",\"customer_creation\":null,\"customer_details\":{\"email\":\"cexyn@mailinator.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645010693,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"payment\",\"payment_intent\":\"pi_3KTP9NAz8PdWFeeX3HuwMpYD\",\"payment_link\":null,\"payment_method_options\":{},\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":null,\"success_url\":\"http:\\/\\/poperty_management.com\\/payment_method_check\\/85\\/500\\/01\\/14\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_L9ibbNPRVbKM95', '2022-03-15', 14),
(10, 'completed', 82, 'stripe', 100, 'cs_test_a1GAs18z2uPR5xslfHrP5Xz7cUoSIPVwv4QdtsEKYxRZSL3cE5MXTHjR9p', '2022-02-15', '{\"id\":\"cs_test_a1GAs18z2uPR5xslfHrP5Xz7cUoSIPVwv4QdtsEKYxRZSL3cE5MXTHjR9p\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":10000,\"amount_total\":10000,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_L9lLDC36ak7zrx\",\"customer_creation\":null,\"customer_details\":{\"email\":\"dd@gmail.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645020884,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"payment\",\"payment_intent\":\"pi_3KTRnkAz8PdWFeeX1GNBAh6T\",\"payment_link\":null,\"payment_method_options\":{},\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":null,\"success_url\":\"http:\\/\\/poperty_management.com\\/payment_method_check\\/82\\/46\\/122\\/13\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_L9lLDC36ak7zrx', '2032-04-15', 13),
(11, 'completed', 88, 'stripe', 99, 'cs_test_a1OijiWYhlP1ilicDdsQLknNvUyvHjINWFhbUhRgoSYOdF9iypQviXmVMe', '2022-02-16', '{\"id\":\"cs_test_a1OijiWYhlP1ilicDdsQLknNvUyvHjINWFhbUhRgoSYOdF9iypQviXmVMe\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":9900,\"amount_total\":9900,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LA6XJqdZrTQdop\",\"customer_creation\":null,\"customer_details\":{\"email\":\"fb_user@gmail.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645099731,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KTmKAAz8PdWFeeXY3qw5b1A\",\"success_url\":\"http:\\/\\/poperty_management.com\\/payment_method_check\\/88\\/99\\/301\\/20\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LA6XJqdZrTQdop', '2047-03-16', 20),
(12, 'completed', 89, 'stripe', 299, 'cs_test_a16SN8Rze7qELsdoHD9tE5e7uWKCpMcKlVgcoA8VX0scXJs8JzaV2QEZoy', '2022-02-16', '{\"id\":\"cs_test_a16SN8Rze7qELsdoHD9tE5e7uWKCpMcKlVgcoA8VX0scXJs8JzaV2QEZoy\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":29900,\"amount_total\":29900,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LA8b7od4sjLE8t\",\"customer_creation\":null,\"customer_details\":{\"email\":\"admin@gmail.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645107440,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KToKHAz8PdWFeeXNQ5s8Hse\",\"success_url\":\"http:\\/\\/poperty_management.com\\/payment_method_check\\/89\\/299\\/3\\/18\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LA8b7od4sjLE8t', '2022-05-16', 18),
(13, 'completed', 90, 'stripe', 199, 'cs_test_a1gQCi3WvdGsMkqSMbI3lrmhjrX8hfSazslkXaes48e7QrQGr2SH8x2qSc', '2022-02-16', '{\"id\":\"cs_test_a1gQCi3WvdGsMkqSMbI3lrmhjrX8hfSazslkXaes48e7QrQGr2SH8x2qSc\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":19900,\"amount_total\":19900,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LA8fGrzEIt1aMI\",\"customer_creation\":null,\"customer_details\":{\"email\":\"shukriti@sahajjo.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645107518,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KToOMAz8PdWFeeXykOHfTEi\",\"success_url\":\"http:\\/\\/poperty_management.com\\/payment_method_check\\/90\\/199\\/2\\/19\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LA8fGrzEIt1aMI', '2022-04-16', 19),
(14, 'completed', 91, 'stripe', 199, 'cs_test_a1Ll3gJSLeEqp3zDAFSDVTVagGPT9v1409EANF1WQiLtyX0FG8n4lz11tP', '2022-02-16', '{\"id\":\"cs_test_a1Ll3gJSLeEqp3zDAFSDVTVagGPT9v1409EANF1WQiLtyX0FG8n4lz11tP\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":19900,\"amount_total\":19900,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LAMFiD09l7CT5n\",\"customer_creation\":null,\"customer_details\":{\"email\":\"admin@admin.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645158088,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KU1XOAz8PdWFeeX8mtSNh4I\",\"success_url\":\"http:\\/\\/poperty_management.com\\/payment_method_check\\/91\\/199\\/2\\/19\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LAMFiD09l7CT5n', '2022-04-16', 19),
(15, 'completed', 95, 'stripe', 222, 'cs_test_a1spH0c99fpgNr1a35WYD11B9tjVb2IyiWHc5rWW7uM5i5vcUsNLIKlKE6', '2022-02-16', '{\"id\":\"cs_test_a1spH0c99fpgNr1a35WYD11B9tjVb2IyiWHc5rWW7uM5i5vcUsNLIKlKE6\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":22200,\"amount_total\":22200,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LANSPNUXz77nsh\",\"customer_creation\":null,\"customer_details\":{\"email\":\"jewepig@mailinator.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645161137,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KU2h8Az8PdWFeeXDWNniEaK\",\"success_url\":\"http:\\/\\/poperty_management.com\\/payment_method_check\\/95\\/222\\/2\\/23\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LANSPNUXz77nsh', '2022-04-16', 23),
(16, 'completed', 95, 'stripe', 222, 'cs_test_a1spH0c99fpgNr1a35WYD11B9tjVb2IyiWHc5rWW7uM5i5vcUsNLIKlKE6', '2022-02-16', '{\"id\":\"cs_test_a1spH0c99fpgNr1a35WYD11B9tjVb2IyiWHc5rWW7uM5i5vcUsNLIKlKE6\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":22200,\"amount_total\":22200,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LANSPNUXz77nsh\",\"customer_creation\":null,\"customer_details\":{\"email\":\"jewepig@mailinator.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645161137,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KU2h8Az8PdWFeeXDWNniEaK\",\"success_url\":\"http:\\/\\/poperty_management.com\\/payment_method_check\\/95\\/222\\/2\\/23\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LANSPNUXz77nsh', '2022-04-16', 23),
(17, 'completed', 95, 'stripe', 222, 'cs_test_a1spH0c99fpgNr1a35WYD11B9tjVb2IyiWHc5rWW7uM5i5vcUsNLIKlKE6', '2022-02-17', '{\"id\":\"cs_test_a1spH0c99fpgNr1a35WYD11B9tjVb2IyiWHc5rWW7uM5i5vcUsNLIKlKE6\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":22200,\"amount_total\":22200,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LANSPNUXz77nsh\",\"customer_creation\":null,\"customer_details\":{\"email\":\"jewepig@mailinator.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645161137,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KU2h8Az8PdWFeeXDWNniEaK\",\"success_url\":\"http:\\/\\/poperty_management.com\\/payment_method_check\\/95\\/222\\/2\\/23\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LANSPNUXz77nsh', '2022-04-17', 23),
(18, 'completed', 96, 'stripe', 199, 'cs_test_a1N5P4oJBh30aVTFF7g12tzdP00mIqIHvrOIkzpKU9mtRECpRbodefTJ1E', '2022-02-17', '{\"id\":\"cs_test_a1N5P4oJBh30aVTFF7g12tzdP00mIqIHvrOIkzpKU9mtRECpRbodefTJ1E\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":19900,\"amount_total\":19900,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LAO0WE4akWDp6r\",\"customer_creation\":null,\"customer_details\":{\"email\":\"ranjan-35-1457@diu.edu.bd\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645164714,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KU3EIAz8PdWFeeXwm5ANhWD\",\"success_url\":\"http:\\/\\/poperty_management.com\\/payment_method_check\\/96\\/199\\/2\\/19\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LAO0WE4akWDp6r', '2022-04-17', 19),
(19, 'completed', 97, 'stripe', 99, 'cs_test_a1ApmNS8NdUN1K6wwHmTI126kbhqtJrsRuo2FvBZ5bh4mRXZvrviHCn2EN', '2022-02-17', '{\"id\":\"cs_test_a1ApmNS8NdUN1K6wwHmTI126kbhqtJrsRuo2FvBZ5bh4mRXZvrviHCn2EN\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":9900,\"amount_total\":9900,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LAO4cyfFKSnila\",\"customer_creation\":null,\"customer_details\":{\"email\":\"fb_user@gmail.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645164932,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KU3HtAz8PdWFeeX0iYjHgpO\",\"success_url\":\"http:\\/\\/poperty_management.com\\/payment_method_check\\/97\\/99\\/301\\/20\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LAO4cyfFKSnila', '2047-03-17', 20),
(20, 'completed', 98, 'stripe', 499, 'cs_test_a18Os5gg0tuPMgPO90vhkaqqkV4nLUysNGQhRXMs7qY2Y77IzXhBJO12wO', '2022-02-17', '{\"id\":\"cs_test_a18Os5gg0tuPMgPO90vhkaqqkV4nLUysNGQhRXMs7qY2Y77IzXhBJO12wO\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":49900,\"amount_total\":49900,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LAOE84MxHKNzrV\",\"customer_creation\":null,\"customer_details\":{\"email\":\"dd@gmail.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645165596,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KU3SFAz8PdWFeeXjiHl7jZu\",\"success_url\":\"http:\\/\\/poperty_management.com\\/payment_method_check\\/98\\/499\\/6\\/16\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LAOE84MxHKNzrV', '2022-08-17', 16),
(21, 'completed', 104, 'stripe', 99, 'cs_test_a1eqvR8ERXF64pwwOgmcRW9beQwPjNTRCzZNhbvEno3OrmZnPHvU71ul41', '2022-02-17', '{\"id\":\"cs_test_a1eqvR8ERXF64pwwOgmcRW9beQwPjNTRCzZNhbvEno3OrmZnPHvU71ul41\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":9900,\"amount_total\":9900,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LAUakfOnWCghAd\",\"customer_creation\":null,\"customer_details\":{\"email\":\"admin@admin.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645189246,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KU9bmAz8PdWFeeXa0mqD7GK\",\"success_url\":\"http:\\/\\/poperty_management.com\\/payment_method_check\\/104\\/99\\/301\\/20\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LAUakfOnWCghAd', '2047-03-17', 20),
(22, 'completed', 105, 'stripe', 149, 'cs_test_a1ReUnwMUh1Pqo4zPeu0WKwxl4HMXvE9KryNd4ntGaMdq88nH79n0gry9H', '2022-02-17', '{\"id\":\"cs_test_a1ReUnwMUh1Pqo4zPeu0WKwxl4HMXvE9KryNd4ntGaMdq88nH79n0gry9H\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":14900,\"amount_total\":14900,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LAUl5m8mIQ0E6C\",\"customer_creation\":null,\"customer_details\":{\"email\":\"dd@gmail.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645189872,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KU9llAz8PdWFeeX0BF24R0n\",\"success_url\":\"http:\\/\\/poperty_management.com\\/payment_method_check\\/105\\/149\\/1\\/22\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LAUl5m8mIQ0E6C', '2022-03-17', 22),
(23, 'completed', 106, 'stripe', 149, 'cs_test_a1Ieul9fNoGZWkEomLCDc1QHVyPlNGXeuFcJ02pUgdhyOqT2RjmKzAwj52', '2022-02-17', '{\"id\":\"cs_test_a1Ieul9fNoGZWkEomLCDc1QHVyPlNGXeuFcJ02pUgdhyOqT2RjmKzAwj52\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":14900,\"amount_total\":14900,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LAVE3Q9mpE72mu\",\"customer_creation\":null,\"customer_details\":{\"email\":\"dd@gmail.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645191656,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KUAESAz8PdWFeeX4bp8GPtA\",\"success_url\":\"http:\\/\\/poperty_management.com\\/payment_method_check\\/106\\/149\\/1\\/22\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LAVE3Q9mpE72mu', '2022-03-17', 22),
(24, 'completed', 109, 'stripe', 222, 'cs_test_a1fMdLVXA2LPWRSf1PPSbahKYHo5NOUJE25IiXYCLzRX8D7sGbXcXRf4b5', '2022-02-18', '{\"id\":\"cs_test_a1fMdLVXA2LPWRSf1PPSbahKYHo5NOUJE25IiXYCLzRX8D7sGbXcXRf4b5\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":22200,\"amount_total\":22200,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LB74VgU9XpsSqM\",\"customer_creation\":null,\"customer_details\":{\"email\":\"dd@gmail.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645332368,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KUkqTAz8PdWFeeXsDqrqK1L\",\"success_url\":\"http:\\/\\/poperty_management.com\\/admin\\/payment_method_check\\/109\\/222\\/2\\/23\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LB74VgU9XpsSqM', '2022-04-18', 23),
(25, 'completed', 109, 'stripe', 222, 'cs_test_a17JwFtyiJLsESnT2uk81m9YUtPXaPhnX7uveObz188NRbSCuBnBDEfPdH', '2022-02-18', '{\"id\":\"cs_test_a17JwFtyiJLsESnT2uk81m9YUtPXaPhnX7uveObz188NRbSCuBnBDEfPdH\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":22200,\"amount_total\":22200,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LB77V5bg8ne85H\",\"customer_creation\":null,\"customer_details\":{\"email\":\"dd@gmail.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645332539,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KUksnAz8PdWFeeXpYFgdcJ3\",\"success_url\":\"http:\\/\\/poperty_management.com\\/admin\\/payment_method_check\\/109\\/222\\/2\\/23\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LB77V5bg8ne85H', '2022-04-18', 23),
(26, 'completed', 113, 'stripe', 222, 'cs_test_a16pzo7dslEYdHpzw1dLIjLT0jA90pTOy8FdtHEQgHpstaFAD09Go2bs5g', '2022-02-18', '{\"id\":\"cs_test_a16pzo7dslEYdHpzw1dLIjLT0jA90pTOy8FdtHEQgHpstaFAD09Go2bs5g\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":22200,\"amount_total\":22200,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LB7fNjl9Ew56tW\",\"customer_creation\":null,\"customer_details\":{\"email\":\"dd@gmail.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645334444,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KUlQXAz8PdWFeeXwlFDIAnY\",\"success_url\":\"http:\\/\\/poperty_management.com\\/admin\\/payment_method_check\\/113\\/222\\/2\\/23\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LB7fNjl9Ew56tW', '2022-04-18', 23),
(27, 'completed', 114, 'stripe', 299, 'cs_test_a16Kuh83zWZ8G6dya3fe0lMP1YKUs4ZUOlXqrV8ihawzgsArxVtTll1n3C', '2022-02-19', '{\"id\":\"cs_test_a16Kuh83zWZ8G6dya3fe0lMP1YKUs4ZUOlXqrV8ihawzgsArxVtTll1n3C\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":29900,\"amount_total\":29900,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LBAYrTqN5Hzrxr\",\"customer_creation\":null,\"customer_details\":{\"email\":\"ranjan-35-1457@diu.edu.bd\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645345334,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KUoDHAz8PdWFeeXRadDRMPt\",\"success_url\":\"http:\\/\\/poperty_management.com\\/admin\\/payment_method_check\\/114\\/299\\/3\\/18\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LBAYrTqN5Hzrxr', '2022-05-19', 18),
(28, 'completed', 114, 'stripe', 299, 'cs_test_a1hJV80u50T5BrQ073oyDjZLDgiDuAjjQqL0UVHJTvm0ycFFY8Ao3ABFtY', '2022-02-19', '{\"id\":\"cs_test_a1hJV80u50T5BrQ073oyDjZLDgiDuAjjQqL0UVHJTvm0ycFFY8Ao3ABFtY\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":29900,\"amount_total\":29900,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LBB13yDpZ2iVaU\",\"customer_creation\":null,\"customer_details\":{\"email\":\"dd@gmail.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645347062,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KUofFAz8PdWFeeXGVLMziT8\",\"success_url\":\"http:\\/\\/poperty_management.com\\/admin\\/payment_method_check\\/114\\/299\\/3\\/18\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LBB13yDpZ2iVaU', '2022-05-19', 18),
(29, 'completed', 115, 'stripe', 299, 'cs_test_a1hFn651t5M03R7o3MmTpgdAlCqSF9mTMSTKzwqhU1SL2B5BtMlMv3WVSU', '2022-02-19', '{\"id\":\"cs_test_a1hFn651t5M03R7o3MmTpgdAlCqSF9mTMSTKzwqhU1SL2B5BtMlMv3WVSU\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":29900,\"amount_total\":29900,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LBBP3vwWkPCGcC\",\"customer_creation\":null,\"customer_details\":{\"email\":\"dd@gmail.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645348529,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KUp2tAz8PdWFeeXgKcBzii6\",\"success_url\":\"http:\\/\\/poperty_management.com\\/admin\\/payment_method_check\\/115\\/299\\/3\\/18\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LBBP3vwWkPCGcC', '2022-05-19', 18),
(30, 'completed', 116, 'stripe', 299, 'cs_test_a1bGUfD5umDa4sYQqptU6p2VtLqkcmOyOGc3E1zp7KOx63z4fkABCewv8G', '2022-02-19', '{\"id\":\"cs_test_a1bGUfD5umDa4sYQqptU6p2VtLqkcmOyOGc3E1zp7KOx63z4fkABCewv8G\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":29900,\"amount_total\":29900,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LBBgZ8vXPMQbgv\",\"customer_creation\":null,\"customer_details\":{\"email\":\"dd@gmail.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645349494,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KUpIxAz8PdWFeeXrQK6xkSH\",\"success_url\":\"http:\\/\\/poperty_management.com\\/admin\\/payment_method_check\\/116\\/299\\/3\\/18\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LBBgZ8vXPMQbgv', '2022-05-19', 18),
(31, 'completed', 117, 'stripe', 199, 'cs_test_a1WFhYK6Nv73F907tVIY5LzDE5IDVwkJJSgooVk9mtVqiQbC9ups16AqPm', '2022-02-19', '{\"id\":\"cs_test_a1WFhYK6Nv73F907tVIY5LzDE5IDVwkJJSgooVk9mtVqiQbC9ups16AqPm\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":19900,\"amount_total\":19900,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LBBnJwWioOmfkG\",\"customer_creation\":null,\"customer_details\":{\"email\":\"dd@gmail.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645349970,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KUpPyAz8PdWFeeXVw5crsq1\",\"success_url\":\"http:\\/\\/poperty_management.com\\/admin\\/payment_method_check\\/117\\/199\\/2\\/19\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LBBnJwWioOmfkG', '2022-04-19', 19);
INSERT INTO `payment` (`id`, `payment_status`, `owner_id`, `payment_by`, `amount`, `transaction_id`, `payment_date`, `details`, `customer_id`, `payment_expire_date`, `package_id`) VALUES
(32, 'completed', 118, 'stripe', 199, 'cs_test_a1xHGGYoBIglmtCXCYv1z6nhLaZsP1pkdDqfnq6ewO3vVpWAFe2hjbAY6i', '2022-02-19', '{\"id\":\"cs_test_a1xHGGYoBIglmtCXCYv1z6nhLaZsP1pkdDqfnq6ewO3vVpWAFe2hjbAY6i\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":19900,\"amount_total\":19900,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LBBwnaq5U6djJO\",\"customer_creation\":null,\"customer_details\":{\"email\":\"dd@gmail.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645350525,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KUpZ1Az8PdWFeeXFoItJ958\",\"success_url\":\"http:\\/\\/poperty_management.com\\/admin\\/payment_method_check\\/118\\/199\\/2\\/19\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LBBwnaq5U6djJO', '2022-04-19', 19),
(33, 'completed', 119, 'stripe', 222, 'cs_test_a1dXL852jjsqzeII9s1EJivK9MdZb7mzH1iNFv5g1mV49kfpo4eH2rjfKr', '2022-02-19', '{\"id\":\"cs_test_a1dXL852jjsqzeII9s1EJivK9MdZb7mzH1iNFv5g1mV49kfpo4eH2rjfKr\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":22200,\"amount_total\":22200,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LBC0UNC9IKCZE2\",\"customer_creation\":null,\"customer_details\":{\"email\":\"ranjan-35-1457@diu.edu.bd\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645350727,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KUpckAz8PdWFeeX5ObjUy2Q\",\"success_url\":\"http:\\/\\/poperty_management.com\\/admin\\/payment_method_check\\/119\\/222\\/2\\/23\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LBC0UNC9IKCZE2', '2022-04-19', 23),
(34, 'completed', 120, 'stripe', 299, 'cs_test_a1NhSQqGPSeTudIkhNzpNVG1EkFNVWF59sNrxZjI6GmZaWkb7QFf7sobny', '2022-02-19', '{\"id\":\"cs_test_a1NhSQqGPSeTudIkhNzpNVG1EkFNVWF59sNrxZjI6GmZaWkb7QFf7sobny\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":29900,\"amount_total\":29900,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LBCIIx10HgMXY6\",\"customer_creation\":null,\"customer_details\":{\"email\":\"dd@gmail.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645351819,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KUpuBAz8PdWFeeXw4YO9dPx\",\"success_url\":\"http:\\/\\/poperty_management.com\\/admin\\/payment_method_check\\/120\\/299\\/3\\/18\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LBCIIx10HgMXY6', '2022-05-19', 18),
(35, 'completed', 69, 'stripe', 222, 'cs_test_a1qRzNJ9eyJ16WfFKUvLeej795g6jkeqiv38OubF83B4UMhqrCUJIVyh8f', '2022-02-19', '{\"id\":\"cs_test_a1qRzNJ9eyJ16WfFKUvLeej795g6jkeqiv38OubF83B4UMhqrCUJIVyh8f\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":22200,\"amount_total\":22200,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LBEf5g3bKC4Oho\",\"customer_creation\":null,\"customer_details\":{\"email\":\"dd@gmail.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645360660,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KUsCOAz8PdWFeeXX3iwzrf7\",\"success_url\":\"http:\\/\\/poperty_management.com\\/admin\\/payment_method_check\\/69\\/222\\/2\\/23\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LBEf5g3bKC4Oho', '2022-04-19', 23),
(36, 'completed', 128, 'stripe', 199, 'cs_test_a1Xb94dQPFqDBePi2PPDJX8mBytMDQTPwf6DNjGTlAOrb77W4JKafFVTzq', '2022-02-19', '{\"id\":\"cs_test_a1Xb94dQPFqDBePi2PPDJX8mBytMDQTPwf6DNjGTlAOrb77W4JKafFVTzq\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":19900,\"amount_total\":19900,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LBFIfx8TLOZ1Za\",\"customer_creation\":null,\"customer_details\":{\"email\":\"dd@gmail.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645363005,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KUsoKAz8PdWFeeXNTIkk6kO\",\"success_url\":\"http:\\/\\/poperty_management.com\\/admin\\/payment_method_check\\/128\\/199\\/2\\/19\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LBFIfx8TLOZ1Za', '2022-04-19', 19),
(37, 'completed', 130, 'stripe', 222, 'cs_test_a1AUfEpaTB70hwSkXVL2LYlbGdEPjtHHUJkPuidKYdbPuehFO1hukTFoxm', '2022-02-19', '{\"id\":\"cs_test_a1AUfEpaTB70hwSkXVL2LYlbGdEPjtHHUJkPuidKYdbPuehFO1hukTFoxm\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":22200,\"amount_total\":22200,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LBU7sp3Gvhwp74\",\"customer_creation\":null,\"customer_details\":{\"email\":\"dd@gmail.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645418106,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KV79AAz8PdWFeeX4fqr9i2f\",\"success_url\":\"http:\\/\\/poperty_management.com\\/admin\\/payment_method_check\\/130\\/222\\/2\\/23\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LBU7sp3Gvhwp74', '2022-04-19', 23),
(38, 'completed', 130, 'stripe', 149, 'cs_test_a1X0ywLCuVf1YeAgGDCkHAfVzn15nAoW3xrOKYzPS1Msj1vNcQB21g2SuN', '2022-02-19', '{\"id\":\"cs_test_a1X0ywLCuVf1YeAgGDCkHAfVzn15nAoW3xrOKYzPS1Msj1vNcQB21g2SuN\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":14900,\"amount_total\":14900,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LBUZwKk870A0P7\",\"customer_creation\":null,\"customer_details\":{\"email\":\"dd@gmail.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645419787,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KV7a0Az8PdWFeeX9i4Qu7qv\",\"success_url\":\"http:\\/\\/poperty_management.com\\/admin\\/change_payment_confirm\\/130\\/149\\/1\\/22\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LBUZwKk870A0P7', '2022-03-19', 22),
(39, 'completed', 130, 'stripe', 149, 'cs_test_a1X0ywLCuVf1YeAgGDCkHAfVzn15nAoW3xrOKYzPS1Msj1vNcQB21g2SuN', '2022-02-19', '{\"id\":\"cs_test_a1X0ywLCuVf1YeAgGDCkHAfVzn15nAoW3xrOKYzPS1Msj1vNcQB21g2SuN\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":14900,\"amount_total\":14900,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LBUZwKk870A0P7\",\"customer_creation\":null,\"customer_details\":{\"email\":\"dd@gmail.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645419787,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KV7a0Az8PdWFeeX9i4Qu7qv\",\"success_url\":\"http:\\/\\/poperty_management.com\\/admin\\/change_payment_confirm\\/130\\/149\\/1\\/22\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LBUZwKk870A0P7', '2022-03-19', 22),
(40, 'completed', 130, 'stripe', 149, 'cs_test_a1X0ywLCuVf1YeAgGDCkHAfVzn15nAoW3xrOKYzPS1Msj1vNcQB21g2SuN', '2022-02-19', '{\"id\":\"cs_test_a1X0ywLCuVf1YeAgGDCkHAfVzn15nAoW3xrOKYzPS1Msj1vNcQB21g2SuN\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":14900,\"amount_total\":14900,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LBUZwKk870A0P7\",\"customer_creation\":null,\"customer_details\":{\"email\":\"dd@gmail.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645419787,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KV7a0Az8PdWFeeX9i4Qu7qv\",\"success_url\":\"http:\\/\\/poperty_management.com\\/admin\\/change_payment_confirm\\/130\\/149\\/1\\/22\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LBUZwKk870A0P7', '2022-03-19', 22),
(41, 'completed', 130, 'stripe', 99, 'cs_test_a1PqoE3IohE2uYOv7ABRmBymbLJ4eHjOkNKIqgpqPZwJZxZfafh6a75GGL', '2022-02-19', '{\"id\":\"cs_test_a1PqoE3IohE2uYOv7ABRmBymbLJ4eHjOkNKIqgpqPZwJZxZfafh6a75GGL\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":9900,\"amount_total\":9900,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LBUg26CK5FvT1O\",\"customer_creation\":null,\"customer_details\":{\"email\":\"fb_user@gmail.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645420212,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KV7gtAz8PdWFeeXLjhkjkWF\",\"success_url\":\"http:\\/\\/poperty_management.com\\/admin\\/change_payment_confirm\\/130\\/99\\/301\\/20\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LBUg26CK5FvT1O', '2047-03-19', 20),
(42, 'completed', 130, 'stripe', 222, 'cs_test_a1X5TLJZI86m3h6IrMIzwqmxDzbzTEehESGU37VJ98JSe2tw6RMx5rDfCF', '2022-02-19', '{\"id\":\"cs_test_a1X5TLJZI86m3h6IrMIzwqmxDzbzTEehESGU37VJ98JSe2tw6RMx5rDfCF\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":22200,\"amount_total\":22200,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"currency\":\"usd\",\"customer\":\"cus_LBUhkAVMhRx8Ja\",\"customer_creation\":null,\"customer_details\":{\"email\":\"dd@gmail.com\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1645420294,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1KV7iBAz8PdWFeeXQuU8l1St\",\"success_url\":\"http:\\/\\/poperty_management.com\\/admin\\/change_payment_confirm\\/130\\/222\\/2\\/23\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_LBUhkAVMhRx8Ja', '2022-04-19', 23),
(43, 'completed', 133, 'stripe', 499, 'cs_test_a1ktk4BNbghZa9lpM3WLaiOwd342F6fl64707bW1DGwlhFo4HiBzCKxiuW', '2022-10-01', '{\"id\":\"cs_test_a1ktk4BNbghZa9lpM3WLaiOwd342F6fl64707bW1DGwlhFo4HiBzCKxiuW\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":49900,\"amount_total\":49900,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"created\":1664601148,\"currency\":\"usd\",\"customer\":\"cus_MX254c8o85sx2E\",\"customer_creation\":null,\"customer_details\":{\"address\":{\"city\":null,\"country\":\"BD\",\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":\"qulicanewo@mailinator.com\",\"name\":\"Visa\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1664687548,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_collection\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1Lny18Az8PdWFeeXJyqu63SJ\",\"success_url\":\"http:\\/\\/poperty_management.com\\/admin\\/payment_method_check\\/133\\/499\\/6\\/16\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_MX254c8o85sx2E', '2023-04-01', 16),
(44, 'completed', 134, 'stripe', 149, 'cs_test_a1gb5c9bC4KgtO7wvdcGXOc87VHti8GDliAN0QJjNC140QeydCHfPLpEOX', '2022-10-01', '{\"id\":\"cs_test_a1gb5c9bC4KgtO7wvdcGXOc87VHti8GDliAN0QJjNC140QeydCHfPLpEOX\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":14900,\"amount_total\":14900,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"created\":1664601461,\"currency\":\"usd\",\"customer\":\"cus_MX29lytEJWNEpq\",\"customer_creation\":null,\"customer_details\":{\"address\":{\"city\":null,\"country\":\"BD\",\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":\"hepupacaqi@mailinator.com\",\"name\":\"Visa\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1664687861,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_collection\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1Lny5bAz8PdWFeeXC2c4KiBd\",\"success_url\":\"http:\\/\\/poperty_management.com\\/admin\\/payment_method_check\\/134\\/149\\/1\\/22\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_MX29lytEJWNEpq', '2022-11-01', 22),
(45, 'completed', 35, 'stripe', 99, 'cs_test_a1e5U5Nu3n6RuLcyYZFJrXOgPFh8KnJaQFQ8iSumMUOmnIRF3leDLbkeUP', '2022-10-08', '{\"id\":\"cs_test_a1e5U5Nu3n6RuLcyYZFJrXOgPFh8KnJaQFQ8iSumMUOmnIRF3leDLbkeUP\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":9900,\"amount_total\":9900,\"automatic_tax\":{\"enabled\":false,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http:\\/\\/poperty_management.com\",\"client_reference_id\":null,\"consent\":null,\"consent_collection\":null,\"created\":1665237539,\"currency\":\"usd\",\"customer\":\"cus_MZn90AZoFQOnme\",\"customer_creation\":null,\"customer_details\":{\"address\":{\"city\":null,\"country\":\"BD\",\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":\"shouvodas35@gmail.com\",\"name\":\"Visa\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1665323939,\"livemode\":false,\"locale\":null,\"metadata\":{},\"mode\":\"subscription\",\"payment_intent\":null,\"payment_link\":null,\"payment_method_collection\":null,\"payment_method_options\":null,\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping\":null,\"shipping_address_collection\":null,\"shipping_options\":[],\"shipping_rate\":null,\"status\":\"complete\",\"submit_type\":null,\"subscription\":\"sub_1LqdZAAz8PdWFeeX2jmEOgTw\",\"success_url\":\"http:\\/\\/poperty_management.com\\/admin\\/payment_method_check\\/35\\/99\\/301\\/20\\/{CHECKOUT_SESSION_ID}\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"url\":null}', 'cus_MZn90AZoFQOnme', '2047-11-08', 20);

-- --------------------------------------------------------

--
-- Table structure for table `popertieimages`
--

CREATE TABLE `popertieimages` (
  `id` int(11) NOT NULL,
  `popertyid` int(5) NOT NULL,
  `multiimage` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `poperties`
--

CREATE TABLE `poperties` (
  `id` int(11) NOT NULL,
  `propertyname` varchar(50) NOT NULL,
  `streetads` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `owner` int(5) NOT NULL,
  `image` varchar(50) NOT NULL,
  `company_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `poperties`
--

INSERT INTO `poperties` (`id`, `propertyname`, `streetads`, `city`, `state`, `zip`, `country`, `owner`, `image`, `company_id`, `created_at`, `updated_at`) VALUES
(12, 'Rogan Riddle', 'Non aut nisi cupidit', 'Doloribus cupiditate', 'Est cupidatat sit ', '19554', 'BH', 1, '1637138553_06c6aae9e6078cc73c31.png', 1, '2021-11-17 08:42:33', '2021-11-22 09:20:46'),
(13, 'Hedy Hooper', 'Adipisicing commodo ', 'In do aute qui ut of', 'Omnis tempor sit ma', '36009', 'AZ', 1, '1637139435_54d5833465a4b05d3e9f.png', 1, '2021-11-17 08:57:15', '2021-11-22 09:20:43'),
(14, 'Isaiah Carpenter', 'Expedita sit at atq', 'Voluptatibus quae co', 'Molestiae ut consequ', '45299', 'BD', 1, '1637139454_9d58305e0767abe2adb9.png', 1, '2021-11-17 08:57:34', '2021-11-22 09:20:39'),
(15, 'Oren Savage', 'Odio quia voluptatem', 'Dolores iure quas vo', 'Doloremque id repreh', '78973', 'KH', 1, '1637141320_039e3449bd5c1f177867.png', 1, '2021-11-17 09:28:40', '2021-11-22 09:20:23'),
(16, 'Emi Duncan', 'Maxime possimus ill', 'Voluptate sunt conse', 'Autem mollit impedit', '24470', 'AZ', 1, '1637142218_ade168a1964afa915fae.png', 1, '2021-11-17 09:43:38', '2021-11-22 09:20:20'),
(17, 'Clark Russo', 'Vero tempora velit ', 'Id duis possimus of', 'Minima dolor ab dolo', '91824', 'AZ', 1, '1637142268_388cb0cd2f97f6eba3e2.png', 1, '2021-11-17 09:44:28', '2021-11-22 09:20:16'),
(18, 'Clark Russo', 'Vero tempora velit ', 'Id duis possimus of', 'Minima dolor ab dolo', '91824', 'AZ', 1, '1637142326_2c215d3b34770d71a65b.png', 1, '2021-11-17 09:45:26', '2021-11-22 09:20:10'),
(19, 'Knox Stephenson', 'Dolorem dolor cumque', 'Consequatur praesent', 'In ullamco recusanda', '33922', 'AZ', 1, '1637142481_ec1692530a077ab2c452.png', 1, '2021-11-17 09:48:01', '2021-11-22 09:20:01'),
(20, 'Harding Conrad', 'Quo est officia ips', 'Qui sed molestiae re', 'Dolores recusandae ', '91205', 'KH', 4, 'empty_image.jpg', 4, '2021-11-21 08:48:22', '2021-11-22 09:20:53'),
(21, 'Kathleen Moses', 'In a cupiditate exer', 'Quia maxime non rati', 'Maxime cumque magni ', '16803', 'AZ', 5, 'empty_image.jpg', 5, '2021-11-22 06:41:39', '2021-11-22 09:20:59'),
(22, 'Jermaine Lyons', 'Commodo ut cupiditat', 'Architecto tempore ', 'Ad error modi quaera', '90967', 'BD', 5, 'empty_image.jpg', 5, '2021-11-22 06:42:20', '2021-11-22 09:21:23'),
(38, 'Logan Potter', 'Magnam nulla fuga S', 'Reprehenderit aut e', 'Unde fuga Quia cupi', '40629', 'BD', 38, 'empty_image.jpg', 22, '2021-12-05 09:13:12', '2021-12-05 09:13:12'),
(39, 'Mia Brennan', 'Esse nesciunt eius', 'Mollit dignissimos d', 'Quod Nam nobis ipsam', '33412', 'KH', 38, 'empty_image.jpg', 22, '2021-12-05 09:14:20', '2021-12-05 09:14:20'),
(40, 'Hayes Clayton', 'Sed veritatis esse ', 'Reprehenderit aut si', 'Quia enim autem cons', '79155', 'BH', 39, 'empty_image.jpg', 22, '2021-12-05 09:41:09', '2021-12-05 09:41:09'),
(41, 'Ifeoma Bass', 'Quis id illum incid', 'Est explicabo Et po', 'Corrupti id volupta', '85876', 'BH', 40, 'empty_image.jpg', 23, '2022-01-31 08:52:25', '2022-01-31 08:52:25'),
(42, 'Amery Salinas', 'Sed aut eos adipisi', 'Dolor quo dolores et', 'Qui est aute vitae e', '72812', 'KH', 46, 'empty_image.jpg', 24, '2022-02-06 09:35:38', '2022-02-06 09:35:38'),
(43, 'Laurel Weiss', 'Excepturi sit conseq', 'Ratione nisi incidun', 'Inventore qui invent', '50089', 'KH', 46, 'empty_image.jpg', 46, '2022-02-06 09:38:18', '2022-02-06 09:38:18'),
(44, 'Yoko Lambert', 'Maiores dignissimos ', 'Mollitia enim impedi', 'Tempore eaque amet', '72612', 'KH', 49, '1644141430_c8a3ae29f07770e597f6.jpg', 25, '2022-02-06 09:57:10', '2022-02-06 09:57:10'),
(45, 'Ivy Hess', 'Alias harum delectus', 'Quidem dolor consect', 'Quidem nesciunt sin', '17614', 'AZ', 50, '1644141674_13a5f30000e036fbffca.jpg', 26, '2022-02-06 10:01:14', '2022-02-06 10:01:14'),
(46, 'Lydia Daniel', 'Praesentium minus od', 'Iure labore fugiat ', 'Aut similique conseq', '27605', 'BD', 50, 'empty_image.jpg', 26, '2022-02-06 10:11:33', '2022-02-06 10:11:33'),
(47, 'Cooper Smith', 'Aut enim non expedit', 'Commodo sint numqua', 'Sit dolor consectet', '98255', 'BH', 52, '1644213865_76547b6318f02a944d49.jpg', 27, '2022-02-07 06:04:25', '2022-02-07 06:04:25'),
(48, 'George Sims', 'Quo veniam aspernat', 'Dignissimos ex ea qu', 'Non doloribus sint d', '74084', 'AZ', 56, 'empty_image.jpg', 28, '2022-02-08 05:37:44', '2022-02-08 05:37:44'),
(49, 'Colt Peters', 'Sunt est reprehende', 'Officiis dolorem dol', 'Possimus est rerum ', '22552', 'AZ', 35, '1644303275_2c34cd3f30445cbd1efd.jpg', 20, '2022-02-08 06:54:35', '2022-02-08 06:54:35'),
(50, 'Rhea Carroll', 'Exercitationem place', 'Duis vel voluptas fu', 'Lorem repellendus D', '38389', 'AZ', 56, 'empty_image.jpg', 28, '2022-02-08 08:22:52', '2022-02-08 08:22:52'),
(51, 'Kasimir Weaver', 'Ex nemo officia comm', 'Sint est aut esse ', 'Omnis tempora quidem', '88565', 'BD', 61, '1644319397_9b3bbf444bcab358008a.jpg', 29, '2022-02-08 11:23:17', '2022-02-08 11:23:17'),
(52, 'Eve Burns', 'Autem incidunt dolo', 'Ut qui nulla sunt ip', 'Anim maxime corrupti', '58654', 'BD', 62, 'empty_image.jpg', 30, '2022-02-08 12:27:11', '2022-02-08 12:27:11'),
(53, 'Hayes Terry', 'Quia ut in qui in op', 'Cum quam rerum conse', 'Dolores aperiam vel ', '41206', 'BH', 62, 'empty_image.jpg', 30, '2022-02-08 12:27:26', '2022-02-08 12:27:26'),
(54, 'Lyle Grimes', 'Animi sed tenetur a', 'Nulla aliquip error ', 'Cillum omnis ea Nam ', '51578', 'BD', 62, 'empty_image.jpg', 30, '2022-02-08 12:27:40', '2022-02-08 12:27:40'),
(55, 'Alfreda Livingston', 'Commodi labore aut n', 'Autem qui cupiditate', 'Obcaecati et iure te', '49510', 'AZ', 62, 'empty_image.jpg', 30, '2022-02-08 12:28:17', '2022-02-08 12:28:17'),
(56, 'Hyatt Knight', 'Tempor aperiam est c', 'Et esse dolore commo', 'Non voluptates quis ', '57778', 'AZ', 68, '1644489193_b45142add595fac6d24d.jpg', 31, '2022-02-10 10:33:13', '2022-02-10 10:33:13'),
(57, 'Todd Battle', 'Qui voluptas asperio', 'Ea qui voluptates su', 'Velit sed quidem exc', '60829', 'AZ', 76, '1644749419_44de11373c4758899b84.png', 32, '2022-02-13 10:50:19', '2022-02-13 10:50:19'),
(58, 'Aladdin Robinson', 'Mollitia vero ut asp', 'Impedit minima nost', 'Doloremque sed quis ', '51096', 'BH', 76, '1644749468_1cabb8b3b25c3c6820d4.jpg', 32, '2022-02-13 10:51:08', '2022-02-13 10:51:08'),
(59, 'Sara Castillo', 'Minima soluta odit c', 'Qui odit dolore alia', 'Veniam magni labori', '82265', 'BD', 85, '1644924401_9b5b4ec8c33b65c4d886.jpg', 33, '2022-02-15 11:26:41', '2022-02-15 11:26:41'),
(60, 'Ruby Daugherty', 'Ea aliqua Voluptatu', 'Praesentium ut dolor', 'Odio quia assumenda ', '70520', 'BH', 85, '1644924803_f887c3f981237c33febc.png', 33, '2022-02-15 11:33:23', '2022-02-15 11:33:23'),
(61, 'Ruby Daugherty', 'Ea aliqua Voluptatu', 'Praesentium ut dolor', 'Odio quia assumenda ', '70520', 'BH', 85, '1644926737_b08023fc0c1ed6bd2940.png', 33, '2022-02-15 12:05:37', '2022-02-15 12:05:37'),
(62, 'Marsden Cote', 'Nulla dignissimos qu', 'Aperiam deleniti sit', 'Porro qui omnis sunt', '85984', 'KH', 82, '1644934573_39fa97c8993a531c32b8.jpg', 35, '2022-02-15 14:16:13', '2022-02-15 14:16:13'),
(63, 'Bianca Hutchinson', 'Labore et dolore ali', 'Eos vero vel quod c', 'Eu nemo vitae eum as', '10799', 'BH', 88, 'empty_image.jpg', 36, '2022-02-16 12:10:53', '2022-02-16 12:10:53'),
(64, 'Paloma Aguilar', 'Optio id saepe odit', 'Porro dolor ex labor', 'Laboris omnis dolore', '48142', 'KH', 91, 'empty_image.jpg', 37, '2022-02-17 04:27:40', '2022-02-17 04:27:40'),
(65, 'Robin Powers', 'Ea cupiditate mollit', 'Veniam sint volupta', 'Veniam officiis ali', '18338', 'KH', 98, 'empty_image.jpg', 38, '2022-02-17 10:59:44', '2022-02-17 10:59:44'),
(76, 'Lane Lynch', 'Sed minus consequatu', 'Fugiat laborum Mai', 'Est illo nisi minim ', '26935', 'BH', 98, 'empty_image.jpg', 38, '2022-02-17 12:07:50', '2022-02-17 12:07:50'),
(77, 'Julie Cunningham', 'Qui sunt totam sint', 'Voluptatem cupidatat', 'Eveniet veritatis c', '81307', 'KH', 105, 'empty_image.jpg', 39, '2022-02-17 13:15:10', '2022-02-17 13:15:10'),
(78, 'Dora Vaughan', 'Possimus nostrum al', 'A qui est ut rerum ', 'Sed voluptatem nisi ', '80627', 'KH', 109, 'empty_image.jpg', 40, '2022-02-19 04:55:58', '2022-02-19 04:55:58'),
(79, 'Blair Gay', 'Aut tempor pariatur', 'Eius maiores amet n', 'Ipsam saepe voluptat', '91610', 'BD', 113, 'empty_image.jpg', 41, '2022-02-19 05:24:45', '2022-02-19 05:24:45'),
(80, 'Scarlett Berg', 'Illo Nam quos distin', 'Ut laborum excepteur', 'Sit elit amet cupi', '73431', 'BH', 115, 'empty_image.jpg', 42, '2022-02-19 09:16:28', '2022-02-19 09:16:28'),
(81, 'Jakeem Hamilton', 'Dolore provident di', 'Nihil consequatur m', 'Aspernatur aliquam o', '93678', 'BH', 116, 'empty_image.jpg', 43, '2022-02-19 09:32:59', '2022-02-19 09:32:59'),
(82, 'Dean Moon', 'Qui tempor ad offici', 'Dolorum et porro nis', 'Aut rerum rerum saep', '87560', 'KH', 117, 'empty_image.jpg', 44, '2022-02-19 09:40:13', '2022-02-19 09:40:13'),
(83, 'Merritt Bates', 'Id dolores ipsum es', 'Non quis quo autem e', 'In possimus ipsum ', '62625', 'BD', 118, 'empty_image.jpg', 45, '2022-02-19 09:49:47', '2022-02-19 09:49:47'),
(84, 'Nichole Drake', 'Doloribus cumque pla', 'In asperiores est a', 'Deleniti esse ex lab', '50697', 'AZ', 119, 'empty_image.jpg', 46, '2022-02-19 10:08:42', '2022-02-19 10:08:42'),
(85, 'Jocelyn Sexton', 'Qui aut qui doloremq', 'Aliquip sed incididu', 'In inventore excepte', '83212', 'BH', 120, 'empty_image.jpg', 47, '2022-02-19 10:11:30', '2022-02-19 10:11:30'),
(86, 'Lev Brewer', 'Pariatur Aut est v', 'Velit optio ipsum m', 'Itaque fugit sapien', '17770', 'KH', 125, 'empty_image.jpg', 52, '2022-02-19 10:51:30', '2022-02-19 10:51:30'),
(87, 'Serena Jones', 'Sequi eiusmod dolore', 'Esse voluptas fugit', 'Sint illum perferen', '61983', 'BH', 125, 'empty_image.jpg', 52, '2022-02-19 10:51:40', '2022-02-19 10:51:40'),
(88, 'Shelby Barnett', 'In molestiae facilis', 'Consequatur dolorem ', 'Et praesentium eaque', '16224', 'KH', 124, 'empty_image.jpg', 51, '2022-02-19 10:53:58', '2022-02-19 10:53:58'),
(89, 'Brenden Stark', 'Commodo quis volupta', 'Nisi dolore hic offi', 'Voluptates incididun', '39161', 'KH', 128, 'empty_image.jpg', 53, '2022-02-19 13:17:37', '2022-02-19 13:17:37'),
(90, 'Fiona Hahn', 'Sit blanditiis sint', 'Et cum quia ab quis', 'Quasi voluptatem Ac', '46951', 'AZ', 130, 'empty_image.jpg', 54, '2022-02-20 04:36:04', '2022-02-20 04:36:04'),
(91, 'Ayanna Gibbs', 'Repudiandae eum qui ', 'Irure et in cum qui ', 'Excepturi ipsum aut', '20009', 'AZ', 133, 'empty_image.jpg', 55, '2022-10-01 05:14:04', '2022-10-01 05:14:04'),
(92, 'Wallace Oliver', 'Itaque ut id eum ame', 'Dolorem enim sit ad', 'Sed temporibus liber', '74104', 'KH', 134, 'empty_image.jpg', 56, '2022-10-01 05:18:35', '2022-10-01 05:18:35');

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

CREATE TABLE `rent` (
  `id` int(100) NOT NULL,
  `floor_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `month` int(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `renter_name` varchar(100) NOT NULL,
  `tenent_id` int(100) NOT NULL,
  `tenent_image` varchar(500) NOT NULL,
  `rent` varchar(100) NOT NULL,
  `water_bill` varchar(100) NOT NULL,
  `gas_bill` varchar(100) NOT NULL,
  `electric_bill` varchar(100) NOT NULL,
  `security_bill` varchar(100) NOT NULL,
  `utility_bill` varchar(100) NOT NULL,
  `other_bill` varchar(100) NOT NULL,
  `total_rent` varchar(100) NOT NULL,
  `issue_date` varchar(100) NOT NULL,
  `bill_paid_date` varchar(100) NOT NULL,
  `bill_status` int(100) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rent`
--

INSERT INTO `rent` (`id`, `floor_id`, `unit_id`, `month`, `year`, `renter_name`, `tenent_id`, `tenent_image`, `rent`, `water_bill`, `gas_bill`, `electric_bill`, `security_bill`, `utility_bill`, `other_bill`, `total_rent`, `issue_date`, `bill_paid_date`, `bill_status`, `property_id`) VALUES
(18, 1, 1, 3, '2022', 'Tate Fischer', 1, '1638424588_1f1930ce2cc76fbfc355.png', '7000', '100', '300', '200', '200', '400', '300', '1500', '2022-01-30', '2022-02-28', 0, 17),
(19, 1, 1, 5, '2022', 'Tate Fischer', 1, '1638424588_1f1930ce2cc76fbfc355.png', '7000', '0.00', '0.00', '800', '100', '0.00', '0.00', '900', '2022-05-03', '2022-02-03', 0, 17),
(23, 1, 1, 8, '2022', 'Tate Fischer', 1, '1638424588_1f1930ce2cc76fbfc355.png', '7000', '250', '800', '600', '900', '300', '200', '3050', '2022-08-10', '2022-02-20', 0, 17),
(24, 1, 1, 9, '2022', 'Tate Fischer', 1, '1638424588_1f1930ce2cc76fbfc355.png', '7000', '500', '800', '600', '900', '300', '200', '3300', '2022-09-23', '2022-02-15', 0, 17);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(100) NOT NULL,
  `role_name` varchar(100) NOT NULL,
  `user_access` text NOT NULL,
  `status` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `asName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `user_access`, `status`, `company_id`, `property_id`, `asName`) VALUES
(9, 'employee', '{\"poperty_add\":null,\"poperty_images\":null,\"visitordetails\":null,\"complaindetails\":null,\"floor_l\":null,\"floor_a\":null,\"floor_e\":null,\"floor_d\":null,\"unit_l\":\"unit_list\",\"unit_a\":\"unit_add\",\"unit_e\":\"unit_edit\",\"unit_d\":\"unit_delete\",\"owner_l\":\"ownerlist\",\"owner_a\":\"owneradd\",\"owner_e\":\"ownerupdate\",\"owner_d\":\"ownerdelete\",\"indivusualowner\":null,\"tenant_l\":\"tenant_list\",\"tenant_a\":\"tenant_add\",\"tenant_e\":\"tenant_edit\",\"tenant_d\":\"tenant_delete\",\"tenant_view\":null,\"tenant_depand\":null,\"employee_l\":\"employeelist\",\"employee_a\":\"employeeadd\",\"employee_e\":\"employeeupdate\",\"employee_d\":\"employeedelete\",\"indivisualemployee\":null,\"emp_salary_addandlist\":\"employeesalary\",\"getindivisualemployee\":\"getindivisualemployee\",\"emp_salaery_e\":\"employeesalaryupdate\",\"emp_salaery_d\":\"employeesalarydelete\",\"indivisualemployeesalary\":null,\"employeeleave\":null,\"rent_l\":\"rentlist\",\"rent_a\":\"addrent\",\"gettenent\":null,\"rent_e\":\"rentupdate\",\"rent_d\":\"rentdelete\",\"indivusualrent\":null,\"rentinvoice\":null,\"printrentinvoice\":null,\"utility_l\":\"ownerutilitylist\",\"utility_a\":\"ownerutilityadd\",\"getunits\":null,\"getowner\":null,\"utility_e\":\"ownerutilityupdate\",\"utility_d\":\"ownerutilitydelete\",\"indivusualutility\":null,\"cost_l\":\"maintenance_list\",\"cost_a\":\"maintenance_add\",\"cost_e\":\"maintenance_edit\",\"cost_d\":\"maintenance_delete\",\"maintenance_view\":null,\"committee_l\":\"committee_list\",\"committee_a\":\"committee_add\",\"committee_e\":\"committee_edit\",\"committee_d\":\"committee_delete\",\"committee_view\":null,\"fund_l\":\"fundlist\",\"fund_a\":\"addfund\",\"fund_e\":\"fundupdate\",\"fund_d\":\"funddelete\",\"indivisualfund\":null,\"invoice\":null,\"printfundinvoice\":null,\"bill_l\":\"billdipositlist\",\"bill_a\":\"addbill\",\"bill_e\":\"billupdate\",\"bill_d\":\"billdelete\",\"indivisualbill\":null,\"complain_l\":\"complain_list\",\"complain_a\":\"complain_add\",\"complain_e\":\"complain_edit\",\"complain_d\":\"complain_delete\",\"complain_view\":null,\"complain_solution\":null,\"solution_add\":null,\"assign_employee\":null,\"get_employee\":null,\"visitor_l\":\"visitor_list\",\"visitor_a\":\"visitor_add\",\"visitor_e\":\"visitor_edit\",\"visitor_d\":\"visitor_delete\",\"visitor_info\":null,\"meeting_l\":\"meeting_list\",\"meeting_a\":\"meeting_add\",\"meeting_e\":\"meeting_edit\",\"meeting_d\":\"meeting_delete\",\"meeting_view\":null,\"notice_addlist\":\"addnotice\",\"notice_e\":\"noticeupdate\",\"notice_d\":\"noticedelete\",\"mailsms_list\":null,\"mailsms_add\":null,\"mailsms_edit\":null,\"mailsms_delete\":null,\"rent_r\":\"rentreport\",\"rentinfo\":null,\"printrentreport\":null,\"rentinfo_pdf\":null,\"tenant_r\":\"rented_report\",\"rentedprint_report\":null,\"rented_pdf\":null,\"visitor_r\":\"visitor_report\",\"visitorprint_report\":null,\"visitor_pdf\":null,\"complain_r\":\"complain_report\",\"complainprint_report\":null,\"complain_pdf\":null,\"unit_r\":\"unit_report\",\"unitprint_report\":null,\"unit_pdf\":null,\"fund_r\":\"fundstatus\",\"printfundstatus\":null,\"fundstatus_pdf\":null,\"bill_r\":\"billreport\",\"billinfo\":null,\"printbillreport\":null,\"billinfo_pdf\":null,\"salary_r\":\"salaryreport\",\"salaryinfo\":null,\"salaryinfo_pdf\":null,\"user_addlist\":\"adduser\",\"user_e\":\"userupdate\",\"user_d\":\"userdelete\",\"indivusualuser\":null,\"billtype_addlist\":\"billsetup_add\",\"billtype_e\":\"billsetup_edit\",\"billtype_d\":\"billsetup_delete\",\"utilitybill_addlist\":\"utility_setup\",\"membersetup_add\":\"membersetup_add\",\"membersetup_edit\":\"membersetup_edit\",\"membersetup_delete\":\"membersetup_delete\",\"yearsetup\":\"yearsetup\",\"yearupdate\":\"yearupdate\",\"yeardelete\":\"membersetup_delete\",\"monthsetup_add\":\"monthsetup_add\",\"monthsetup_edit\":\"monthsetup_edit\",\"monthsetup_delete\":\"monthsetup_delete\",\"currencysetup\":\"currencysetup\",\"currencyupdate\":\"currencyupdate\",\"currencydelete\":\"currencydelete\",\"systemsetup\":\"systemsetup\",\"currencysetting\":null,\"languagesetting\":null,\"emailsetting\":null,\"smssetting\":null,\"datesetting\":null,\"roleadd\":\"roleadd\",\"roleupdate\":\"roleupdate\",\"roledelete\":\"roledelete\",\"rolelist\":\"rolelist\",\"view_access\":null,\"notification_list\":null,\"notification_edit\":null,\"notification_update\":null,\"get_notification\":\"get_notification\",\"notification_view\":\"notification_view\",\"update_notification\":\"update_notification\",\"profile\":\"profile\"}', 0, 25, 44, 'employee'),
(10, 'Tenant', '{\"poperty_add\":null,\"poperty_images\":null,\"visitordetails\":null,\"complaindetails\":null,\"floor_l\":\"floor_list\",\"floor_a\":\"floor_add\",\"floor_e\":\"floor_edit\",\"floor_d\":\"floor_delete\",\"unit_l\":null,\"unit_a\":null,\"unit_e\":null,\"unit_d\":null,\"owner_l\":null,\"owner_a\":null,\"owner_e\":null,\"owner_d\":null,\"indivusualowner\":null,\"tenant_l\":null,\"tenant_a\":null,\"tenant_e\":null,\"tenant_d\":null,\"tenant_view\":\"tenant_view\",\"tenant_depand\":null,\"employee_l\":null,\"employee_a\":null,\"employee_e\":null,\"employee_d\":null,\"indivisualemployee\":null,\"emp_salary_addandlist\":null,\"getindivisualemployee\":null,\"emp_salaery_e\":null,\"emp_salaery_d\":null,\"indivisualemployeesalary\":null,\"employeeleave\":null,\"rent_l\":\"rentlist\",\"rent_a\":\"addrent\",\"gettenent\":null,\"rent_e\":null,\"rent_d\":null,\"indivusualrent\":\"indivusualrent\",\"rentinvoice\":null,\"printrentinvoice\":null,\"utility_l\":null,\"utility_a\":null,\"getunits\":null,\"getowner\":null,\"utility_e\":null,\"utility_d\":null,\"indivusualutility\":null,\"cost_l\":null,\"cost_a\":null,\"cost_e\":null,\"cost_d\":null,\"maintenance_view\":null,\"committee_l\":null,\"committee_a\":null,\"committee_e\":null,\"committee_d\":null,\"committee_view\":null,\"fund_l\":null,\"fund_a\":null,\"fund_e\":null,\"fund_d\":null,\"indivisualfund\":null,\"invoice\":null,\"printfundinvoice\":null,\"bill_l\":null,\"bill_a\":null,\"bill_e\":null,\"bill_d\":null,\"indivisualbill\":null,\"complain_l\":\"complain_list\",\"complain_a\":\"complain_add\",\"complain_e\":\"complain_edit\",\"complain_d\":\"complain_delete\",\"complain_view\":\"complain_view\",\"complain_solution\":null,\"solution_add\":null,\"assign_employee\":null,\"get_employee\":null,\"visitor_l\":null,\"visitor_a\":null,\"visitor_e\":null,\"visitor_d\":null,\"visitor_info\":null,\"meeting_l\":null,\"meeting_a\":null,\"meeting_e\":null,\"meeting_d\":null,\"meeting_view\":null,\"notice_addlist\":null,\"notice_e\":null,\"notice_d\":null,\"mailsms_list\":null,\"mailsms_add\":null,\"mailsms_edit\":null,\"mailsms_delete\":null,\"rent_r\":\"rentreport\",\"rentinfo\":null,\"printrentreport\":null,\"rentinfo_pdf\":null,\"tenant_r\":null,\"rentedprint_report\":null,\"rented_pdf\":null,\"visitor_r\":null,\"visitorprint_report\":null,\"visitor_pdf\":null,\"complain_r\":null,\"complainprint_report\":null,\"complain_pdf\":null,\"unit_r\":null,\"unitprint_report\":null,\"unit_pdf\":null,\"fund_r\":null,\"printfundstatus\":null,\"fundstatus_pdf\":null,\"bill_r\":null,\"billinfo\":null,\"printbillreport\":null,\"billinfo_pdf\":null,\"salary_r\":null,\"salaryinfo\":null,\"salaryinfo_pdf\":null,\"user_addlist\":\"adduser\",\"user_e\":\"userupdate\",\"user_d\":\"userdelete\",\"indivusualuser\":null,\"billtype_addlist\":null,\"billtype_e\":null,\"billtype_d\":null,\"utilitybill_addlist\":null,\"membersetup_add\":null,\"membersetup_edit\":null,\"membersetup_delete\":null,\"yearsetup\":null,\"yearupdate\":null,\"yeardelete\":null,\"monthsetup_add\":null,\"monthsetup_edit\":null,\"monthsetup_delete\":null,\"currencysetup\":null,\"currencyupdate\":null,\"currencydelete\":null,\"systemsetup\":null,\"currencysetting\":null,\"languagesetting\":null,\"emailsetting\":null,\"smssetting\":null,\"datesetting\":null,\"roleadd\":\"roleadd\",\"roleupdate\":\"roleupdate\",\"roledelete\":\"roledelete\",\"rolelist\":\"rolelist\",\"view_access\":\"view_access\",\"notification_list\":null,\"notification_edit\":null,\"notification_update\":null,\"get_notification\":\"get_notification\",\"notification_view\":\"notification_view\",\"update_notification\":\"update_notification\",\"profile\":\"profile\"}', 0, 25, 44, 'tenant'),
(14, 'Admin', '{\"poperty_add\":\"poperty_add\",\"poperty_images\":\"poperty_images\",\"mypackage\":\"mypackage\",\"edit_package\":\"edit_package\",\"make_payment\":\"make_payment\",\"change_payment_confirm\":\"change_payment_confirm\",\"visitordetails\":\"visitordetails\",\"complaindetails\":\"complaindetails\",\"floor_l\":\"floor_list\",\"floor_a\":\"floor_add\",\"floor_e\":\"floor_edit\",\"floor_d\":\"floor_delete\",\"unit_l\":\"unit_list\",\"unit_a\":\"unit_add\",\"unit_e\":\"unit_edit\",\"unit_d\":\"unit_delete\",\"owner_l\":\"ownerlist\",\"owner_a\":\"owneradd\",\"owner_e\":\"ownerupdate\",\"owner_d\":\"ownerdelete\",\"indivusualowner\":\"indivusualowner\",\"tenant_l\":\"tenant_list\",\"tenant_a\":\"tenant_add\",\"tenant_e\":\"tenant_edit\",\"tenant_d\":\"tenant_delete\",\"tenant_view\":\"tenant_view\",\"tenant_depand\":\"tenant_depand\",\"employee_l\":\"employeelist\",\"employee_a\":\"employeeadd\",\"employee_e\":\"employeeupdate\",\"employee_d\":\"employeedelete\",\"indivisualemployee\":\"indivisualemployee\",\"emp_salary_addandlist\":\"employeesalary\",\"getindivisualemployee\":\"getindivisualemployee\",\"emp_salaery_e\":\"employeesalaryupdate\",\"emp_salaery_d\":\"employeesalarydelete\",\"indivisualemployeesalary\":\"indivisualemployeesalary\",\"employeeleave\":\"employeeleave\",\"rent_l\":\"rentlist\",\"rent_a\":\"addrent\",\"gettenent\":\"gettenent\",\"rent_e\":\"rentupdate\",\"rent_d\":\"rentdelete\",\"indivusualrent\":\"indivusualrent\",\"rentinvoice\":\"rentinvoice\",\"printrentinvoice\":null,\"utility_l\":\"ownerutilitylist\",\"utility_a\":\"ownerutilityadd\",\"getunits\":\"getunits\",\"getowner\":\"getowner\",\"utility_e\":\"ownerutilityupdate\",\"utility_d\":\"ownerutilitydelete\",\"indivusualutility\":\"indivusualutility\",\"cost_l\":\"maintenance_list\",\"cost_a\":\"maintenance_add\",\"cost_e\":\"maintenance_edit\",\"cost_d\":\"maintenance_delete\",\"maintenance_view\":\"maintenance_view\",\"committee_l\":\"committee_list\",\"committee_a\":\"committee_add\",\"committee_e\":\"committee_edit\",\"committee_d\":\"committee_delete\",\"committee_view\":\"committee_view\",\"fund_l\":\"fundlist\",\"fund_a\":\"addfund\",\"fund_e\":\"fundupdate\",\"fund_d\":\"funddelete\",\"indivisualfund\":\"indivisualfund\",\"invoice\":\"invoice\",\"printfundinvoice\":\"printfundinvoice\",\"bill_l\":\"billdipositlist\",\"bill_a\":\"addbill\",\"bill_e\":\"billupdate\",\"bill_d\":\"billdelete\",\"indivisualbill\":\"indivisualbill\",\"complain_l\":\"complain_list\",\"complain_a\":\"complain_add\",\"complain_e\":\"complain_edit\",\"complain_d\":\"complain_delete\",\"complain_view\":\"complain_view\",\"complain_solution\":\"complain_solution\",\"solution_add\":\"solution_add\",\"assign_employee\":\"assign_employee\",\"get_employee\":\"get_employee\",\"visitor_l\":\"visitor_list\",\"visitor_a\":\"visitor_add\",\"visitor_e\":\"visitor_edit\",\"visitor_d\":\"visitor_delete\",\"visitor_info\":\"getUnits\",\"meeting_l\":\"meeting_list\",\"meeting_a\":\"meeting_add\",\"meeting_e\":\"meeting_edit\",\"meeting_d\":\"meeting_delete\",\"meeting_view\":\"meeting_view\",\"notice_addlist\":\"addnotice\",\"notice_e\":\"noticeupdate\",\"notice_d\":\"noticedelete\",\"mailsms_list\":\"mailsms_list\",\"mailsms_add\":\"mailsms_add\",\"mailsms_edit\":\"mailsms_edit\",\"mailsms_delete\":\"mailsms_delete\",\"rent_r\":\"rentreport\",\"rentinfo\":\"rentinfo\",\"printrentreport\":\"printrentreport\",\"rentinfo_pdf\":\"rentinfo_pdf\",\"tenant_r\":\"rented_report\",\"rentedprint_report\":\"rentedprint_report\",\"rented_pdf\":\"rented_pdf\",\"visitor_r\":\"visitor_report\",\"visitorprint_report\":\"visitorprint_report\",\"visitor_pdf\":\"visitor_pdf\",\"complain_r\":\"complain_report\",\"complainprint_report\":\"complainprint_report\",\"complain_pdf\":\"complain_pdf\",\"unit_r\":\"unit_report\",\"unitprint_report\":\"unitprint_report\",\"unit_pdf\":\"unit_pdf\",\"fund_r\":\"fundstatus\",\"printfundstatus\":\"printfundstatus\",\"fundstatus_pdf\":\"fundstatus_pdf\",\"bill_r\":\"billreport\",\"billinfo\":\"billinfo\",\"printbillreport\":\"printbillreport\",\"billinfo_pdf\":\"billinfo_pdf\",\"salary_r\":\"salaryreport\",\"salaryinfo\":\"salaryinfo\",\"salaryinfo_pdf\":\"salaryinfo_pdf\",\"user_addlist\":\"adduser\",\"user_e\":\"userupdate\",\"user_d\":\"userdelete\",\"indivusualuser\":\"indivusualuser\",\"billtype_addlist\":\"billsetup_add\",\"billtype_e\":\"billsetup_edit\",\"billtype_d\":\"billsetup_delete\",\"utilitybill_addlist\":\"utility_setup\",\"membersetup_add\":\"membersetup_add\",\"membersetup_edit\":\"membersetup_edit\",\"membersetup_delete\":\"membersetup_delete\",\"yearsetup\":\"yearsetup\",\"yearupdate\":\"yearupdate\",\"yeardelete\":\"membersetup_delete\",\"monthsetup_add\":\"monthsetup_add\",\"monthsetup_edit\":\"monthsetup_edit\",\"monthsetup_delete\":\"monthsetup_delete\",\"currencysetup\":\"currencysetup\",\"currencyupdate\":\"currencyupdate\",\"currencydelete\":\"currencydelete\",\"systemsetup\":\"systemsetup\",\"currencysetting\":\"currencysetting\",\"languagesetting\":\"languagesetting\",\"emailsetting\":\"emailsetting\",\"smssetting\":\"smssetting\",\"datesetting\":\"datesetting\",\"roleadd\":\"roleadd\",\"roleupdate\":\"roleupdate\",\"roledelete\":\"roledelete\",\"rolelist\":\"rolelist\",\"view_access\":\"view_access\",\"notification_list\":\"notification_list\",\"notification_edit\":\"notification_edit\",\"notification_update\":\"notification_update\",\"get_notification\":\"get_notification\",\"notification_view\":\"notification_view\",\"update_notification\":\"update_notification\",\"profile\":\"profile\"}', 1, 1, 14, 'admin'),
(19, 'free user', '{\"poperty_list\":null,\"poperty_add\":\"poperty_add\",\"poperty_images\":null,\"visitordetails\":null,\"complaindetails\":null,\"floor_l\":\"floor_list\",\"floor_a\":null,\"floor_e\":null,\"floor_d\":null,\"unit_l\":\"unit_list\",\"unit_a\":null,\"unit_e\":null,\"unit_d\":null,\"owner_l\":\"ownerlist\",\"owner_a\":null,\"owner_e\":null,\"owner_d\":null,\"indivusualowner\":null,\"tenant_l\":\"tenant_list\",\"tenant_a\":null,\"tenant_e\":null,\"tenant_d\":null,\"tenant_view\":null,\"tenant_depand\":null,\"employee_l\":null,\"employee_a\":null,\"employee_e\":null,\"employee_d\":null,\"indivisualemployee\":null,\"emp_salary_addandlist\":null,\"getindivisualemployee\":null,\"emp_salaery_e\":null,\"emp_salaery_d\":null,\"indivisualemployeesalary\":null,\"employeeleave\":null,\"rent_l\":null,\"rent_a\":null,\"gettenent\":null,\"rent_e\":null,\"rent_d\":null,\"indivusualrent\":null,\"rentinvoice\":null,\"printrentinvoice\":null,\"utility_l\":null,\"utility_a\":null,\"getunits\":null,\"getowner\":null,\"utility_e\":null,\"utility_d\":null,\"indivusualutility\":null,\"cost_l\":null,\"cost_a\":null,\"cost_e\":null,\"cost_d\":null,\"maintenance_view\":null,\"committee_l\":null,\"committee_a\":null,\"committee_e\":null,\"committee_d\":null,\"committee_view\":null,\"fund_l\":null,\"fund_a\":null,\"fund_e\":null,\"fund_d\":null,\"indivisualfund\":null,\"invoice\":null,\"printfundinvoice\":null,\"bill_l\":null,\"bill_a\":null,\"bill_e\":null,\"bill_d\":null,\"indivisualbill\":null,\"complain_l\":null,\"complain_a\":null,\"complain_e\":null,\"complain_d\":null,\"complain_view\":null,\"complain_solution\":null,\"solution_add\":null,\"assign_employee\":null,\"get_employee\":null,\"visitor_l\":null,\"visitor_a\":null,\"visitor_e\":null,\"visitor_d\":null,\"visitor_info\":null,\"meeting_l\":null,\"meeting_a\":null,\"meeting_e\":null,\"meeting_d\":null,\"meeting_view\":null,\"notice_addlist\":null,\"notice_e\":null,\"notice_d\":null,\"mailsms_list\":null,\"mailsms_add\":null,\"mailsms_edit\":null,\"mailsms_delete\":null,\"rent_r\":null,\"rentinfo\":null,\"printrentreport\":null,\"rentinfo_pdf\":null,\"tenant_r\":null,\"rentedprint_report\":null,\"rented_pdf\":null,\"visitor_r\":null,\"visitorprint_report\":null,\"visitor_pdf\":null,\"complain_r\":null,\"complainprint_report\":null,\"complain_pdf\":null,\"unit_r\":null,\"unitprint_report\":null,\"unit_pdf\":null,\"fund_r\":null,\"printfundstatus\":null,\"fundstatus_pdf\":null,\"bill_r\":null,\"billinfo\":null,\"printbillreport\":null,\"billinfo_pdf\":null,\"salary_r\":null,\"salaryinfo\":null,\"salaryinfo_pdf\":null,\"user_addlist\":null,\"user_e\":null,\"user_d\":null,\"indivusualuser\":null,\"billtype_addlist\":null,\"billtype_e\":null,\"billtype_d\":null,\"utilitybill_addlist\":null,\"membersetup_add\":null,\"membersetup_edit\":null,\"membersetup_delete\":null,\"yearsetup\":null,\"yearupdate\":null,\"yeardelete\":null,\"monthsetup_add\":null,\"monthsetup_edit\":null,\"monthsetup_delete\":null,\"currencysetup\":\"currencysetup\",\"currencyupdate\":\"currencyupdate\",\"currencydelete\":\"currencydelete\",\"systemsetup\":\"systemsetup\",\"currencysetting\":\"currencysetting\",\"languagesetting\":\"languagesetting\",\"emailsetting\":\"emailsetting\",\"smssetting\":\"smssetting\",\"datesetting\":\"datesetting\",\"roleadd\":\"roleadd\",\"roleupdate\":\"roleupdate\",\"roledelete\":\"roledelete\",\"rolelist\":\"rolelist\",\"view_access\":\"view_access\",\"notification_list\":\"notification_list\",\"notification_edit\":\"notification_edit\",\"notification_update\":\"notification_update\",\"get_notification\":\"get_notification\",\"notification_view\":\"notification_view\",\"update_notification\":\"update_notification\",\"profile\":\"profile\"}', 1, 27, 47, ''),
(20, 'super_admin', '{\"poperty_list\":null,\"poperty_add\":\"poperty_add\",\"poperty_images\":\"poperty_images\",\"visitordetails\":\"visitordetails\",\"complaindetails\":\"complaindetails\",\"floor_l\":null,\"floor_a\":null,\"floor_e\":null,\"floor_d\":null,\"unit_l\":null,\"unit_a\":null,\"unit_e\":null,\"unit_d\":null,\"owner_l\":null,\"owner_a\":null,\"owner_e\":null,\"owner_d\":null,\"indivusualowner\":null,\"tenant_l\":null,\"tenant_a\":null,\"tenant_e\":null,\"tenant_d\":null,\"tenant_view\":null,\"tenant_depand\":null,\"employee_l\":null,\"employee_a\":null,\"employee_e\":null,\"employee_d\":null,\"indivisualemployee\":null,\"emp_salary_addandlist\":null,\"getindivisualemployee\":null,\"emp_salaery_e\":null,\"emp_salaery_d\":null,\"indivisualemployeesalary\":null,\"employeeleave\":null,\"rent_l\":null,\"rent_a\":null,\"gettenent\":null,\"rent_e\":null,\"rent_d\":null,\"indivusualrent\":null,\"rentinvoice\":null,\"printrentinvoice\":null,\"utility_l\":null,\"utility_a\":null,\"getunits\":null,\"getowner\":null,\"utility_e\":null,\"utility_d\":null,\"indivusualutility\":null,\"cost_l\":null,\"cost_a\":null,\"cost_e\":null,\"cost_d\":null,\"maintenance_view\":null,\"committee_l\":null,\"committee_a\":null,\"committee_e\":null,\"committee_d\":null,\"committee_view\":null,\"fund_l\":null,\"fund_a\":null,\"fund_e\":null,\"fund_d\":null,\"indivisualfund\":null,\"invoice\":null,\"printfundinvoice\":null,\"bill_l\":null,\"bill_a\":null,\"bill_e\":null,\"bill_d\":null,\"indivisualbill\":null,\"complain_l\":null,\"complain_a\":null,\"complain_e\":null,\"complain_d\":null,\"complain_view\":null,\"complain_solution\":null,\"solution_add\":null,\"assign_employee\":null,\"get_employee\":null,\"visitor_l\":null,\"visitor_a\":null,\"visitor_e\":null,\"visitor_d\":null,\"visitor_info\":null,\"meeting_l\":null,\"meeting_a\":null,\"meeting_e\":null,\"meeting_d\":null,\"meeting_view\":null,\"notice_addlist\":null,\"notice_e\":null,\"notice_d\":null,\"mailsms_list\":null,\"mailsms_add\":null,\"mailsms_edit\":null,\"mailsms_delete\":null,\"rent_r\":null,\"rentinfo\":null,\"printrentreport\":null,\"rentinfo_pdf\":null,\"tenant_r\":null,\"rentedprint_report\":null,\"rented_pdf\":null,\"visitor_r\":null,\"visitorprint_report\":null,\"visitor_pdf\":null,\"complain_r\":null,\"complainprint_report\":null,\"complain_pdf\":null,\"unit_r\":null,\"unitprint_report\":null,\"unit_pdf\":null,\"fund_r\":null,\"printfundstatus\":null,\"fundstatus_pdf\":null,\"bill_r\":null,\"billinfo\":null,\"printbillreport\":null,\"billinfo_pdf\":null,\"salary_r\":null,\"salaryinfo\":null,\"salaryinfo_pdf\":null,\"user_addlist\":\"adduser\",\"user_e\":\"userupdate\",\"user_d\":\"userdelete\",\"indivusualuser\":\"indivusualuser\",\"billtype_addlist\":null,\"billtype_e\":null,\"billtype_d\":null,\"utilitybill_addlist\":null,\"membersetup_add\":null,\"membersetup_edit\":null,\"membersetup_delete\":null,\"yearsetup\":null,\"yearupdate\":null,\"yeardelete\":null,\"monthsetup_add\":null,\"monthsetup_edit\":null,\"monthsetup_delete\":null,\"currencysetup\":null,\"currencyupdate\":null,\"currencydelete\":null,\"systemsetup\":\"systemsetup\",\"currencysetting\":\"currencysetting\",\"languagesetting\":\"languagesetting\",\"emailsetting\":\"emailsetting\",\"smssetting\":\"smssetting\",\"datesetting\":\"datesetting\",\"roleadd\":\"roleadd\",\"roleupdate\":\"roleupdate\",\"roledelete\":\"roledelete\",\"rolelist\":\"rolelist\",\"view_access\":\"view_access\",\"notification_list\":null,\"notification_edit\":null,\"notification_update\":null,\"get_notification\":null,\"notification_view\":null,\"update_notification\":null,\"profile\":null}', 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(3) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `sgroup` varchar(100) NOT NULL,
  `svalue` text NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `sname`, `sgroup`, `svalue`, `property_id`) VALUES
(1, 'utilitybill', 'utilitybillsetup', '{\"gas_bill\":\"1111\",\"security_bill\":\"1\",\"property_id\":\"17\"}', 17),
(2, 'language', 'system', '{\"language\":\"Spain\"}', 17),
(4, 'email', 'system', '{\"mail_option\":\"smtp\",\"smtp_hostname\":\"mail.therssoftware.com\",\"smtp_username\":\"newest@therssoftware.com\",\"smtp_password\":\"PLJZQwjHq2b%\",\"smtp_post\":\"465\",\"smtp_secure\":\"ssl\"}', 17),
(5, 'sms', 'system', '{\"clickAtell_username\":\"dfdf\",\"clickAtell_password\":\"Pa$$w0rd!2\",\"clickAtell_api_key\":\"Aliqua Dicta deseru2\"}', 17),
(8, 'currency', 'system', '{\"currency\":\"$\",\"currency_separator\":\".\",\"currency_position\":\"right\",\"currency_decimal\":\"2\",\"image\":\"empty_image.jpg\"}', 17),
(12, 'date_format', 'system', '{\"date_format\":\"d\\/m\\/Y\"}', 17);

-- --------------------------------------------------------

--
-- Table structure for table `stripe`
--

CREATE TABLE `stripe` (
  `id` int(11) NOT NULL,
  `stripe_mode` int(11) NOT NULL,
  `stripe_api_key` varchar(200) NOT NULL,
  `stripe_test_api_key` varchar(200) NOT NULL,
  `stripe_serect_key` varchar(200) NOT NULL,
  `stripe_test_serect_key` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stripe`
--

INSERT INTO `stripe` (`id`, `stripe_mode`, `stripe_api_key`, `stripe_test_api_key`, `stripe_serect_key`, `stripe_test_serect_key`, `status`) VALUES
(1, 2, 'Mannix Snider', 'Katell Page required>                                    <p style=', 'Davis Anthony', 'Ross Patel', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE `tenants` (
  `id` int(11) NOT NULL,
  `tename` varchar(50) NOT NULL,
  `teemail` varchar(40) NOT NULL,
  `tepass` varchar(30) NOT NULL,
  `tecontrctno` varchar(20) NOT NULL,
  `teads` varchar(50) NOT NULL,
  `tenid` varchar(20) NOT NULL,
  `floorno` varchar(50) NOT NULL,
  `unitno` varchar(50) NOT NULL,
  `teadvancerent` double(10,2) NOT NULL,
  `terentpermonth` varchar(20) NOT NULL,
  `teissuedate` varchar(20) NOT NULL,
  `terentmonth` varchar(20) NOT NULL,
  `terentyear` varchar(20) NOT NULL,
  `testatus` int(5) NOT NULL,
  `teownerphoto` varchar(50) NOT NULL,
  `property_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tenants`
--

INSERT INTO `tenants` (`id`, `tename`, `teemail`, `tepass`, `tecontrctno`, `teads`, `tenid`, `floorno`, `unitno`, `teadvancerent`, `terentpermonth`, `teissuedate`, `terentmonth`, `terentyear`, `testatus`, `teownerphoto`, `property_id`, `created_at`, `updated_at`) VALUES
(1, 'Tate Fischer', 'volalym@mailinator.com', 'Pa$$w0rd!', '98', 'Reiciendis natus cul', '43', '1', 'Unit 1A', 3900.00, '7000', '2021-12-02', 'December', '2021', 1, '1638424588_1f1930ce2cc76fbfc355.png', 17, '2021-12-02 05:56:28', '2021-12-02 05:56:28');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `floorid` int(5) NOT NULL,
  `unitno` varchar(50) NOT NULL,
  `property_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `floorid`, `unitno`, `property_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Unit 1A', 17, '2021-12-02 05:48:14', '2021-12-02 05:48:14'),
(2, 3, 'Unit 2A', 17, '2021-12-02 05:48:27', '2021-12-02 05:48:27'),
(3, 4, 'Unit 3A', 17, '2021-12-02 05:48:40', '2021-12-02 05:48:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `contactno` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `passresttoken` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `type` int(11) NOT NULL,
  `user_type` int(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `rememberkey` varchar(50) NOT NULL,
  `term_and_condition` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `property_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `passresttoken`, `branch`, `type`, `user_type`, `image`, `company_id`, `rememberkey`, `term_and_condition`, `created_at`, `updated_at`, `property_id`, `package_id`, `status`) VALUES
(1, 'admin', 'admin@gmail.com', '11111', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'LPgeGxua', '8', 0, 1, '1637813985_844d5439f83743f87b13.png', 0, '', 0, '2021-11-13 04:27:16', '2022-02-08 09:51:49', 0, 0, 1),
(14, 'Charity Casey', 'japo@mailinator.com', '33333', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '8', 2, 10, '1637814094_8f2185a28978b25ce620.png', 1, '', 0, '2021-11-22 08:52:16', '2022-02-08 10:05:59', 0, 0, 0),
(35, 'kaka', 'kaka@gmail.com', '', '7c222fb2927d828af22f592134e8932480637c0d', '', '', 2, 14, '', 20, '', 1, '2021-12-05 06:57:30', '2022-10-08 13:59:53', 0, 20, 1),
(36, 'Amethyst Carson', 'aa@gmail.com', 'Sed magni atque comm', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', '', '7', 1, 16, 'empty_image.jpg', 35, '', 0, '2021-12-05 08:18:30', '2022-02-08 10:06:03', 0, 0, 0),
(37, 'user', 'user@gmail.com', '', '7c222fb2927d828af22f592134e8932480637c0d', '', '', 2, 14, '', 21, '', 1, '2021-12-05 08:20:08', '2022-02-08 09:51:49', 0, 0, 1),
(38, 'fresh user ', 'fresh@gmail.com', '', '7c222fb2927d828af22f592134e8932480637c0d', '', '', 2, 14, '', 22, '', 1, '2021-12-05 09:10:22', '2022-02-08 09:51:49', 0, 0, 1),
(41, 'shukriti New', 'shukriti@sssahajjo.com', '', '7c222fb2927d828af22f592134e8932480637c0d', '', '', 0, 14, '', 41, '', 1, '2022-01-31 05:37:37', '2022-02-08 10:06:07', 0, 0, 0),
(44, 'diu ', 'ranjan-35-1457@diu.edu.bd', '01842473122', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '8', 2, 10, '1643616982_38a36dd312d9d2959450.png', 1, '', 0, '2022-01-31 08:16:22', '2022-02-08 09:51:49', 17, 0, 1),
(45, 'shukriti', 'test@gmail.com', '01842473122', '69c5fcebaa65b560eaf06c3fbeb481ae44b8d618', '', '8', 2, 9, '1644147129_cd11e01be09f82247cbb.png', 1, '', 0, '2022-01-31 08:27:52', '2022-02-08 09:51:49', 17, 0, 1),
(47, 'vai vai', 'shouvodas25@gmail.com', '', '7c222fb2927d828af22f592134e8932480637c0d', '', '', 0, 14, '', 47, '', 1, '2022-02-06 09:43:19', '2022-02-08 10:06:12', 0, 0, 0),
(49, 'Topu das', 'topu@gmail.com', '', '7c222fb2927d828af22f592134e8932480637c0d', '', '', 2, 14, '', 25, '', 1, '2022-02-06 09:55:41', '2022-02-08 09:51:49', 0, 0, 1),
(50, 'Rafi', 'rafi@gmail.com', '', '7c222fb2927d828af22f592134e8932480637c0d', '', '', 2, 14, '', 26, '', 1, '2022-02-06 09:58:55', '2022-02-08 10:06:16', 0, 0, 0),
(51, 'Priom', 'priom@gmail.com', '017222222', '7c222fb2927d828af22f592134e8932480637c0d', '', '8', 2, 10, '1644148722_dfe908cf3b922634226c.png', 25, '', 0, '2022-02-06 11:58:42', '2022-02-08 09:51:49', 44, 0, 1),
(133, 'veqaj', 'qulicanewo@mailinator.com', '', 'cc4723995ce819915e734147a77850427a9e95f9', '', '', 2, 14, '', 55, '', 1, '2022-10-01 05:11:41', '2022-10-01 05:14:04', 0, 16, 0),
(134, 'hufyfavyna', 'hepupacaqi@mailinator.com', '', 'cc4723995ce819915e734147a77850427a9e95f9', '', '', 2, 14, '', 56, '', 1, '2022-10-01 05:14:51', '2022-10-01 05:18:35', 0, 22, 0),
(135, 'kabyb', 'jaxomizek@mailinator.com', '', 'cc4723995ce819915e734147a77850427a9e95f9', '', '', 0, 14, '', 135, '', 1, '2022-10-01 05:21:01', '2022-10-01 05:21:01', 0, 0, 0),
(136, 'hapehazugi', 'buxosihuh@mailinator.com', '', 'cc4723995ce819915e734147a77850427a9e95f9', '', '', 0, 14, '', 136, '', 1, '2022-10-01 10:30:03', '2022-10-01 10:30:03', 0, 0, 0),
(137, 'gisahuqu', 'dusehy@mailinator.com', '', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', '', '', 0, 14, '', 137, '', 1, '2023-02-25 07:27:11', '2023-02-25 07:27:11', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `type_id` int(100) NOT NULL,
  `type_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`type_id`, `type_name`) VALUES
(2, 'Admin'),
(3, 'Owner'),
(4, 'Employee'),
(5, 'Tenent');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) NOT NULL,
  `visientrydate` varchar(30) NOT NULL,
  `visiname` varchar(50) NOT NULL,
  `visimobile` varchar(20) NOT NULL,
  `visiads` text NOT NULL,
  `floorid` int(5) NOT NULL,
  `unitid` varchar(500) NOT NULL,
  `visiintime` varchar(20) NOT NULL,
  `visiouttime` varchar(20) NOT NULL,
  `property_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `visientrydate`, `visiname`, `visimobile`, `visiads`, `floorid`, `unitid`, `visiintime`, `visiouttime`, `property_id`, `created_at`, `updated_at`) VALUES
(16, '2021-11-14', 'Freya Cantrell', 'Ut irure officiis qu', '                                                                                        Aliquid pariatur Te                                                                                ', 8, 'Unit 4B', 'Aut eveniet nulla e', 'Molestiae et ea dolo', 0, '2021-11-16 08:24:14', '2021-11-16 08:41:03'),
(17, '2021-11-16', 'rafi', 'Sed deserunt laboris', '                                                                                                                                    Tempora libero tenet                                                                                                                        ', 5, 'Unit 1B', 'Consectetur praesen', 'Consectetur reprehe', 0, '2021-11-16 08:33:29', '2021-11-16 08:40:43'),
(18, '2021-10-16', 'Henry Duffy', 'Quaerat do est ut ve', '                                                                                        Dolor incidunt temp                                                                                ', 6, 'Unit 2B', 'Nulla aliquip exerci', 'Recusandae Fugit s', 17, '2021-11-16 08:41:24', '2021-11-18 12:01:15'),
(19, '2021-11-18', 'ffffffffff', 'Non doloribus ut atq', '                                            Nam fugiat magna aut                                        ', 9, 'Unit 6C', 'Enim iste quidem bla', 'Cillum deserunt dolo', 17, '2021-11-18 10:03:49', '2021-11-18 11:49:03'),
(23, '1994-11-19', 'Kelly Williams', 'Cillum lorem invento', 'Praesentium labore u', 10, 'Unit 2A', 'Sit aperiam adipisci', 'Libero dolor esse q', 17, '2021-11-23 04:38:59', '2021-11-23 04:38:59'),
(24, '1971-11-23', 'Wyatt Tucker', 'Laboris in laborum ', 'Est ipsum id persp', 12, '21', 'Ea iusto deleniti te', 'Laboris minima sit v', 17, '2021-12-01 06:46:50', '2021-12-01 06:46:50'),
(25, '2001-03-08', 'Chandler Collier', 'Sint sit sit et vol', 'Harum aut quia non a', 12, '19', 'Est et illum velit ', 'Eos voluptates reic', 17, '2021-12-01 06:47:22', '2021-12-01 06:47:22'),
(26, '2001-03-08', 'Chandler Collier', 'Sint sit sit et vol', 'Harum aut quia non a', 12, '19', 'Est et illum velit ', 'Eos voluptates reic', 17, '2021-12-01 06:47:22', '2021-12-01 06:47:22'),
(27, '1994-11-19', 'Kelly Williams', 'Cillum lorem invento', 'Praesentium labore u', 10, 'Unit 2A', 'Sit aperiam adipisci', 'Libero dolor esse q', 17, '2021-11-23 04:38:59', '2021-11-23 04:38:59'),
(28, '1971-11-23', 'Wyatt Tucker', 'Laboris in laborum ', 'Est ipsum id persp', 12, '21', 'Ea iusto deleniti te', 'Laboris minima sit v', 17, '2021-12-01 06:46:50', '2021-12-01 06:46:50'),
(29, '2001-03-08', 'Chandler Collier', 'Sint sit sit et vol', 'Harum aut quia non a', 12, '19', 'Est et illum velit ', 'Eos voluptates reic', 17, '2021-12-01 06:47:22', '2021-12-01 06:47:22'),
(30, '2001-03-08', 'Chandler Collier', 'Sint sit sit et vol', 'Harum aut quia non a', 12, '19', 'Est et illum velit ', 'Eos voluptates reic', 17, '2021-12-01 06:47:22', '2021-12-01 06:47:22'),
(31, '1976-07-01', 'Stephen Stokes', 'Accusantium deserunt', 'Reprehenderit maior', 3, 'Unit 2A', 'Quis at harum ipsum ', 'Quis laudantium et ', 17, '2022-01-30 11:28:00', '2022-01-30 11:28:00');

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` int(100) NOT NULL,
  `year` int(100) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `year`, `property_id`) VALUES
(1, 2021, 17),
(2, 2022, 17),
(3, 2019, 17),
(4, 2020, 17),
(6, 2017, 17),
(7, 2022, 18);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_notification`
--
ALTER TABLE `admin_notification`
  ADD PRIMARY KEY (`notify_id`);

--
-- Indexes for table `billsetups`
--
ALTER TABLE `billsetups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_diposit`
--
ALTER TABLE `bill_diposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `committees`
--
ALTER TABLE `committees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complains`
--
ALTER TABLE `complains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `date`
--
ALTER TABLE `date`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_salary`
--
ALTER TABLE `employee_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `floors`
--
ALTER TABLE `floors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funds`
--
ALTER TABLE `funds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mailsms`
--
ALTER TABLE `mailsms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mailsmsdatas`
--
ALTER TABLE `mailsmsdatas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintenances`
--
ALTER TABLE `maintenances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membersetups`
--
ALTER TABLE `membersetups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monthsetups`
--
ALTER TABLE `monthsetups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`owner_id`);

--
-- Indexes for table `owners_utility`
--
ALTER TABLE `owners_utility`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owner_to_unit`
--
ALTER TABLE `owner_to_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pakage`
--
ALTER TABLE `pakage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popertieimages`
--
ALTER TABLE `popertieimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poperties`
--
ALTER TABLE `poperties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stripe`
--
ALTER TABLE `stripe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_notification`
--
ALTER TABLE `admin_notification`
  MODIFY `notify_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `billsetups`
--
ALTER TABLE `billsetups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bill_diposit`
--
ALTER TABLE `bill_diposit`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `committees`
--
ALTER TABLE `committees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `complains`
--
ALTER TABLE `complains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `date`
--
ALTER TABLE `date`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_salary`
--
ALTER TABLE `employee_salary`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `floors`
--
ALTER TABLE `floors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `funds`
--
ALTER TABLE `funds`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mailsms`
--
ALTER TABLE `mailsms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mailsmsdatas`
--
ALTER TABLE `mailsmsdatas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `maintenances`
--
ALTER TABLE `maintenances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `membersetups`
--
ALTER TABLE `membersetups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `monthsetups`
--
ALTER TABLE `monthsetups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `owners`
--
ALTER TABLE `owners`
  MODIFY `owner_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `owners_utility`
--
ALTER TABLE `owners_utility`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `owner_to_unit`
--
ALTER TABLE `owner_to_unit`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pakage`
--
ALTER TABLE `pakage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `popertieimages`
--
ALTER TABLE `popertieimages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `poperties`
--
ALTER TABLE `poperties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `rent`
--
ALTER TABLE `rent`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `stripe`
--
ALTER TABLE `stripe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tenants`
--
ALTER TABLE `tenants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `type_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
