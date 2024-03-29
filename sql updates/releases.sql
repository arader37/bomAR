-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2019 at 11:38 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bom`
--

-- --------------------------------------------------------

--
-- Table structure for table `releases`
--

CREATE TABLE `releases` (
  `id` varchar(15) NOT NULL COMMENT 'release identifier',
  `name` varchar(100) NOT NULL,
  `type` varchar(25) NOT NULL,
  `status` varchar(15) NOT NULL,
  `open_date` date DEFAULT NULL,
  `dependency_date` date DEFAULT NULL,
  `freeze_date` date DEFAULT NULL,
  `rtm_date` date DEFAULT NULL,
  `manager` varchar(25) DEFAULT NULL COMMENT 'release manager',
  `author` varchar(25) DEFAULT NULL COMMENT 'requester of this release',
  `app_id` varchar(15) DEFAULT NULL COMMENT 'foreign key to the bom'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `releases`
--

INSERT INTO `releases` (`id`, `name`, `type`, `status`, `open_date`, `dependency_date`, `freeze_date`, `rtm_date`, `manager`, `author`, `app_id`) VALUES
('ICS-201684', 'SAFe Project V.5.6.8', 'Async ', 'Draft', '2020-10-01', '2020-08-23', '2020-10-18', '2020-12-06', 'Brill, Barbara', 'Ram, Christina', 'BOM-107'),
('ICS-201685', 'SAFe Project V.5.6.9', 'Async ', 'Draft', '2021-10-01', '2021-08-23', '2021-10-18', '2021-12-06', 'Brill, Barbara', 'Ram, Christina', 'BOM-112'),
('ICS-201689', 'SAFe Project V.5.6.7', 'Async ', 'Active', '2019-10-01', '2019-08-23', '2019-10-18', '2019-12-06', 'Brill, Barbara', 'Ram, Christina', 'BOM-102'),
('ICS-201812', 'QuizMaster 1.1', 'Major', 'Completed', '2019-08-14', '2019-10-18', '0000-00-00', '2019-08-23', 'Jasthi, Siva', 'Knight, Mark', 'BOM-100'),
('ICS-201814', 'QuizMaster 1.2', 'Major', 'Draft', '2020-08-14', '2020-10-18', '0000-00-00', '2020-08-23', 'Jasthi, Siva', 'Knight, Mark', 'BOM-105'),
('ICS-201815', 'QuizMaster That Works in English, Telugu, Hindi, Kannada and Other Indic Languages V 2020', 'Major', 'Draft', '2021-08-14', '2021-10-18', '0000-00-00', '2021-08-23', 'Jasthi, Siva', 'Knight, Mark', 'BOM-110'),
('ICS-201944', 'Bingo 2.4', 'Minor', 'Draft', '2020-09-05', '0000-00-00', '0000-00-00', '2020-10-18', 'Doe, John', 'Doe, Jane', 'BOM-106'),
('ICS-201945', 'Bingo 2.3', 'Minor', 'Draft', '2019-09-05', '0000-00-00', '0000-00-00', '2019-10-18', 'Doe, John', 'Doe, Jane', 'BOM-101'),
('ICS-201955', 'Bingo 2.5', 'Minor', 'Draft', '2021-09-05', '0000-00-00', '0000-00-00', '2021-10-18', 'Doe, John', 'Doe, Jane', 'BOM-111'),
('ICS-789084', 'Registration System V.2020', 'Async ', 'Draft', '2020-10-01', '2020-08-23', '2020-10-18', '2020-12-06', 'Drew, Andy', 'Peterson, Rocky', 'BOM-108'),
('ICS-789085', 'Registration System V.2020.1', 'Async ', 'Draft', '2021-10-01', '2021-08-23', '2021-10-18', '2021-12-06', 'Drew, Andy', 'Peterson, Rocky', 'BOM-113'),
('ICS-789089', 'Registration System V.2019', 'Async ', 'Released', '2019-10-01', '2019-08-23', '2019-10-18', '2019-12-06', 'Drew, Andy', 'Peterson, Rocky', 'BOM-103'),
('ICS-898984', 'Word Explorer 2021', 'Patch', 'Draft', '2020-10-01', '2020-08-23', '2020-10-18', '2020-12-06', 'Jasthi, Siva', 'Jasthi, Siva', 'BOM-109'),
('ICS-898985', 'Word Explorer 2022', 'Patch', 'Draft', '2021-10-01', '2021-08-23', '2021-10-18', '2021-12-06', 'Jasthi, Siva', 'Jasthi, Siva', 'BOM-114'),
('ICS-898989', 'Word Explorer 2020', 'Patch', 'Completed', '2019-10-01', '2019-08-23', '2019-10-18', '2019-12-06', 'Jasthi, Siva', 'Jasthi, Siva', 'BOM-104');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `releases`
--
ALTER TABLE `releases`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
