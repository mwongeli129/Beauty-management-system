-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2024 at 10:53 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `attendance_date` datetime NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student_id`, `session_id`, `attendance_date`, `student_name`, `subject`, `created_at`, `updated_at`) VALUES
(1, 17, 1, '2024-07-17 11:53:18', 'amisi', 'Streteic Information System', '2024-07-17 11:53:18', '2024-07-17 11:53:18'),
(2, 8, 1, '2024-07-19 09:27:23', 'bro', 'Streteic Information System', '2024-07-19 09:27:23', '2024-07-19 09:27:23'),
(3, 12, 2, '2024-07-19 13:01:51', 'fred Amisi', 'E-commerce', '2024-07-19 13:01:51', '2024-07-19 13:01:51'),
(4, 14, 2, '2024-07-19 13:02:31', 'abu', 'E-commerce', '2024-07-19 13:02:31', '2024-07-19 13:02:31'),
(5, 15, 2, '2024-07-19 13:02:54', 'abu2', 'E-commerce', '2024-07-19 13:02:54', '2024-07-19 13:02:54'),
(6, 12, 1, '2024-07-19 13:59:49', 'fred Amisi', 'Streteic Information System', '2024-07-19 13:59:49', '2024-07-19 13:59:49');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_code` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `course_image` varchar(255) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `course_code`, `description`, `teacher_id`, `course_image`, `upload_date`) VALUES
(6, 'Networking', 'CIT4342', 'Networking', 1, 'WhatsApp Image 2024-06-11 at 12.15.21_66c81d45.jpg', '2024-06-21 07:35:24'),
(9, 'Python', 'CIT4343', 'Learn Python basics, data analysis, web development with Flask, and data visualization in 8 weeks.', 1, 'p.jpg', '2024-06-21 07:35:24'),
(11, 'Java', 'CIT4040', 'Java course covers fundamentals, OOP, GUI, data structures, web development, and databases in 10 weeks.', 1, 'j.jpg', '2024-06-21 07:35:24'),
(14, 'E-commerce', 'cit 4202', 'E-commerce enables buying and selling goods online, streamlining transactions digitally.', 1, 'uploads/ec.jpg', '2024-07-19 09:41:38');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `course_id` int(11) NOT NULL,
  `enrollment_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`id`, `student_name`, `email`, `course_id`, `enrollment_date`) VALUES
(2, 'Essie', 'essie@gmail.com', 6, '2024-06-21 07:35:50'),
(3, 'Abu', 'abuu1573@gmail.com', 9, '2024-06-21 07:44:58'),
(5, 'fred', 'fred@gmail.com', 6, '2024-07-19 13:59:26');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_tel` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `signin_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `email`, `signin_date`) VALUES
(1, 'Fred Amisi', 'freddy@gmail.com', '2024-06-21 07:34:42');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `id` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `day` varchar(20) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `instructor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`id`, `subject`, `day`, `start_time`, `end_time`, `instructor`) VALUES
(1, 'Streteic Information System', 'Monday', '10:00:00', '13:00:00', 'Mrs. Matilda'),
(2, 'E-commerce', 'Friday', '07:30:00', '10:00:00', 'Dr.Omieno');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `role` enum('student','teacher','admin') NOT NULL,
  `phonenumber` varchar(15) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `is_admin` tinyint(1) GENERATED ALWAYS AS (if(`role` = 'Admin',1,NULL)) STORED,
  `signin_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `role`, `phonenumber`, `password`, `token`, `signin_date`) VALUES
(2, 'Esther Mwongeli', 'esther@gmail.com', 'essie', 'teacher', '113918190', '$2y$10$/NhuYirM45OQ61CSjhJPiepp5iAt0XqetFXsjxyUpIXoWERRaywkm', NULL, '2024-06-21 07:33:23'),
(4, 'Jane Smith', 'jane@example.com', 'User2', 'teacher', '2345678901', '$2y$10$eImiTXuWVxfM37uY4JANjQeGq.GpJAfk9KPdMniUhPx4C3l0yG6Xu', NULL, '2024-06-21 07:33:23'),
(5, 'Mike Johnson', 'mike@example.com', 'User3', 'student', '3456789012', '$2y$10$eImiTXuWVxfM37uY4JANjQeGq.GpJAfk9KPdMniUhPx4C3l0yG6Xu', NULL, '2024-06-21 07:33:23'),
(6, 'Essie', 'essie@gmail.com', 'essie', 'teacher', '113918190', '$2y$10$1Y6kjq0u5/DRhKi2uWZfSeTFRHCVQvabujQFvE53YxxDPIIJaQJVG', NULL, '2024-06-21 07:33:23'),
(8, 'bro', 'bro@gmail.com', 'bro', 'student', '113918190', '$2y$10$4TPhb08M9/bpLbOFzOVQWOagmBKwKDr.3rNwOjA.KUdvkrpbH72Ti', NULL, '2024-06-21 07:33:23'),
(9, 'Fred', 'freddy@gmail.com', 'fred', 'admin', '113918190', '$2y$10$JeOcuu23OgtyRXVDQteyO.S7FaJYHmn.Hr3KOofmDKCqiQhney5xO', NULL, '2024-06-21 08:50:31'),
(10, 'Fred Amisi', 'freddy@gmail.com', 'fred', 'student', '113918190', '$2y$10$hSyumWMDtL6Zk6dguqesNuRatNQrU/hGYlQ38aLO4gkClUL7y5u9W', NULL, '2024-06-23 11:13:36'),
(12, 'fred Amisi', 'fred@gmail.com', 'amisi', 'student', '0113928190', '$2y$10$DF/etxmdc9I0BpqFRsD/.u3ItXoEDuA0G0Wbsyep.t7gol9YKp9.a', NULL, '2024-07-15 20:55:40'),
(13, 'fred1', 'fred1@gmail.com', 'amisi', 'student', '0113928190', '$2y$10$elgFTqkiAW8e4c.e/I2mJuLLTYp0IqcGYtKd9d9tXXlc3M64V/M52', NULL, '2024-07-15 21:28:57'),
(14, 'abu', 'abu@gmail.com', 'abu1', 'student', '0765544332', '$2y$10$IeCxr.2os7Ksh5ZvOaRX2Ou7CRgJnjK1js5Ky09Jse.nEjiMTTo4i', NULL, '2024-07-15 22:13:43'),
(15, 'abu2', 'abu2@gmail.com', 'abu2', 'student', '0113928190', '$2y$10$mDedTokKNHPRXdKIf9KgOuD9vES07MFnqIlPsQzFkPNB9pTX4mXGC', NULL, '2024-07-15 22:32:44'),
(17, 'amisi', 'amisi@gmail.com', 'amisi', 'student', '0113928190', '$2y$10$DTKj87EX4xIV3k4zTQC0DOvRpbSwezZlRzux9o.Iypqrg9tw8EnLy', 'dc9836b468a70cbbc0f0310fef7db4b0', '2024-07-17 10:10:00');

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `before_insert_user` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
    IF NEW.role = 'Admin' THEN
        IF (SELECT COUNT(*) FROM Users WHERE role = 'Admin') >= 1 THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'There can only be one admin.';
        END IF;
    END IF;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_attendance` (`student_id`,`session_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_code` (`course_code`),
  ADD KEY `fk_teacher_id` (`teacher_id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `unique_email` (`email`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_admin` (`is_admin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `timetable` (`id`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `fk_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
