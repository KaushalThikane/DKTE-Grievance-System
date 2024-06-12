-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2024 at 03:17 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grievence_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `ticket_number` int(28) NOT NULL,
  `prn_number` varchar(20) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `mname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `branch` varchar(200) NOT NULL,
  `degree` varchar(200) NOT NULL,
  `complaints` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `solution` varchar(200) DEFAULT NULL,
  `catagory_complaint` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`ticket_number`, `prn_number`, `fname`, `mname`, `lname`, `branch`, `degree`, `complaints`, `status`, `solution`, `catagory_complaint`) VALUES
(3, '21UCS302', 'Suyog', 'Sanjay', 'Chougale', 'Computer Science & Engineering', 'B-Tech', 'Regarding to ragging', 'Completed', 'gg', 'ragging'),
(4, '21UCS303', 'Vinayak', 'Santosh', 'Gaikwad', 'Computer Science & Engineering', 'B-Tech', 'Regarding to ragging', 'Rejected', 'This form is rejected because of there is some mis-information is given.', 'canteen'),
(5, '21UCS302', 'Suyog', 'Sanjay', 'Chougale', 'Computer Science and Engineeri', 'B-Tech', 'Too Bad.', 'Rejected', 'Please Explain in brief. So we will take action against that.', 'canteen'),
(6, '21UCS302', 'Suyog', 'Sanjay', 'Chougale', 'Computer Science and Engineeri', 'B-Tech', 'No parking place is availible.', 'In Process', 'i will contact to exam department', 'parking'),
(7, '21UCS302', 'Suyog', 'Sanjay', 'Chougale', 'Computer Science and Engineeri', 'B-Tech', 'Faculty is not good for any subjects.', 'Not Yet Process', NULL, 'teaching'),
(8, '21UCS302', 'Suyog', 'Sanjay', 'Chougale', 'Computer Science and Engineeri', 'B-Tech', 'Faculty is not good for any subjects.', 'Not Yet Process', NULL, 'teaching'),
(9, '21UCS303', 'Vinayak', 'Santosh', 'Gaikwad', 'Computer Science and Engineeri', 'B-Tech', 'exam section does not provide any information to students early. they gives information about exam only one day early', 'In Process', 'i will contact to exam department', 'exam'),
(10, '21UCS303', 'Vinayak', 'Santosh', 'Gaikwad', 'Computer Science and Engineeri', 'B-Tech', 'classrooms are not clear', 'Not Yet Process', NULL, 'classroom'),
(11, '21UCS302', 'Suyog', 'Sanjay', 'Chougale', 'Computer Science and Engineeri', 'B-Tech', 'Seniors do not allow junior to use hostel wifi.', 'In Process', 'We will arrange a meeting with all students.', 'ragging'),
(12, '21UCS302', 'Suyog', 'Sanjay', 'Chougale', 'Computer Science and Engineeri', 'B-Tech', 'exam system is not proper', 'Completed', 'i will contact to exam department', 'exam');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `username` varchar(18) NOT NULL,
  `password1` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`username`, `password1`) VALUES
('suyog', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `fist_name` varchar(20) NOT NULL,
  `m_name` varchar(30) NOT NULL,
  `l_name` varchar(30) NOT NULL,
  `prn_no` varchar(8) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `degree` varchar(30) NOT NULL,
  `dob` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`fist_name`, `m_name`, `l_name`, `prn_no`, `branch`, `degree`, `dob`) VALUES
('Kaushal', 'Uday', 'Thikane', '20UCS137', 'Computer Science and Engineeri', 'B-tech', '2022-01-12'),
('Kartik', 'Vijay', 'Thombare', '20UCS138', 'Computer Science and Engineeri', 'B-Tech', '2002-03-13'),
('Trupti', 'Uttam', 'Thorat', '20UCS139', 'Computer Science and Engineeri', 'B-Tech', '2002-10-11'),
('Susmita', 'Suresh', 'Tupurwadkar', '20UCS140', 'Computer Science and Engineeri', 'B-Tech', '2002-09-13'),
('Mayuri', 'Naresh', 'Waghmare', '20UCS141', 'Computer Science and Engineeri', 'B-Tech', '2002-02-21'),
('Harshal', 'Ravikiran', 'Wali', '20UCS142', 'Computer Science and Engineeri', 'B-Tech', '2002-03-18'),
('Sharayu', 'Manohar', 'Yadav', '20UCS144', 'Computer Science and Engineeri', 'B-Tech', '2002-04-29'),
('Avinash', 'Shankar', 'Yejare', '20UCS145', 'Computer Science and Engineeri', 'B-Tech', '2002-05-03'),
('Simran', 'Najirkhan', 'Bargir', '21UCS301', 'Computer Science and Engineeri', 'B-Tech', '2002-10-09'),
('Suyog', 'Sanjay', 'Chougale', '21UCS302', 'Computer Science and Engineeri', 'B-Tech', '2002-12-01'),
('Vinayak', 'Santosh', 'Gaikwad', '21UCS303', 'Computer Science and Engineeri', 'B-Tech', '2002-06-19'),
('Sahil', 'Balechamd', 'Jamadar', '21UCS304', 'Computer Science and Engineeri', 'B-Tech', '2002-02-21'),
('Namrata', 'Sangram', 'Jamdar', '21UCS305', 'Computer Science and Engineeri', 'B-Tech', '2002-09-09'),
('Gaystri', 'Sanjay', 'Kale', '21UCS306', 'Computer Science and Engineeri', 'B-Tech', '2002-12-08'),
('Priyanka', 'Nandkishor', 'Mane', '21UCS307', 'Computer Science and Engineeri', 'B-Tech', '2002-01-07'),
('Swarup', 'Sanjay', 'More', '21UCS308', 'Computer Science and Engineeri', 'B-Tech', '2003-02-20'),
('Juveriya', 'Jiber', 'Mujawar', '21UCS309', 'Computer Science and Engineeri', 'B-Tech', '2002-09-02'),
('Nikhil', 'Sunil', 'Patil', '21UCS310', 'Computer Science and Engineeri', 'B-Tech', '2002-06-19'),
('Purva', 'Dataray', 'Patil', '21UCS311', 'Computer Science and Engineeri', 'B-Tech', '2002-12-29'),
('Dnyaneshwar', 'Dhananjay', 'Potdar', '21UCS312', 'Computer Science and Engineeri', 'B-Tech', '2002-07-08'),
('Prathmesh', 'Chandrakant', 'Rasal', '21UCS313', 'Computer Science and Engineeri', 'B-Tech', '2002-03-06'),
('Zuveriya', 'Riyajahmed', 'Shaikh', '21UCS314', 'Computer Science and Engineeri', 'B-Tech', '2002-11-15'),
('Rushikesh', 'Vilas', 'Tonpe', '21UCS315', 'Computer Science and Engineeri', 'B-Tech', '2002-12-31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`ticket_number`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `ticket_number` int(28) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
