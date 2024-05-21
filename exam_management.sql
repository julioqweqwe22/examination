-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2024 at 02:59 PM
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
-- Database: `exam_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_class`
--

CREATE TABLE `add_class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `add_class`
--

INSERT INTO `add_class` (`class_id`, `class_name`, `status`) VALUES
(1, 'Class 1', 'Enabled');

-- --------------------------------------------------------

--
-- Table structure for table `add_course`
--

CREATE TABLE `add_course` (
  `course_id` int(100) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `create_time` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `add_course`
--

INSERT INTO `add_course` (`course_id`, `course_name`, `create_time`, `status`) VALUES
(1, 'Computer Engineering', '24-06-2022 23:32', 'Enabled'),
(2, 'Electrical Engineering', '06-05-2024 08:03', 'Enabled'),
(3, 'Electronics Engineering', '06-05-2024 08:03', 'Enabled'),
(4, 'Industrial Engineering', '06-05-2024 08:03', 'Enabled');

-- --------------------------------------------------------

--
-- Table structure for table `add_exam`
--

CREATE TABLE `add_exam` (
  `exam_id` int(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `exam_time_limit` varchar(100) NOT NULL,
  `total_question` varchar(100) NOT NULL,
  `correct` varchar(100) NOT NULL,
  `wrong` varchar(100) NOT NULL,
  `exam_title` varchar(100) NOT NULL,
  `exam_date` varchar(100) NOT NULL,
  `exam_time` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `add_exam`
--

INSERT INTO `add_exam` (`exam_id`, `course`, `exam_time_limit`, `total_question`, `correct`, `wrong`, `exam_title`, `exam_date`, `exam_time`, `status`) VALUES
(1, 'Software Engineering', '5', '5', '2', '1', 'Exam of Software Engineering', '2022-06-25', '12:00', 'Ended'),
(2, 'Computer Engineering', '10', '10', '2', '1.5', '345334342', '2024-05-06', '11:37', 'Ended'),
(3, 'Computer Engineering', '10', '10', '2', '1.5', '123145', '2024-05-06', '11:51', 'Ended'),
(4, 'Computer Engineering', '10', '10', '1', '1', 'Eiras', '2024-05-06', '11:53', 'Ended'),
(5, 'Computer Engineering', '5', '5', '1', '1', '1231224234', '2024-05-06', '13:11', 'Ended'),
(6, 'Computer Engineering', '5', '5', '1', '1', 'dfdfds', '2024-05-07', '15:48', 'Ended'),
(7, 'Computer Engineering', '60', '50', '1', '1', '123123', '2024-05-07', '15:49', 'Ended'),
(8, 'Computer Engineering', '180', '300', '5', '1', 'testing', '2024-05-07', '16:56', 'Ended'),
(9, 'Computer Engineering', '5', '5', '1', '1', 'qeqe', '2024-05-13', '12:40', 'Ended'),
(10, 'Computer Engineering', '5', '5', '1', '1', 'qeqe', '2024-05-13', '12:42', 'Ended'),
(11, 'Computer Engineering', '5', '5', '1', '1', 'qweqeqw', '2024-05-18', '04:37', 'Ended'),
(12, 'Computer Engineering', '10', '5', '1', '1', 'qweqeqw', '2024-05-19', '04:39', 'Ended');

-- --------------------------------------------------------

--
-- Table structure for table `add_question`
--

CREATE TABLE `add_question` (
  `question_id` int(100) NOT NULL,
  `exam_title` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `question` varchar(10000) NOT NULL,
  `ans_1` varchar(100) NOT NULL,
  `ans_2` varchar(100) NOT NULL,
  `ans_3` varchar(100) NOT NULL,
  `ans_4` varchar(100) NOT NULL,
  `correct_answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `add_question`
--

INSERT INTO `add_question` (`question_id`, `exam_title`, `course`, `question`, `ans_1`, `ans_2`, `ans_3`, `ans_4`, `correct_answer`) VALUES
(20, 'qeqe', 'Computer Engineering', 'qweqw', '1', '2', '3', '4', '4'),
(21, 'qweqeqw', 'Computer Engineering', '22', '1', '2', '3', '4', '4');

-- --------------------------------------------------------

--
-- Table structure for table `add_student`
--

CREATE TABLE `add_student` (
  `std_id` int(100) NOT NULL,
  `std_name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `age` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `add_student`
--

INSERT INTO `add_student` (`std_id`, `std_name`, `gender`, `dob`, `course`, `year`, `email`, `password`, `image`, `age`) VALUES
(1, 'Student One', 'Male', '2001-07-14', 'Software Engineering', '2nd Year', 'student@gmail.com', '1234', '', NULL),
(2, 'julio', 'male', '2012-01-03', 'Software Engineering', 'First Year', 'qweqwe@gmail.com', '123132', '', '12'),
(3, 'julio', 'male', '2001-01-16', 'Software Engineering', 'First Year', 'fragilejulio@gmail.com', '1234', '', '23'),
(4, 'julio', 'male', '2010-03-10', 'Computer Engineering', 'Second Year', 'qwqwe@gmail.com', '1111', '', '14'),
(5, 'julio', 'male', '2024-05-03', 'Computer Engineering', 'First Year', 'qweqwe@gmail.com', '1111', '', '0'),
(6, 'julio', 'male', '2024-05-06', 'Computer Engineering', 'Second Year', 'qweqwe@gmail.com', '1111', '', '0'),
(7, 'fuc', 'male', '2024-05-08', 'Computer Engineering', 'First Year', 'ss@gmail.com', '1234', '', '0'),
(8, 'julio', 'male', '2024-05-13', 'Computer Engineering', 'Second Year', 'qweqwe@gmail.com', '1234', '', '0'),
(9, 'julio', 'male', '2024-05-13', 'Computer Engineering', 'Second Year', 'qweqwe@gmail.com', '1234', '', '0'),
(10, 'qeqeq', 'male', '2005-06-08', 'Computer Engineering', 'First Year', 'alfragile@yahoo.com', '1234', '', '18'),
(11, 'qee', 'male', '2024-05-19', 'Computer Engineering', 'First Year', 'fragilejulio@gmail.com', '1234', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `admin_reg`
--

CREATE TABLE `admin_reg` (
  `adm_id` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `emailid` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `special_token` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_reg`
--

INSERT INTO `admin_reg` (`adm_id`, `image`, `full_name`, `contact`, `emailid`, `password`, `special_token`) VALUES
(1, '', 'Admin One', '1234567890', 'admin@email', '1234', 'MthPNTKv0n'),
(2, '', 'Kobe Paras', '09123456789', 'lebron@gmail.com', 'mineskipo', 'FwPvfz9L8T');

-- --------------------------------------------------------

--
-- Table structure for table `assign_course`
--

CREATE TABLE `assign_course` (
  `assign_id` int(100) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `create_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `assign_course`
--

INSERT INTO `assign_course` (`assign_id`, `class_name`, `course_name`, `create_time`) VALUES
(2, 'Class 1', 'Computer Engineering', '06-05-2024 08:03');

-- --------------------------------------------------------

--
-- Table structure for table `examinee`
--

CREATE TABLE `examinee` (
  `examinee_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `examinee`
--

INSERT INTO `examinee` (`examinee_name`, `gender`, `dob`, `email`, `password`, `age`) VALUES
('examinee_name', 'male', '2024-05-24', 'qweqwe@gmail.com', '1234', '0'),
('examinee_name', 'male', '2002-01-28', 'qweqwe@gmail.com', '1234', '22'),
('asdasdasd', 'male', '2024-05-13', 'czczcq32@gmail.com', '213123', '0'),
('adadada', 'male', '2024-05-13', 'qweqwe@gmail.com', '1234', '0');

-- --------------------------------------------------------

--
-- Table structure for table `exam_answers`
--

CREATE TABLE `exam_answers` (
  `id` int(100) NOT NULL,
  `std_id` int(100) NOT NULL,
  `std_name` varchar(100) NOT NULL,
  `std_email` varchar(100) NOT NULL,
  `exam_title` varchar(100) NOT NULL,
  `question` varchar(10000) NOT NULL,
  `answered` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_answers`
--

INSERT INTO `exam_answers` (`id`, `std_id`, `std_name`, `std_email`, `exam_title`, `question`, `answered`) VALUES
(1, 4, 'julio', 'qwqwe@gmail.com', '345334342', '1231231', '2'),
(2, 4, 'julio', 'qwqwe@gmail.com', '123145', 'Corgi ba si mommy?', 'sobrang corgi'),
(3, 4, 'julio', 'qwqwe@gmail.com', '1231224234', '1231231', '1'),
(4, 5, 'julio', 'qweqwe@gmail.com', 'dfdfds', 'cccc', ''),
(5, 4, 'julio', 'qwqwe@gmail.com', '123123', 'xcccxvx', 'ssss'),
(6, 4, 'julio', 'qwqwe@gmail.com', '123123', 'qweqeqweq', 'zczcz'),
(7, 4, 'julio', 'qwqwe@gmail.com', 'testing', '1', '5'),
(8, 4, 'julio', 'qwqwe@gmail.com', 'testing', '2', '112'),
(9, 4, 'julio', 'qwqwe@gmail.com', 'testing', 'jfac@gmail.com', 'c'),
(10, 4, 'julio', 'qwqwe@gmail.com', 'testing', 'adasd', 'dss'),
(11, 4, 'julio', 'qwqwe@gmail.com', 'testing', '123123', 'd11'),
(12, 4, 'julio', 'qwqwe@gmail.com', 'testing', 'vzxcvzxc', 'zczc'),
(13, 4, 'julio', 'qwqwe@gmail.com', 'testing', 'vxvxvx', 'fdfad');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_reg`
--

CREATE TABLE `faculty_reg` (
  `id` varchar(255) NOT NULL,
  `fac_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_reg`
--

INSERT INTO `faculty_reg` (`id`, `fac_name`, `gender`, `dob`, `email`, `password`, `age`) VALUES
('', 'Lebron', 'male', '2024-05-13', 'qweqwe@gmail.com', '1234', '0'),
('', 'Lebron', 'male', '2024-05-13', 'jfac@gmail.com', '123132', '0'),
('', 'julio', 'male', '2024-05-19', 'alfragile@yahoo.com', '1234', '0');

-- --------------------------------------------------------

--
-- Table structure for table `std_exam_status`
--

CREATE TABLE `std_exam_status` (
  `status_id` int(100) NOT NULL,
  `std_id` int(100) NOT NULL,
  `std_name` varchar(100) NOT NULL,
  `std_email` varchar(100) NOT NULL,
  `exam_name` varchar(100) NOT NULL,
  `attendence_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `std_exam_status`
--

INSERT INTO `std_exam_status` (`status_id`, `std_id`, `std_name`, `std_email`, `exam_name`, `attendence_status`) VALUES
(1, 4, 'julio', 'qwqwe@gmail.com', '345334342', 'Ended'),
(2, 4, 'julio', 'qwqwe@gmail.com', '123145', 'Ended'),
(3, 4, 'julio', 'qwqwe@gmail.com', 'Eiras', 'Ended'),
(4, 4, 'julio', 'qwqwe@gmail.com', '1231224234', 'Ended'),
(5, 5, 'julio', 'qweqwe@gmail.com', 'dfdfds', 'Ended'),
(6, 4, 'julio', 'qwqwe@gmail.com', '123123', 'Ended'),
(7, 4, 'julio', 'qwqwe@gmail.com', 'testing', 'Ended');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_class`
--
ALTER TABLE `add_class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `add_course`
--
ALTER TABLE `add_course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `add_exam`
--
ALTER TABLE `add_exam`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `add_question`
--
ALTER TABLE `add_question`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `add_student`
--
ALTER TABLE `add_student`
  ADD PRIMARY KEY (`std_id`);

--
-- Indexes for table `admin_reg`
--
ALTER TABLE `admin_reg`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `assign_course`
--
ALTER TABLE `assign_course`
  ADD PRIMARY KEY (`assign_id`);

--
-- Indexes for table `exam_answers`
--
ALTER TABLE `exam_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `std_exam_status`
--
ALTER TABLE `std_exam_status`
  ADD PRIMARY KEY (`status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_class`
--
ALTER TABLE `add_class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `add_course`
--
ALTER TABLE `add_course`
  MODIFY `course_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `add_exam`
--
ALTER TABLE `add_exam`
  MODIFY `exam_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `add_question`
--
ALTER TABLE `add_question`
  MODIFY `question_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `add_student`
--
ALTER TABLE `add_student`
  MODIFY `std_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `admin_reg`
--
ALTER TABLE `admin_reg`
  MODIFY `adm_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assign_course`
--
ALTER TABLE `assign_course`
  MODIFY `assign_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exam_answers`
--
ALTER TABLE `exam_answers`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `std_exam_status`
--
ALTER TABLE `std_exam_status`
  MODIFY `status_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
