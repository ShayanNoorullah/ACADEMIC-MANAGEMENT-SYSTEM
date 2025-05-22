-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2025 at 07:01 PM
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
-- Database: `academic_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `announcement_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`announcement_id`, `section_id`, `teacher_id`, `title`, `message`, `created_at`) VALUES
(1, 1, 1, 'Welcome to Introduction to Programming', 'Welcome everyone to our class! Please check the syllabus on the course page and come prepared for our first lecture on Monday.', '2021-01-05 05:00:00'),
(2, 1, 1, 'Assignment 1 Posted', 'The first assignment has been posted with a due date of February 15th. Start early and ask questions if you have any!', '2021-01-12 09:30:00'),
(3, 3, 2, 'Data Structures Textbook', 'Please ensure you have access to the required textbook by next week. We will start covering Chapter 1 on arrays and linked lists.', '2021-01-06 04:15:00'),
(4, 5, 3, 'Database Systems Lab', 'Our first lab session will be this Wednesday in the computer lab (Science Bldg Room 110). Bring your laptops if you have them.', '2021-01-08 11:45:00'),
(5, 12, 1, 'Digital Electronics Project', 'The project guidelines have been posted. Please form teams of 2-3 students and submit your team members by Friday.', '2021-01-14 06:20:00'),
(6, 16, 2, 'Calculus I Office Hours Change', 'My office hours this week will be moved to Thursday 2-3pm due to a faculty meeting.', '2021-01-18 03:00:00'),
(7, 18, 1, 'Class Cancelled', 'Class this Friday is cancelled. Please use the time to work on your assignments. We will cover the material next week.', '2021-01-19 12:30:00'),
(8, 24, 2, 'AI Midterm Review', 'There will be an optional review session for the midterm next Monday at 5pm in Engineering Bldg Room 150.', '2021-02-01 07:00:00'),
(9, 14, 3, 'Financial Accounting Resources', 'I\'ve posted additional practice problems on the course page. These are not required but will help prepare for the quiz.', '2021-01-21 05:45:00'),
(10, 19, 2, 'Quantum Physics Guest Lecture', 'We will have a guest lecture from Dr. Smith from MIT next week on quantum computing applications.', '2021-01-25 10:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `assignment_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `due_date` datetime NOT NULL,
  `max_points` decimal(5,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `file_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`assignment_id`, `section_id`, `title`, `description`, `due_date`, `max_points`, `created_at`, `file_path`) VALUES
(1, 1, 'Python Basics', 'Write a Python program that calculates factorial', '2021-02-15 23:59:00', 100.00, '2025-04-26 13:19:53', 'https://www.example.com/'),
(2, 1, 'Control Structures', 'Implement a program with loops and conditionals', '2021-03-01 23:59:00', 100.00, '2025-04-26 13:19:53', 'https://www.example.com/'),
(3, 3, 'Linked List', 'Implement a singly linked list in Java', '2021-02-20 23:59:00', 100.00, '2025-04-26 13:19:53', 'https://www.example.com/'),
(4, 5, 'ER Diagram', 'Design an ER diagram for a library system', '2021-03-10 23:59:00', 100.00, '2025-04-26 13:19:53', NULL),
(7, 12, 'Logic Gates', 'Design circuits using basic logic gates', '2021-03-05 23:59:00', 100.00, '2025-04-26 13:19:53', NULL),
(8, 14, 'Marketing Plan', 'Create a marketing plan for a new product', '2021-03-15 23:59:00', 150.00, '2025-04-26 13:19:53', NULL),
(9, 16, 'Calculus Problems', 'Solve the given calculus problems', '2021-02-28 23:59:00', 100.00, '2025-04-26 13:19:53', NULL),
(10, 18, 'Newtonian Physics', 'Solve physics problems using Newton\'s laws', '2021-03-08 23:59:00', 100.00, '2025-04-26 13:19:53', NULL),
(11, 2, 'Python Functions', 'Implement various Python functions', '2021-02-18 23:59:00', 100.00, '2025-04-26 13:19:53', NULL),
(12, 4, 'Sorting Algorithms', 'Implement bubble sort and merge sort', '2021-03-03 23:59:00', 100.00, '2025-04-26 13:19:53', NULL),
(13, 6, 'SQL Queries', 'Write SQL queries for the given database', '2021-03-12 23:59:00', 100.00, '2025-04-26 13:19:53', NULL),
(16, 13, 'Power Calculations', 'Calculate power distribution for given scenario', '2020-09-20 23:59:00', 100.00, '2025-04-26 13:19:53', NULL),
(18, 17, 'Matrix Operations', 'Perform matrix operations', '2020-09-30 23:59:00', 100.00, '2025-04-26 13:19:53', NULL),
(19, 19, 'Quantum Problems', 'Solve basic quantum physics problems', '2020-10-05 23:59:00', 100.00, '2025-04-26 13:19:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assignment_submission`
--

CREATE TABLE `assignment_submission` (
  `submit_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `submit_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `file_path` varchar(255) DEFAULT NULL,
  `grades` decimal(5,2) DEFAULT NULL,
  `comments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_submission`
--

INSERT INTO `assignment_submission` (`submit_id`, `assignment_id`, `student_id`, `submit_date`, `file_path`, `grades`, `comments`) VALUES
(41, 1, 41, '2021-02-14 10:30:00', '/submissions/1_1.py', 85.00, NULL),
(42, 1, 42, '2021-02-15 05:45:00', '/submissions/1_2.py', 92.00, NULL),
(43, 2, 41, '2021-02-28 13:20:00', '/submissions/2_1.py', 78.00, NULL),
(44, 3, 44, '2021-02-19 17:10:00', '/submissions/3_4.java', 88.00, NULL),
(45, 4, 46, '2021-03-09 09:15:00', '/submissions/4_6.pdf', 95.00, NULL),
(48, 7, 53, '2021-03-04 04:20:00', '/submissions/7_13.pdf', 85.00, NULL),
(49, 8, 55, '2021-03-14 08:40:00', '/submissions/8_15.docx', 135.00, NULL),
(50, 9, 41, '2021-02-27 12:55:00', '/submissions/9_17.pdf', 92.00, NULL),
(51, 10, 42, '2021-03-07 15:10:00', '/submissions/10_19.pdf', 88.00, NULL),
(52, 11, 43, '2021-02-17 14:30:00', '/submissions/11_3.py', 95.00, NULL),
(53, 12, 45, '2021-03-02 09:25:00', '/submissions/12_5.java', 85.00, NULL),
(54, 13, 47, '2021-03-11 11:50:00', '/submissions/13_7.sql', 90.00, NULL),
(57, 16, 54, '2020-09-19 10:20:00', '/submissions/16_14.pdf', 85.00, NULL),
(59, 18, 51, '2020-09-29 06:45:00', '/submissions/18_18.pdf', 90.00, NULL),
(60, 19, 50, '2020-10-04 09:00:00', '/submissions/19_20.pdf', 85.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `status` enum('present','absent','late','excused') NOT NULL,
  `date` date NOT NULL,
  `duration` decimal(4,2) DEFAULT NULL COMMENT 'Duration in hours'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `section_id`, `student_id`, `course_id`, `status`, `date`, `duration`) VALUES
(1, 1, 41, 1, 'present', '2021-01-11', 1.25),
(2, 1, 41, 1, 'present', '2021-01-13', 1.25),
(3, 1, 41, 1, 'late', '2021-01-18', 1.00),
(4, 1, 42, 1, 'present', '2021-01-11', 1.25),
(5, 1, 42, 1, 'absent', '2021-01-13', 0.00),
(6, 3, 44, 2, 'present', '2021-01-12', 1.25),
(7, 3, 44, 2, 'present', '2021-01-14', 1.25),
(8, 5, 46, 3, 'present', '2021-01-11', 1.25),
(9, 5, 46, 3, 'excused', '2021-01-13', 0.00),
(14, 12, 53, 7, 'present', '2021-01-12', 1.25),
(15, 14, 55, 9, 'present', '2021-01-15', 1.25),
(16, 16, 43, 11, 'present', '2021-01-12', 1.25),
(17, 16, 43, 11, 'present', '2021-01-19', 1.25),
(18, 18, 45, 13, 'present', '2021-01-14', 1.25),
(19, 18, 45, 13, 'present', '2021-01-21', 1.25),
(21, 9, 55, 4, 'present', '2025-05-13', 1.00);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(100) NOT NULL,
  `publisher` varchar(100) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `total_copies` int(11) DEFAULT 1,
  `available_copies` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `isbn`, `title`, `author`, `publisher`, `year`, `category`, `total_copies`, `available_copies`) VALUES
(1, '978-0134685991', 'Effective Java', 'Joshua Bloch', 'Addison-Wesley', 2018, 'Computer Science', 5, 4),
(2, '978-0262033848', 'Introduction to Algorithms', 'Cormen, Leiserson, Rivest, Stein', 'MIT Press', 2009, 'Computer Science', 3, 1),
(3, '978-0133970777', 'Fundamentals of Database Systems', 'Elmasri, Navathe', 'Pearson', 2016, 'Computer Science', 4, 2),
(4, '978-0134093413', 'Artificial Intelligence: A Modern Approach', 'Russell, Norvig', 'Pearson', 2020, 'Computer Science', 2, 2),
(5, '978-0073373842', 'Digital Design', 'M. Morris Mano', 'Pearson', 2012, 'Electrical Engineering', 3, 1),
(6, '978-0073380574', 'Microelectronic Circuits', 'Sedra, Smith', 'Oxford', 2015, 'Electrical Engineering', 2, 0),
(7, '978-1259577816', 'Marketing Management', 'Philip Kotler', 'Pearson', 2015, 'Business', 5, 4),
(8, '978-1259535311', 'Financial Accounting', 'Libby, Libby, Short', 'McGraw-Hill', 2016, 'Business', 4, 2),
(9, '978-0321999580', 'Calculus: Early Transcendentals', 'James Stewart', 'Cengage', 2016, 'Mathematics', 6, 3),
(10, '978-0321982384', 'Linear Algebra and Its Applications', 'David C. Lay', 'Pearson', 2015, 'Mathematics', 3, 1),
(11, '978-0321973610', 'University Physics', 'Young, Freedman', 'Pearson', 2015, 'Physics', 4, 3),
(12, '978-1107189638', 'Introduction to Quantum Mechanics', 'Griffiths', 'Cambridge', 2016, 'Physics', 2, 0),
(13, '978-0321775658', 'Campbell Biology', 'Urry, Cain, Wasserman', 'Pearson', 2016, 'Biology', 5, 3),
(14, '978-1464187954', 'Genetics: A Conceptual Approach', 'Benjamin Pierce', 'Freeman', 2017, 'Biology', 3, 1),
(15, '978-1319050627', 'Psychology', 'David Myers', 'Worth', 2018, 'Psychology', 4, 4),
(16, '978-0393264863', 'The Norton Shakespeare', 'William Shakespeare', 'Norton', 2015, 'Literature', 3, 2),
(17, '978-1305580349', 'Organic Chemistry', 'McMurry', 'Cengage', 2016, 'Chemistry', 4, 1),
(18, '978-0393937917', 'Worlds Together, Worlds Apart', 'Adelman et al', 'Norton', 2017, 'History', 3, 3),
(19, '978-0134477365', 'Computer Networking: A Top-Down Approach', 'Kurose, Ross', 'Pearson', 2017, 'Computer Science', 2, 0),
(20, '978-1119293576', 'Power System Analysis and Design', 'Glover, Sarma, Overbye', 'Cengage', 2017, 'Electrical Engineering', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `book_reserve`
--

CREATE TABLE `book_reserve` (
  `reserve_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `type` enum('borrow','reserve') NOT NULL,
  `due_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `status` enum('active','returned','overdue','cancelled') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_reserve`
--

INSERT INTO `book_reserve` (`reserve_id`, `book_id`, `student_id`, `type`, `due_date`, `return_date`, `status`) VALUES
(19, 1, 41, 'borrow', '2025-05-17', '2025-05-03', 'returned'),
(20, 2, 43, 'borrow', '2021-02-25', '2021-02-20', 'returned'),
(21, 3, 45, 'borrow', '2021-03-15', NULL, 'active'),
(22, 4, 47, 'reserve', '2021-03-10', NULL, 'active'),
(23, 5, 49, 'borrow', '2021-02-20', NULL, 'overdue'),
(24, 6, 51, 'borrow', '2021-04-01', NULL, 'active'),
(25, 7, 53, 'reserve', '2021-03-05', NULL, 'active'),
(26, 8, 55, 'borrow', '2021-02-28', '2021-02-25', 'returned'),
(27, 11, 41, 'reserve', '2021-03-01', '2025-05-03', 'returned'),
(28, 12, 44, 'borrow', '2025-05-17', NULL, 'active'),
(29, 13, 46, 'borrow', '2021-03-15', NULL, 'active'),
(30, 14, 48, 'reserve', '2021-03-08', NULL, 'active'),
(31, 15, 50, 'borrow', '2021-02-28', '2021-02-26', 'returned'),
(32, 16, 52, 'borrow', '2021-03-12', NULL, 'active'),
(33, 17, 54, 'borrow', '2021-02-20', NULL, 'overdue'),
(34, 18, 46, 'reserve', '2021-03-05', NULL, 'active'),
(35, 19, 48, 'borrow', '2021-03-11', NULL, 'active'),
(36, 20, 41, 'borrow', '2021-03-10', NULL, 'active'),
(37, 9, 41, 'borrow', '2025-05-10', '2025-04-26', 'returned');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content_file_path` varchar(255) DEFAULT NULL,
  `credits` int(11) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `syllabus` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `title`, `content_file_path`, `credits`, `department_id`, `syllabus`) VALUES
(1, 'Introduction to Programming', '/static/uploads/syllabi/course_1_syllabus_se_schema.docx', 3, 1, 'https://www.example.com/'),
(2, 'Data Structures', 'https://www.example.com/', 4, 1, 'https://www.example.com/'),
(3, 'Database Systems', 'https://www.example.com/', 3, 1, 'https://www.example.com/'),
(4, 'Artificial Intelligence', '/static/uploads/syllabi/course_4_syllabus_se_schema.docx', 4, 1, 'https://www.example.com/'),
(5, 'Computer Networks', 'https://www.example.com/', 3, 1, 'https://www.example.com/'),
(6, 'Circuit Theory', 'https://www.example.com/', 4, 2, 'https://www.example.com/'),
(7, 'Digital Electronics', 'https://www.example.com/', 3, 2, 'https://www.example.com/'),
(8, 'Power Systems', 'https://www.example.com/', 4, 2, 'https://www.example.com/'),
(9, 'Principles of Marketing', 'https://www.example.com/', 3, 3, 'https://www.example.com/'),
(10, 'Financial Accounting', 'https://www.example.com/', 3, 3, 'https://www.example.com/'),
(11, 'Calculus I', 'https://www.example.com/', 3, 4, 'https://www.example.com/'),
(12, 'Linear Algebra', 'https://www.example.com/', 3, 4, 'https://www.example.com/'),
(13, 'Classical Mechanics', 'https://www.example.com/', 4, 5, 'https://www.example.com/'),
(14, 'Quantum Physics', 'https://www.example.com/', 4, 5, 'https://www.example.com/'),
(15, 'Cell Biology', 'https://www.example.com/', 3, 6, 'https://www.example.com/'),
(16, 'Genetics', 'https://www.example.com/', 3, 6, 'https://www.example.com/'),
(17, 'Cognitive Psychology', 'https://www.example.com/', 3, 7, 'https://www.example.com/'),
(18, 'Shakespearean Literature', 'https://www.example.com/', 3, 8, 'https://www.example.com/'),
(19, 'Organic Chemistry', 'https://www.example.com/', 4, 9, 'https://www.example.com/'),
(20, 'World History Since 1500', 'https://www.example.com/', 3, 10, 'https://www.example.com/');

-- --------------------------------------------------------

--
-- Table structure for table `course_section_teacher`
--

CREATE TABLE `course_section_teacher` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `assigned_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `semester_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_section_teacher`
--

INSERT INTO `course_section_teacher` (`id`, `course_id`, `section_id`, `teacher_id`, `assigned_at`, `semester_id`) VALUES
(1, 1, 1, 1, '2020-12-14 19:00:00', 8),
(2, 1, 2, 1, '2020-12-14 19:00:00', 8),
(3, 2, 3, 2, '2020-12-14 19:00:00', 8),
(4, 2, 4, 2, '2020-12-14 19:00:00', 8),
(5, 3, 5, 3, '2020-12-14 19:00:00', 8),
(6, 3, 6, 3, '2020-12-14 19:00:00', 8),
(7, 5, 9, 2, '2020-08-09 19:00:00', 7),
(8, 7, 12, 1, '2020-12-14 19:00:00', 8),
(9, 8, 13, 2, '2020-08-09 19:00:00', 7),
(10, 9, 14, 3, '2020-12-14 19:00:00', 8),
(11, 11, 16, 2, '2020-12-14 19:00:00', 8),
(12, 12, 17, 3, '2020-08-09 19:00:00', 7),
(13, 13, 18, 1, '2020-12-14 19:00:00', 8),
(14, 14, 19, 2, '2020-08-09 19:00:00', 7),
(15, 4, 21, 1, '2020-08-09 19:00:00', 7),
(16, 4, 22, 1, '2020-08-09 19:00:00', 7),
(17, 4, 23, 1, '2020-08-09 19:00:00', 7),
(18, 4, 24, 2, '2020-12-14 19:00:00', 8),
(19, 4, 25, 2, '2020-12-14 19:00:00', 8),
(20, 4, 26, 2, '2020-12-14 19:00:00', 8),
(21, 19, 34, 1, '2020-08-09 19:00:00', 7),
(22, 16, 36, 2, '2021-01-04 19:00:00', 9);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(10) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `name`, `code`, `description`) VALUES
(1, 'Computer Science', 'CS', 'Department of Computer Science offering programs in software development, AI, and data science'),
(2, 'Electrical Engineering', 'EE', 'Department focusing on electrical systems, electronics, and power engineering'),
(3, 'Business Administration', 'BUS', 'School of Business offering MBA, BBA and other business programs'),
(4, 'Mathematics', 'MATH', 'Department of Pure and Applied Mathematics'),
(5, 'Physics', 'PHY', 'Department of Physics with specializations in quantum mechanics and astrophysics'),
(6, 'Biology', 'BIO', 'Department of Biological Sciences with research in genetics and microbiology'),
(7, 'Psychology', 'PSY', 'Department of Psychology offering clinical and research programs'),
(8, 'English Literature', 'ENG', 'Department of English Language and Literature'),
(9, 'Chemistry', 'CHEM', 'Department of Chemistry with organic and inorganic chemistry specializations'),
(10, 'History', 'HIST', 'Department of History covering ancient to modern history');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `enrollment_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `enrollment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('registered','dropped','completed') DEFAULT 'registered'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`enrollment_id`, `student_id`, `section_id`, `course_id`, `enrollment_date`, `status`) VALUES
(21, 41, 1, 1, '2021-01-11 03:00:00', 'registered'),
(22, 42, 1, 1, '2021-01-11 03:01:00', 'registered'),
(23, 43, 1, 1, '2021-01-11 03:02:00', 'registered'),
(24, 44, 2, 3, '2021-01-11 03:03:00', 'registered'),
(25, 45, 2, 4, '2021-01-11 03:04:00', 'registered'),
(26, 46, 3, 5, '2021-01-11 03:05:00', 'registered'),
(27, 47, 3, 6, '2021-01-11 03:06:00', 'registered'),
(28, 48, 4, 1, '2020-08-24 03:00:00', 'completed'),
(29, 49, 4, 1, '2020-08-24 03:01:00', 'completed'),
(30, 50, 5, 1, '2020-08-24 03:02:00', 'completed'),
(31, 51, 6, 2, '2021-01-11 03:07:00', 'registered'),
(32, 52, 6, 1, '2021-01-11 03:08:00', 'registered'),
(35, 55, 9, 4, '2021-01-11 03:10:00', 'registered'),
(38, 43, 12, 3, '2020-08-24 03:04:00', 'completed'),
(39, 44, 13, 2, '2021-01-11 03:13:00', 'registered'),
(40, 45, 14, 3, '2020-08-24 03:05:00', 'completed'),
(42, 41, 2, 1, '2025-05-01 06:42:24', 'registered'),
(45, 41, 3, 2, '2025-05-01 13:41:01', 'registered'),
(46, 41, 4, 2, '2025-05-01 13:41:01', 'registered'),
(51, 41, 5, 3, '2025-05-01 13:53:37', 'registered'),
(52, 41, 6, 3, '2025-05-01 13:53:37', 'registered'),
(54, 41, 16, 11, '2025-05-01 16:19:02', 'registered'),
(56, 41, 14, 9, '2025-05-01 16:19:53', 'dropped'),
(70, 41, 18, 13, '2025-05-01 16:57:17', 'dropped');

-- --------------------------------------------------------

--
-- Table structure for table `exam_course`
--

CREATE TABLE `exam_course` (
  `exam_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `type` enum('midterm','final','quiz','project') NOT NULL,
  `marks` decimal(5,2) NOT NULL,
  `total_marks` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_course`
--

INSERT INTO `exam_course` (`exam_id`, `course_id`, `section_id`, `student_id`, `type`, `marks`, `total_marks`) VALUES
(1, 1, 1, 41, 'midterm', 85.00, 100.00),
(2, 1, 1, 41, 'final', 92.00, 100.00),
(3, 1, 1, 42, 'midterm', 78.00, 100.00),
(4, 2, 3, 44, 'midterm', 88.00, 100.00),
(5, 2, 3, 44, 'final', 85.00, 100.00),
(6, 3, 5, 46, 'midterm', 92.00, 100.00),
(8, 5, 9, 50, 'midterm', 85.00, 100.00),
(11, 7, 12, 53, 'midterm', 88.00, 100.00),
(12, 8, 13, 54, 'final', 85.00, 100.00),
(13, 9, 14, 55, 'midterm', 90.00, 100.00),
(15, 11, 16, 43, 'midterm', 88.00, 100.00),
(16, 12, 17, 45, 'final', 85.00, 100.00),
(17, 13, 18, 47, 'midterm', 90.00, 100.00),
(18, 14, 19, 50, 'final', 92.00, 100.00),
(20, 1, 1, 42, 'final', 85.00, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `exam_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `mid1` float DEFAULT NULL,
  `mid2` float DEFAULT NULL,
  `project` float DEFAULT NULL,
  `quizzes` float DEFAULT NULL,
  `assignments` float DEFAULT NULL,
  `final_exam` float DEFAULT NULL,
  `final_result` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_results`
--

INSERT INTO `exam_results` (`exam_id`, `student_id`, `course_id`, `section_id`, `semester_id`, `mid1`, `mid2`, `project`, `quizzes`, `assignments`, `final_exam`, `final_result`, `created_at`, `updated_at`) VALUES
(0, 41, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, 88, 84, '2025-05-03 17:41:16', '2025-05-03 17:54:12'),
(2, 41, 6, 5, 8, 42, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-03 17:41:16', '2025-05-03 17:51:53'),
(3, 41, 2, 1, 8, NULL, NULL, NULL, NULL, NULL, 80, 78, '2025-05-03 17:41:16', '2025-05-03 17:51:53'),
(4, 42, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, 75.5, 76.5, '2025-05-03 17:41:16', '2025-05-03 17:54:12'),
(5, 41, 3, 2, 8, NULL, NULL, NULL, 18, NULL, NULL, NULL, '2025-05-03 17:41:16', '2025-05-03 17:54:12'),
(6, 41, 4, 2, 8, NULL, NULL, NULL, 19, NULL, NULL, NULL, '2025-05-03 17:41:16', '2025-05-03 17:54:12'),
(7, 41, 11, 1, 8, NULL, NULL, 28, NULL, NULL, NULL, NULL, '2025-05-03 17:41:16', '2025-05-03 17:54:12'),
(8, 41, 6, 4, 8, NULL, NULL, 30, NULL, NULL, NULL, NULL, '2025-05-03 17:41:16', '2025-05-03 17:41:16'),
(9, 42, 12, 2, 8, 38, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-03 17:41:16', '2025-05-03 17:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `financial_record`
--

CREATE TABLE `financial_record` (
  `record_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `due_date` date NOT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `status` enum('pending','paid','overdue','cancelled') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `financial_record`
--

INSERT INTO `financial_record` (`record_id`, `student_id`, `semester_id`, `amount`, `due_date`, `payment_method`, `status`) VALUES
(1, 41, 8, 5000.00, '2021-01-31', 'credit card', 'paid'),
(2, 42, 8, 5000.00, '2021-01-31', 'bank transfer', 'paid'),
(3, 43, 8, 5000.00, '2021-01-31', NULL, 'pending'),
(4, 44, 8, 5000.00, '2021-01-31', 'credit card', 'paid'),
(5, 45, 8, 5000.00, '2021-01-31', 'bank transfer', 'paid'),
(6, 46, 8, 5000.00, '2021-01-31', NULL, 'overdue'),
(7, 47, 8, 5000.00, '2021-01-31', 'credit card', 'paid'),
(8, 48, 7, 5000.00, '2020-08-31', 'bank transfer', 'paid'),
(9, 49, 7, 5000.00, '2020-08-31', 'credit card', 'paid'),
(10, 50, 7, 5000.00, '2020-08-31', 'bank transfer', 'paid'),
(11, 51, 8, 6000.00, '2021-01-31', 'credit card', 'paid'),
(12, 52, 7, 5000.00, '2020-08-31', NULL, 'overdue'),
(13, 53, 8, 5000.00, '2021-01-31', 'bank transfer', 'paid'),
(14, 54, 7, 6000.00, '2020-08-31', 'credit card', 'paid'),
(15, 55, 8, 5000.00, '2021-01-31', 'bank transfer', 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `internship`
--

CREATE TABLE `internship` (
  `inter_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `application_deadline` date NOT NULL,
  `posted_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_active` tinyint(1) DEFAULT 1,
  `link` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `internship`
--

INSERT INTO `internship` (`inter_id`, `title`, `company`, `description`, `location`, `start_date`, `end_date`, `application_deadline`, `posted_date`, `is_active`, `link`) VALUES
(1, 'Software Developer Intern', 'Tech Solutions Inc.', 'Summer internship for CS students to work on web development projects', 'New York, NY', '2025-06-01', '2025-08-31', '2025-04-15', '2025-01-09 19:00:00', 1, ''),
(2, 'Data Science Intern', 'Analytics Corp', 'Work with our data science team on machine learning projects', 'San Francisco, CA', '2025-06-15', '2025-09-15', '2025-06-01', '2025-01-14 19:00:00', 1, 'https://example.com/'),
(3, 'Electrical Engineering Intern', 'Power Systems Ltd', 'Assist with circuit design and testing for power systems', 'Chicago, IL', '2025-05-15', '2025-08-15', '2025-03-31', '2025-01-04 19:00:00', 1, ''),
(4, 'Marketing Intern', 'Global Ad Agency', 'Support marketing campaigns and social media strategy', 'Boston, MA', '2025-06-01', '2025-08-31', '2025-06-01', '2025-01-11 19:00:00', 1, 'https://example.com/'),
(5, 'Research Intern', 'BioTech Research', 'Assist with laboratory research in genetics', 'San Diego, CA', '2025-07-08', '2025-08-20', '2025-06-18', '2025-01-07 19:00:00', 1, 'https://example.com/'),
(6, 'Finance Intern', 'First National Bank', 'Learn banking operations and financial analysis', 'Charlotte, NC', '2025-06-01', '2025-08-31', '2025-04-10', '2025-01-17 19:00:00', 1, ''),
(7, 'Physics Research Intern', 'Quantum Labs', 'Assist with quantum computing research projects', 'Austin, TX', '2025-05-15', '2025-08-15', '2025-03-20', '2025-01-13 19:00:00', 1, ''),
(8, 'Human Resources Intern', 'People First Inc.', 'Learn HR processes and recruitment strategies', 'Denver, CO', '2025-06-01', '2025-08-31', '2025-06-01', '2025-01-19 19:00:00', 1, 'https://example.com/'),
(9, 'Chemical Engineering Intern', 'Materials Corp', 'Work on material testing and quality control', 'Houston, TX', '2025-05-10', '2025-08-10', '2025-03-25', '2025-01-15 19:00:00', 1, ''),
(10, 'History Research Intern', 'National Archives', 'Assist with archival research and documentation', 'Washington, DC', '2025-06-15', '2025-09-15', '2025-10-01', '2025-01-21 19:00:00', 1, 'https://example.com/');

-- --------------------------------------------------------

--
-- Table structure for table `office_hours`
--

CREATE TABLE `office_hours` (
  `hour_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `day` enum('monday','tuesday','wednesday','thursday','friday') NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `location` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `office_hours`
--

INSERT INTO `office_hours` (`hour_id`, `teacher_id`, `course_id`, `day`, `start_time`, `end_time`, `location`) VALUES
(1, 1, 1, 'monday', '11:00:00', '12:00:00', 'CS Building Room 101'),
(2, 1, 1, 'wednesday', '14:00:00', '15:00:00', 'CS Building Room 101'),
(3, 2, 2, 'tuesday', '13:00:00', '14:00:00', 'Engineering Building Room 205'),
(4, 2, 2, 'thursday', '11:00:00', '12:00:00', 'Engineering Building Room 205'),
(5, 3, 3, 'monday', '15:00:00', '16:00:00', 'Science Building Room 302'),
(6, 3, 3, 'wednesday', '16:00:00', '17:00:00', 'Science Building Room 302'),
(7, 4, 5, 'friday', '10:00:00', '11:00:00', 'Business Building Room 150'),
(8, 1, 7, 'tuesday', '14:00:00', '15:00:00', 'CS Building Room 101'),
(9, 2, 8, 'thursday', '13:00:00', '14:00:00', 'Engineering Building Room 205'),
(10, 3, 9, 'friday', '11:00:00', '12:00:00', 'Science Building Room 302'),
(11, 2, 11, 'tuesday', '15:00:00', '16:00:00', 'Engineering Building Room 205'),
(12, 3, 12, 'wednesday', '11:00:00', '12:00:00', 'Science Building Room 302'),
(13, 1, 13, 'friday', '14:00:00', '15:00:00', 'CS Building Room 101'),
(14, 2, 14, 'friday', '15:00:00', '16:00:00', 'Engineering Building Room 205');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `token_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires_at` datetime NOT NULL,
  `used` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`token_id`, `user_id`, `token`, `expires_at`, `used`) VALUES
(1, 7, 'Xyv-ZdAqXUvLmkLNg6sG3hqClqBWZr5xbxvaLcL1K88', '2025-04-26 20:31:08', 1),
(2, 7, 'q3YIbcJreOfAc09A7pCftHCUoHiOxOCYtgEASjC-8xE', '2025-05-07 16:31:18', 1),
(3, 7, '8PynQbhWSPOR2zpkKD8AC7XSW7JqK8Y8bm60qjRt94I', '2025-05-07 16:32:08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `section_id` int(11) NOT NULL,
  `section_number` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `instructor_id` int(11) DEFAULT NULL,
  `max_capacity` int(11) NOT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `day` enum('monday','tuesday','wednesday','thursday','friday','saturday','sunday') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`section_id`, `section_number`, `course_id`, `semester_id`, `instructor_id`, `max_capacity`, `time_start`, `time_end`, `day`) VALUES
(1, 1, 1, 8, 3, 30, '09:00:00', '10:00:00', 'monday'),
(2, 1, 1, 8, 3, 30, '13:00:00', '14:00:00', 'wednesday'),
(3, 2, 2, 8, 4, 25, '10:00:00', '12:00:00', 'tuesday'),
(4, 2, 2, 8, 4, 25, '10:00:00', '11:00:00', 'thursday'),
(5, 3, 3, 8, 5, 20, '14:00:00', '15:00:00', 'monday'),
(6, 3, 3, 8, 5, 20, '14:00:00', '15:00:00', 'wednesday'),
(9, 4, 5, 7, 4, 20, '08:00:00', '09:00:00', 'friday'),
(12, 4, 7, 8, 3, 20, '13:00:00', '14:00:00', 'tuesday'),
(13, 5, 8, 7, 4, 15, '12:00:00', '13:00:00', 'thursday'),
(14, 5, 9, 8, 5, 30, '09:00:00', '10:00:00', 'friday'),
(16, 5, 11, 8, 4, 25, '14:00:00', '15:00:00', 'tuesday'),
(17, 5, 12, 7, 5, 20, '10:00:00', '11:00:00', 'wednesday'),
(18, 5, 13, 8, 3, 20, '13:00:00', '14:00:00', 'friday'),
(19, 6, 14, 7, 4, 15, '14:00:00', '15:00:00', 'friday'),
(21, 3, 4, 7, 3, 20, '08:00:00', '09:00:00', 'tuesday'),
(22, 3, 4, 7, 3, 20, '08:00:00', '09:00:00', 'wednesday'),
(23, 3, 4, 7, 3, 20, '08:00:00', '09:00:00', 'thursday'),
(24, 10, 4, 8, 4, 30, '09:00:00', '10:00:00', 'monday'),
(25, 10, 4, 8, 4, 30, '09:00:00', '10:00:00', 'tuesday'),
(26, 10, 4, 8, 4, 30, '09:00:00', '10:00:00', 'wednesday'),
(34, 9, 19, 7, 3, 24, '14:00:00', '15:00:00', 'tuesday'),
(36, 7, 16, 9, 4, 20, '14:00:00', '15:00:00', 'friday');

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `semester_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `max_credits` int(11) NOT NULL,
  `is_current` tinyint(1) DEFAULT 0,
  `enroll_start` date DEFAULT NULL,
  `enroll_end` date DEFAULT NULL,
  `drop_start` date DEFAULT NULL,
  `drop_end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`semester_id`, `name`, `start_date`, `end_date`, `max_credits`, `is_current`, `enroll_start`, `enroll_end`, `drop_start`, `drop_end`) VALUES
(1, 'Fall 2018', '2018-08-27', '2018-12-15', 18, 0, NULL, NULL, NULL, NULL),
(2, 'Spring 2019', '2019-01-14', '2019-05-03', 18, 0, NULL, NULL, NULL, NULL),
(3, 'Summer 2019', '2019-05-20', '2019-08-02', 9, 0, NULL, NULL, NULL, NULL),
(4, 'Fall 2019', '2019-08-26', '2019-12-13', 18, 0, NULL, NULL, NULL, NULL),
(5, 'Spring 2020', '2020-01-13', '2020-05-01', 18, 0, NULL, NULL, NULL, NULL),
(6, 'Summer 2020', '2020-05-18', '2020-07-31', 9, 0, NULL, NULL, NULL, NULL),
(7, 'Fall 2020', '2020-08-24', '2020-12-11', 18, 0, NULL, NULL, NULL, NULL),
(8, 'Spring 2021', '2021-01-11', '2021-04-30', 18, 1, '2025-05-06', '2025-05-08', '2025-05-27', '2025-05-30'),
(9, 'Summer 2021', '2021-05-17', '2021-07-30', 12, 0, NULL, NULL, NULL, NULL),
(10, 'Fall 2021', '2021-08-23', '2021-12-10', 18, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `major` varchar(100) DEFAULT NULL,
  `program` enum('bachelors','masters','phd','diploma','certificate') NOT NULL,
  `enrollment_date` date NOT NULL,
  `current_semester` int(11) DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `user_id`, `date_of_birth`, `gender`, `address`, `phone`, `major`, `program`, `enrollment_date`, `current_semester`, `profile_pic`) VALUES
(41, 7, '2000-05-15', 'male', '123 University Ave, Apt 4B', '555-0101-9213', 'Computer Science', 'bachelors', '2019-08-25', 6, 'student_7_1739.jpg'),
(42, 8, '2001-02-20', 'female', '456 College St, Apt 12', '555-0102', 'Electrical Engineering', 'bachelors', '2020-01-15', 5, NULL),
(43, 9, '1999-11-10', 'male', '789 Campus Rd, Dorm A', '555-0103', 'Business Administration', 'bachelors', '2018-08-20', 8, NULL),
(44, 10, '2000-07-30', 'female', '321 Scholar Lane, Apt 7', '555-0104', 'Mathematics', 'bachelors', '2019-08-25', 6, NULL),
(45, 11, '2001-04-05', 'male', '654 Education Blvd', '555-0105', 'Physics', 'bachelors', '2020-01-15', 5, NULL),
(46, 12, '1998-09-22', 'female', '987 Learning St, Dorm B', '555-0106', 'Biology', 'bachelors', '2018-08-20', 8, NULL),
(47, 13, '2000-12-18', 'male', '135 Knowledge Way', '555-0107', 'Psychology', 'bachelors', '2019-08-25', 6, NULL),
(48, 14, '2001-03-25', 'female', '246 Wisdom Ave', '555-0108', 'English Literature', 'bachelors', '2020-01-15', 5, NULL),
(49, 15, '1997-06-14', 'male', '357 Study Circle', '555-0109', 'Chemistry', 'bachelors', '2017-08-20', 9, NULL),
(50, 16, '2000-08-09', 'female', '468 Research Rd', '555-0110', 'Physics', 'bachelors', '2019-08-25', 6, NULL),
(51, 17, '1996-01-30', 'male', '579 Innovation Lane', '555-0111', 'Computer Science', 'masters', '2020-08-20', 3, NULL),
(52, 18, '1995-05-12', 'female', '680 Discovery Blvd', '555-0112', 'Electrical Engineering', 'phd', '2019-01-15', 5, NULL),
(53, 19, '2000-10-07', 'male', '791 Progress St', '555-0113', 'Business Administration', 'bachelors', '2020-08-25', 4, NULL),
(54, 20, '1999-07-19', 'female', '802 Future Ave', '555-0114', 'Mathematics', 'masters', '2021-01-15', 2, NULL),
(55, 21, '2000-02-28', 'male', '913 Horizon Rd', '555-0115', 'Physics', 'bachelors', '2020-08-25', 4, NULL),
(81, 26, '0000-00-00', 'female', 'None', 'None', 'Computer Science', 'bachelors', '2025-05-08', 46, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `salary` int(11) NOT NULL,
  `teaching_program` enum('bachelors','masters','phd','diploma','certificate') NOT NULL,
  `enrollment_date` date NOT NULL,
  `profile_pic` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `user_id`, `birth_date`, `gender`, `address`, `phone`, `salary`, `teaching_program`, `enrollment_date`, `profile_pic`) VALUES
(1, 3, '1975-03-15', 'male', '123 Faculty Lane, University Town', '555-0201', 75000, 'bachelors', '2010-08-15', 'teacher_3_30632.jpg'),
(2, 4, '1980-07-22', 'female', '456 Professor Ave, Academic City', '555-0202', 82000, 'masters', '2012-01-10', NULL),
(3, 5, '1978-11-30', 'male', '789 Scholar Road, Collegeville', '555-0203', 68000, 'phd', '2015-08-20', NULL),
(4, 6, '1985-05-18', 'female', '321 Education Blvd, Campus City', '555-0204', 78000, 'phd', '2018-01-05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transcript`
--

CREATE TABLE `transcript` (
  `transcript_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `grade` varchar(2) NOT NULL,
  `points` decimal(3,2) NOT NULL,
  `type` enum('core','elective') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transcript`
--

INSERT INTO `transcript` (`transcript_id`, `student_id`, `course_id`, `semester_id`, `grade`, `points`, `type`) VALUES
(1, 41, 1, 8, 'A', 4.00, 'core'),
(2, 41, 2, 7, 'B+', 3.30, 'core'),
(3, 42, 1, 8, 'B', 3.00, 'core'),
(4, 43, 3, 7, 'A-', 3.70, 'core'),
(5, 44, 4, 6, 'B+', 3.30, 'core'),
(6, 45, 5, 6, 'A', 4.00, 'core'),
(7, 46, 6, 7, 'B', 3.00, 'core'),
(8, 47, 7, 7, 'C+', 2.30, 'elective'),
(9, 48, 8, 5, 'A-', 3.70, 'core'),
(10, 49, 9, 5, 'B+', 3.30, 'core'),
(11, 50, 10, 6, 'A', 4.00, 'core'),
(12, 51, 11, 7, 'B', 3.00, 'core'),
(13, 52, 12, 5, 'A-', 3.70, 'core'),
(14, 53, 13, 6, 'B+', 3.30, 'elective'),
(15, 54, 14, 5, 'A', 4.00, 'core'),
(16, 55, 15, 7, 'B', 3.00, 'core');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('student','teacher','admin') NOT NULL DEFAULT 'student',
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `role`, `first_name`, `last_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'admin1@university.edu', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'admin', 'John', 'Smith', 1, '2025-04-26 12:25:08', '2025-05-07 10:29:02'),
(2, 'admin2@university.edu', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'admin', 'Sarah', 'Johnson', 1, '2025-04-26 12:25:08', '2025-05-07 10:29:02'),
(3, 'prof.miller@university.edu', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'teacher', 'Robert', 'Miller', 1, '2025-04-26 12:25:08', '2025-05-07 10:29:02'),
(4, 'dr.wilson@university.edu', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'teacher', 'Emily', 'Wilson', 1, '2025-04-26 12:25:08', '2025-05-07 10:29:02'),
(5, 'prof.davis@university.edu', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'teacher', 'Michael', 'Davis', 1, '2025-04-26 12:25:08', '2025-05-07 10:29:03'),
(6, 'dr.thomas@university.edu', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'teacher', 'Jennifer', 'Thomas', 1, '2025-04-26 12:25:08', '2025-05-07 10:29:03'),
(7, 'student1@university.edu', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'student', 'Alex', 'Johnson', 1, '2025-04-26 12:25:08', '2025-05-07 10:42:21'),
(8, 'student2@university.edu', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'student', 'Maria', 'Garcia', 1, '2025-04-26 12:25:08', '2025-05-07 10:29:03'),
(9, 'student3@university.edu', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'student', 'David', 'Lee', 1, '2025-04-26 12:25:08', '2025-05-07 10:29:03'),
(10, 'student4@university.edu', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'student', 'Sophia', 'Martinez', 1, '2025-04-26 12:25:08', '2025-05-07 10:29:03'),
(11, 'student5@university.edu', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'student', 'James', 'Brown', 1, '2025-04-26 12:25:08', '2025-05-07 10:29:03'),
(12, 'student6@university.edu', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'student', 'Emma', 'Wilson', 1, '2025-04-26 12:25:08', '2025-05-07 10:29:03'),
(13, 'student7@university.edu', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'student', 'Daniel', 'Taylor', 1, '2025-04-26 12:25:08', '2025-05-07 10:29:03'),
(14, 'student8@university.edu', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'student', 'Olivia', 'Anderson', 1, '2025-04-26 12:25:08', '2025-05-07 10:29:03'),
(15, 'student9@university.edu', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'student', 'Matthew', 'Thomas', 1, '2025-04-26 12:25:08', '2025-05-07 10:29:03'),
(16, 'student10@university.edu', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'student', 'Ava', 'Hernandez', 1, '2025-04-26 12:25:08', '2025-05-07 10:29:03'),
(17, 'student11@university.edu', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'student', 'Christopher', 'Moore', 1, '2025-04-26 12:25:08', '2025-05-07 10:29:03'),
(18, 'student12@university.edu', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'student', 'Isabella', 'Martin', 1, '2025-04-26 12:25:08', '2025-05-07 10:29:03'),
(19, 'student13@university.edu', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'student', 'Andrew', 'Jackson', 1, '2025-04-26 12:25:08', '2025-05-07 10:29:03'),
(20, 'student14@university.edu', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'student', 'Mia', 'Thompson', 1, '2025-04-26 12:25:08', '2025-05-07 10:29:03'),
(21, 'student15@university.edu', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'student', 'Ethan', 'White', 1, '2025-04-26 12:25:08', '2025-05-07 10:29:03'),
(26, 'marium.arif@university.edu', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'student', 'Marium', 'Arif', 1, '2025-05-08 08:39:48', '2025-05-08 08:39:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`announcement_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`assignment_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `assignment_submission`
--
ALTER TABLE `assignment_submission`
  ADD PRIMARY KEY (`submit_id`),
  ADD UNIQUE KEY `assignment_id` (`assignment_id`,`student_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD UNIQUE KEY `section_id` (`section_id`,`student_id`,`date`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `isbn` (`isbn`);

--
-- Indexes for table `book_reserve`
--
ALTER TABLE `book_reserve`
  ADD PRIMARY KEY (`reserve_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `course_section_teacher`
--
ALTER TABLE `course_section_teacher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_course_section` (`course_id`,`section_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `fk_semester_section_course` (`semester_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`enrollment_id`),
  ADD UNIQUE KEY `student_id` (`student_id`,`section_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `exam_course`
--
ALTER TABLE `exam_course`
  ADD PRIMARY KEY (`exam_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`exam_id`),
  ADD UNIQUE KEY `unique_exam_record` (`student_id`,`course_id`,`semester_id`,`section_id`) USING BTREE,
  ADD KEY `course_id` (`course_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indexes for table `financial_record`
--
ALTER TABLE `financial_record`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indexes for table `internship`
--
ALTER TABLE `internship`
  ADD PRIMARY KEY (`inter_id`);

--
-- Indexes for table `office_hours`
--
ALTER TABLE `office_hours`
  ADD PRIMARY KEY (`hour_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `fk_assignment_submission_course` (`course_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`section_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `semester_id` (`semester_id`),
  ADD KEY `instructor_id` (`instructor_id`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`semester_id`),
  ADD UNIQUE KEY `name` (`name`,`start_date`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `transcript`
--
ALTER TABLE `transcript`
  ADD PRIMARY KEY (`transcript_id`),
  ADD UNIQUE KEY `student_id` (`student_id`,`course_id`,`semester_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `assignment_submission`
--
ALTER TABLE `assignment_submission`
  MODIFY `submit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `book_reserve`
--
ALTER TABLE `book_reserve`
  MODIFY `reserve_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `course_section_teacher`
--
ALTER TABLE `course_section_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `enrollment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `exam_course`
--
ALTER TABLE `exam_course`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `financial_record`
--
ALTER TABLE `financial_record`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `internship`
--
ALTER TABLE `internship`
  MODIFY `inter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `office_hours`
--
ALTER TABLE `office_hours`
  MODIFY `hour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  MODIFY `token_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `semester_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transcript`
--
ALTER TABLE `transcript`
  MODIFY `transcript_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `sections` (`section_id`) ON DELETE CASCADE;

--
-- Constraints for table `assignment_submission`
--
ALTER TABLE `assignment_submission`
  ADD CONSTRAINT `assignment_submission_ibfk_1` FOREIGN KEY (`assignment_id`) REFERENCES `assignments` (`assignment_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assignment_submission_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE;

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `sections` (`section_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendance_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE;

--
-- Constraints for table `book_reserve`
--
ALTER TABLE `book_reserve`
  ADD CONSTRAINT `book_reserve_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_reserve_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`);

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `sections` (`section_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enrollments_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_course`
--
ALTER TABLE `exam_course`
  ADD CONSTRAINT `exam_course_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_course_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `sections` (`section_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_course_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD CONSTRAINT `exam_results_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_results_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_results_ibfk_3` FOREIGN KEY (`section_id`) REFERENCES `sections` (`section_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_results_ibfk_4` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`semester_id`) ON DELETE CASCADE;

--
-- Constraints for table `financial_record`
--
ALTER TABLE `financial_record`
  ADD CONSTRAINT `financial_record_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `financial_record_ibfk_2` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`semester_id`) ON DELETE CASCADE;

--
-- Constraints for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD CONSTRAINT `password_reset_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  ADD CONSTRAINT `sections_ibfk_2` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`semester_id`),
  ADD CONSTRAINT `sections_ibfk_3` FOREIGN KEY (`instructor_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transcript`
--
ALTER TABLE `transcript`
  ADD CONSTRAINT `transcript_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transcript_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transcript_ibfk_3` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`semester_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
