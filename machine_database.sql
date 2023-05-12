-- phpMyAdmin SQL Dump
-- version 5.2.1-1.fc38
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 12, 2023 at 07:18 AM
-- Server version: 10.7.7-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `machine_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add instruction', 7, 'add_instruction'),
(26, 'Can change instruction', 7, 'change_instruction'),
(27, 'Can delete instruction', 7, 'delete_instruction'),
(28, 'Can view instruction', 7, 'view_instruction'),
(29, 'Can add chat', 8, 'add_chat'),
(30, 'Can change chat', 8, 'change_chat'),
(31, 'Can delete chat', 8, 'delete_chat'),
(32, 'Can view chat', 8, 'view_chat'),
(33, 'Can add expert_chat', 9, 'add_expert_chat'),
(34, 'Can change expert_chat', 9, 'change_expert_chat'),
(35, 'Can delete expert_chat', 9, 'delete_expert_chat'),
(36, 'Can view expert_chat', 9, 'view_expert_chat'),
(37, 'Can add request image', 10, 'add_requestimage'),
(38, 'Can change request image', 10, 'change_requestimage'),
(39, 'Can delete request image', 10, 'delete_requestimage'),
(40, 'Can view request image', 10, 'view_requestimage'),
(41, 'Can add user', 11, 'add_user'),
(42, 'Can change user', 11, 'change_user'),
(43, 'Can delete user', 11, 'delete_user'),
(44, 'Can view user', 11, 'view_user'),
(45, 'Can add requests', 12, 'add_requests'),
(46, 'Can change requests', 12, 'change_requests'),
(47, 'Can delete requests', 12, 'delete_requests'),
(48, 'Can view requests', 12, 'view_requests'),
(49, 'Can add notification', 13, 'add_notification'),
(50, 'Can change notification', 13, 'change_notification'),
(51, 'Can delete notification', 13, 'delete_notification'),
(52, 'Can view notification', 13, 'view_notification'),
(53, 'Can add machine', 14, 'add_machine'),
(54, 'Can change machine', 14, 'change_machine'),
(55, 'Can delete machine', 14, 'delete_machine'),
(56, 'Can view machine', 14, 'view_machine'),
(57, 'Can add serviceman_chat', 15, 'add_serviceman_chat'),
(58, 'Can change serviceman_chat', 15, 'change_serviceman_chat'),
(59, 'Can delete serviceman_chat', 15, 'delete_serviceman_chat'),
(60, 'Can view serviceman_chat', 15, 'view_serviceman_chat');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$lV5ZnjaWRShYQ6FvJAdFRN$ntbik8mKRT7yjjBaO84A+8oBADnYXaMM48kIEb07AAc=', '2023-04-20 16:03:55.172393', 1, 'noble', '', '', 'noblesomto1@gmail.com', 1, 1, '2022-12-27 22:02:01.849211'),
(2, 'pbkdf2_sha256$600000$ESkycPD4T2mnk3wMZVayjc$LSSzUMRw89uAZcn7rKwRf/fFePlADo4c++YifnyNe0E=', '2023-04-12 22:55:38.283655', 0, 'jerry', '', '', '', 0, 1, '2023-04-08 14:40:54.662450');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL,
  `req_id` varchar(20) NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `chat_date` datetime(6) NOT NULL,
  `user_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `req_id`, `message`, `chat_date`, `user_id_id`) VALUES
(1, '38875', 'Push the Green button', '2022-12-29 09:45:11.314118', 1),
(2, '38875', 'it worked', '2022-12-29 09:49:19.404068', 2),
(3, '13349', 'how did you present it?', '2023-01-04 18:50:10.848143', 2),
(4, '13349', 'I tried to fix it by changing the oil', '2023-01-04 18:52:35.267476', 2),
(5, '13349', 'hello', '2023-01-04 19:07:29.300969', 1),
(6, '57196', 'testing', '2023-01-05 16:18:48.418783', 2),
(7, '47591', 'walking on this', '2023-01-05 16:22:20.939284', 1),
(8, '47591', 'alright', '2023-01-05 16:34:18.786651', 2),
(9, '47591', 'hello', '2023-01-24 11:16:56.656453', 3),
(10, '47591', 'testing', '2023-01-24 11:17:26.460442', 3),
(11, '47591', 'I pushed the red button and green', '2023-01-24 11:30:15.718477', 2),
(19, '40513', '<p>check out how it works on the image below</p>\r\n<p><img src=\"../../../media/tinymce/business-data-analysis-graph.jpg\" alt=\"\" width=\"200\" height=\"131\"></p>', '2023-02-19 13:15:53.294731', 1),
(20, '47591', '<p>did the green button work?</p>\r\n<p>&nbsp;<img src=\"../../../media/tinymce/african-american-applicant-holding-resume-job-interview-close-up-view.jpg\" alt=\"\" width=\"150\" height=\"100\"></p>', '2023-02-19 13:32:42.837147', 1),
(21, '47591', '<p>its good</p>\r\n<p><img src=\"../../../media/tinymce/2023-02-17_18-02-1676654568.jpg\" alt=\"\" width=\"300\" height=\"145\"></p>', '2023-02-20 04:37:23.863255', 2),
(22, '47591', '<p>still testing</p>', '2023-02-20 04:39:21.873410', 2),
(23, '47591', '<p>still testing</p>', '2023-02-20 04:41:46.426967', 2),
(24, '57196', '<p>hope it\'s working</p>', '2023-02-20 04:48:26.306213', 2),
(25, '47591', '<p>😁</p>', '2023-02-20 09:38:41.221017', 1),
(26, '47591', '<p><img src=\"../../../media/tinymce/business-data-analysis-graph.jpg\" alt=\"\" width=\"150\" height=\"98\"></p>\r\n<p>hello</p>', '2023-02-23 03:44:22.001984', 1),
(27, '47591', '<p>hello</p>', '2023-03-09 23:18:33.428897', 1),
(28, '14179', '<p>it\'s working</p>', '2023-04-09 07:53:54.480973', 1),
(29, '14179', '<p>it\'s working</p>', '2023-04-09 07:54:22.466664', 1),
(30, '57805', '<p>this should work</p>', '2023-04-21 18:57:24.206894', 2),
(31, '64082', '<p>how are you?</p>', '2023-04-21 18:58:30.633689', 2),
(32, '64082', '<p>I\'m fine</p>', '2023-04-21 18:58:52.734926', 1),
(33, '64082', '<p>good</p>', '2023-04-22 07:40:03.896715', 2),
(44, '57805', '<p>testing<br data-mce-bogus=\"1\"></p>', '2023-04-24 13:16:17.345772', 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-04-08 14:40:55.295720', '2', 'jerry', 1, '[{\"added\": {}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'expert', 'instruction'),
(9, 'serviceman', 'expert_chat'),
(6, 'sessions', 'session'),
(14, 'user', 'machine'),
(13, 'user', 'notification'),
(10, 'user', 'requestimage'),
(12, 'user', 'requests'),
(11, 'user', 'user'),
(8, 'worker', 'chat'),
(15, 'worker', 'serviceman_chat');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-12-27 06:23:33.605836'),
(2, 'auth', '0001_initial', '2022-12-27 06:23:40.354221'),
(3, 'admin', '0001_initial', '2022-12-27 06:23:41.637430'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-12-27 06:23:41.711928'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-12-27 06:23:41.864786'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-12-27 06:23:42.605022'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-12-27 06:23:42.895456'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-12-27 06:23:43.182862'),
(9, 'auth', '0004_alter_user_username_opts', '2022-12-27 06:23:43.230748'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-12-27 06:23:43.760622'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-12-27 06:23:43.801555'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-12-27 06:23:43.833166'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-12-27 06:23:44.103565'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-12-27 06:23:44.382141'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-12-27 06:23:44.658059'),
(16, 'auth', '0011_update_proxy_permissions', '2022-12-27 06:23:44.706887'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-12-27 06:23:45.035824'),
(18, 'user', '0001_initial', '2022-12-27 06:23:47.234597'),
(19, 'expert', '0001_initial', '2022-12-27 06:23:48.332789'),
(20, 'user', '0002_machine_machine_serviceman', '2022-12-27 06:23:49.687008'),
(21, 'serviceman', '0001_initial', '2022-12-27 06:23:51.315656'),
(22, 'sessions', '0001_initial', '2022-12-27 06:23:51.814992'),
(23, 'user', '0003_requestimage_requests_notification_not_id', '2022-12-27 06:23:54.149724'),
(24, 'worker', '0001_initial', '2022-12-27 22:00:51.648978'),
(25, 'user', '0002_notification_not_sender', '2022-12-29 05:48:28.909179'),
(26, 'user', '0003_alter_requests_expert_view_and_more', '2022-12-29 08:59:17.767312'),
(27, 'serviceman', '0002_remove_expert_chat_machine_id_expert_chat_req_id', '2023-01-24 11:13:12.954329'),
(28, 'worker', '0002_serviceman_chat', '2023-04-09 07:22:00.093047');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1gnkr3w53angogycqab2emmgt34mx769', 'eyJ1c2VyX2lkIjozLCJuYW1lIjoiU2FtIiwidXNlcl9jYXRlZ29yeSI6IlNlcnZpY2VtYW4ifQ:1pqvqs:OfLqT-CWAkp_iGS3dlji6SCHkqs-QwZkanQkheeOiYc', '2023-05-08 13:03:30.363558'),
('2o1t944s7nxozpf60dhf8xvxsisrnefe', 'eyJ1c2VyX2lkIjoyLCJuYW1lIjoiSGFucyIsInVzZXJfY2F0ZWdvcnkiOiJFeHBlcnQifQ:1pKHNJ:qynUq5jtrLwPmV-pmm8PwTnuFZcetY1EWsJ0Ivl_510', '2023-02-07 11:22:01.786877'),
('85qwxbjj1xo417c6chfb31zeigkgqzj8', 'eyJ1c2VyX2lkIjozLCJuYW1lIjoiU2FtIiwidXNlcl9jYXRlZ29yeSI6IlNlcnZpY2VtYW4ifQ:1pvNpr:mGqyvci7FrRLSRttDL6zLJBfbUSe1u7D6mVt2k3y_So', '2023-05-20 19:44:51.885717'),
('axvbbg3cajd53j1uzs5uvu3qpbiubtm8', 'eyJ1c2VyX2lkIjoyLCJuYW1lIjoiSGFucyIsInVzZXJfY2F0ZWdvcnkiOiJFeHBlcnQifQ:1pqwlp:VLm3CT_5-3o6RiTH9gC0rDUGmDUI3sZR3ESboGGoNc4', '2023-05-08 14:02:21.621285'),
('b1i76jehickw5lr814d4t7q9xlbp1hcn', 'eyJ1c2VyX2lkIjoxLCJuYW1lIjoiSm9obiIsInVzZXJfY2F0ZWdvcnkiOiJXb3JrZXIifQ:1pD96U:wWGUzXQc-UDE16L25GpkpRN3K6kfarrzZfCkxfMBEKY', '2023-01-18 19:07:10.904775'),
('bhmsm2qof1ynoszcj9xqzrnm0eyqfsa4', 'eyJ1c2VyX2lkIjozLCJuYW1lIjoiU2FtIiwidXNlcl9jYXRlZ29yeSI6IlNlcnZpY2VtYW4ifQ:1pqwDt:fG46Fdplru-y1XvxWIlo_crAPmy5slTb_BCwJp1yxmU', '2023-05-08 13:27:17.364318'),
('c9ujptlen3ioj0o4ftvykd1xerl2yyfo', 'eyJ1c2VyX2lkIjozLCJuYW1lIjoiU2FtIiwidXNlcl9jYXRlZ29yeSI6IlNlcnZpY2VtYW4ifQ:1pqwzF:DuYpudNfsSJi6KC3VZk3mN9weNWe0UwIxYmNsKiSH_g', '2023-05-08 14:16:13.742323'),
('d9f09unm9wimh84pu5awpflhwbt21i8p', 'eyJ1c2VyX2lkIjozLCJuYW1lIjoiU2FtIiwidXNlcl9jYXRlZ29yeSI6IlNlcnZpY2VtYW4ifQ:1paPPH:wOz9zZk99n2Pldf9LcTP8vw1eg55CzLOqgWTU6XQDQ0', '2023-03-23 23:10:43.446699'),
('diw8owx9rcxx29ptz4qrf4obn4hn73ib', 'eyJ1c2VyX2lkIjozLCJuYW1lIjoiU2FtIiwidXNlcl9jYXRlZ29yeSI6IlNlcnZpY2VtYW4ifQ:1pVGkK:zi3jMstHlqZvZjeY3L_C29vTzSPBcIho8cSvmBmLeMc', '2023-03-09 18:55:12.011442'),
('fgbm7n9i5nn8vi79tndyymjblnl4qujb', '.eJxVj0EKgzAURO-StQSTGI0uuyx03aX8xK-mtklJFFpK716DUnA7b2bgfcgSMbS2Iw3LiIMHkoac_ehIthEDMw4-vNf46sOEYQUtLPPY_oeEHTMNZkKXQHcDN3hqvJuD1TRV6E4jvfgO76e9ezgYIY5pDSUTiLXgStUmB22EVB2XSmIvwShhBEAhtdZ9zYSoCsBaFxUHUwHLOU-nEWO03rX4etokocoizze1XdZ5fUfy_QFdaldZ:1ppWlH:zipL_1SeJ6LsrNd8HZOYEX524HpVhC2QFkQUAIVllZ4', '2023-04-21 16:03:55.195009'),
('i3bedhd8zub5fkc0fd6hfjg25ikqhnp0', 'eyJ1c2VyX2lkIjoxLCJuYW1lIjoiSm9obiIsInVzZXJfY2F0ZWdvcnkiOiJXb3JrZXIifQ:1pspGH:U9v1xGfRNobTgrAVAeiFr_3mC8lqeXYz1O4gqtQmBXQ', '2023-05-13 18:25:33.631719'),
('opwxc9797wiyuoep8dl5x2s39kapqhnq', 'eyJ1c2VyX2lkIjozLCJuYW1lIjoiU2FtIiwidXNlcl9jYXRlZ29yeSI6IlNlcnZpY2VtYW4ifQ:1pqwof:bGTGfVwqwQRflLCkuozdJoMkQKYjJUgC9fkK6CPB_Js', '2023-05-08 14:05:17.551427'),
('p2ksphuxqkpcj9qcicosog29iai58f3m', 'eyJ1c2VyX2lkIjoxLCJuYW1lIjoiSm9obiIsInVzZXJfY2F0ZWdvcnkiOiJXb3JrZXIifQ:1paLnR:ib6aOhjojL4nkLbmeHAWpzPFwQGfSlyLerWMqoEz0Zg', '2023-03-23 19:19:25.732684'),
('rcredv4ddhyxjoj8ubgcbfy162pf125c', 'eyJ1c2VyX2lkIjoxLCJuYW1lIjoiSm9obiIsInVzZXJfY2F0ZWdvcnkiOiJXb3JrZXIifQ:1pTFjd:-ionXxyL7WN2S6JjQQoxtZ44xhC_3unWrzdLB9Mu9as', '2023-03-04 05:26:09.902905'),
('rndys27e51u7qokj6om8h38t5quqpwao', 'eyJ1c2VyX2lkIjoyLCJuYW1lIjoiSGFucyIsInVzZXJfY2F0ZWdvcnkiOiJFeHBlcnQifQ:1pspGA:S6h2109V6-tljkGN8FMz2xKmzH6dIrT7tdeagnd3PwU', '2023-05-13 18:25:26.222322'),
('sataw9dtm48gve9sy97erqmw7ii0c3yy', 'eyJ1c2VyX2lkIjozLCJuYW1lIjoiU2FtIiwidXNlcl9jYXRlZ29yeSI6IlNlcnZpY2VtYW4ifQ:1ppX4F:AJcjGSXd80Rw21bbx9VokpUwIwCAN4RHO7kFD5iXwbo', '2023-05-04 16:23:31.173838'),
('ucz1784posvgzn45mza25iz5ybv1irxv', '.eJxVjUEOgyAURO_C2hhERHDZfc9APvxP1bbQgCZtmt69mrhot_Nm5r2ZhXUZ7Voo2wnZwASrfjMH_kpxBzhDvKTap7jkydV7pT5oqc8J6XY6un8HI5RxWwfTgO87A9KgdKZFlEJpL3sRdKBAoEhyUAF8o7lpsA2oXQDe9JqLvuP7aaFSphQtPR9TfrFBK8l5xXZNhDttlpnyBj5frmZGyA:1pmjNK:UyhBKu-Xlyt2KYKbADseBoIvBkVKaz1sMGGRqvrMEYg', '2023-04-13 22:55:38.297818'),
('vpq1d6t1x51qv53ezf4qgoearfia0ynr', '.eJxVj8sOgjAQRf9l1oS0lPfSpYlrl820HR6CrWkh0Rj_XUBMdHvPfcw8QeI8dXIO5GVvoAYO0a-mUA9kV2AuaFsXa2cn36t4tcQ7DfHJGRoPu_evoMPQLWmhKpYgT5pKaMwwY02BQlcqLbnhuUAmTJ6yktPCVdbknAqBqWp4XrEiK7erAoXQOyvpfuv9A-pySbAI1hmLV1pWrFMjwUfa3uER7OjoOvslGidq3VoBZ-cH8vB6A9ScVmU:1pAIDc:t0-JTKByU0QuBu9TyOU2ekrD4Oe7AeZRIf4umYJgR1c', '2022-12-28 22:14:44.968529'),
('x637vehzphdllxnn8klwgczxeh81u50x', 'eyJ1c2VyX2lkIjoyLCJuYW1lIjoiSGFucyIsInVzZXJfY2F0ZWdvcnkiOiJFeHBlcnQifQ:1ppWGf:eM52EM7vhF6rp2kqfm6EwfX1Z62budH2_CmjW-cL_fY', '2023-05-04 15:32:17.750863'),
('xeycbtj4sqhuixbu0zui9z1maudf7yla', 'eyJ1c2VyX2lkIjoxLCJuYW1lIjoiSm9obiIsInVzZXJfY2F0ZWdvcnkiOiJXb3JrZXIifQ:1plRFn:PHk2ev5nKrJ4OLdVlMeqOpYSPE-pepy03rLAM-BARnQ', '2023-04-23 09:22:31.484337'),
('xz1ywbwreznpdqen5gnbzfo6ol38kun3', 'eyJ1c2VyX2lkIjozLCJuYW1lIjoiU2FtIiwidXNlcl9jYXRlZ29yeSI6IlNlcnZpY2VtYW4ifQ:1pmiao:NnwSyPgwLqZueGZscREfFBxQRjZUS77ShZ3PfYgNaCs', '2023-04-26 22:05:30.614622'),
('yctpxpi8l55sy73eaxappx8eoui8uv1p', 'eyJ1c2VyX2lkIjozLCJuYW1lIjoiU2FtIiwidXNlcl9jYXRlZ29yeSI6IlNlcnZpY2VtYW4ifQ:1pIMMU:3zcxwYxCDd0Xnk5Unb2V8LaWN3IlpcrBlZhdANwxTiY', '2023-02-02 04:17:14.148430');

-- --------------------------------------------------------

--
-- Table structure for table `expert_chat`
--

CREATE TABLE `expert_chat` (
  `id` bigint(20) NOT NULL,
  `message` longtext NOT NULL,
  `chat_date` datetime(6) NOT NULL,
  `user_id_id` bigint(20) NOT NULL,
  `req_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `expert_chat`
--

INSERT INTO `expert_chat` (`id`, `message`, `chat_date`, `user_id_id`, `req_id`) VALUES
(1, 'testing', '2023-01-24 11:18:30.547146', 3, '47591'),
(2, 'I tried to fix it by changing the oil', '2023-01-24 11:31:14.078110', 2, '47591'),
(3, 'I tried to fix it by changing the oil', '2023-01-24 11:32:14.499333', 2, '47591'),
(4, 'what do you need?', '2023-01-24 11:32:28.361366', 3, '47591'),
(5, '<p>hello</p>', '2023-02-20 04:36:19.423619', 2, '47591'),
(6, '<p>hello</p>', '2023-03-09 23:17:35.574253', 3, '40513'),
(7, '<p>hello</p>', '2023-04-09 07:25:34.021435', 3, '14179'),
(8, '<p>testing</p>', '2023-04-24 13:04:24.683469', 2, '57805'),
(9, '<p>did it work?</p>', '2023-04-24 13:04:48.178124', 3, '57805'),
(10, '<p>I think it\'s wrking</p>', '2023-04-24 13:27:53.399533', 3, '57805'),
(11, '<p>testing serviceman</p>', '2023-04-24 13:36:16.829010', 3, '57805'),
(12, '<p>test serviecman</p>', '2023-04-24 13:41:22.522188', 3, '57805'),
(13, '<p>expert serviceman working</p>', '2023-04-24 13:44:27.143156', 2, '57805'),
(14, '<p>CNC broke down</p>', '2023-04-24 14:06:18.437811', 3, '25452'),
(15, '<p>how did this happen?&nbsp;</p>', '2023-04-24 14:07:27.045115', 2, '25452'),
(16, '<p>i was hot</p>', '2023-04-24 14:16:32.197669', 3, '25452'),
(17, '<p>has it cooled down</p>', '2023-04-24 14:16:52.695301', 2, '25452');

-- --------------------------------------------------------

--
-- Table structure for table `instruction`
--

CREATE TABLE `instruction` (
  `id` bigint(20) NOT NULL,
  `in_id` varchar(20) NOT NULL,
  `x_axis` varchar(250) NOT NULL,
  `y_axis` varchar(250) NOT NULL,
  `z_axis` varchar(200) NOT NULL,
  `machine_speed` varchar(200) NOT NULL,
  `angle` varchar(200) NOT NULL,
  `in_date` datetime(6) NOT NULL,
  `machine_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `machine`
--

CREATE TABLE `machine` (
  `id` bigint(20) NOT NULL,
  `machine_name` varchar(200) NOT NULL,
  `machine_code` varchar(350) NOT NULL,
  `machine_picture` varchar(100) DEFAULT NULL,
  `machine_type` varchar(100) NOT NULL,
  `machine_status` varchar(100) NOT NULL,
  `machine_expert_id` bigint(20) NOT NULL,
  `machine_worker_id` bigint(20) NOT NULL,
  `machine_serviceman_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `machine`
--

INSERT INTO `machine` (`id`, `machine_name`, `machine_code`, `machine_picture`, `machine_type`, `machine_status`, `machine_expert_id`, `machine_worker_id`, `machine_serviceman_id`) VALUES
(1, 'CNC Lathe Drilling', '04044940HKS', 'machine/cnc-lathe_wC3Gpa0.jpg', 'Machine', 'Running', 2, 1, 3),
(2, 'CNC Ganty plasma cutting machine', '03993940UDH', 'machine/CNC-001.jpg', 'Machine', 'Running', 2, 1, 3),
(3, 'CNC Milling Machine', '0924482HJAS3', 'machine/cnc-milling-machines.jpg', 'Machine', 'Running', 2, 1, 3),
(4, 'Universal Robots', '0384HALJWIEH', 'machine/Cobot-welder.jpg', 'Cobot', 'Running', 2, 1, 3),
(5, 'Perkins CNC Lathe', '0404940HKSHSU', 'machine/CNC-machine.jpg', 'Machine', 'Running', 2, 1, 3),
(6, 'Universal Robots', '5935448UHDDOSHDJ', 'machine/CNC_001.jpg', 'Machine', 'Running', 2, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` bigint(20) NOT NULL,
  `request` varchar(200) NOT NULL,
  `title` varchar(350) NOT NULL,
  `description` longtext NOT NULL,
  `not_status` varchar(100) NOT NULL,
  `not_date` datetime(6) NOT NULL,
  `machine_id_id` bigint(20) NOT NULL,
  `not_id_id` bigint(20) NOT NULL,
  `not_sender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `request`, `title`, `description`, `not_status`, `not_date`, `machine_id_id`, `not_id_id`, `not_sender`) VALUES
(1, 'maintenance', 'Machine no #5', 'I need assistance, there is oil spillage at the the CNC machine', 'Active', '2022-12-29 05:41:59.032210', 5, 1, 'Worker'),
(2, 'failure', 'Machine no #2', 'The Milling machine broke down after 3 hours of running, It made a loud noise and broke down', 'Active', '2022-12-29 06:32:32.750822', 2, 2, 'Worker'),
(3, 'maintenance', 'Machine no #5', 'This machine having run for 60 hours needs to be serviced', 'Active', '2022-12-29 06:46:13.498106', 5, 3, 'Expert'),
(4, 'maintenance', 'Machine no #5', 'This machine having run for 60 hours needs to be serviced', 'Active', '2022-12-29 06:48:06.803817', 5, 4, 'Expert'),
(5, 'maintenance', 'Machine no #3', 'Maintenance needed for this machine', 'Active', '2022-12-29 06:53:48.777200', 3, 5, 'Expert'),
(9, 'maintenance', 'Machine no #5', 'There is noise coming from the fan belt, please check the cause.', 'Active', '2023-01-01 06:32:44.615421', 5, 9, 'Expert'),
(10, 'reminder', 'Service Reminder', 'This is a reminder that this machine needs to be serviced ASAP', 'Active', '2023-02-18 04:10:08.785218', 5, 10, 'Worker'),
(11, 'reminder', 'Service Reminder', 'This is a reminder that this machine needs to be serviced ASAP', 'Active', '2023-02-18 04:10:53.958762', 5, 11, 'Worker'),
(12, 'reminder', 'Service Reminder', 'This is a reminder that this machine needs to be serviced ASAP', 'Active', '2023-02-18 04:20:37.748180', 3, 12, 'Expert'),
(13, 'maintenance', 'Machine no #5', 'CNC machine broke down', 'Active', '2023-04-08 14:46:27.586429', 5, 13, 'Expert'),
(14, 'assistance', 'Machine no #2', 'This machine broke down abrouptly', 'Active', '2023-04-09 09:18:19.174104', 2, 14, 'Expert'),
(15, 'request', 'Machine no #5', 'Maintenance needed for this machine', 'Active', '2023-04-09 20:02:38.792087', 5, 15, 'Serviceman'),
(19, 'maintenance', 'Machine no #5', 'testing this machine', 'Solved', '2023-04-10 17:42:53.831569', 5, 19, 'Serviceman'),
(20, 'maintenance', 'Machine no #5', 'Please I need help Machine is failing', 'Active', '2023-04-20 11:45:46.927265', 5, 20, 'Worker'),
(25, 'assistance', 'Machine no #5', 'request maintenace', 'Active', '2023-04-20 16:03:16.732135', 5, 25, 'Expert'),
(26, 'assistance', 'Machine no #6', 'making request', 'Active', '2023-04-20 16:12:03.242421', 6, 26, 'Expert'),
(27, 'maintenance', 'Machine no #6', 'machine broke down', 'Active', '2023-04-29 18:26:11.833163', 6, 27, 'Worker');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` bigint(20) NOT NULL,
  `req_id` varchar(20) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `request_status` varchar(250) NOT NULL,
  `request_type` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `req_date` datetime(6) NOT NULL,
  `worker_status` varchar(250) NOT NULL,
  `expert_status` varchar(250) NOT NULL,
  `serviceman_status` varchar(250) NOT NULL,
  `request_sender` varchar(50) NOT NULL,
  `worker_view` int(11) NOT NULL,
  `expert_view` int(11) NOT NULL,
  `serviceman_view` int(11) NOT NULL,
  `machine_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `req_id`, `subject`, `request_status`, `request_type`, `description`, `req_date`, `worker_status`, `expert_status`, `serviceman_status`, `request_sender`, `worker_view`, `expert_view`, `serviceman_view`, `machine_id_id`) VALUES
(1, '38875', 'Oil Spillage from the machine', 'Solved', 'Assistance', 'I need assistance, there is oil spillage at the the CNC machine', '2022-12-29 05:41:58.731507', 'Resolved', 'Resolved', 'Pending', 'Worker', 1, 4, 2, 5),
(2, '13349', 'Machine Broke Down', 'Pending', 'Failure', 'The Milling machine broke down after 3 hours of running, It made a loud noise and broke down', '2022-12-29 06:32:32.467436', 'Pending', 'Pending', 'Pending', 'Worker', 4, 5, 0, 2),
(3, '57196', 'Maintenance needed for this machine', 'Pending', 'Maintanace', 'This machine having run for 60 hours needs to be serviced', '2022-12-29 06:46:13.222436', 'Pending', 'Pending', 'Pending', 'Expert', 8, 0, 2, 5),
(4, '24273', 'Maintenance needed for this machine', 'Solved', 'Maintanace', 'This machine having run for 60 hours needs to be serviced', '2022-12-29 06:48:06.475247', 'Resolved', 'Pending', 'Pending', 'Expert', 3, 1, 1, 5),
(5, '47591', 'Maintenance needed for this machine', 'Pending', 'Maintanace', 'Maintenance needed for this machine', '2022-12-29 06:53:48.442091', 'Pending', 'Pending', 'Pending', 'Expert', 23, 6, 1, 3),
(9, '74221', 'Noisey fan belt', 'Solved', 'Maintanace', 'There is noise coming from the fan belt, please check the cause.', '2023-01-01 06:32:44.301363', 'Resolved', 'Resolved', 'Pending', 'Expert', 12, 22, 1, 5),
(10, '97376', 'Machine Service Reminder', 'Pending', 'Reminder', 'This is a reminder that this machine needs to be serviced ASAP', '2023-02-18 04:10:08.669670', 'Pending', 'Pending', 'Pending', 'Worker', 0, 0, 0, 5),
(11, '76874', 'Machine Service Reminder', 'Pending', 'Reminder', 'This is a reminder that this machine needs to be serviced ASAP', '2023-02-18 04:10:53.807626', 'Pending', 'Pending', 'Pending', 'Worker', 0, 0, 0, 5),
(12, '40513', 'Machine Service Reminder', 'Pending', 'Reminder', 'This is a reminder that this machine needs to be serviced ASAP', '2023-02-18 04:20:37.681200', 'Pending', 'Pending', 'Pending', 'Expert', 0, 0, 3, 3),
(13, '14179', 'Maintance request', 'Pending', 'Maintanace', 'CNC machine broke down', '2023-04-08 14:46:27.465102', 'Pending', 'Pending', 'Pending', 'Expert', 0, 1, 2, 5),
(14, '25452', 'CNC Machine Broke Down', 'Pending', 'Assistance', 'This machine broke down abrouptly', '2023-04-09 09:18:18.880143', 'Pending', 'Pending', 'Pending', 'Expert', 1, 3, 5, 2),
(15, '78980', 'Maintenance needed for this machine', 'Pending', 'Request', 'Maintenance needed for this machine', '2023-04-09 20:02:38.360502', 'Pending', 'Pending', 'Pending', 'Serviceman', 13, 3, 6, 5),
(19, '50430', 'Test 2023', 'Pending', 'Request', 'testing this machine', '2023-04-10 17:42:53.618407', 'Pending', 'Pending', 'Pending', 'Serviceman', 2, 0, 2, 5),
(20, '64082', 'I need help, machine is failing', 'Pending', 'Maintanace', 'Please I need help Machine is failing', '2023-04-20 11:45:46.710722', 'Pending', 'Pending', 'Pending', 'Worker', 0, 1, 0, 5),
(25, '56826', 'requst maintance', 'Pending', 'Assistance', 'request maintenace', '2023-04-20 16:03:16.409415', 'Pending', 'Pending', 'Pending', 'Expert', 0, 0, 1, 5),
(26, '57805', 'requst maintance', 'Pending', 'Assistance', 'making request', '2023-04-20 16:12:02.859792', 'Pending', 'Pending', 'Pending', 'Expert', 0, 1, 3, 6),
(27, '8465', 'Maintance request', 'Pending', 'Maintanace', 'machine broke down', '2023-04-29 18:26:11.616031', 'Pending', 'Pending', 'Pending', 'Worker', 0, 0, 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `requestimage`
--

CREATE TABLE `requestimage` (
  `id` bigint(20) NOT NULL,
  `req_id` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `requestimage`
--

INSERT INTO `requestimage` (`id`, `req_id`, `image`) VALUES
(1, '38875', 'requests/Figure-1.jpg'),
(2, '38875', 'requests/Figure-2.jpg'),
(3, '38875', 'requests/Figure-5.jpg'),
(4, '13349', 'requests/Figure-1.jpg'),
(5, '13349', 'requests/Figure-2.jpg'),
(6, '13349', 'requests/Figure-5.jpg'),
(7, '57196', 'requests/Figure-1.jpg'),
(8, '57196', 'requests/Figure-2.jpg'),
(9, '57196', 'requests/Figure-5.jpg'),
(10, '24273', 'requests/Figure-1.jpg'),
(11, '24273', 'requests/Figure-2.jpg'),
(12, '24273', 'requests/Figure-5.jpg'),
(13, '47591', 'requests/Figure-1.jpg'),
(14, '47591', 'requests/Figure-2.jpg'),
(15, '47591', 'requests/Figure-5.jpg'),
(25, '74221', 'requests/Figure-1_Yg2VuIF.jpg'),
(26, '74221', 'requests/Figure-2_0exSkOb.jpg'),
(27, '74221', 'requests/Figure-5_VrgL7V8.jpg'),
(28, '14179', 'requests/Photo0538.jpg'),
(29, '14179', 'requests/Photo0670.jpg'),
(30, '14179', 'requests/Photo0537.jpg'),
(31, '25452', 'requests/Photo0670_skoCgVr.jpg'),
(32, '25452', 'requests/Photo0537_s7EgGIl.jpg'),
(33, '25452', 'requests/Photo0578.jpg'),
(34, '78980', 'requests/2023-04-08_08-04-1680937521.jpg'),
(35, '78980', 'requests/2023-04-07_07-04-1680847759.jpg'),
(36, '78980', 'requests/2023-04-07_05-04-1680841282.jpg'),
(37, '24815', 'requests/2023-04-06_17-04-1680798176.jpg'),
(38, '24815', 'requests/2023-04-07_05-04-1680841282_NbD5cZ5.jpg'),
(39, '67662', 'requests/2023-04-10_17-04-1681144424.jpg'),
(40, '67662', 'requests/2023-04-10_06-04-1681105055.jpg'),
(41, '67662', 'requests/2023-04-06_17-04-1680798176_vyCwDRy.jpg'),
(42, '26138', 'requests/2023-04-10_06-04-1681105055_vwxAo7M.jpg'),
(43, '26138', 'requests/2023-04-06_17-04-1680798176_FksoE8f.jpg'),
(44, '50430', 'requests/2023-04-10_17-04-1681144424_H0XIsb4.jpg'),
(45, '50430', 'requests/2023-04-10_06-04-1681105055_Xpvhyyl.jpg'),
(46, '50430', 'requests/2023-04-07_05-04-1680841282_8gbkDDt.jpg'),
(47, '64082', 'requests/business-people-handshake-greeting-deal-work.jpg'),
(48, '64082', 'requests/african-american-applicant-holding-resume-job-interview-close-up-view.jpg'),
(49, '64082', 'requests/black-employee-checking-digital-blue-prints-analysing-project-company-looking-l_8cH9vfX.jpg'),
(50, '12751', 'requests/about-us-information-service-sharing-join-concept.jpg'),
(51, '12751', 'requests/hands-working-network-graphic-overlay-banner-desk.jpg'),
(52, '12751', 'requests/marketing-branding-creativity-business-values.jpg'),
(53, '33599', 'requests/shortstay.png'),
(54, '33599', 'requests/smart-glass-removebg-preview.png'),
(55, '33599', 'requests/WhatsApp_Image_2023-02-13_at_8.06.28_AM.jpeg'),
(56, '61780', 'requests/Photo0538_gUF9Yhy.jpg'),
(57, '61780', 'requests/Photo0670_5X4g5jv.jpg'),
(58, '61780', 'requests/Photo0537_8pcpObM.jpg'),
(59, '95273', 'requests/Photo0538_lVvzDYE.jpg'),
(60, '95273', 'requests/Photo0670_b6Ew4hP.jpg'),
(61, '95273', 'requests/Photo0537_GKAkyPk.jpg'),
(62, '56826', 'requests/Photo0538_owYHqqT.jpg'),
(63, '56826', 'requests/Photo0670_3lKmrqZ.jpg'),
(64, '56826', 'requests/Photo0537_9TzoIni.jpg'),
(65, '57805', 'requests/Photo0538_WdPi2JY.jpg'),
(66, '57805', 'requests/Photo0670_AOH9sTF.jpg'),
(67, '57805', 'requests/Photo0537_3y0DtTT.jpg'),
(68, '8465', 'requests/9780525512196.jpg'),
(69, '8465', 'requests/9781101904213.jpg'),
(70, '8465', 'requests/9780735222359.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `serviceman_chat`
--

CREATE TABLE `serviceman_chat` (
  `id` bigint(20) NOT NULL,
  `req_id` varchar(20) NOT NULL,
  `message` longtext NOT NULL,
  `chat_date` datetime(6) NOT NULL,
  `user_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `serviceman_chat`
--

INSERT INTO `serviceman_chat` (`id`, `req_id`, `message`, `chat_date`, `user_id_id`) VALUES
(3, '14179', '<p>testing</p>', '2023-04-09 07:29:31.032970', 3),
(4, '14179', '<p>testing</p>', '2023-04-09 07:30:19.138115', 3),
(5, '14179', '<p>it\'s working</p>', '2023-04-09 07:54:45.695812', 1),
(6, '78980', '<p>machine broke down</p>', '2023-04-10 16:38:10.584673', 3),
(7, '78980', '<p>how do we fix it?&nbsp;</p>', '2023-04-10 16:38:59.069503', 1),
(8, '26138', '<p>hello there</p>', '2023-04-10 17:16:51.805353', 1),
(9, '50430', '<p>This is now working</p>', '2023-04-10 17:43:51.752425', 1),
(10, '50430', '<p>hope it is working</p>', '2023-04-10 17:44:23.941385', 3),
(11, '50430', '<p>yeah, test is working</p>', '2023-04-24 13:55:56.403635', 3),
(12, '50430', '<p>great, i like that</p>', '2023-04-24 13:57:44.775847', 1),
(13, '50430', '<p>test it more</p>', '2023-04-24 13:59:02.102361', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `user_picture` varchar(100) DEFAULT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(250) NOT NULL,
  `user_category` varchar(250) NOT NULL,
  `password` varchar(200) NOT NULL,
  `user_status` varchar(100) NOT NULL,
  `reg_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `user_picture`, `phone`, `email`, `user_category`, `password`, `user_status`, `reg_date`) VALUES
(1, 'John', 'Doe', 'profile/user.png', 'user1', 'johndoe@gmail.com', 'Worker', 'md5$x0QcaSzBQUpLjRJ7fEFab3$9828fceec748cda1dd267b7e50807490', 'Active', '2022-12-27 22:09:01.506629'),
(2, 'Hans', 'Doe', 'profile/user2.png', 'user2', 'hansdoe@gmail.com', 'Expert', 'md5$oq4lYQZUK8vncxQpaXFV3K$3e120cb9fb010df21af05c2133d593cc', 'Active', '2022-12-27 22:09:45.179552'),
(3, 'Sam', 'Doe', 'profile/user4.png', 'user3', 'sam@gmail.com', 'Serviceman', 'md5$nPtqJjpDsWHkosAjaCcsZY$7177e645719f90d3389c689d7c0f78e1', 'Active', '2022-12-27 22:10:17.689761');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_user_id_id_7c619461_fk_user_id` (`user_id_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `expert_chat`
--
ALTER TABLE `expert_chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expert_chat_user_id_id_c003f1fe_fk_user_id` (`user_id_id`);

--
-- Indexes for table `instruction`
--
ALTER TABLE `instruction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instruction_machine_id_id_7973f52f_fk_machine_id` (`machine_id_id`);

--
-- Indexes for table `machine`
--
ALTER TABLE `machine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `machine_machine_expert_id_1ad4e05a_fk_user_id` (`machine_expert_id`),
  ADD KEY `machine_machine_worker_id_8c589090_fk_user_id` (`machine_worker_id`),
  ADD KEY `machine_machine_serviceman_id_85da24d3_fk_user_id` (`machine_serviceman_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_machine_id_id_3ebee468_fk_machine_id` (`machine_id_id`),
  ADD KEY `notification_not_id_id_594c91d5_fk_request_id` (`not_id_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_machine_id_id_a5bb007b_fk_machine_id` (`machine_id_id`);

--
-- Indexes for table `requestimage`
--
ALTER TABLE `requestimage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serviceman_chat`
--
ALTER TABLE `serviceman_chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serviceman_chat_user_id_id_8fcd217a_fk_user_id` (`user_id_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `expert_chat`
--
ALTER TABLE `expert_chat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `instruction`
--
ALTER TABLE `instruction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `machine`
--
ALTER TABLE `machine`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `requestimage`
--
ALTER TABLE `requestimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `serviceman_chat`
--
ALTER TABLE `serviceman_chat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `chat_user_id_id_7c619461_fk_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `expert_chat`
--
ALTER TABLE `expert_chat`
  ADD CONSTRAINT `expert_chat_user_id_id_c003f1fe_fk_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `instruction`
--
ALTER TABLE `instruction`
  ADD CONSTRAINT `instruction_machine_id_id_7973f52f_fk_machine_id` FOREIGN KEY (`machine_id_id`) REFERENCES `machine` (`id`);

--
-- Constraints for table `machine`
--
ALTER TABLE `machine`
  ADD CONSTRAINT `machine_machine_expert_id_1ad4e05a_fk_user_id` FOREIGN KEY (`machine_expert_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `machine_machine_serviceman_id_85da24d3_fk_user_id` FOREIGN KEY (`machine_serviceman_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `machine_machine_worker_id_8c589090_fk_user_id` FOREIGN KEY (`machine_worker_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_machine_id_id_3ebee468_fk_machine_id` FOREIGN KEY (`machine_id_id`) REFERENCES `machine` (`id`),
  ADD CONSTRAINT `notification_not_id_id_594c91d5_fk_request_id` FOREIGN KEY (`not_id_id`) REFERENCES `request` (`id`);

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_machine_id_id_a5bb007b_fk_machine_id` FOREIGN KEY (`machine_id_id`) REFERENCES `machine` (`id`);

--
-- Constraints for table `serviceman_chat`
--
ALTER TABLE `serviceman_chat`
  ADD CONSTRAINT `serviceman_chat_user_id_id_8fcd217a_fk_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
