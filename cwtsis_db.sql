CREATE DATABASE cwts;


USE cwts;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cwtsis_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(10) UNSIGNED NOT NULL,
  `event` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `speaker` varchar(50) NOT NULL,
  `announcement_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'a',
  `created_at` datetime NOT NULL COMMENT 'Date of creation',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `event`, `description`, `speaker`, `announcement_date`, `start_time`, `end_time`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'Holy Mass', 'Holy Mass 2021 ', '', '2021-08-17', '15:45:00', '16:45:00', 'a', '2021-08-17 05:35:24', NULL, NULL),
(6, 'REPORT TO ME - Doc. Nelson', 'ALL DICT Student Report to me Tomorrow', '', '2021-08-25', '08:00:00', '09:00:00', 'a', '2021-08-24 10:31:01', NULL, NULL),
(7, 'DICT Grades', 'Posting of Grades DICT', '', '2021-09-23', '12:35:00', '13:35:00', 'a', '2021-09-23 12:35:14', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(10) UNSIGNED NOT NULL,
  `enroll_id` int(20) NOT NULL,
  `date` date NOT NULL,
  `timein` time NOT NULL,
  `timeout` time DEFAULT NULL,
  `user_id` int(20) NOT NULL,
  `status` char(20) NOT NULL,
  `created_at` datetime NOT NULL COMMENT 'Date of creation',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `enroll_id`, `date`, `timein`, `timeout`, `user_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(62, 17, '2021-08-11', '17:35:17', '17:49:16', 1, 'present', '2021-08-11 17:44:17', NULL, NULL),
(84, 55, '2021-08-23', '08:04:59', '10:05:35', 26, 'present', '2021-08-23 08:04:59', NULL, NULL),
(85, 56, '2021-08-23', '13:42:32', '16:29:31', 26, 'present', '2021-08-23 13:42:32', NULL, NULL),
(86, 57, '2021-08-23', '14:07:12', '16:29:41', 26, 'present', '2021-08-23 14:07:12', NULL, NULL),
(87, 60, '2021-08-24', '00:00:00', NULL, 0, 'absent', '2021-08-24 08:30:58', NULL, NULL),
(88, 73, '2021-08-24', '10:35:04', '20:37:21', 26, 'present', '2021-08-24 10:35:04', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(10) UNSIGNED NOT NULL,
  `course` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `created_at` datetime NOT NULL COMMENT 'Date of creation',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'DICT', 'Diploma in Communication Technology', 'a', '2021-06-04 03:06:50', '2021-06-21 10:36:50', NULL),
(2, 'BSIT', 'Bachelor\'s of Science Information Technology', 'a', '2021-06-09 22:28:48', '2021-06-09 22:29:17', '2021-06-21 11:37:53'),
(3, 'DOMT', 'Diploma in Office Management Technology', 'a', '2021-06-23 00:31:22', NULL, NULL),
(4, 'ME', 'Mechanical Engineering', 'a', '2021-06-23 00:37:00', '2021-06-23 00:54:43', NULL),
(5, 'BSED-ENG', 'Bachelor of Secondary Education Major in English', 'a', '2021-09-23 12:33:24', NULL, NULL),
(6, 'BSED-MATH', 'Bachelor of Secondary Education Major in Mathematics', 'a', '2021-11-12 10:33:24', NULL, NULL),
(7, 'BSECE', 'Bachelor of Science in Electronics Comunication Technology', 'a', '2021-11-28 3:18:24', NULL, NULL),
(8, 'BSA', 'Bachelor of Science in Accountancy', 'a', '2021-11-28 3:18:24', NULL, NULL),
(9, 'BSOA', 'Bachelor of Science in Office Administration', 'a', '2021-11-28 3:18:24', NULL, NULL),
(10, 'BSBA-HRM', 'Bachelor of Science in Business Administration Major in Human Resouce Management', 'a', '2021-11-28 3:18:24', NULL, NULL);
-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `schyear_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `stud_num` varchar(50) NOT NULL,
  `required_hrs` varchar(20) NOT NULL,
  `accumulated_hrs` varchar(10) NOT NULL,
  `professor_id` int(11) NOT NULL,
  `day` varchar(20) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`id`, `subject_id`, `schyear_id`, `student_id`, `stud_num`, `required_hrs`, `accumulated_hrs`, `professor_id`, `day`, `start_time`, `end_time`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(55, 1, 1, 88, '2018-00231-TG-0', '33.04', '2.00', 26, 'Monday', '07:30:00', '10:30:00', 'i', '2021-08-23 08:04:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 1, 1, 89, '2018-00341-TG-0', '20', '2.46', 26, 'Monday', '13:30:00', '16:30:00', 'i', '2021-08-23 13:41:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 1, 1, 90, '2018-00525-TG-0', '8.07', '2.22', 26, 'Monday', '13:30:00', '16:30:00', 'i', '2021-08-23 14:06:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 1, 1, 93, '2018-00484-TG-0', '8', '', 26, 'Tuesday', '07:30:00', '10:30:00', 'i', '2021-08-24 08:30:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 1, 1, 106, '2018-00343-TG-0', '3', '10.02', 26, 'Tuesday', '10:30:00', '13:30:00', 'c', '2021-08-24 10:34:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 2, 1, 106, '2018-00343-TG-0', '3', '', 26, 'Wednesday', '07:30:00', '10:30:00', 'i', '2021-08-25 06:05:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 0, 1, 107, '2018-00556-TG-0', '', '', 0, '', '00:00:00', '00:00:00', 'g', '2021-08-25 06:07:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 0, 1, 108, '2018-45579-TG-0', '', '', 0, '', '00:00:00', '00:00:00', 'g', '2021-08-25 06:07:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 1, 1, 109, '2018-00372-TG-0', '3', '', 26, 'Friday', '13:30:00', '16:30:00', 'i', '2021-09-23 12:26:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 1, 2, 110,'2018-00291-TG-0', '30', '', 26, 'Thursday', '07:30:00', '10:30:00', 'i', '2021-11-29 10:49:00','0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 1, 2, 111,'2018-00362-TG-0', '30', '', 26, 'Thursday', '07:30:00', '10:30:00', 'i', '2021-11-29 10:49:00','0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 1, 2, 112, '2018-00222-TG-0', '30', '', 26, 'Thursday', '07:30:00', '10:30:00', 'i', '2021-11-29 10:49:00','0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(255) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '20191121174600', 'App\\Database\\Migrations\\CreateRole', 'default', 'App', 1622076232, 1),
(2, '20191121175800', 'App\\Database\\Migrations\\CreateUsers', 'default', 'App', 1622076232, 1),
(3, '20191130211700', 'App\\Database\\Migrations\\CreatePermissions', 'default', 'App', 1622076232, 1),
(4, '20191201134000', 'App\\Database\\Migrations\\CreateModules', 'default', 'App', 1622076232, 1),
(5, '20210107150700', 'App\\Database\\Migrations\\CreatePenalty', 'default', 'App', 1622076232, 1),
(6, '20210107150800', 'App\\Database\\Migrations\\CreatePenaltyType', 'default', 'App', 1622076232, 1),
(7, '20210107151000', 'App\\Database\\Migrations\\CreateAttendance', 'default', 'App', 1622076232, 1),
(8, '20210107151000', 'App\\Database\\Migrations\\CreateCurrent', 'default', 'App', 1622076232, 1),
(9, '20210107151100', 'App\\Database\\Migrations\\CreateStudentTime', 'default', 'App', 1622076232, 1),
(10, '20210107151200', 'App\\Database\\Migrations\\CreateAnnouncement', 'default', 'App', 1622076232, 1),
(11, '20210107151300', 'App\\Database\\Migrations\\CreateSchYear', 'default', 'App', 1622076232, 1),
(12, '20210107151400', 'App\\Database\\Migrations\\CreateCourses', 'default', 'App', 1622076232, 1),
(13, '20210322041700', 'App\\Database\\Migrations\\CreateStudents', 'default', 'App', 1622076232, 1),
(14, '20210322041701', 'App\\Database\\Migrations\\CreateSubjects', 'default', 'App', 1622076232, 1),
(15, '20210512201701', 'App\\Database\\Migrations\\CreateGenders', 'default', 'App', 1622076232, 1),
(16, '20210512201701', 'App\\Database\\Migrations\\CreatePenalties', 'default', 'App', 1622076232, 1),
(17, '20210512201701', 'App\\Database\\Migrations\\CreateSections', 'default', 'App', 1622076232, 1),
(18, '20210512201701', 'App\\Database\\Migrations\\CreateYears', 'default', 'App', 1622076232, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `module_name` varchar(250) NOT NULL,
  `module_description` text NOT NULL,
  `module_icon` text NOT NULL,
  `order` int(11) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `created_at` datetime NOT NULL COMMENT 'Date of creation',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module_name`, `module_description`, `module_icon`, `order`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user management', 'user management', '<i class=\"fas fa-users-cog\"></i>', 1, 'a', '2021-05-26 19:43:56', NULL, NULL),
(2, 'penalty management', 'penalty management', '<i class=\"fas fa-users-slash\"></i>', 2, 'a', '2021-05-26 19:43:56', NULL, NULL),
(3, 'table management', 'table management', '<i class=\"fas fa-users-cog\"></i>', 3, 'a', '2021-05-26 19:43:56', NULL, NULL),
(4, 'announcement', 'announcement', '<i class=\"fas fa-users-cog\"></i>', 4, 'a', '2021-05-26 19:43:56', NULL, NULL),
(5, 'student management', 'student management', '<i class=\"fas fa-chalkboard-teacher\"></i>', 5, 'a', '2021-05-26 19:43:56', NULL, NULL),
(6, 'attendance management', 'attendance management', '<i class=\"fas fa-users-cog\"></i>', 6, 'a', '2021-05-26 19:43:56', NULL, NULL),
(7, 'maintenances', 'maintenances', '<i class=\"fas fa-tools\"></i>', 7, 'a', '2021-05-26 19:43:56', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `penalties`
--

CREATE TABLE `penalties` (
  `id` int(10) UNSIGNED NOT NULL,
  `penalty` varchar(50) NOT NULL,
  `hours` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `created_date` datetime NOT NULL COMMENT 'Date of creation',
  `updated_date` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_date` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `penalties`
--

INSERT INTO `penalties` (`id`, `penalty`, `hours`, `status`, `created_date`, `updated_date`, `deleted_date`) VALUES
(1, 'Absent', '5', 'a', '2021-06-21 22:14:38', NULL, '2021-06-21 22:28:06'),
(2, 'Absent (Seminar)', '20', 'a', '2021-06-23 00:51:57', NULL, '2021-08-26 19:57:39'),
(3, 'Doing Nothing', '1', 'a', '2021-09-23 12:34:17', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `penalty`
--

CREATE TABLE `penalty` (
  `id` int(10) UNSIGNED NOT NULL,
  `enrollment_id` int(20) NOT NULL,
  `date` date NOT NULL,
  `hours` int(11) NOT NULL,
  `user_id` int(20) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `other_reason` varchar(100) NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_at` datetime NOT NULL COMMENT 'Date of creation',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `penalty`
--

INSERT INTO `penalty` (`id`, `enrollment_id`, `date`, `hours`, `user_id`, `reason`, `other_reason`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(27, 55, '2021-08-26', 5, 1, '2', '', 'a', '2021-08-26 19:58:03', NULL, NULL),
(28, 60, '2021-09-04', 5, 1, '1', '', 'a', '2021-09-04 19:00:02', NULL, NULL),
(29, 57, '2021-09-23', 5, 1, '2', '', 'a', '2021-09-23 12:31:51', NULL, NULL),
(30, 55, '2021-09-23', 3, 1, '0', 'Using Cellphone', 'a', '2021-09-23 12:32:06', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_on_class` varchar(250) NOT NULL,
  `function_name` varchar(50) NOT NULL,
  `function_description` text NOT NULL,
  `link_icon` text DEFAULT NULL,
  `slugs` varchar(50) NOT NULL,
  `page_title` varchar(50) NOT NULL,
  `module_id` int(11) NOT NULL,
  `table_name` varchar(100) NOT NULL,
  `func_action` varchar(50) DEFAULT NULL,
  `allowed_roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`allowed_roles`)),
  `order` int(11) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `func_type` int(1) NOT NULL DEFAULT 3,
  `created_at` datetime NOT NULL COMMENT 'Date of creation',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name_on_class`, `function_name`, `function_description`, `link_icon`, `slugs`, `page_title`, `module_id`, `table_name`, `func_action`, `allowed_roles`, `order`, `status`, `func_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'enroll_student', 'Enroll Student', 'enroll student', '', 'enroll-student', 'enroll_student', 5, 'enroll', 'add', '[1]', 43, 'a', 3, '2021-05-26 19:43:55', '2021-09-23 12:31:31', NULL),
(2, 'index', 'enrolled student list', 'list of enroll student', '<i class=\"fas fa-file-invoice\"></i>', 'list-enroll-student', 'list of enroll student', 5, 'enroll', 'link', '[1,4]', 44, 'a', 1, '2021-05-26 19:43:55', '2021-09-23 12:31:31', NULL),
(3, 'delete_enroll_student', 'delete enroll student', 'delete enroll student', '', 'delete-enroll-student', 'delete enroll student', 5, 'enroll', 'delete', '[1]', 45, 'a', 3, '2021-05-26 19:43:55', '2021-09-23 12:31:31', NULL),
(5, 'show_user', 'show user details', 'show user details', '', 'show-user', 'user details', 1, 'users', 'show', '[1]', 2, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:30', NULL),
(6, 'add_user', 'create user account', 'create user account', '', 'add-user', 'create a user account', 1, 'users', 'add', '[1]', 3, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:30', NULL),
(7, 'index', 'users list', 'list of users', '<i class=\"fas fa-user-friends\"></i>', 'list-user', 'list of users', 1, 'users', 'link', '[1]', 4, 'a', 1, '2021-05-26 19:43:56', '2021-09-23 12:31:30', NULL),
(8, 'edit_user', 'edit user account', 'edit user account', '', 'edit-user', 'edit user account', 1, 'users', 'edit', '[1]', 5, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:30', NULL),
(9, 'delete_user', 'delete user account', 'delete user account', '', 'delete-user', 'delete user account', 1, 'users', 'delete', '[1]', 6, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:30', NULL),
(10, 'show_role_details', 'show role details', 'show role detials', '', 'show-role-details', 'role details', 1, 'roles', 'show', '[1]', 7, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:30', NULL),
(11, 'add_role', 'create role', 'create role', '', 'add-role', 'create role', 1, 'roles', 'add', '[1]', 8, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:30', NULL),
(12, 'index', 'roles list', 'list of roles', '<i class=\"fas fa-user-tag\"></i>', 'list-role', 'list of roles', 1, 'roles', 'link', '[1,6,7]', 9, 'a', 1, '2021-05-26 19:43:56', '2021-09-23 12:31:30', NULL),
(13, 'edit_role', 'edit role', 'edit role', '', 'edit-role', 'edit role', 1, 'roles', 'edit', '[1]', 10, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:30', NULL),
(14, 'delete_role', 'delete role', 'delete role', '', 'delete-role', 'delete role', 1, 'roles', 'delete', '[1]', 11, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:30', NULL),
(15, 'index', 'roles permissions', 'roles permissions', '<i class=\"fas fa-universal-access\"></i>', 'role-permissions', 'roles permissions', 1, 'permissions', 'link', '[1]', 12, 'a', 1, '2021-05-26 19:43:56', '2021-09-23 12:31:30', NULL),
(16, 'edit_role_permissions', 'edit roles permissions', 'edit roles permissions', '', 'edit-role-permissions', 'edit role perission', 1, 'permissions', 'link', '[1]', 13, 'a', 4, '2021-05-26 19:43:56', '2021-09-23 12:31:30', NULL),
(17, 'add_penalty', 'create penalty', 'create penalty', '', 'add-penalty', 'create a penalty', 2, 'penalty', 'add', '[1]', 1, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:30', NULL),
(18, 'index', 'penalty list', 'list of penalty', '<i class=\"fas fa-exclamation-circle\"></i>', 'list-penalty', 'list of penalty', 2, 'penalty', 'link', '[1]', 2, 'a', 1, '2021-05-26 19:43:56', '2021-09-23 12:31:30', NULL),
(19, 'edit_penalty', 'edit penalty', 'edit penalty', '', 'edit-penalty', 'edit penalty', 2, 'penalty', 'edit', '[1]', 3, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:30', NULL),
(20, 'delete_penalty', 'delete penalty', 'delete penalty', '', 'delete-penalty', 'delete penalty', 2, 'penalty', 'delete', '[1]', 4, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:30', NULL),
(21, 'index', 'course', 'list of course', '<i class=\"fas fa-book-reader\"></i>', 'list-course', 'list of course', 7, 'course', 'link', '[1]', 1, 'a', 1, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(22, 'add_course', 'create course', 'create course', '', 'add-course', 'creating a course', 3, 'course', 'add', '[1]', 2, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:30', NULL),
(23, 'show_course', 'show course details', 'show course details', '<i class=\"far fa-circle\"></i>', 'show-course', 'course details', 3, 'course', 'show', '[1]', 3, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:30', NULL),
(24, 'edit_course', 'edit course', 'edit course', '', 'edit-course', 'edit course', 3, 'course', 'edit', '[1]', 4, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:30', NULL),
(25, 'delete_course', 'delete course', 'delete course', '', 'delete-course', 'delete course', 3, 'course', 'delete', '[1]', 5, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:30', NULL),
(26, 'index', 'school year', 'list of schyear', '<i class=\"fas fa-calendar-alt\"></i>', 'list-schyear', 'list of schyear', 7, 'schyear', 'link', '[1]', 6, 'a', 1, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(27, 'add_schyear', 'creating schyear', 'creating schyear', '', 'add-schyear', 'creating a schyear', 3, 'schyear', 'add', '[1]', 7, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:30', NULL),
(28, 'show_schyear', 'show schyear details', 'show schyear details', '', 'show-schyear', 'schyear details', 3, 'schyear', 'show', '[1]', 8, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:30', NULL),
(29, 'edit_schyear', 'edit schyear', 'edit schyear', '', 'edit-schyear', 'edit schyear', 3, 'schyear', 'edit', '[1]', 9, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:30', NULL),
(30, 'delete_schyear', 'delete schyear', 'delete schyear', '', 'delete-schyear', 'delete schyear', 3, 'schyear', 'delete', '[1]', 10, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:30', NULL),
(31, 'index', 'subject list', 'list of subject', '<i class=\"far fa-circle\"></i>', 'list-subject', 'list of subject', 3, 'subject', 'link', '[1]', 11, 'a', 0, '2021-05-26 19:43:56', '2021-09-23 12:31:30', NULL),
(32, 'add_subject', 'creating subject', 'creating subject', '', 'add-subject', 'creating a subject', 3, 'subject', 'add', '[1]', 12, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:30', NULL),
(33, 'show_subject', 'show subject details', 'show subject details', '', 'show-subject', 'subject details', 3, 'subject', 'show', '[1]', 13, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(34, 'edit_subject', 'edit subject', 'edit subject', '', 'edit-subject', 'edit subject', 3, 'subject', 'edit', '[1]', 14, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(35, 'delete_subject', 'delete subject', 'delete subject', '', 'delete-subject', 'delete subject', 3, 'subject', 'delete', '[1]', 15, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(36, 'show_student', 'show student details', 'show student details', '', 'show-student', 'student details', 5, 'student', 'show', '[1]', 1, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(37, 'add_student', 'create student', 'create student', '', 'add-student', 'create a student', 5, 'student', 'add', '[1]', 2, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(38, 'index', 'students list', 'list of student', '<i class=\"fas fa-users\"></i>', 'list-student', 'list of student', 5, 'student', 'link', '[1,2,5]', 3, 'a', 1, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(39, 'edit_student', 'edit student', 'edit student', '', 'edit-student', 'edit student', 5, 'student', 'edit', '[1,2]', 4, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(40, 'delete_student', 'delete student', 'delete student', '', 'delete-student', 'delete student', 5, 'student', 'delete', '[1,2]', 5, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(41, 'show_attendance', 'show attendance details', 'show attendance details', '', 'show-attendance', 'attendance details', 6, 'attendance', 'show', '[1]', 1, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(42, 'add_attendance', 'create attendance', 'create attendance', '', 'add-attendance', 'create a attendance', 6, 'attendance', 'add', '[1]', 2, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(43, 'index', 'list of attendance', 'list of attendance', '<i class=\"far fa-circle\"></i>', 'list-attendance', 'list of attendance', 6, 'attendance', 'link', '[1]', 3, 'a', 0, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(44, 'edit_attendance', 'edit attendance', 'edit attendance', '', 'edit-attendance', 'edit attendance', 6, 'attendance', 'edit', '[1]', 4, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(45, 'delete_attendance', 'delete attendance', 'delete attendance', '', 'delete-attendance', 'delete attendance', 6, 'attendance', 'delete', '[1]', 5, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(46, 'verify_attendance', 'verify attendance', 'verify attendance', '', 'verify-attendance', 'verify attendance', 6, 'attendance', 'verify', '[1,2,3]', 6, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(47, 'attendance', 'attendance', 'attendance', '', 'attendance', 'attendance', 6, 'attendance', 'attendance', '[1,2,3]', 7, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(48, 'timeout', 'timeout', 'timeout', '', 'timeout', 'timeout', 6, 'attendance', 'timeout', '[1,2,3]', 8, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(49, 'add_penalty', 'add penalty', 'add penalty', '', 'add-penalty', 'penalty', 7, 'penalties', 'add', '[1]', 1, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(50, 'index', 'penalty', 'penalty', '<i class=\"fas fa-exclamation-triangle\"></i>', 'list-penalty', 'penalty', 7, 'penalties', 'link', '[1]', 2, 'a', 1, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(51, 'edit_penalty', 'edit penalty', 'edit penalty', '', 'edit-penalty', 'edit penalty', 7, 'penalties', 'edit', '[1]', 3, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(52, 'delete_penalty', 'delete penalty', 'delete penalty', '', 'delete-penalty', 'delete penalty', 7, 'penalties', 'delete', '[1]', 4, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(61, 'index', 'year & section', 'year & section', '<i class=\"fas fa-address-card\"></i>', 'year-and-section', 'year & section', 7, 'years', 'link', '[1]', 13, 'a', 1, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(62, 'edit_year', 'edit year', 'edit year', '', 'edit-year', 'edit year', 7, 'years', 'edit', '[2]', 14, 'd', 3, '2021-05-26 19:43:56', '2021-06-22 06:03:47', NULL),
(63, 'delete_year', 'delete year', 'delete year', '', 'delete-year', 'delete year', 7, 'years', 'delete', '[1]', 15, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(64, 'add_year', 'add year', 'add year', '', 'add-year', 'year', 7, 'years_and_sections', 'add', '[1]', 16, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(65, 'index', 'subject', 'subject', '<i class=\"fas fa-book\"></i>', 'list-subject', 'subject', 7, 'subjects', 'link', '[1]', 17, 'a', 1, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(66, 'edit_subject', 'edit subject', 'edit subject', '', 'edit-subject', 'edit subject', 7, 'subjects', 'edit', '[1]', 18, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(67, 'delete_subject', 'delete subject', 'delete subject', '', 'delete-subject', 'delete subject', 7, 'subjects', 'delete', '[1]', 19, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(68, 'add_subject', 'add subject', 'add subject', '', 'add-subject', 'subject', 7, 'subjects', 'add', '[1]', 20, 'a', 3, '2021-05-26 19:43:56', '2021-09-23 12:31:31', NULL),
(69, 'profile Student', 'profile Student', 'student profile', '<i class=\"far fa-circle\"></i>', 'profile Student', 'student profile', 5, 'student/profileStudent', 'link', '[3]', 6, 'a', 1, '2021-06-06 18:35:02', '2021-09-23 12:31:31', NULL),
(70, 'enroll student', 'enroll', 'enroll student', '<i class=\"far fa-circle\"></i>', 'enroll student', 'enroll student', 5, 'enroll/enrollStudent', 'link', '[3]', 7, 'a', 1, '2021-06-13 16:29:23', '2021-09-23 12:31:31', NULL),
(71, 'list of graduates', 'graduates list', 'list of graduates', '<i class=\"fas fa-user-graduate\"></i>', 'list-graduates', 'list of graduates', 5, 'graduates', 'link', '[1,4]', 46, 'a', 1, '2021-06-22 19:11:47', '2021-09-23 12:31:31', NULL),
(72, 'event_announcement', 'Event Announcement', 'Event Announcement', '<i class=\"fas fa-bullhorn\"></i>', 'event-announcement', 'Event Announcement', 7, 'announcement', '1', '[1,4]', 6, 'a', 1, '2021-08-12 18:48:25', '2021-09-23 12:31:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `function_id` int(20) NOT NULL,
  `description` text DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `created_at` datetime NOT NULL COMMENT 'Date of creation',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `function_id`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super Administrator', 38, 'Super Administrator', 'a', '2021-05-26 19:43:55', '2021-09-23 12:29:34', NULL),
(2, 'Student Assistant', 38, 'Student Assistant', 'a', '2021-05-26 19:43:55', '2021-08-26 20:00:45', NULL),
(3, 'Student', 69, 'for Student', 'a', '2021-06-03 03:44:02', '2021-06-04 06:23:51', NULL),
(4, 'Professor', 2, 'Professor', 'a', '2021-07-03 10:45:24', NULL, NULL),
(5, 'Director', 38, 'Director', 'd', '2021-08-20 09:20:53', NULL, '2021-08-20 09:20:56'),
(6, 'Dentist', 12, 'Dentist', 'd', '2021-09-23 12:30:08', NULL, '2021-09-23 12:30:17'),
(7, 'Dentist', 12, 'Dentist', 'a', '2021-09-23 12:30:33', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schyear`
--

CREATE TABLE `schyear` (
  `id` int(10) UNSIGNED NOT NULL,
  `schyear` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `created_at` datetime NOT NULL COMMENT 'Date of creation',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schyear`
--

INSERT INTO `schyear` (`id`, `schyear`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'A.Y 2020-2021', 'a', '2021-06-13 08:51:06', '2021-06-23 00:37:58', '2021-08-20 09:22:47'),
(2, 'A.Y 2021-2022', 'a', '2021-06-23 00:38:17', '2021-08-26 19:57:07', NULL),
(3, 'A.Y 2022-2023', 'a', '2021-08-20 09:22:57', '2021-08-20 09:23:08', NULL),
(4, 'A.Y 2023-2024', 'a', '2021-08-20 09:23:19', '2021-08-20 09:23:26', NULL),
(5, 'A.Y 2011-2012', 'a', '2021-08-20 09:23:33', NULL, NULL),
(6, 'A.Y 2012-2013', 'a', '2021-08-20 09:23:42', NULL, NULL),
(7, 'A.Y 2013-2014', 'a', '2021-08-20 09:23:49', '2021-08-20 09:23:55', NULL),
(8, 'A.Y 2014-2015', 'a', '2021-08-20 09:24:02', NULL, NULL),
(9, 'A.Y 2015-2016', 'a', '2021-08-20 09:24:15', NULL, NULL),
(10, 'A.Y 2016-2017', 'a', '2021-08-20 09:24:22', NULL, NULL),
(11, 'A.Y 2017-2018', 'a', '2021-08-20 09:24:30', NULL, NULL),
(12, 'A.Y 2024-2025', 'a', '2021-09-23 12:33:44', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(11) NOT NULL,
  `year_id` int(11) NOT NULL,
  `section` int(11) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `created_date` datetime NOT NULL COMMENT 'Date of creation',
  `updated_date` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_date` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `course_id`, `year_id`, `section`, `status`, `created_date`, `updated_date`, `deleted_date`) VALUES
(1, 1, 1, 1, 'a', '2021-07-25 22:41:14', NULL, NULL),
(2, 1, 1, 2, 'a', '2021-07-25 22:41:15', NULL, NULL),
(3, 1, 1, 3, 'a', '2021-07-25 22:41:15', NULL, NULL),
(4, 1, 1, 4, 'a', '2021-07-25 22:41:15', NULL, NULL),
(5, 1, 1, 5, 'a', '2021-07-25 22:41:15', NULL, NULL),
(21, 4, 3, 1, 'a', '2021-09-23 12:34:30', NULL, NULL),
(22, 4, 3, 2, 'a', '2021-09-23 12:34:30', NULL, NULL),
(23, 5, 4, 1, 'a', '2021-09-23 12:34:40', NULL, NULL),
(24, 5, 4, 2, 'a', '2021-09-23 12:34:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(10) UNSIGNED NOT NULL,
  `stud_num` varchar(50) DEFAULT NULL,
  `serial_num` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `birthdate` date NOT NULL,
  `age` int(2) NOT NULL,
  `address` varchar(250) NOT NULL,
  `course_id` int(20) NOT NULL,
  `year_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `schyear_id` int(20) NOT NULL,
  `section` varchar(20) NOT NULL,
  `guardian_name` varchar(255) DEFAULT NULL,
  `guardian_contactnum` int(13) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `created_at` datetime NOT NULL COMMENT 'Date of creation',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `stud_num`, `serial_num`, `user_id`, `lastname`, `firstname`, `middlename`, `gender`, `contact_no`, `birthdate`, `age`, `address`, `course_id`, `year_id`, `section_id`, `schyear_id`, `section`, `guardian_name`, `guardian_contactnum`, `email`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, '2015-00328-TG-0', '', 22, 'Clemente', 'Georgina', 'cervantes', '2', '976046874', '2000-06-25', 0, '376 bagumbayan taguig city', 1, 1, 1, 0, '1-1', NULL, NULL, 'georgina.clemente@gmail.com', 'a', '2021-06-13 10:44:47', '2021-09-23 12:32:53', NULL),
(13, '2015-00327-TG-0', '123', 25, 'clemente', 'josh kyle', 'alcantara', '1', '(+63)1231238129', '2021-06-25', 2, '376 bagumbayan taguig', 1, 1, 2, 0, '1-2', NULL, NULL, 'joshkyle_clemente@emb.gov.ph', 'a', '2021-06-24 13:29:14', '2021-08-14 20:58:50', NULL),
(88, '2018-00231-TG-0', '', 32, 'Apura', 'Ed Mhar', '', '1', '(+63)9291854660', '2000-03-22', 21, 'New Lower Bicutan, Taguig City', 1, 1, 3, 0, '1-3', NULL, NULL, 'mhar.apura@gmail.com', 'a', '2021-08-23 08:03:35', '2021-08-25 06:09:31', NULL),
(89, '2018-00341-TG-0', '', 33, 'Balatong', 'Jayson', '', '1', '(+63)9457042641', '1999-12-13', 21, 'South Signal, Taguig City', 1, 1, 2, 0, '1-2', NULL, NULL, 'j.balatong1999@gmail.com', 'a', '2021-08-23 13:40:46', '2021-08-23 13:41:40', NULL),
(90, '2018-00525-TG-0', '', 34, 'Bangga', 'Elvin', '', '1', '(+63)9774724891', '1998-12-03', 22, 'Western Bicutan, Taguig City', 1, 1, 5, 0, '1-5', NULL, NULL, 'ecbangga@gmail.com', 'a', '2021-08-23 14:05:55', '2021-08-25 06:09:27', NULL),
(91, '2015-00327-TG-0', '123', 0, 'clem', 'josh kyle', 'a', '1', '3412312312', '2010-07-02', 32, 'Taguig', 2, 0, 0, 0, '', NULL, NULL, '', 'a', '2021-08-23 16:30:22', NULL, '2021-08-24 10:14:31'),
(93, '2018-00484-TG-0', '', 35, 'Burton', 'Lei', '', '2', '(+63)9154997683', '1999-10-08', 21, 'South Signal, Taguig City', 1, 1, 1, 0, '1-1', NULL, NULL, 'llynttburton08@gmail.com', 'a', '2021-08-24 08:30:03', '2021-08-24 08:30:47', NULL),
(106, '2018-00343-TG-0', '', 36, 'Cabanela', 'Charmie', '', '2', '(+63)9494271642', '2000-04-24', 21, 'South Signal, Taguig City', 1, 1, 2, 0, '1-2', NULL, NULL, 'charmcabanela@gmail.com', 'a', '2021-08-24 10:32:55', '2021-08-24 10:33:54', NULL),
(107, '2018-00556-TG-0', '05-03333-550', 0, 'Manuel', 'Marco', 'Mercado', '1', '9667067831', '1980-12-04', 44, 'Taguig', 1, 1, 1, 0, '1-1', NULL, NULL, 'marcomanuel25@gmail.com', 'a', '2021-08-25 06:07:31', '2021-09-04 19:02:13', NULL),
(108, '2018-45579-TG-0', '06-0555-5502', 0, 'Mae', 'Sheila', 'Yacub', '2', '9667067841', '1999-04-15', 21, 'Taguig', 2, 0, 0, 0, '', NULL, NULL, '', 'a', '2021-08-25 06:07:31', '2021-08-26 20:00:03', NULL),
(109, '2018-00372-TG-0', '', 37, 'Manuel', 'Marcus Kim', 'Vibal', '1', '(+63)9667067831', '1998-04-29', 23, '33 Mangga Road, corner. Pag-asa St. Brgy. Katuparan', 1, 1, 3, 0, '1-3', NULL, NULL, 'marcusmanuel.pupt@gmail.com', 'a', '2021-09-23 12:25:20', '2021-09-23 12:26:23', NULL),
(110, '2018-00291-TG-0', '',0, 'Estolloso', 'Via Jean', 'Sanchez', '2', '09267512858', '2000-02-11', 21, '#8 SCARLET STREET, CONCEPCION DOS, MARIKINA CITY', 6, 2, 0,0,'',NULL, NULL,'estollosoviajean@gmail.com', 'a', '2021-11-29 10:49:00','2021-11-29 10:49:00', NULL),
(111, '2018-00362-TG-0', '', 0, 'Lagunilla', 'Azenith', 'Lagman', '2', '09533811650', '2000-10-27', 21, '451-B ZONE 3 SITIO PAGKAKAISA SUCAT MUNTINLUPA CITY', 6, 2, 0, 0,'', NULL, NULL, 'lagunillaazenith27@gmail.com', 'a', '2021-11-29 10:49:00','2021-11-29 10:49:00', NULL),
(112, '2018-00222-TG-0', '', 0, 'Julian', 'Maria Angela', 'Chavez', '2', '09615175416', '1999-9-15', 22, 'CAA, Las Piñas City', 6, 2, 0, 0,'', NULL, NULL, 'mariaangelajulian@gmail.com', 'a', '2021-11-29 10:49:00','2021-11-29 10:49:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `required_hrs` int(3) NOT NULL DEFAULT 80,
  `status` char(1) NOT NULL DEFAULT 'a',
  `created_date` datetime NOT NULL COMMENT 'Date of creation',
  `updated_date` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_date` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `code`, `subject`, `required_hrs`, `status`, `created_date`, `updated_date`, `deleted_date`) VALUES
(1, 'NSTP1', 'NSTP1', 3, 'a', '2021-05-26 19:43:55', '2021-08-23 14:05:28', NULL),
(2, 'NSTP2', 'NSTP2', 3, 'a', '2021-05-26 19:43:55', '2021-08-24 20:40:45', '2021-06-21 11:57:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `status` char(1) NOT NULL DEFAULT 'a',
  `birthdate` date NOT NULL,
  `created_at` datetime NOT NULL COMMENT 'Date of creation',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `email`, `password`, `role_id`, `status`, `birthdate`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'superadmin', 'Marcus', 'Leunam', 'superadmin@gmail.com', '$2y$10$emCvlBgKBJCeTazqUmUbGOPHcSKG2xV8Zt5.3M0sXLMmp8R9/2X6O', 1, 'a', '0000-00-00', '2021-05-26 19:43:55', '2021-09-23 12:35:30', NULL),
(2, 'macoy123', 'Macoy', 'Manuel', 'marcuzkim29@gmail.com', '$2y$10$ddreXOu9SYfM/w.Gp47Gz.uqR4kSHCB5H3heQR856CoPaffgO9.Ga', 2, 'a', '0000-00-00', '2021-05-26 19:43:55', '2021-08-24 20:29:41', NULL),
(3, 'DocNelson', 'Nelson', 'Angeles', 'noslenangeles@gmail.com', '$2y$10$PIq1xBmcXUj783ZmeM/8Q.ms56WviV1CLjWplpG/oF4qdeKbQ4iGq', 1, 'a', '0000-00-00', '2021-05-26 19:43:55', '2021-08-20 10:37:58', NULL),
(22, 'georgina', 'Georgina', 'Clemente', 'georgina.clemente@gmail.com', '$2y$10$yV6kAgZ5FfQN9oMQa38EMOFxrwE80w7eJvYzlLAJKYpynN0g005G6', 3, 'a', '0000-00-00', '2021-06-13 10:44:47', NULL, NULL),
(25, '2015-00327-TG-0', 'josh kyle', 'clemenete', 'joshkyle_clemente@emb.gov.ph', '$2y$10$pCxK2o192R3vjawi9C2Wa.wY5fW0UiEC/BPVWf3L.C3hLyYzM/S0.', 3, 'a', '0000-00-00', '2021-06-24 13:29:14', '2021-08-12 17:14:19', NULL),
(26, 'docnelson1', 'Nelson', 'Angeles', 'professor.test@gmail.com', '$2y$10$1jdpxNBJcYCrn4L5KurNne5Q7htZPMvywryB.kpCV99L1XPXDZ2Om', 4, 'a', '1989-01-03', '2021-07-03 10:47:23', '2021-09-23 12:46:59', NULL),
(32, '2018-00231-TG-0', 'Ed Mhar', 'Apura', 'mhar.apura@gmail.com', '$2y$10$BTGdh5g.0TyxgjpVnrKyJ.EpUeNyEfp9rY18w.Soz0Dsvcz9BCpVW', 3, 'a', '0000-00-00', '2021-08-23 08:03:35', NULL, NULL),
(33, '2018-00341-TG-0', 'Jayson', 'Balatong', 'j.balatong1999@gmail.com', '$2y$10$2zOuT14Iw0hd3MXmXzJPO.LaIVOWaozFrs3OPe6bjMnWNZSvOWySq', 3, 'a', '0000-00-00', '2021-08-23 13:40:46', NULL, NULL),
(34, '2018-00525-TG-0', 'Elvin', 'Bangga', 'ecbangga@gmail.com', '$2y$10$rp5QcvKOShDFh1YZmUy.Iu.WIVHt0EocARWaAbzEuLOv96WntFBeq', 3, 'a', '0000-00-00', '2021-08-23 14:05:55', NULL, NULL),
(35, '2018-00484-TG-0', 'Lei', 'Burton', 'llynttburton08@gmail.com', '$2y$10$pn8mOzULWdK65wN8294CO.FgviY5y45rTQUsFqDBWM10kmZDAgDGe', 3, 'a', '0000-00-00', '2021-08-24 08:30:03', NULL, NULL),
(36, '2018-00343-TG-0', 'Charmie', 'Cabanela', 'charmcabanela@gmail.com', '$2y$10$0sYGMHWhzkoiRcJ5m8XnzuoTg7N0Lw5leKl8fz.hF.6fTdT.LtdGW', 3, 'a', '0000-00-00', '2021-08-24 10:32:55', NULL, NULL),
(37, '2018-00372-TG-0', 'Marcus Kim', 'Manuel', 'marcusmanuel.pupt@gmail.com', '$2y$10$D34juuQgd0Xq4.1qXbDHEO9tmgch8nYomrhaRJKKGakt.KNzGwGpS', 3, 'a', '0000-00-00', '2021-09-23 12:25:20', '2021-09-23 12:47:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(11) NOT NULL,
  `year` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `created_date` datetime NOT NULL COMMENT 'Date of creation',
  `updated_date` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_date` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `course_id`, `year`, `status`, `created_date`, `updated_date`, `deleted_date`) VALUES
(1, 1, '1', 'a', '2021-07-25 22:45:38', NULL, NULL),
(3, 4, '1', 'a', '2021-09-23 12:34:30', NULL, NULL),
(4, 5, '1', 'a', '2021-09-23 12:34:40', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penalties`
--
ALTER TABLE `penalties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penalty`
--
ALTER TABLE `penalty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schyear`
--
ALTER TABLE `schyear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_id` (`course_id`,`year_id`,`section`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
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
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `penalties`
--
ALTER TABLE `penalties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `penalty`
--
ALTER TABLE `penalty`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `schyear`
--
ALTER TABLE `schyear`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
