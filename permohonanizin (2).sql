-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2020 at 04:35 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `permohonanizin`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2020-05-13 07:25:18', NULL),
(2, 'Eko Wijaya', 'NO', 'Testing', '<p>Sudah selesai silahkan di ambil</p>', 'Takde', 'Admin', 'w17aya09@gmail.com', NULL, '2020-06-07 20:02:51', NULL),
(3, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2020-07-11 21:26:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-05-13 07:27:14', NULL),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-05-14 20:06:12', NULL),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/users/add-save', 'Add New Data Mega dahliana at Users Management', '', 1, '2020-05-14 20:07:30', NULL),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/users/add-save', 'Add New Data admin aku at Users Management', '', 1, '2020-05-14 20:12:19', NULL),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-05-14 20:29:50', NULL),
(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-05-14 20:29:54', NULL),
(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-05-14 20:30:05', NULL),
(8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'megadahliana996@gmail.com login with IP Address ::1', '', 2, '2020-05-14 20:31:10', NULL),
(9, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'megadahliana996@gmail.com logout', '', 2, '2020-05-14 20:31:23', NULL),
(10, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-05-14 20:31:30', NULL),
(11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-05-14 20:31:55', NULL),
(12, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-05-14 20:32:19', NULL),
(13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/users/add-save', 'Add New Data EKO WIJAYA at Users Management', '', 1, '2020-05-14 20:32:52', NULL),
(14, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-05-14 20:32:59', NULL),
(15, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@admin.com login with IP Address ::1', '', 4, '2020-05-14 20:33:03', NULL),
(16, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@admin.com logout', '', 4, '2020-05-14 20:34:38', NULL),
(17, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-05-14 20:35:02', NULL),
(18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/add-save', 'Add New Data User at Menu Management', '', 1, '2020-05-14 20:36:19', NULL),
(19, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-05-14 20:37:32', NULL),
(20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@admin.com login with IP Address ::1', '', 4, '2020-05-14 20:37:43', NULL),
(21, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@admin.com logout', '', 4, '2020-05-14 20:37:48', NULL),
(22, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'megadahliana996@gmail.com login with IP Address ::1', '', 2, '2020-05-14 20:37:56', NULL),
(23, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/users/delete-image', 'Delete the image of Mega dahliana at Users Management', '', 2, '2020-05-14 20:38:12', NULL),
(24, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/users/edit-save/2', 'Update data Mega dahliana at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/2/2020-05/pnbjb.png</td></tr><tr><td>password</td><td>$2y$10$Xoagyg9QkDGWkpD44EBVF.VkmWyybyZg7jPUnidLoTXaxCXKlOnUe</td><td>$2y$10$U6b2bCN1Ta9aIB/ZXuO01OIZ3O1qMh27QkQwOri9TE4urVwVILeWm</td></tr><tr><td>id_cms_privileges</td><td>2</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 2, '2020-05-14 20:38:21', NULL),
(25, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/users/edit-save/2', 'Update data Mega dahliana at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$U6b2bCN1Ta9aIB/ZXuO01OIZ3O1qMh27QkQwOri9TE4urVwVILeWm</td><td>$2y$10$/SvFkfcgHQj8HQM9YDHFDe.tF63USdoI1WdPNyTLMlU/yN3UwW9rG</td></tr><tr><td>id_cms_privileges</td><td>2</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 2, '2020-05-14 20:38:23', NULL),
(26, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'megadahliana996@gmail.com logout', '', 2, '2020-05-14 20:38:45', NULL),
(27, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'megadahliana996@gmail.com login with IP Address ::1', '', 2, '2020-05-14 20:38:49', NULL),
(28, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'megadahliana996@gmail.com logout', '', 2, '2020-05-14 20:38:53', NULL),
(29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'megadahliana996@gmail.com login with IP Address ::1', '', 2, '2020-05-14 20:43:25', NULL),
(30, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-05-14 22:54:31', NULL),
(31, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/users/edit-save/1', 'Update data Developer at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Super Admin</td><td>Developer</td></tr><tr><td>photo</td><td></td><td>uploads/1/2020-05/pnbjb.png</td></tr><tr><td>password</td><td>$2y$10$Q/EBLNCvs70tfBmlVgnyu.UUO4Bar4gP3MDxbkgVeP2yL0/DCc1i.</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2020-05-14 22:56:54', NULL),
(32, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/users/delete-image', 'Delete the image of admin aku at Users Management', '', 1, '2020-05-14 22:57:36', NULL),
(33, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-05-14 23:03:27', NULL),
(34, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-05-14 23:03:30', NULL),
(35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-05-14 23:10:40', NULL),
(36, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-05-15 02:56:36', NULL),
(37, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-05-15 03:12:36', NULL),
(38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', ' logout', '', NULL, '2020-05-15 03:12:37', NULL),
(39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-05-15 03:12:46', NULL),
(40, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-05-15 03:13:54', NULL),
(41, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-05-15 03:14:00', NULL),
(42, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/statistic_builder/add-save', 'Add New Data USER at Statistic Builder', '', 1, '2020-05-15 03:37:03', NULL),
(43, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/statistic_builder/edit-save/1', 'Update data USER at Statistic Builder', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>slug</td><td>user</td><td></td></tr></tbody></table>', 1, '2020-05-15 03:37:35', NULL),
(44, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-05-15 06:05:42', NULL),
(45, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-05-15 08:17:24', NULL),
(46, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@admin.com login with IP Address ::1', '', 4, '2020-05-15 08:17:37', NULL),
(47, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 Edg/81.0.416.72', 'http://localhost/pnbjb/public/admin/login', 'admin@crudbooster.com login dengan IP Address ::1', '', 1, '2020-05-16 03:22:44', NULL),
(48, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 Edg/81.0.416.72', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-05-16 03:24:09', NULL),
(49, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-05-17 06:27:42', NULL),
(50, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/geledah/add-save', 'Add New Data 1 at Geledah', '', 1, '2020-05-17 06:52:45', NULL),
(51, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/2', 'Update data Geledah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr></tbody></table>', 1, '2020-05-17 06:58:17', NULL),
(52, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-05-17 07:03:06', NULL),
(53, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@admin.com login with IP Address ::1', '', 4, '2020-05-17 07:03:51', NULL),
(54, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@admin.com logout', '', 4, '2020-05-17 07:04:23', NULL),
(55, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-05-17 07:04:29', NULL),
(56, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/2', 'Update data Geledah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-mail-reply</td><td>fa fa-envelope-o</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-05-17 07:05:12', NULL),
(57, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/add-save', 'Add New Data SITA at Menu Management', '', 1, '2020-05-17 07:06:24', NULL),
(58, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-05-17 07:06:52', NULL),
(59, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@admin.com login with IP Address ::1', '', 4, '2020-05-17 07:07:02', NULL),
(60, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@admin.com logout', '', 4, '2020-05-17 07:07:12', NULL),
(61, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-05-17 07:07:20', NULL),
(62, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/3', 'Update data SITA at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-05-17 07:08:11', NULL),
(63, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-05-17 07:08:27', NULL),
(64, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@admin.com login with IP Address ::1', '', 4, '2020-05-17 07:08:34', NULL),
(65, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@admin.com logout', '', 4, '2020-05-17 07:09:28', NULL),
(66, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-05-17 07:09:36', NULL),
(67, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/add-save', 'Add New Data PENAHANAN at Menu Management', '', 1, '2020-05-17 07:19:18', NULL),
(68, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-05-17 07:19:39', NULL),
(69, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@admin.com login with IP Address ::1', '', 4, '2020-05-17 07:19:54', NULL),
(70, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/geledah', 'Try view the data :name at Geledah', '', 4, '2020-05-17 07:20:21', NULL),
(71, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/geledah', 'Try view the data :name at Geledah', '', 4, '2020-05-17 07:20:31', NULL),
(72, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@admin.com logout', '', 4, '2020-05-17 07:21:00', NULL),
(73, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-05-17 07:21:14', NULL),
(74, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/4', 'Update data PENAHANAN at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2020-05-17 07:21:50', NULL),
(75, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-05-17 07:22:00', NULL),
(76, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@admin.com login with IP Address ::1', '', 4, '2020-05-17 07:22:07', NULL),
(77, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/geledah', 'Try view the data :name at Geledah', '', 4, '2020-05-17 07:35:45', NULL),
(78, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/geledah', 'Try view the data :name at Geledah', '', 4, '2020-05-17 07:35:47', NULL),
(79, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/geledah', 'Try view the data :name at Geledah', '', 4, '2020-05-17 07:35:51', NULL),
(80, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/geledah', 'Try view the data :name at Geledah', '', 4, '2020-05-17 07:35:55', NULL),
(81, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/geledah', 'Try view the data :name at Geledah', '', 4, '2020-05-17 07:35:57', NULL),
(82, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@admin.com logout', '', 4, '2020-05-17 07:36:08', NULL),
(83, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-05-17 07:37:32', NULL),
(84, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/add-save', 'Add New Data User at Menu Management', '', 1, '2020-05-17 07:38:15', NULL),
(85, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-05-17 07:39:08', NULL),
(86, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@admin.com login with IP Address ::1', '', 4, '2020-05-17 07:39:26', NULL),
(87, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/geledah', 'Try view the data :name at Geledah', '', 4, '2020-05-17 07:39:33', NULL),
(88, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@admin.com logout', '', 4, '2020-05-17 07:39:38', NULL),
(89, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-05-17 07:39:46', NULL),
(90, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/delete/5', 'Delete data User at Menu Management', '', 1, '2020-05-17 07:45:35', NULL),
(91, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/1', 'Update data User at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>aqua</td><td>red</td></tr><tr><td>icon</td><td>fa fa-user</td><td>fa fa-user-plus</td></tr></tbody></table>', 1, '2020-05-17 07:46:20', NULL),
(92, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-05-17 07:46:45', NULL),
(93, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@admin.com login with IP Address ::1', '', 4, '2020-05-17 07:46:57', NULL),
(94, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/users/delete/3', 'Delete data admin aku at Users Management', '', 4, '2020-05-17 07:48:17', NULL),
(95, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/users/delete-image', 'Delete the image of EKO WIJAYA at Users Management', '', 4, '2020-05-17 07:49:31', NULL),
(96, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/users/edit-save/4', 'Update data EKO WIJAYA at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/4/2020-05/unnamed.png</td></tr><tr><td>password</td><td>$2y$10$u.BXBKYn701txB9IwVz0.uWj8IoEtzqXnpVzS0Wp8TzLNLSGPu.Ja</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 4, '2020-05-17 07:49:41', NULL),
(97, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@admin.com logout', '', 4, '2020-05-17 07:49:54', NULL),
(98, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-05-17 07:50:04', NULL),
(99, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/statistic_builder/edit-save/1', 'Update data USER at Statistic Builder', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>slug</td><td>user</td><td></td></tr></tbody></table>', 1, '2020-05-17 07:54:38', NULL),
(100, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/3', 'Update data SITA at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>yellow</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2020-05-17 07:55:44', NULL),
(101, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/2', 'Update data Geledah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>aqua</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-05-17 07:56:05', NULL),
(102, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/2', 'Update data Geledah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Module</td></tr><tr><td>path</td><td>AdminGeledahControllerGetIndex</td><td>geledah</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-05-17 08:02:19', NULL),
(103, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/4', 'Update data PENAHANAN at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>geledah</td><td>penahanan</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2020-05-17 08:04:42', NULL),
(104, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/7', 'Update data SITA at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Module</td></tr><tr><td>path</td><td>AdminSitaControllerGetIndex</td><td>sita</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2020-05-17 08:06:38', NULL),
(105, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/7', 'Update data SITA at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2020-05-17 08:06:52', NULL),
(106, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/delete/6', 'Delete data PENAHANAN at Menu Management', '', 1, '2020-05-17 08:07:17', NULL),
(107, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/delete/7', 'Delete data SITA at Menu Management', '', 1, '2020-05-17 08:07:24', NULL),
(108, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/3', 'Update data SITA at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>geledah</td><td>sita</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2020-05-17 08:08:02', NULL),
(109, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/add-save', 'Add New Data Statistik at Menu Management', '', 1, '2020-05-17 08:09:07', NULL),
(110, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/8', 'Update data Statistik at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-05-17 08:09:30', NULL),
(111, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-05-17 15:44:37', NULL),
(112, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/add-save', 'Add New Data Laporan at Menu Management', '', 1, '2020-05-17 15:46:01', NULL),
(113, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/9', 'Update data Laporan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-05-17 15:46:25', NULL),
(114, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/add-save', 'Add New Data Rekapitulasi Izin Sita at Menu Management', '', 1, '2020-05-17 15:47:31', NULL),
(115, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/9', 'Update data Laporan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2020-05-17 15:47:44', NULL),
(116, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/add-save', 'Add New Data Rekapitulasi Izin Geledah at Menu Management', '', 1, '2020-05-17 15:48:18', NULL),
(117, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/10', 'Update data Rekapitulasi Izin Sita at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>users</td><td>sita</td></tr><tr><td>parent_id</td><td>9</td><td></td></tr></tbody></table>', 1, '2020-05-17 15:51:56', NULL),
(118, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/11', 'Update data Rekapitulasi Izin Geledah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>users</td><td>geledah</td></tr><tr><td>parent_id</td><td>9</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-05-17 15:52:12', NULL),
(119, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/add-save', 'Add New Data Rekapitulasi Izin Penahanan at Menu Management', '', 1, '2020-05-17 15:52:41', NULL),
(120, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/12', 'Update data Rekapitulasi Izin Penahanan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>9</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2020-05-17 15:53:09', NULL),
(121, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-05-17 15:54:13', NULL),
(122, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@admin.com login with IP Address ::1', '', 4, '2020-05-17 15:54:20', NULL),
(123, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@admin.com logout', '', 4, '2020-05-17 16:04:25', NULL),
(124, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-05-17 16:04:31', NULL),
(125, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/2', 'Update data GELEDAH at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Geledah</td><td>GELEDAH</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2020-05-17 16:04:49', NULL),
(126, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-05-18 06:26:03', NULL),
(127, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-05-18 19:39:37', NULL),
(128, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-05-20 06:16:23', NULL),
(129, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 Edg/81.0.416.77', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-05-22 06:03:32', NULL),
(130, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-06-06 04:14:44', NULL),
(131, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-06-06 04:15:55', NULL),
(132, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-06-06 04:16:08', NULL),
(133, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'http://localhost/izin/public/admin/users/delete-image', 'Delete the image of EKO WIJAYA at Users Management', '', 1, '2020-06-06 04:26:46', NULL),
(134, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'http://localhost/izin/public/admin/users/edit-save/4', 'Update data EKO WIJAYA at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2020-06/10df647e21c33775e09ec292045c7ad3.jpg</td></tr><tr><td>password</td><td>$2y$10$u.BXBKYn701txB9IwVz0.uWj8IoEtzqXnpVzS0Wp8TzLNLSGPu.Ja</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2020-06-06 04:27:15', NULL),
(135, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-06-06 04:27:48', NULL),
(136, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-06-06 04:27:50', NULL),
(137, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'http://localhost/izin/public/admin/users/delete-image', 'Delete the image of Developer at Users Management', '', 1, '2020-06-06 04:27:59', NULL),
(138, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'http://localhost/izin/public/admin/users/edit-save/1', 'Update data Developer at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2020-06/9ac0cfcbf9a916aa04307a21ea04d04d.jpg</td></tr><tr><td>password</td><td>$2y$10$Q/EBLNCvs70tfBmlVgnyu.UUO4Bar4gP3MDxbkgVeP2yL0/DCc1i.</td><td>$2y$10$xp9DU0wxklNNA9P.lsOvjuCrcCYuDvIJsgtDyOYtUkCx/kQseNoiW</td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2020-06-06 04:28:10', NULL),
(139, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-06-06 04:28:18', NULL),
(140, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-06-06 04:28:21', NULL),
(141, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-06-07 19:53:02', NULL),
(142, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'http://localhost/izin/public/admin/email_templates/add-save', 'Tambah data baru Eko Wijaya pada Email Templates', '', 1, '2020-06-07 20:02:51', NULL),
(143, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'http://localhost/izin/public/admin/users/delete-image', 'Menghapus gambar Mega dahliana pada Users Management', '', 1, '2020-06-07 20:03:33', NULL),
(144, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'http://localhost/izin/public/admin/users/edit-save/2', 'Memperbaharui data Mega dahliana pada Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2020-06/pp.jpg</td></tr><tr><td>password</td><td>$2y$10$/SvFkfcgHQj8HQM9YDHFDe.tF63USdoI1WdPNyTLMlU/yN3UwW9rG</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2020-06-07 20:04:09', NULL),
(145, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-07-11 21:31:22', NULL),
(146, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/sita/add-save', 'Add New Data 1 at SITA', '', 1, '2020-07-11 21:32:38', NULL),
(147, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/sita/add-save', 'Add New Data 2002 at SITA', '', 1, '2020-07-11 21:42:28', NULL),
(148, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/statistic_builder/add-save', 'Add New Data Sita at Statistic Builder', '', 1, '2020-07-11 21:58:36', NULL),
(149, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/statistic_builder/add-save', 'Add New Data Geledah at Statistic Builder', '', 1, '2020-07-11 22:00:55', NULL),
(150, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-07-12 00:37:54', NULL),
(151, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/statistic_builder/delete/3', 'Delete data Geledah at Statistic Builder', '', 1, '2020-07-12 00:41:50', NULL),
(152, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/statistic_builder/delete/2', 'Delete data Sita at Statistic Builder', '', 1, '2020-07-12 00:41:55', NULL),
(153, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/statistic_builder/edit-save/1', 'Update data Dashboard at Statistic Builder', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>USER</td><td>Dashboard</td></tr><tr><td>slug</td><td>user</td><td></td></tr></tbody></table>', 1, '2020-07-12 00:42:25', NULL),
(154, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/3', 'Delete data SITA at Menu Management', '', 1, '2020-07-12 01:29:23', NULL),
(155, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data Sita at Menu Management', '', 1, '2020-07-12 01:29:51', NULL),
(156, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/14', 'Delete data SITA at Module Generator', '', 1, '2020-07-12 01:32:30', NULL),
(157, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/14', 'Delete data SITA at Module Generator', '', 1, '2020-07-12 01:32:32', NULL),
(158, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/13', 'Update data Sita at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>sita</td><td>sita15</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2020-07-12 01:35:18', NULL),
(159, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/14', 'Delete data Sita at Menu Management', '', 1, '2020-07-12 01:40:10', NULL),
(160, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-07-12 04:39:32', NULL),
(161, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-07-12 04:44:14', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(162, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/13', 'Update data Sita at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-mail-reply</td><td>fa fa-envelope-o</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-07-12 04:54:41', NULL),
(163, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/8', 'Delete data Statistik at Menu Management', '', 1, '2020-07-12 04:55:10', NULL),
(164, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/13', 'Update data Sita at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-07-12 04:55:33', NULL),
(165, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data Penahanan at Menu Management', '', 1, '2020-07-12 04:56:53', NULL),
(166, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/15', 'Update data Penahanan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2020-07-12 04:58:02', NULL),
(167, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/13', 'Update data Sita at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>yellow</td></tr></tbody></table>', 1, '2020-07-12 04:58:29', NULL),
(168, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data Permohonan at Menu Management', '', 1, '2020-07-12 05:00:27', NULL),
(169, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/16', 'Update data Permohonan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-07-12 05:01:19', NULL),
(170, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/geledah/add-save', 'Add New Data 16 at Geledah', '', 1, '2020-07-12 05:28:32', NULL),
(171, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data Statistik at Menu Management', '', 1, '2020-07-12 05:29:51', NULL),
(172, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/17', 'Update data Statistik at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-07-12 05:30:44', NULL),
(173, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-07-12 06:42:00', NULL),
(174, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-07-12 06:55:05', NULL),
(175, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-07-18 05:45:05', NULL),
(176, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-07-18 05:47:10', NULL),
(177, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-07-18 05:48:43', NULL),
(178, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/users/edit-save/2', 'Update data Mega dahliana at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$/SvFkfcgHQj8HQM9YDHFDe.tF63USdoI1WdPNyTLMlU/yN3UwW9rG</td><td>$2y$10$Z5Bz9OthcyylZNuPnXhEneDbR3KnvTdqQ6a4hrrUSqZUgXRgsWsEa</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2020-07-18 05:49:11', NULL),
(179, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/penahanan/add-save', 'Add New Data 121 at PENAHANAN', '', 1, '2020-07-18 05:51:02', NULL),
(180, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/menu_management/edit-save/17', 'Update data Statistik at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-07-18 05:54:40', NULL),
(181, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/penahanan/edit-save/121', 'Update data 1 at PENAHANAN', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>no_surat</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2020-07-18 05:58:16', NULL),
(182, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/penahanan/add-save', 'Add New Data 2 at PENAHANAN', '', 1, '2020-07-18 05:59:46', NULL),
(183, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-07-18 06:04:12', NULL),
(184, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/login', 'megadahliana996@gmail.com login with IP Address ::1', '', 2, '2020-07-18 06:04:25', NULL),
(185, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/penahanan', 'Try view the data :name at PENAHANAN', '', 2, '2020-07-18 06:04:31', NULL),
(186, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/penahanan', 'Try view the data :name at PENAHANAN', '', 2, '2020-07-18 06:04:36', NULL),
(187, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/privileges', 'Try view the data :name at Privileges', '', 2, '2020-07-18 06:04:43', NULL),
(188, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/logout', 'megadahliana996@gmail.com logout', '', 2, '2020-07-18 06:04:49', NULL),
(189, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-07-18 06:04:51', NULL),
(190, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-07-18 06:06:14', NULL),
(191, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/login', 'megadahliana996@gmail.com login with IP Address ::1', '', 2, '2020-07-18 06:06:37', NULL),
(192, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/penahanan/add-save', 'Add New Data 3 at PENAHANAN', '', 2, '2020-07-18 06:06:49', NULL),
(193, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/users', 'Try view the data :name at Users Management', '', 2, '2020-07-18 06:07:43', NULL),
(194, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/logout', 'megadahliana996@gmail.com logout', '', 2, '2020-07-18 06:07:53', NULL),
(195, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-07-18 06:07:55', NULL),
(196, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/module_generator/delete/16', 'Delete data Instansi at Module Generator', '', 1, '2020-07-18 06:16:27', NULL),
(197, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/tb_instansi17/add-save', 'Add New Data Kejaksaan Negeri Banjarbaru at Instansi', '', 1, '2020-07-18 06:17:33', NULL),
(198, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/module_generator/delete/15', 'Delete data Sita at Module Generator', '', 1, '2020-07-18 06:20:15', NULL),
(199, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/sita18/add-save', 'Add New Data  at SITA', '', 1, '2020-07-18 06:31:18', NULL),
(200, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/sita18/delete-image', 'Delete the image of  at SITA', '', 1, '2020-07-18 06:31:55', NULL),
(201, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/sita18/delete-image', 'Delete the image of  at SITA', '', 1, '2020-07-18 06:32:07', NULL),
(202, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/menu_management/edit-save/20', 'Update data SITA at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-mail-reply-all</td><td>fa fa-inbox</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2020-07-18 06:35:26', NULL),
(203, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/menu_management/delete/13', 'Delete data Sita at Menu Management', '', 1, '2020-07-18 06:35:31', NULL),
(204, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/menu_management/edit-save/20', 'Update data SITA at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2020-07-18 06:35:41', NULL),
(205, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/users/edit-save/4', 'Update data EKO WIJAYA at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$u.BXBKYn701txB9IwVz0.uWj8IoEtzqXnpVzS0Wp8TzLNLSGPu.Ja</td><td>$2y$10$0CbGVPV2OkqXUEVeXS1HWeklQtTw57VkfqShoCu/SgSYqXSjiRmgC</td></tr><tr><td>id_cms_privileges</td><td>2</td><td>3</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2020-07-18 06:43:05', NULL),
(206, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-07-18 06:43:10', NULL),
(207, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/login', 'admin@admin.com login with IP Address ::1', '', 4, '2020-07-18 06:43:19', NULL),
(208, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/logout', 'admin@admin.com logout', '', 4, '2020-07-18 06:43:29', NULL),
(209, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/login', 'megadahliana996@gmail.com login with IP Address ::1', '', 2, '2020-07-18 06:43:45', NULL),
(210, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/sita18', 'Try view the data :name at SITA', '', 2, '2020-07-18 06:43:54', NULL),
(211, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/sita18', 'Try view the data :name at SITA', '', 2, '2020-07-18 06:44:04', NULL),
(212, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/logout', 'megadahliana996@gmail.com logout', '', 2, '2020-07-18 06:44:30', NULL),
(213, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-07-18 06:44:32', NULL),
(214, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-07-18 06:45:52', NULL),
(215, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/login', 'megadahliana996@gmail.com login with IP Address ::1', '', 2, '2020-07-18 06:46:05', NULL),
(216, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/users', 'Try view the data :name at Users Management', '', 2, '2020-07-18 06:46:24', NULL),
(217, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/logout', 'megadahliana996@gmail.com logout', '', 2, '2020-07-18 06:46:49', NULL),
(218, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-07-18 06:46:52', NULL),
(219, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-07-18 06:47:50', NULL),
(220, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-07-18 06:48:06', NULL),
(221, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/sita18/add-save', 'Add New Data  at SITA', '', 1, '2020-07-18 06:49:22', NULL),
(222, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/sita19/delete/2', 'Delete data  at Daftar_Permohonan_Sita', '', 1, '2020-07-18 06:50:46', NULL),
(223, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/sita18/add-save', 'Add New Data  at SITA', '', 1, '2020-07-18 06:53:04', NULL),
(224, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/sita18/add-save', 'Add New Data  at SITA', '', 1, '2020-07-18 07:04:51', NULL),
(225, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/menu_management/edit-save/21', 'Update data Daftar Permohonan Sita at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Daftar_Permohonan_Sita</td><td>Daftar Permohonan Sita</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2020-07-18 07:14:22', NULL),
(226, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/tb_instansi17/delete/1', 'Delete data Kejaksaan Negeri Banjarbaru at Instansi', '', 1, '2020-07-18 07:15:14', NULL),
(227, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/tb_instansi17/add-save', 'Add New Data PENGADILAN NEGERI BANJARBARU KELAS II  at Instansi', '', 1, '2020-07-18 07:15:39', NULL),
(228, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/detil_sita/add-save', 'Add New Data  at detil_sita', '', 1, '2020-07-18 07:24:01', NULL),
(229, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/menu_management/edit-save/22', 'Update data Detail Register Penyitaan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>detil_sita</td><td>Detail Register Penyitaan</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2020-07-18 07:24:35', NULL),
(230, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/menu_management/add-save', 'Add New Data Detail Register at Menu Management', '', 1, '2020-07-18 07:29:05', NULL),
(231, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.61', 'http://localhost/izin/public/admin/menu_management/edit-save/23', 'Update data Detail Register at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-07-18 07:29:30', NULL),
(232, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-07-18 07:31:27', NULL),
(233, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/tb_instansi17/add-save', 'Add New Data Kejaksaan Negeri Banjarbaru at Instansi', '', 1, '2020-07-18 07:42:01', NULL),
(234, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/tb_instansi17/edit-save/3', 'Update data Pakcoy at Instansi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama</td><td>Kejaksaan Negeri Banjarbaru</td><td>Pakcoy</td></tr><tr><td>alamat</td><td>Jalan Trikora no 4</td><td>Jalan Hercules</td></tr><tr><td>website</td><td>http://www.pn-banjarbaru.go.id/</td><td>nekopoi.care</td></tr></tbody></table>', 1, '2020-07-18 07:43:46', NULL),
(235, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-07-18 19:41:06', NULL),
(236, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/24', 'Update data Status Surat Sita at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Status Surat</td><td>Status Surat Sita</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2020-07-18 20:01:34', NULL),
(237, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat_geledah/add-save', 'Add New Data  at Status Surat Geledah', '', 1, '2020-07-18 20:18:16', NULL),
(238, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat/add-save', 'Add New Data  at Status Surat', '', 1, '2020-07-18 20:27:49', NULL),
(239, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat/add-save', 'Add New Data  at Status Surat', '', 1, '2020-07-18 20:29:44', NULL),
(240, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/geledah/add-save', 'Add New Data 155 at Geledah', '', 1, '2020-07-18 20:40:15', NULL),
(241, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat_geledah/add-save', 'Add New Data  at Status Surat Geledah', '', 1, '2020-07-18 20:40:26', NULL),
(242, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat/add-save', 'Add New Data  at Status Surat', '', 1, '2020-07-18 20:40:55', NULL),
(243, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat/add-save', 'Add New Data  at Status Surat', '', 1, '2020-07-18 20:42:07', NULL),
(244, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat/delete/1', 'Delete data 1 at Status Surat', '', 1, '2020-07-18 20:42:59', NULL),
(245, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat/delete/4', 'Delete data 4 at Status Surat', '', 1, '2020-07-18 20:43:03', NULL),
(246, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat/delete/3', 'Delete data 3 at Status Surat', '', 1, '2020-07-18 20:43:06', NULL),
(247, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat/delete/2', 'Delete data 2 at Status Surat', '', 1, '2020-07-18 20:43:09', NULL),
(248, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat/add-save', 'Add New Data  at Status Surat', '', 1, '2020-07-18 20:44:12', NULL),
(249, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat/add-save', 'Add New Data  at Status Surat', '', 1, '2020-07-18 20:44:50', NULL),
(250, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/26', 'Update data Daftar Permohonan Geledah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Daftar_Permohonan_Geledah</td><td>Daftar Permohonan Geledah</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2020-07-18 21:02:33', NULL),
(251, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/16', 'Update data Pengajuan Permohonan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Permohonan</td><td>Pengajuan Permohonan</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2020-07-18 21:03:26', NULL),
(252, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/add-save', 'Add New Data Daftar Permohonan at Menu Management', '', 1, '2020-07-18 21:03:58', NULL),
(253, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/27', 'Update data Daftar Permohonan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-07-18 21:04:16', NULL),
(254, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/24', 'Update data Status Surat Sita at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>yellow</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2020-07-18 21:06:47', NULL),
(255, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/25', 'Update data Status Surat Geledah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>green</td></tr><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 1, '2020-07-18 21:07:17', NULL),
(256, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/28', 'Update data Status Surat Penahanan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>aqua</td></tr><tr><td>sorting</td><td>10</td><td></td></tr></tbody></table>', 1, '2020-07-18 21:07:30', NULL),
(257, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/25', 'Update data Status Surat Geledah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>green</td><td>light-blue</td></tr><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 1, '2020-07-18 21:07:48', NULL),
(258, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/28', 'Update data Status Surat Penahanan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>aqua</td><td>green</td></tr><tr><td>sorting</td><td>10</td><td></td></tr></tbody></table>', 1, '2020-07-18 21:08:01', NULL),
(259, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/20', 'Update data SITA at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>yellow</td></tr><tr><td>parent_id</td><td>16</td><td></td></tr></tbody></table>', 1, '2020-07-18 21:09:22', NULL),
(260, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-07-18 21:13:21', NULL),
(261, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-07-18 21:59:42', NULL),
(262, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-07-18 22:00:42', NULL),
(263, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'megadahliana996@gmail.com login with IP Address ::1', '', 2, '2020-07-18 22:00:51', NULL),
(264, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/users/add-save', 'Add New Data Khairul Ikhsan at Users Management', '', 2, '2020-07-18 22:01:43', NULL),
(265, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'megadahliana996@gmail.com logout', '', 2, '2020-07-18 22:01:48', NULL),
(266, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'ikhsan@gmail.com login with IP Address ::1', '', 5, '2020-07-18 22:01:59', NULL),
(267, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'ikhsan@gmail.com logout', '', 5, '2020-07-18 22:02:09', NULL),
(268, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-07-18 22:02:11', NULL),
(269, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-07-18 22:02:50', NULL),
(270, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'ikhsan@gmail.com login with IP Address ::1', '', 5, '2020-07-18 22:03:00', NULL),
(271, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'ikhsan@gmail.com logout', '', 5, '2020-07-18 22:03:23', NULL),
(272, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-07-18 22:03:26', NULL),
(273, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/16', 'Update data Pengajuan Permohonan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2020-07-18 22:03:57', NULL),
(274, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/20', 'Update data SITA at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>16</td><td></td></tr></tbody></table>', 1, '2020-07-18 22:04:10', NULL),
(275, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/users/delete/5', 'Delete data Khairul Ikhsan at Users Management', '', 1, '2020-07-18 22:05:13', NULL),
(276, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/users/add-save', 'Add New Data Khairul Ikhsan at Users Management', '', 1, '2020-07-18 22:05:45', NULL),
(277, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-07-18 22:05:53', NULL),
(278, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'user@mail.com login with IP Address ::1', '', 6, '2020-07-18 22:06:05', NULL),
(279, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/privileges', 'Try view the data :name at Privileges', '', 6, '2020-07-18 22:06:17', NULL),
(280, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'user@mail.com logout', '', 6, '2020-07-18 22:06:24', NULL),
(281, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-07-18 22:06:27', NULL),
(282, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-07-18 22:07:00', NULL),
(283, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'user@mail.com login with IP Address ::1', '', 6, '2020-07-18 22:07:13', NULL),
(284, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'user@mail.com logout', '', 6, '2020-07-18 22:07:17', NULL),
(285, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-07-18 22:07:19', NULL),
(286, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-07-18 22:07:54', NULL),
(287, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'user@mail.com login with IP Address ::1', '', 6, '2020-07-18 22:08:05', NULL),
(288, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/logout', 'user@mail.com logout', '', 6, '2020-07-18 22:09:16', NULL),
(289, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-07-18 22:09:26', NULL),
(290, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/users/delete/4', 'Delete data EKO WIJAYA at Users Management', '', 1, '2020-07-18 22:09:57', NULL),
(291, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-07-18 22:10:04', NULL),
(292, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/login', 'user@mail.com login with IP Address 127.0.0.1', '', 6, '2020-07-18 22:10:16', NULL),
(293, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/logout', 'user@mail.com logout', '', 6, '2020-07-18 22:10:35', NULL),
(294, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-07-18 22:10:37', NULL),
(295, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/16', 'Update data Pengajuan Permohonan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2020-07-18 22:11:53', NULL),
(296, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/17', 'Update data Statistik at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr></tbody></table>', 1, '2020-07-18 22:12:05', NULL),
(297, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/20', 'Update data SITA at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>16</td><td></td></tr></tbody></table>', 1, '2020-07-18 22:12:17', NULL),
(298, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/2', 'Update data GELEDAH at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>16</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-07-18 22:12:29', NULL),
(299, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/15', 'Update data Penahanan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>16</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2020-07-18 22:12:42', NULL),
(300, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-07-18 22:12:49', NULL),
(301, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/login', 'user@mail.com login with IP Address 127.0.0.1', '', 6, '2020-07-18 22:13:05', NULL),
(302, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/logout', 'user@mail.com logout', '', 6, '2020-07-18 22:13:38', NULL),
(303, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/login', 'megadahliana996@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-07-18 22:13:44', NULL),
(304, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/penahanan24', 'Try view the data :name at Status Surat Penahanan', '', 2, '2020-07-18 22:14:05', NULL),
(305, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/logout', 'megadahliana996@gmail.com logout', '', 2, '2020-07-18 22:14:26', NULL),
(306, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-07-18 22:14:32', NULL),
(307, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-07-18 22:15:10', NULL),
(308, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/login', 'megadahliana996@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-07-18 22:15:16', NULL),
(309, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/logout', 'megadahliana996@gmail.com logout', '', 2, '2020-07-18 22:15:29', NULL),
(310, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-07-18 22:15:35', NULL),
(311, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/25', 'Update data Status Surat Geledah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 1, '2020-07-18 22:16:01', NULL),
(312, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/24', 'Update data Status Surat Sita at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2020-07-18 22:16:31', NULL),
(313, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-07-18 22:16:38', NULL),
(314, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/login', 'megadahliana996@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-07-18 22:16:42', NULL),
(315, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/logout', 'megadahliana996@gmail.com logout', '', 2, '2020-07-18 22:16:57', NULL),
(316, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/login', 'user@mail.com login with IP Address 127.0.0.1', '', 6, '2020-07-18 22:17:10', NULL),
(317, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/logout', 'user@mail.com logout', '', 6, '2020-07-18 22:17:18', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(318, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-07-18 22:17:25', NULL),
(319, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/users/edit-save/6', 'Update data Khairul Ikhsan at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$4UdxclcSmn0mvRFe21IJTuz1A5Um2FPeNAKVGhcruugudQMax1Xfi</td><td></td></tr><tr><td>id_cms_privileges</td><td>3</td><td>5</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2020-07-18 22:18:01', NULL),
(320, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-07-18 22:18:08', NULL),
(321, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/login', 'user@mail.com login with IP Address 127.0.0.1', '', 6, '2020-07-18 22:18:20', NULL),
(322, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/status_surat', 'Try view the data :name at Status Surat', '', 6, '2020-07-18 22:18:40', NULL),
(323, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/logout', 'user@mail.com logout', '', 6, '2020-07-18 22:18:51', NULL),
(324, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/logout', ' logout', '', NULL, '2020-07-18 22:18:52', NULL),
(325, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'user@mail.com login with IP Address ::1', '', 6, '2020-07-19 01:16:37', NULL),
(326, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'user@mail.com logout', '', 6, '2020-07-19 01:17:28', NULL),
(327, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-07-19 01:17:33', NULL),
(328, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/25', 'Update data Status Surat Geledah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 1, '2020-07-19 01:18:08', NULL),
(329, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/24', 'Update data Status Surat Sita at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2020-07-19 01:18:23', NULL),
(330, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-07-19 01:18:29', NULL),
(331, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'user@mail.com login with IP Address ::1', '', 6, '2020-07-19 01:20:06', NULL),
(332, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/sita18/add-save', 'Add New Data  at SITA', '', 6, '2020-07-19 01:22:37', NULL),
(333, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'user@mail.com logout', '', 6, '2020-07-19 01:28:57', NULL),
(334, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'user@mail.com login with IP Address ::1', '', 6, '2020-07-19 01:29:23', NULL),
(335, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/sita18/add-save', 'Add New Data  at SITA', '', 6, '2020-07-19 01:30:55', NULL),
(336, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'user@mail.com logout', '', 6, '2020-07-19 01:33:20', NULL),
(337, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-07-19 01:33:23', NULL),
(338, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/sita19/delete/4', 'Delete data  at Daftar_Permohonan_Sita', '', 1, '2020-07-19 01:35:55', NULL),
(339, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/sita19/delete/3', 'Delete data  at Daftar_Permohonan_Sita', '', 1, '2020-07-19 01:36:00', NULL),
(340, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/sita19/delete/1', 'Delete data  at Daftar_Permohonan_Sita', '', 1, '2020-07-19 01:36:05', NULL),
(341, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/jenis_sita/add-save', 'Add New Data Penetapan Izin Penyitaan at Jenis Izin Sita', '', 1, '2020-07-19 01:43:30', NULL),
(342, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/jenis_sita/add-save', 'Add New Data Penetapan Persetujuan Penyitaan at Jenis Izin Sita', '', 1, '2020-07-19 01:43:52', NULL),
(343, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/jenis_sita/add-save', 'Add New Data Penetapan Izin Penyitaan Khusus Pasal 43 at Jenis Izin Sita', '', 1, '2020-07-19 01:44:13', NULL),
(344, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/jenis_sita/add-save', 'Add New Data Penetapan Penolakan Izin Penyitaan at Jenis Izin Sita', '', 1, '2020-07-19 01:44:31', NULL),
(345, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/16', 'Update data Pengajuan Permohonan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>muted</td><td>aqua</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2020-07-19 01:52:29', NULL),
(346, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/9', 'Update data Laporan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>muted</td><td>aqua</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2020-07-19 01:52:46', NULL),
(347, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat/delete/6', 'Delete data 6 at Status Surat', '', 1, '2020-07-19 01:53:31', NULL),
(348, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat/delete/5', 'Delete data 5 at Status Surat', '', 1, '2020-07-19 01:53:36', NULL),
(349, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat/add-save', 'Add New Data  at Status Surat', '', 1, '2020-07-19 01:53:51', NULL),
(350, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat/delete/7', 'Delete data 7 at Status Surat', '', 1, '2020-07-19 02:00:20', NULL),
(351, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat/add-save', 'Add New Data  at Status Surat', '', 1, '2020-07-19 02:00:30', NULL),
(352, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/pihak/add-save', 'Add New Data Tersangka at pihak', '', 1, '2020-07-19 02:04:31', NULL),
(353, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/pihak/add-save', 'Add New Data Saksi at pihak', '', 1, '2020-07-19 02:04:39', NULL),
(354, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/detil_sita/edit-save/1', 'Update data  at detil_sita', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>Jenis_Pihak</td><td>Tersangka</td><td>1</td></tr></tbody></table>', 1, '2020-07-19 02:07:18', NULL),
(355, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/sita19/delete/6', 'Delete data  at Daftar_Permohonan_Sita', '', 1, '2020-07-19 02:16:43', NULL),
(356, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/sita19/delete/5', 'Delete data  at Daftar_Permohonan_Sita', '', 1, '2020-07-19 02:16:48', NULL),
(357, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/31', 'Update data Jenis Izin Geledah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Jenis Geledah</td><td>Jenis Izin Geledah</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>13</td><td></td></tr></tbody></table>', 1, '2020-07-19 02:19:45', NULL),
(358, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/add-save', 'Add New Data Jenis Izin at Menu Management', '', 1, '2020-07-19 02:21:57', NULL),
(359, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/33', 'Update data Jenis Izin at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2020-07-19 02:24:00', NULL),
(360, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/33', 'Update data Jenis Izin at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>aqua</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2020-07-19 02:24:40', NULL),
(361, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/add-save', 'Add New Data Status Surat at Menu Management', '', 1, '2020-07-19 02:25:35', NULL),
(362, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/34', 'Update data Status Surat at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2020-07-19 02:26:56', NULL),
(363, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/30', 'Update data Pihak at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>pihak</td><td>Pihak</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-user</td></tr><tr><td>sorting</td><td>10</td><td></td></tr></tbody></table>', 1, '2020-07-19 02:28:33', NULL),
(364, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-07-19 05:01:41', NULL),
(365, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'user@mail.com login with IP Address ::1', '', 6, '2020-07-19 05:01:57', NULL),
(366, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/geledah/add-save', 'Add New Data 99 at Geledah', '', 6, '2020-07-19 05:02:45', NULL),
(367, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'user@mail.com logout', '', 6, '2020-07-19 07:41:55', NULL),
(368, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2020-07-19 07:42:15', NULL),
(369, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/30', 'Memperbaharui data Pihak pada Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>10</td><td></td></tr></tbody></table>', 1, '2020-07-19 08:23:46', NULL),
(370, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/detil_sita/edit-save/1', 'Memperbaharui data  pada detil_sita', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nomor_surat_permohonan</td><td>24</td><td>13</td></tr></tbody></table>', 1, '2020-07-19 08:53:53', NULL),
(371, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/detil_sita/edit-save/1', 'Memperbaharui data  pada detil_sita', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nomor_surat_permohonan</td><td>13</td><td>B/24.a/X/Res.1.11/2019/Reskrim</td></tr></tbody></table>', 1, '2020-07-19 08:54:32', NULL),
(372, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/geledah23/delete/155', 'Menghapus data 155 pada Daftar_Permohonan_Geledah', '', 1, '2020-07-19 08:55:23', NULL),
(373, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/geledah23/delete/99', 'Menghapus data 99 pada Daftar_Permohonan_Geledah', '', 1, '2020-07-19 08:55:27', NULL),
(374, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/geledah23/delete/16', 'Menghapus data 16 pada Daftar_Permohonan_Geledah', '', 1, '2020-07-19 08:55:30', NULL),
(375, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/geledah23/delete/1', 'Menghapus data 1 pada Daftar_Permohonan_Geledah', '', 1, '2020-07-19 08:55:34', NULL),
(376, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/delete/9', 'Menghapus data Laporan pada Menu Management', '', 1, '2020-07-19 08:55:52', NULL),
(377, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/detil_sita/delete/1', 'Menghapus data 1 pada detil_sita', '', 1, '2020-07-19 09:03:06', NULL),
(378, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/sita18/add-save', 'Tambah data baru  pada SITA', '', 1, '2020-07-19 09:03:50', NULL),
(379, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/sita18/add-save', 'Tambah data baru  pada SITA', '', 1, '2020-07-19 09:07:35', NULL),
(380, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/sita19/delete/8', 'Menghapus data  pada Daftar_Permohonan_Sita', '', 1, '2020-07-19 09:12:46', NULL),
(381, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/sita19/delete/7', 'Menghapus data  pada Daftar_Permohonan_Sita', '', 1, '2020-07-19 09:12:50', NULL),
(382, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/sita18/add-save', 'Tambah data baru  pada SITA', '', 1, '2020-07-19 09:13:39', NULL),
(383, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/detil_sita/add-save', 'Tambah data baru  pada detil_sita', '', 1, '2020-07-19 09:22:33', NULL),
(384, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat/delete/8', 'Menghapus data 8 pada Status Surat', '', 1, '2020-07-19 09:23:37', NULL),
(385, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat/add-save', 'Tambah data baru  pada Status Surat', '', 1, '2020-07-19 09:23:45', NULL),
(386, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat/delete/9', 'Menghapus data 9 pada Status Surat', '', 1, '2020-07-19 09:25:12', NULL),
(387, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat/add-save', 'Tambah data baru  pada Status Surat', '', 1, '2020-07-19 09:25:20', NULL),
(388, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat/delete/10', 'Menghapus data 10 pada Status Surat', '', 1, '2020-07-19 09:34:13', NULL),
(389, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/detil_sita/delete/2', 'Menghapus data 2 pada detil_sita', '', 1, '2020-07-19 09:38:13', NULL),
(390, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login dengan IP Address ::1', '', 1, '2020-07-19 18:32:23', NULL),
(391, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/disposisi_sita/add-save', 'Tambah data baru  pada Disposisi Sita', '', 1, '2020-07-19 18:35:37', NULL),
(392, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/disposisi_sita/edit-save/1', 'Memperbaharui data  pada Disposisi Sita', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_user</td><td>ADMIN</td><td>Developer</td></tr></tbody></table>', 1, '2020-07-19 18:36:46', NULL),
(393, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/tb_instansi17/delete/3', 'Menghapus data Pakcoy pada Instansi', '', 1, '2020-07-19 20:02:02', NULL),
(394, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/tb_instansi17/delete/3', 'Menghapus data  pada Instansi', '', 1, '2020-07-19 20:02:27', NULL),
(395, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/sita19/delete/9', 'Menghapus data  pada Daftar_Permohonan_Sita', '', 1, '2020-07-19 20:09:31', NULL),
(396, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/sita18/add-save', 'Tambah data baru  pada SITA', '', 1, '2020-07-19 20:10:20', NULL),
(397, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com keluar', '', 1, '2020-07-19 20:22:03', NULL),
(398, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'user@mail.com login dengan IP Address ::1', '', 6, '2020-07-19 20:22:16', NULL),
(399, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/sita18/add-save', 'Tambah data baru  pada SITA', '', 6, '2020-07-19 20:28:36', NULL),
(400, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login dengan IP Address ::1', '', 1, '2020-07-20 02:07:02', NULL),
(401, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/disposisi_geledah/add-save', 'Tambah data baru  pada Disposisi Geledah', '', 1, '2020-07-20 02:17:22', NULL),
(402, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/sita18/add-save', 'Tambah data baru  pada SITA', '', 1, '2020-07-20 02:31:15', NULL),
(403, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/sita18/add-save', 'Tambah data baru  pada SITA', '', 1, '2020-07-20 02:33:49', NULL),
(404, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/sita19/delete/13', 'Menghapus data  pada Daftar_Permohonan_Sita', '', 1, '2020-07-20 02:36:44', NULL),
(405, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/sita19/delete/13', 'Menghapus data  pada Daftar_Permohonan_Sita', '', 1, '2020-07-20 02:36:45', NULL),
(406, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login dengan IP Address ::1', '', 1, '2020-07-20 06:34:58', NULL),
(407, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/pejabat/add-save', 'Tambah data baru Ketua Pengadilan pada Pejabat', '', 1, '2020-07-20 06:37:30', NULL),
(408, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/pejabat/add-save', 'Tambah data baru Wakil Ketua Pengadilan pada Pejabat', '', 1, '2020-07-20 06:37:48', NULL),
(409, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/pejabat/add-save', 'Tambah data baru Panitera pada Pejabat', '', 1, '2020-07-20 06:37:58', NULL),
(410, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/pejabat/add-save', 'Tambah data baru Panitera Pengganti pada Pejabat', '', 1, '2020-07-20 06:38:08', NULL),
(411, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/pejabat/add-save', 'Tambah data baru Panitera Muda Pidana pada Pejabat', '', 1, '2020-07-20 06:38:16', NULL),
(412, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/pejabat/add-save', 'Tambah data baru Panitera Muda Perdata pada Pejabat', '', 1, '2020-07-20 06:38:23', NULL),
(413, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/pejabat/add-save', 'Tambah data baru Panitera Muda Hukum pada Pejabat', '', 1, '2020-07-20 06:38:30', NULL),
(414, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat/add-save', 'Tambah data baru  pada Status Surat', '', 1, '2020-07-20 06:43:12', NULL),
(415, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/38', 'Memperbaharui data Detail Register Geledah pada Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Detail_Geledah</td><td>Detail Register Geledah</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>14</td><td></td></tr></tbody></table>', 1, '2020-07-20 06:52:12', NULL),
(416, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/38', 'Memperbaharui data Detail Register Geledah pada Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>23</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-07-20 06:52:35', NULL),
(417, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/geledah/add-save', 'Tambah data baru 2002 pada Geledah', '', 1, '2020-07-20 06:57:17', NULL),
(418, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login dengan IP Address ::1', '', 1, '2020-07-20 20:24:39', NULL),
(419, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com keluar', '', 1, '2020-07-20 22:28:23', NULL),
(420, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'user@mail.com login dengan IP Address ::1', '', 6, '2020-07-20 22:28:45', NULL),
(421, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'user@mail.com keluar', '', 6, '2020-07-20 22:37:50', NULL),
(422, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login dengan IP Address ::1', '', 1, '2020-07-20 22:42:11', NULL),
(423, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login dengan IP Address ::1', '', 1, '2020-07-21 00:59:10', NULL),
(424, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/39', 'Memperbaharui data Disposisi Penahanan pada Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Disposisi_geledah</td><td>Disposisi Penahanan</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>12</td><td></td></tr></tbody></table>', 1, '2020-07-21 01:21:31', NULL),
(425, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login dengan IP Address ::1', '', 1, '2020-07-21 06:46:51', NULL),
(426, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com keluar', '', 1, '2020-07-21 06:54:17', NULL),
(427, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login dengan IP Address ::1', '', 1, '2020-07-21 06:54:25', NULL),
(428, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login dengan IP Address ::1', '', 1, '2020-07-21 07:12:26', NULL),
(429, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login dengan IP Address ::1', '', 1, '2020-07-21 07:12:26', NULL),
(430, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/sita19/add-save', 'Tambah data baru  pada Daftar_Permohonan_Sita', '', 1, '2020-07-21 07:14:20', NULL),
(431, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com keluar', '', 1, '2020-07-21 07:33:24', NULL),
(432, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'user@mail.com login dengan IP Address ::1', '', 6, '2020-07-21 07:33:37', NULL),
(433, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/sita18/add-save', 'Tambah data baru  pada SITA', '', 6, '2020-07-21 07:34:25', NULL),
(434, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'user@mail.com keluar', '', 6, '2020-07-21 07:34:34', NULL),
(435, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login dengan IP Address ::1', '', 1, '2020-07-21 07:34:36', NULL),
(436, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com keluar', '', 1, '2020-07-21 07:36:44', NULL),
(437, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'user@mail.com login dengan IP Address ::1', '', 6, '2020-07-21 07:36:57', NULL),
(438, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/sita18/add-save', 'Tambah data baru  pada SITA', '', 6, '2020-07-21 07:38:14', NULL),
(439, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'user@mail.com keluar', '', 6, '2020-07-21 07:38:22', NULL),
(440, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login dengan IP Address ::1', '', 1, '2020-07-21 07:38:25', NULL),
(441, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/tb_instansi17/add-save', 'Tambah data baru Buwung Puyuh pada Instansi', '', 1, '2020-07-21 07:47:00', NULL),
(442, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com keluar', '', 1, '2020-07-21 07:48:38', NULL),
(443, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'user@mail.com login dengan IP Address ::1', '', 6, '2020-07-21 07:48:51', NULL),
(444, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/sita18/add-save', 'Tambah data baru  pada SITA', '', 6, '2020-07-21 07:49:43', NULL),
(445, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'user@mail.com keluar', '', 6, '2020-07-21 07:49:51', NULL),
(446, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login dengan IP Address ::1', '', 1, '2020-07-21 07:49:53', NULL),
(447, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com keluar', '', 1, '2020-07-21 07:53:15', NULL),
(448, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'user@mail.com login dengan IP Address ::1', '', 6, '2020-07-21 07:53:31', NULL),
(449, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/geledah/add-save', 'Tambah data baru 16 pada Geledah', '', 6, '2020-07-21 07:53:45', NULL),
(450, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/geledah/add-save', 'Tambah data baru 3 pada Geledah', '', 6, '2020-07-21 07:53:51', NULL),
(451, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'user@mail.com keluar', '', 6, '2020-07-21 07:53:56', NULL),
(452, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login dengan IP Address ::1', '', 1, '2020-07-21 07:53:58', NULL),
(453, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login dengan IP Address ::1', '', 1, '2020-07-21 23:38:57', NULL),
(454, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/geledah/edit-save/3', 'Memperbaharui data 4 pada Geledah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-07-21 23:52:02', NULL),
(455, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat/edit-save/11', 'Memperbaharui data  pada Status Surat', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>DITERIMA</td><td>DITOLAK</td></tr></tbody></table>', 1, '2020-07-21 23:52:51', NULL),
(456, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/jenis_penahanan/add-save', 'Tambah data baru Penetapan Izin Penahanan pada Jenis Izin Penahanan', '', 1, '2020-07-21 23:59:50', NULL),
(457, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/jenis_penahanan/add-save', 'Tambah data baru Penetapan Persetujuan Penahanan pada Jenis Izin Penahanan', '', 1, '2020-07-22 00:00:13', NULL),
(458, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/jenis_penahanan/add-save', 'Tambah data baru Penetapan Penolakan Izin Penahanan pada Jenis Izin Penahanan', '', 1, '2020-07-22 00:00:31', NULL),
(459, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/jenis_geledah/add-save', 'Tambah data baru Penetapan Persetujuan Penggeledahan pada Jenis Izin Geledah', '', 1, '2020-07-22 00:03:37', NULL),
(460, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/jenis_geledah/add-save', 'Tambah data baru Penetapan Izin Penggeledahan Khusus Pasal 43 pada Jenis Izin Geledah', '', 1, '2020-07-22 00:03:52', NULL),
(461, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/jenis_geledah/add-save', 'Tambah data baru Penetapan Izin Penggeledahan pada Jenis Izin Geledah', '', 1, '2020-07-22 00:04:13', NULL),
(462, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/jenis_geledah/add-save', 'Tambah data baru Penetapan Penolakan Izin Penggeledahan pada Jenis Izin Geledah', '', 1, '2020-07-22 00:04:34', NULL),
(463, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/sita19/delete/15', 'Menghapus data  pada Daftar_Permohonan_Sita', '', 1, '2020-07-22 00:05:57', NULL),
(464, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/sita19/delete/17', 'Menghapus data  pada Daftar_Permohonan_Sita', '', 1, '2020-07-22 00:06:02', NULL),
(465, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/sita19/delete/16', 'Menghapus data  pada Daftar_Permohonan_Sita', '', 1, '2020-07-22 00:06:07', NULL),
(466, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/geledah/add-save', 'Tambah data baru 133 pada Geledah', '', 1, '2020-07-22 00:06:29', NULL),
(467, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/geledah23/edit-save/4', 'Memperbaharui data 41 pada Daftar_Permohonan_Geledah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-07-22 00:15:56', NULL),
(468, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/geledah23/edit-save/16', 'Memperbaharui data 16 pada Daftar_Permohonan_Geledah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td></td><td>LAJANG </td></tr></tbody></table>', 1, '2020-07-22 00:18:07', NULL),
(469, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat_geledah/add-save', 'Tambah data baru  pada Status Surat Geledah', '', 1, '2020-07-22 00:20:10', NULL),
(470, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat/add-save', 'Tambah data baru  pada Status Surat', '', 1, '2020-07-22 00:24:54', NULL),
(471, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat/add-save', 'Tambah data baru  pada Status Surat', '', 1, '2020-07-22 00:28:19', NULL),
(472, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat/add-save', 'Tambah data baru  pada Status Surat', '', 1, '2020-07-22 00:28:37', NULL),
(473, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat/delete/12', 'Menghapus data 12 pada Status Surat', '', 1, '2020-07-22 00:28:46', NULL),
(474, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_surat/add-save', 'Tambah data baru  pada Status Surat', '', 1, '2020-07-22 00:28:55', NULL),
(475, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/geledah23/edit-save/41', 'Memperbaharui data 41 pada Daftar_Permohonan_Geledah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td></td><td>DITERIMA</td></tr></tbody></table>', 1, '2020-07-22 00:29:26', NULL),
(476, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/geledah23/add-save', 'Tambah data baru 1 pada Daftar_Permohonan_Geledah', '', 1, '2020-07-22 00:34:49', NULL),
(477, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/geledah/add-save', 'Tambah data baru 3 pada Geledah', '', 1, '2020-07-22 00:37:01', NULL),
(478, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/geledah23/edit-save/3', 'Memperbaharui data 3 pada Daftar_Permohonan_Geledah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td></td><td>Di Tolak</td></tr></tbody></table>', 1, '2020-07-22 00:38:22', NULL),
(479, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/geledah/add-save', 'Tambah data baru 2 pada Geledah', '', 1, '2020-07-22 00:38:43', NULL),
(480, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/geledah23/edit-save/2', 'Memperbaharui data 2 pada Daftar_Permohonan_Geledah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td></td><td>DITERIMA</td></tr></tbody></table>', 1, '2020-07-22 00:42:08', NULL),
(481, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/penahanan/edit-save/3', 'Memperbaharui data 3 pada PENAHANAN', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>no_surat</td><td>33</td><td>332/0536-PPUD/Satpol PP</td></tr></tbody></table>', 1, '2020-07-22 00:46:28', NULL),
(482, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/geledah23/edit-save/3', 'Memperbaharui data 333 pada Daftar_Permohonan_Geledah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-07-22 00:47:35', NULL),
(483, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/status_surat/action-selected', 'Menghapus data 15,14,13,11 pada Status Surat', '', 1, '2020-07-22 00:53:19', NULL),
(484, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/status_surat/add-save', 'Tambah data baru  pada Status Surat', '', 1, '2020-07-22 00:53:29', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(485, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost:8000/admin/status_surat_geledah/add-save', 'Tambah data baru  pada Status Surat Geledah', '', 1, '2020-07-22 00:55:32', NULL),
(486, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login dengan IP Address ::1', '', 1, '2020-07-22 06:54:34', NULL),
(487, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/penahanan/add-save', 'Tambah data baru 5 pada PENAHANAN', '', 1, '2020-07-22 07:20:56', NULL),
(488, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/add-save', 'Tambah data baru Disposisi pada Menu Management', '', 1, '2020-07-22 07:48:30', NULL),
(489, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/menu_management/edit-save/40', 'Memperbaharui data Disposisi pada Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2020-07-22 07:50:38', NULL),
(490, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login dengan IP Address ::1', '', 1, '2020-07-22 10:40:09', NULL),
(491, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login dengan IP Address ::1', '', 1, '2020-07-23 01:37:30', NULL),
(492, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/geledah/add-save', 'Tambah data baru 69 pada Geledah', '', 1, '2020-07-23 01:59:46', NULL),
(493, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/geledah23/edit-save/69', 'Memperbaharui data 77 pada Daftar_Permohonan_Geledah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>no_surat</td><td></td><td></td></tr><tr><td>pemohon</td><td>2</td><td></td></tr><tr><td>tgl_surat</td><td>2020-07-27</td><td></td></tr><tr><td>jenis_surat</td><td>2</td><td></td></tr><tr><td>file_1</td><td>uploads/1/2020-07/berkas_1.docx</td><td></td></tr><tr><td>file_2</td><td>uploads/1/2020-07/berkas_2.docx</td><td></td></tr><tr><td>file_3</td><td>uploads/1/2020-07/berkas_3.docx</td><td></td></tr><tr><td>file_4</td><td>uploads/1/2020-07/berkas_4.docx</td><td></td></tr><tr><td>file_5</td><td>uploads/1/2020-07/berkas_5.docx</td><td></td></tr><tr><td>file_6</td><td>uploads/1/2020-07/alamat_dpmptsp_jateng.txt</td><td></td></tr></tbody></table>', 1, '2020-07-23 02:00:15', NULL),
(494, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/logout', 'admin@crudbooster.com keluar', '', 1, '2020-07-23 02:12:40', NULL),
(495, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login dengan IP Address ::1', '', 1, '2020-07-23 02:13:15', NULL),
(496, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/status_penahanan/add-save', 'Tambah data baru  pada Status Surat Penahanan', '', 1, '2020-07-23 02:22:54', NULL),
(497, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/login', 'admin@crudbooster.com login dengan IP Address ::1', '', 1, '2020-07-23 06:10:35', NULL),
(498, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'http://localhost/izin/public/admin/geledah/add-save', 'Tambah data baru 55 pada Geledah', '', 1, '2020-07-23 06:30:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'User', 'Module', 'users', 'red', 'fa fa-user-plus', 0, 1, 0, 1, 8, '2020-05-14 20:36:15', '2020-05-17 07:46:19'),
(2, 'GELEDAH', 'Module', 'geledah', 'aqua', 'fa fa-envelope-o', 16, 1, 0, 1, 2, '2020-05-15 08:16:00', '2020-07-18 22:12:28'),
(15, 'Penahanan', 'Module', 'penahanan', 'green', 'fa fa-envelope-o', 16, 1, 0, 1, 3, '2020-07-12 04:56:53', '2020-07-18 22:12:42'),
(16, 'Pengajuan Permohonan', 'URL', 'http://localhost/izin/admin/permohonan', 'aqua', 'fa fa-envelope-o', 0, 1, 0, 1, 3, '2020-07-12 05:00:26', '2020-07-19 01:52:29'),
(17, 'Statistik', 'Statistic', 'statistic_builder/show/user', 'aqua', 'fa fa-list-alt', 0, 1, 1, 1, 1, '2020-07-12 05:29:50', '2020-07-18 22:12:05'),
(19, 'Instansi', 'Route', 'AdminTbInstansi17ControllerGetIndex', NULL, 'fa fa-building-o', 0, 1, 0, 1, 9, '2020-07-18 06:16:46', NULL),
(20, 'SITA', 'Route', 'AdminSita18ControllerGetIndex', 'yellow', 'fa fa-inbox', 16, 1, 0, 1, 1, '2020-07-18 06:20:30', '2020-07-18 22:12:17'),
(21, 'Daftar Permohonan Sita', 'Route', 'AdminSita19ControllerGetIndex', 'normal', 'fa fa-inbox', 27, 1, 0, 1, 1, '2020-07-18 06:39:27', '2020-07-18 07:14:22'),
(22, 'Detail Register Penyitaan', 'Route', 'AdminDetilSitaControllerGetIndex', 'normal', 'fa fa-ambulance', 23, 1, 0, 1, 1, '2020-07-18 07:22:31', '2020-07-18 07:24:34'),
(23, 'Detail Register', 'Statistic', 'statistic_builder/show/user', 'aqua', 'fa fa-search', 0, 1, 0, 1, 2, '2020-07-18 07:29:05', '2020-07-18 07:29:30'),
(24, 'Status Surat Sita', 'Route', 'AdminStatusSuratControllerGetIndex', 'yellow', 'fa fa-bookmark', 34, 1, 0, 1, 1, '2020-07-18 19:47:26', '2020-07-19 01:18:22'),
(25, 'Status Surat Geledah', 'Route', 'AdminStatusSuratGeledahControllerGetIndex', 'light-blue', 'fa fa-glass', 34, 1, 0, 1, 2, '2020-07-18 20:06:08', '2020-07-19 01:18:08'),
(26, 'Daftar Permohonan Geledah', 'Route', 'AdminGeledah23ControllerGetIndex', 'normal', 'fa fa-glass', 27, 1, 0, 1, 2, '2020-07-18 21:01:05', '2020-07-18 21:02:33'),
(27, 'Daftar Permohonan', 'Statistic', 'statistic_builder/show/user', 'aqua', 'fa fa-mail-forward', 0, 1, 0, 1, 4, '2020-07-18 21:03:57', '2020-07-18 21:04:16'),
(28, 'Status Surat Penahanan', 'Route', 'AdminPenahanan24ControllerGetIndex', 'green', 'fa fa-bookmark-o', 34, 1, 0, 1, 3, '2020-07-18 21:06:14', '2020-07-18 21:08:00'),
(29, 'Jenis Izin Sita', 'Route', 'AdminJenisSitaControllerGetIndex', NULL, 'fa fa-glass', 33, 1, 0, 1, 1, '2020-07-19 01:42:54', NULL),
(30, 'Pihak', 'Route', 'AdminPihakControllerGetIndex', 'normal', 'fa fa-user', 0, 0, 0, 1, 10, '2020-07-19 02:03:44', '2020-07-19 08:23:46'),
(31, 'Jenis Izin Geledah', 'Route', 'AdminJenisGeledahControllerGetIndex', 'normal', 'fa fa-glass', 33, 1, 0, 1, 2, '2020-07-19 02:18:53', '2020-07-19 02:19:44'),
(32, 'Jenis Izin Penahanan', 'Route', 'AdminJenisPenahananControllerGetIndex', NULL, 'fa fa-glass', 33, 1, 0, 1, 3, '2020-07-19 02:20:55', NULL),
(33, 'Jenis Izin', 'Statistic', 'statistic_builder/show/user', 'aqua', 'fa fa-exclamation-triangle', 0, 1, 0, 1, 6, '2020-07-19 02:21:56', '2020-07-19 02:24:40'),
(34, 'Status Surat', 'Statistic', 'statistic_builder/show/user', 'aqua', 'fa fa-check', 0, 1, 0, 1, 5, '2020-07-19 02:25:35', '2020-07-19 02:26:56'),
(35, 'Disposisi Sita', 'Route', 'AdminDisposisiSitaControllerGetIndex', NULL, 'fa fa-glass', 40, 1, 0, 1, 1, '2020-07-19 18:34:14', NULL),
(36, 'Disposisi Geledah', 'Route', 'AdminDisposisiGeledahControllerGetIndex', NULL, 'fa fa-glass', 40, 1, 0, 1, 2, '2020-07-20 02:13:33', NULL),
(37, 'Pejabat', 'Route', 'AdminPejabatControllerGetIndex', NULL, 'fa fa-user', 0, 1, 0, 1, 10, '2020-07-20 06:37:01', NULL),
(38, 'Detail Register Geledah', 'Route', 'AdminDetilGeledahControllerGetIndex', 'normal', 'fa fa-glass', 23, 1, 0, 1, 2, '2020-07-20 06:51:02', '2020-07-20 06:52:35'),
(39, 'Disposisi Penahanan', 'Route', 'AdminDisposisiPenahananControllerGetIndex', 'normal', 'fa fa-glass', 40, 1, 0, 1, 3, '2020-07-21 01:19:47', '2020-07-21 01:21:30'),
(40, 'Disposisi', 'Statistic', 'statistic_builder/show/user', 'aqua', 'fa fa-list-alt', 0, 1, 0, 1, 7, '2020-07-22 07:48:29', '2020-07-22 07:50:37');

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(19, 1, 2),
(20, 1, 1),
(30, 6, 1),
(31, 4, 2),
(32, 4, 3),
(33, 4, 1),
(36, 7, 2),
(37, 7, 1),
(38, 7, 3),
(39, 3, 2),
(40, 3, 1),
(41, 3, 3),
(44, 8, 2),
(45, 8, 1),
(56, 10, 2),
(57, 10, 1),
(58, 11, 2),
(59, 11, 1),
(62, 12, 2),
(63, 12, 1),
(70, 14, 1),
(86, 13, 2),
(87, 13, 1),
(88, 13, 3),
(102, 18, 1),
(103, 19, 1),
(110, 21, 1),
(112, 22, 2),
(113, 22, 1),
(117, 23, 2),
(118, 23, 1),
(123, 26, 1),
(130, 27, 2),
(131, 27, 1),
(138, 28, 2),
(139, 28, 1),
(152, 17, 2),
(153, 17, 1),
(154, 17, 5),
(155, 20, 2),
(156, 20, 1),
(157, 20, 5),
(158, 2, 2),
(159, 2, 1),
(160, 2, 5),
(161, 15, 2),
(162, 15, 1),
(163, 15, 5),
(170, 25, 2),
(171, 25, 1),
(172, 24, 2),
(173, 24, 1),
(174, 29, 1),
(175, 16, 2),
(176, 16, 1),
(177, 16, 5),
(178, 9, 2),
(179, 9, 1),
(182, 31, 1),
(183, 32, 1),
(188, 33, 2),
(189, 33, 1),
(192, 34, 2),
(193, 34, 1),
(195, 30, 1),
(196, 35, 1),
(197, 36, 1),
(198, 37, 1),
(201, 38, 2),
(202, 38, 1),
(204, 39, 2),
(205, 39, 1),
(206, NULL, 2),
(207, NULL, 1),
(208, 40, 2),
(209, 40, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2020-05-13 07:25:18', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2020-05-13 07:25:18', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2020-05-13 07:25:18', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2020-05-13 07:25:18', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2020-05-13 07:25:18', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2020-05-13 07:25:18', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2020-05-13 07:25:18', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2020-05-13 07:25:18', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2020-05-13 07:25:18', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2020-05-13 07:25:18', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2020-05-13 07:25:18', NULL, NULL),
(12, 'Geledah', 'fa fa-mail-reply', 'geledah', 'geledah', 'AdminGeledahController', 0, 0, '2020-05-15 08:15:59', NULL, NULL),
(13, 'PENAHANAN', 'fa fa-glass', 'penahanan', 'penahanan', 'AdminPenahananController', 0, 0, '2020-05-17 08:02:47', NULL, NULL),
(14, 'SITA', 'fa fa-cog', 'sita', 'sita', 'AdminSitaController', 0, 0, '2020-05-17 08:06:00', NULL, '2020-07-12 01:32:32'),
(15, 'Sita', 'fa fa-glass', 'sita15', 'sita', 'AdminSita15Controller', 0, 0, '2020-07-12 01:33:15', NULL, '2020-07-18 06:20:15'),
(16, 'Instansi', 'fa fa-building', 'tb_instansi', 'tb_instansi', 'AdminTbInstansiController', 0, 0, '2020-07-18 06:10:10', NULL, '2020-07-18 06:16:27'),
(17, 'Instansi', 'fa fa-building-o', 'tb_instansi17', 'tb_instansi', 'AdminTbInstansi17Controller', 0, 0, '2020-07-18 06:16:45', NULL, NULL),
(18, 'SITA', 'fa fa-mail-reply-all', 'sita18', 'sita', 'AdminSita18Controller', 0, 0, '2020-07-18 06:20:30', NULL, NULL),
(19, 'Daftar_Permohonan_Sita', 'fa fa-inbox', 'sita19', 'sita', 'AdminSita19Controller', 0, 0, '2020-07-18 06:39:27', NULL, NULL),
(20, 'detil_sita', 'fa fa-ambulance', 'detil_sita', 'detil_sita', 'AdminDetilSitaController', 0, 0, '2020-07-18 07:22:30', NULL, NULL),
(21, 'Status Surat', 'fa fa-bookmark', 'status_surat', 'status_surat', 'AdminStatusSuratController', 0, 0, '2020-07-18 19:47:25', NULL, NULL),
(22, 'Status Surat Geledah', 'fa fa-glass', 'status_surat_geledah', 'status_surat_geledah', 'AdminStatusSuratGeledahController', 0, 0, '2020-07-18 20:06:08', NULL, NULL),
(23, 'Daftar_Permohonan_Geledah', 'fa fa-glass', 'geledah23', 'geledah', 'AdminGeledah23Controller', 0, 0, '2020-07-18 21:01:05', NULL, NULL),
(24, 'Status Surat Penahanan', 'fa fa-bookmark-o', 'status_penahanan', 'status_penahanan', 'AdminPenahanan24Controller', 0, 0, '2020-07-18 21:06:14', NULL, NULL),
(25, 'Jenis Izin Sita', 'fa fa-glass', 'jenis_sita', 'jenis_sita', 'AdminJenisSitaController', 0, 0, '2020-07-19 01:42:53', NULL, NULL),
(26, 'pihak', 'fa fa-glass', 'pihak', 'pihak', 'AdminPihakController', 0, 0, '2020-07-19 02:03:44', NULL, NULL),
(27, 'Jenis Izin Geledah', 'fa fa-glass', 'jenis_geledah', 'jenis_geledah', 'AdminJenisGeledahController', 0, 0, '2020-07-19 02:18:53', NULL, NULL),
(28, 'Jenis Izin Penahanan', 'fa fa-glass', 'jenis_penahanan', 'jenis_penahanan', 'AdminJenisPenahananController', 0, 0, '2020-07-19 02:20:55', NULL, NULL),
(29, 'Disposisi Sita', 'fa fa-glass', 'disposisi_sita', 'disposisi_sita', 'AdminDisposisiSitaController', 0, 0, '2020-07-19 18:34:13', NULL, NULL),
(30, 'Disposisi Geledah', 'fa fa-glass', 'disposisi_geledah', 'disposisi_geledah', 'AdminDisposisiGeledahController', 0, 0, '2020-07-20 02:13:32', NULL, NULL),
(31, 'Pejabat', 'fa fa-user', 'pejabat', 'pejabat', 'AdminPejabatController', 0, 0, '2020-07-20 06:37:01', NULL, NULL),
(32, 'Detail_Geledah', 'fa fa-glass', 'detil_geledah', 'detil_geledah', 'AdminDetilGeledahController', 0, 0, '2020-07-20 06:51:01', NULL, NULL),
(33, 'Disposisi Penahanan', 'fa fa-cog', 'disposisi_penahanan', 'disposisi_penahanan', 'AdminDisposisiPenahananController', 0, 0, '2020-07-21 01:19:46', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_notifications`
--

INSERT INTO `cms_notifications` (`id`, `id_cms_users`, `content`, `url`, `is_read`, `created_at`, `updated_at`) VALUES
(12, 1, 'ada permohonan geledah masuk ', 'http://localhost/izin/public/admin/geledah23', 1, '2020-07-23 01:59:45', NULL),
(13, 1, 'ada permohonan geledah masuk ', 'http://localhost/izin/public/admin/geledah23', 1, '2020-07-23 06:30:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Developer', 1, 'skin-red', '2020-05-13 07:25:18', NULL),
(2, 'Admin I', 0, 'skin-blue', NULL, NULL),
(4, 'Super Administrator', 1, 'skin-red', '2020-07-11 21:26:16', NULL),
(5, 'Penyidik', 0, 'skin-green-light', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(14, 1, 1, 1, 1, 1, 1, 4, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(19, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(20, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(27, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(28, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(36, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(37, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(50, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(51, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(52, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(53, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(54, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
(55, 1, 1, 1, 1, 1, 5, 12, NULL, NULL),
(56, 1, 1, 1, 1, 1, 5, 13, NULL, NULL),
(57, 1, 1, 1, 1, 1, 5, 18, NULL, NULL),
(58, 1, 1, 1, 1, 1, 2, 23, NULL, NULL),
(59, 1, 1, 1, 1, 1, 2, 19, NULL, NULL),
(60, 1, 1, 1, 1, 1, 2, 20, NULL, NULL),
(61, 1, 1, 1, 1, 1, 2, 12, NULL, NULL),
(62, 1, 1, 1, 1, 1, 2, 17, NULL, NULL),
(63, 1, 1, 1, 1, 1, 2, 13, NULL, NULL),
(64, 1, 1, 1, 1, 1, 2, 18, NULL, NULL),
(65, 1, 1, 1, 1, 1, 2, 21, NULL, NULL),
(66, 1, 1, 1, 1, 1, 2, 22, NULL, NULL),
(67, 1, 1, 1, 1, 1, 2, 24, NULL, NULL),
(68, 1, 1, 1, 1, 1, 2, 4, NULL, NULL),
(69, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
(70, 1, 1, 1, 1, 1, 1, 26, NULL, NULL),
(71, 1, 1, 1, 1, 1, 1, 27, NULL, NULL),
(72, 1, 1, 1, 1, 1, 1, 28, NULL, NULL),
(73, 1, 1, 1, 1, 1, 1, 29, NULL, NULL),
(74, 1, 1, 1, 1, 1, 1, 30, NULL, NULL),
(75, 1, 1, 1, 1, 1, 1, 31, NULL, NULL),
(76, 1, 1, 1, 1, 1, 1, 32, NULL, NULL),
(77, 1, 1, 1, 1, 1, 1, 33, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', '', 'text', NULL, 'Input hexacode', '2020-05-13 07:25:18', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', '', 'text', NULL, 'Input hexacode', '2020-05-13 07:25:18', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', 'uploads/2020-06/d03609ede12d13ec9c9424aaea9504fc.jpg', 'upload_image', NULL, NULL, '2020-05-13 07:25:18', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'w17aya09@gmail.com', 'text', NULL, NULL, '2020-05-13 07:25:18', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'smtp', 'select', 'smtp,mail,sendmail', NULL, '2020-05-13 07:25:18', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', 'smtp.gmail.com', 'text', NULL, NULL, '2020-05-13 07:25:18', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', ' 465', 'text', NULL, 'default 25', '2020-05-13 07:25:18', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', 'w17aya09@gmail.com', 'text', NULL, NULL, '2020-05-13 07:25:18', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', 'taokaenoi9', 'text', NULL, NULL, '2020-05-13 07:25:18', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'IZIN ONLINE', 'text', NULL, NULL, '2020-05-13 07:25:18', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'A4', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2020-05-13 07:25:18', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2020-05/c7b13ea77f2236d830e4ec5aef16b309.png', 'upload_image', NULL, NULL, '2020-05-13 07:25:18', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2020-05/17d277e2501b627209c9706437552b68.png', 'upload_image', NULL, NULL, '2020-05-13 07:25:18', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2020-05-13 07:25:18', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', 'AIzaSyA9mYx1iahwzcuAWi8hfbnU36X00tT_uLs', 'text', NULL, NULL, '2020-05-13 07:25:18', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', 'AAAAnaMx4nQ:APA91bEI14slqNMbBvx2iXSSOjVBJq0_q4_neWMCACnwT2W_TnkNwOJ5ao6mbczhbR14JtSpVLdjzEx0KI-knVPjuV024W_yhFAol5JVW9rBhr1LQzywlWeNhbAsoVfbDhRAhwWt04e4', 'text', NULL, NULL, '2020-05-13 07:25:18', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'user', '2020-05-15 03:37:03', '2020-07-12 00:42:25');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(1, 1, '48f8808e5f679c87a60109999ea01ab0', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Permohonan Sita\",\"icon\":\"ion-briefcase\",\"color\":\"bg-aqua\",\"link\":\"http:\\/\\/localhost\\/izin\\/public\\/admin\\/\",\"sql\":\"select count(*) from sita \"}', '2020-05-22 06:14:32', NULL),
(2, 3, '5ffb29ac8623581f6d9393bad77f262a', 'smallbox', 'area1', 0, 'Untitled', NULL, '2020-07-12 00:38:29', NULL),
(3, 3, '1e495a504d880df68a41bcc68c2c5636', 'smallbox', 'area2', 0, 'Untitled', NULL, '2020-07-12 00:38:32', NULL),
(4, 3, '04e0bc8bdda2bebb63840b2552f20129', 'smallbox', 'area3', 0, 'Untitled', NULL, '2020-07-12 00:38:36', NULL),
(5, 3, '2919b536a5a2eb78bdedf10236d999df', 'chartarea', 'area5', 0, 'Untitled', NULL, '2020-07-12 00:38:42', NULL),
(6, 3, '3ef842ca1113fe7bd3718fc6f731298d', 'panelarea', 'area5', 1, NULL, '{\"name\":\"Cara Penggunaan Aplikasi\",\"content\":\"Silahkan pilih menu pengajuan permohonan\"}', '2020-07-12 00:38:48', NULL),
(7, 1, '06a4a412723f40d3d9c46d388cb041b8', 'chartarea', NULL, 0, 'Untitled', NULL, '2020-07-12 00:42:50', NULL),
(10, 1, 'a9eb27b58c10862efe724859cfbd603d', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Permohonan Penahanan\",\"icon\":\"ion-archive\",\"color\":\"bg-red\",\"link\":\"http:\\/\\/localhost\\/izin\\/public\\/admin\\/\",\"sql\":\"select count(*) from  penahanan\"}', '2020-07-12 00:42:59', NULL),
(11, 1, 'aa93557ed454522eb320aa4b550bd530', 'panelarea', 'area5', 1, NULL, '{\"name\":\"<b><center>Informasi<\\/b><\\/center>\",\"content\":\"Tata Cara pemakaian Aplikasi\\r\\n<br>1.  silahkan klik menu Permohonan\\r\\n<br>2. Pilih jenis permohonan\\r\\n<br>3. Lengkapi data dan berkas dengan benar \\r\\n<br> \\r\\n<br>Selamat Memakai Aplikasi Semoga memudahkan Pekerjaan Anda....\"}', '2020-07-12 00:43:03', NULL),
(13, 1, '31b331a92c1ec556d248b2bc1634021b', 'smallbox', 'area4', 0, NULL, '{\"name\":\"Pengguna\",\"icon\":\"ion-search\",\"color\":\"bg-yellow\",\"link\":\"http:\\/\\/localhost\\/izin\\/public\\/admin\\/\",\"sql\":\"select count(*) from cms_users\"}', '2020-07-12 05:36:50', NULL),
(15, 1, 'cce206995a1c202a3d8e19f16aa079de', 'table', NULL, 0, 'Untitled', NULL, '2020-07-18 07:34:41', NULL),
(16, 1, 'f156a41659afc3b6edd93c701919d97d', 'table', 'area5', 1, NULL, '{\"name\":\"BAR\",\"sql\":\"select id,name from tb_instansi\"}', '2020-07-18 07:34:43', NULL),
(20, 1, '075d85aa3f4138e1d905f08d48927b7c', 'smallbox', 'area2', 1, NULL, '{\"name\":\"Permohonan Geledah\",\"icon\":\"ion-clipboard\",\"color\":\"bg-green\",\"link\":\"http:\\/\\/localhost\\/izin\\/public\\/admin\\/\",\"sql\":\"select count(*) from geledah\"}', '2020-07-20 06:39:19', NULL),
(22, 1, '16fbeee49bfbb3caef7b1a680000b364', 'smallbox', NULL, 0, 'Untitled', NULL, '2020-07-20 06:40:57', NULL),
(23, 1, 'e44cad33a4eca57c21916d8ff449e102', 'table', 'area5', 1, NULL, '{\"name\":\"testing\",\"sql\":\"select 2,tb_instansi\"}', '2020-07-22 02:31:35', NULL),
(25, 1, '8450a9138a0bd867310ef665ac4ff62d', 'table', 'area5', 2, NULL, '{\"name\":\"Testing\",\"sql\":\"SELECT pemohon, n0_surat\\r\\nFROM sita\\r\\nWHERE pemohon = 2;\"}', '2020-07-22 10:53:49', NULL),
(26, 1, '9d183c72a590945fc436b4670daa4e22', 'table', 'area5', 1, NULL, '{\"name\":\"he\",\"sql\":\"SELECT * FROM `sita` WHERE 1`id_surat`,`pemohon`\"}', '2020-07-22 11:02:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Developer', 'uploads/1/2020-06/9ac0cfcbf9a916aa04307a21ea04d04d.jpg', 'admin@crudbooster.com', '$2y$10$xp9DU0wxklNNA9P.lsOvjuCrcCYuDvIJsgtDyOYtUkCx/kQseNoiW', 1, '2020-05-13 07:25:18', '2020-06-06 04:28:10', 'Active'),
(2, 'Mega dahliana', 'uploads/1/2020-06/pp.jpg', 'megadahliana996@gmail.com', '$2y$10$Z5Bz9OthcyylZNuPnXhEneDbR3KnvTdqQ6a4hrrUSqZUgXRgsWsEa', 2, '2020-05-14 20:07:30', '2020-07-18 05:49:11', NULL),
(6, 'Khairul Ikhsan', 'uploads/1/2020-07/ikhsan.jpg', 'user@mail.com', '$2y$10$4UdxclcSmn0mvRFe21IJTuz1A5Um2FPeNAKVGhcruugudQMax1Xfi', 5, '2020-07-18 22:05:44', '2020-07-18 22:18:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detil_geledah`
--

CREATE TABLE `detil_geledah` (
  `id` int(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `pemohon` varchar(255) NOT NULL,
  `tgl_surat` date NOT NULL,
  `nomor_surat_permohonan` varchar(255) NOT NULL,
  `tgl_eksekusi` date NOT NULL,
  `nomor_surat_perintah` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `Dokumen_Permohonan` varchar(255) NOT NULL,
  `Dokumen_Penetapan` varchar(255) NOT NULL,
  `Jenis_Pihak` varchar(255) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `Tempat_Lahir` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detil_sita`
--

CREATE TABLE `detil_sita` (
  `id` int(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `pemohon` varchar(255) NOT NULL,
  `tgl_surat` date NOT NULL,
  `nomor_surat_permohonan` varchar(255) NOT NULL,
  `tgl_eksekusi` date NOT NULL,
  `nomor_surat_perintah` int(255) NOT NULL,
  `Keterangan` varchar(255) NOT NULL,
  `Dokumen_Permohonan` varchar(255) NOT NULL,
  `Dokumen_Penetapan` varchar(255) NOT NULL,
  `Jenis_Pihak` varchar(255) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `Tempat_Lahir` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `disposisi_geledah`
--

CREATE TABLE `disposisi_geledah` (
  `id` int(255) NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `isi_disposisi` varchar(255) NOT NULL,
  `sifat` varchar(255) NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(255) NOT NULL,
  `id_surat` varchar(255) NOT NULL,
  `id_user` varchar(255) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disposisi_geledah`
--

INSERT INTO `disposisi_geledah` (`id`, `tujuan`, `isi_disposisi`, `sifat`, `batas_waktu`, `catatan`, `id_surat`, `id_user`, `keterangan`) VALUES
(1, 'PAN MUD PIDANA', 'segera laksanakan', 'Rahasia', '2020-08-01', 'TESTING', '1', '1', 'ngentiaw');

-- --------------------------------------------------------

--
-- Table structure for table `disposisi_penahanan`
--

CREATE TABLE `disposisi_penahanan` (
  `id` int(255) NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `isi_disposisi` varchar(255) NOT NULL,
  `sifat` varchar(255) NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(255) NOT NULL,
  `id_surat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `disposisi_sita`
--

CREATE TABLE `disposisi_sita` (
  `id` int(255) NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `isi_disposisi` varchar(255) NOT NULL,
  `sifat` varchar(255) NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(255) NOT NULL,
  `id_surat` int(255) NOT NULL,
  `id_user` varchar(255) NOT NULL,
  `Keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disposisi_sita`
--

INSERT INTO `disposisi_sita` (`id`, `tujuan`, `isi_disposisi`, `sifat`, `batas_waktu`, `catatan`, `id_surat`, `id_user`, `Keterangan`) VALUES
(1, 'KETUA', 'segera laksanakan', 'Rahasia', '2020-07-30', 'Di teliti dan ditindak lanjuti', 1, 'Developer', 'taktau');

-- --------------------------------------------------------

--
-- Table structure for table `geledah`
--

CREATE TABLE `geledah` (
  `id` int(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `pemohon` varchar(2555) NOT NULL,
  `tgl_surat` date NOT NULL,
  `jenis_surat` varchar(255) NOT NULL,
  `file_1` varchar(255) NOT NULL,
  `file_2` varchar(255) NOT NULL,
  `file_3` varchar(255) NOT NULL,
  `file_4` varchar(255) NOT NULL,
  `file_5` varchar(255) NOT NULL,
  `file_6` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `geledah`
--

INSERT INTO `geledah` (`id`, `status`, `no_surat`, `pemohon`, `tgl_surat`, `jenis_surat`, `file_1`, `file_2`, `file_3`, `file_4`, `file_5`, `file_6`) VALUES
(1, 'DITERIMA', '', '', '0000-00-00', '0', '0', '0', '0', '0', '0', ''),
(2, 'DITERIMA', '', '', '0000-00-00', '0', '0', '0', '0', '0', '0', ''),
(55, 'LAJANG ', '', '2', '2020-07-29', '2', 'uploads/1/2020-07/berkas_1.docx', 'uploads/1/2020-07/berkas_3.docx', 'uploads/1/2020-07/berkas_2.docx', 'uploads/1/2020-07/berkas_4.docx', 'uploads/1/2020-07/berkas_5.docx', 'uploads/1/2020-07/berkas_1.docx'),
(77, 'LAJANG ', '', '2', '2020-07-27', '2', 'uploads/1/2020-07/berkas_1.docx', 'uploads/1/2020-07/berkas_2.docx', 'uploads/1/2020-07/berkas_3.docx', 'uploads/1/2020-07/berkas_4.docx', 'uploads/1/2020-07/berkas_5.docx', 'uploads/1/2020-07/alamat_dpmptsp_jateng.txt'),
(333, 'Di Tolak', '', '', '0000-00-00', '0', '0', '0', '0', '0', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_geledah`
--

CREATE TABLE `jenis_geledah` (
  `id` int(10) NOT NULL,
  `nama_jenis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_geledah`
--

INSERT INTO `jenis_geledah` (`id`, `nama_jenis`) VALUES
(1, 'Penetapan Persetujuan Penggeledahan'),
(2, 'Penetapan Izin Penggeledahan Khusus Pasal 43'),
(3, 'Penetapan Izin Penggeledahan'),
(4, 'Penetapan Penolakan Izin Penggeledahan');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_penahanan`
--

CREATE TABLE `jenis_penahanan` (
  `id` int(10) NOT NULL,
  `nama_jenis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_penahanan`
--

INSERT INTO `jenis_penahanan` (`id`, `nama_jenis`) VALUES
(1, 'Penetapan Izin Penahanan'),
(2, 'Penetapan Persetujuan Penahanan'),
(3, 'Penetapan Penolakan Izin Penahanan');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_sita`
--

CREATE TABLE `jenis_sita` (
  `id` int(10) NOT NULL,
  `nama_jenis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_sita`
--

INSERT INTO `jenis_sita` (`id`, `nama_jenis`) VALUES
(1, 'Penetapan Izin Penyitaan'),
(2, 'Penetapan Persetujuan Penyitaan'),
(3, 'Penetapan Izin Penyitaan Khusus Pasal 43'),
(4, 'Penetapan Penolakan Izin Penyitaan');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_151211_add_details_cms_logs', 1),
(5, '2016_08_07_152014_add_table_cms_privileges', 1),
(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(7, '2016_08_07_152320_add_table_cms_settings', 1),
(8, '2016_08_07_152421_add_table_cms_users', 1),
(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1),
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pejabat`
--

CREATE TABLE `pejabat` (
  `id` int(10) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pejabat`
--

INSERT INTO `pejabat` (`id`, `nama`) VALUES
(1, 'Ketua Pengadilan'),
(2, 'Wakil Ketua Pengadilan'),
(3, 'Panitera'),
(4, 'Panitera Pengganti'),
(5, 'Panitera Muda Pidana'),
(6, 'Panitera Muda Perdata'),
(7, 'Panitera Muda Hukum');

-- --------------------------------------------------------

--
-- Table structure for table `penahanan`
--

CREATE TABLE `penahanan` (
  `id` int(10) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penahanan`
--

INSERT INTO `penahanan` (`id`, `no_surat`, `status`) VALUES
(1, '1', ''),
(2, '2', ''),
(3, '332/0536-PPUD/Satpol PP', ''),
(5, '212 prabowo sandi', '');

-- --------------------------------------------------------

--
-- Table structure for table `pihak`
--

CREATE TABLE `pihak` (
  `id` int(10) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pihak`
--

INSERT INTO `pihak` (`id`, `nama`) VALUES
(1, 'Tersangka'),
(2, 'Saksi');

-- --------------------------------------------------------

--
-- Table structure for table `sita`
--

CREATE TABLE `sita` (
  `id_surat` int(255) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `pemohon` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `tgl_surat` date NOT NULL,
  `file_1` varchar(250) NOT NULL,
  `file_2` varchar(250) NOT NULL,
  `file_3` varchar(250) NOT NULL,
  `file_4` varchar(250) NOT NULL,
  `file_5` varchar(250) NOT NULL,
  `nomer` varchar(12) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sita`
--

INSERT INTO `sita` (`id_surat`, `no_surat`, `pemohon`, `jenis`, `tgl_surat`, `file_1`, `file_2`, `file_3`, `file_4`, `file_5`, `nomer`, `status`) VALUES
(10, '332/0536-PPUD/Satpol PP', '2', '1', '2020-07-17', 'uploads/1/2020-07/berkas_1.docx', 'uploads/1/2020-07/berkas_2.docx', 'uploads/1/2020-07/berkas_3.docx', 'uploads/1/2020-07/berkas_4.docx', 'uploads/1/2020-07/berkas_5.docx', '082150070814', ''),
(11, '333/0536-PPUD/Satpol PP', '2', '3', '2020-07-20', 'uploads/6/2020-07/berkas_1.docx', 'uploads/6/2020-07/berkas_2.docx', 'uploads/6/2020-07/berkas_3.docx', 'uploads/6/2020-07/berkas_4.docx', 'uploads/6/2020-07/berkas_5.docx', '082150070814', ''),
(12, '111111111111 bjb timur', '2', '1', '2020-07-28', 'uploads/1/2020-07/berkas_1.docx', 'uploads/1/2020-07/berkas_2.docx', 'uploads/1/2020-07/berkas_3.docx', 'uploads/1/2020-07/berkas_4.docx', 'uploads/1/2020-07/berkas_5.docx', '14', ''),
(14, '332/0536-PPUD/Satpol PPPPP', '2', '3', '2020-07-28', 'uploads/1/2020-07/berkas_1_1.docx', 'uploads/1/2020-07/berkas_1.docx', 'uploads/1/2020-07/nama_santri.docx', 'uploads/1/2020-07/e64343eaa99384119b4f29ff77f4e1e7.docx', 'uploads/1/2020-07/e64343eaa99384119b4f29ff77f4e1e7.docx', '15', '');

-- --------------------------------------------------------

--
-- Table structure for table `status_penahanan`
--

CREATE TABLE `status_penahanan` (
  `id` int(255) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status_penahanan`
--

INSERT INTO `status_penahanan` (`id`, `no_surat`, `status`) VALUES
(1, '1', 'DITERIMA');

-- --------------------------------------------------------

--
-- Table structure for table `status_surat`
--

CREATE TABLE `status_surat` (
  `id` int(255) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status_surat`
--

INSERT INTO `status_surat` (`id`, `no_surat`, `status`) VALUES
(16, '12', 'DITERIMA');

-- --------------------------------------------------------

--
-- Table structure for table `status_surat_geledah`
--

CREATE TABLE `status_surat_geledah` (
  `id` int(255) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status_surat_geledah`
--

INSERT INTO `status_surat_geledah` (`id`, `no_surat`, `status`) VALUES
(1, '16', 'TOLAK ANGIN'),
(2, '155', 'DITERIMA'),
(3, '2002', 'aktif'),
(4, '333', 'LAJANG ');

-- --------------------------------------------------------

--
-- Table structure for table `tb_instansi`
--

CREATE TABLE `tb_instansi` (
  `id` int(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_instansi`
--

INSERT INTO `tb_instansi` (`id`, `nama`, `alamat`, `website`, `email`, `logo`) VALUES
(2, 'PENGADILAN NEGERI BANJARBARU KELAS II ', 'Jalan Trikora No. 3 Kel. Guntung Paikat, Kec. Banjarbaru Selatan Kota Banjarbaru Prov. Kalimantan Selatan, Indonesia.', 'http://www.pn-banjarbaru.go.id/', 'pn.banjarbarukalsel@gmail.com', 'uploads/1/2020-07/pnbjb.png'),
(4, 'Buwung Puyuh', 'amaco', 'pnbjb-izin.com', 'jancuk@gmail.com', 'uploads/1/2020-07/rotan_furnitur.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detil_geledah`
--
ALTER TABLE `detil_geledah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detil_sita`
--
ALTER TABLE `detil_sita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disposisi_geledah`
--
ALTER TABLE `disposisi_geledah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disposisi_penahanan`
--
ALTER TABLE `disposisi_penahanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disposisi_sita`
--
ALTER TABLE `disposisi_sita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `geledah`
--
ALTER TABLE `geledah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_geledah`
--
ALTER TABLE `jenis_geledah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_penahanan`
--
ALTER TABLE `jenis_penahanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_sita`
--
ALTER TABLE `jenis_sita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pejabat`
--
ALTER TABLE `pejabat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penahanan`
--
ALTER TABLE `penahanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pihak`
--
ALTER TABLE `pihak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sita`
--
ALTER TABLE `sita`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `status_penahanan`
--
ALTER TABLE `status_penahanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_surat`
--
ALTER TABLE `status_surat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_surat_geledah`
--
ALTER TABLE `status_surat_geledah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_instansi`
--
ALTER TABLE `tb_instansi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=499;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `detil_geledah`
--
ALTER TABLE `detil_geledah`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detil_sita`
--
ALTER TABLE `detil_sita`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `disposisi_geledah`
--
ALTER TABLE `disposisi_geledah`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `disposisi_penahanan`
--
ALTER TABLE `disposisi_penahanan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `disposisi_sita`
--
ALTER TABLE `disposisi_sita`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `geledah`
--
ALTER TABLE `geledah`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2003;

--
-- AUTO_INCREMENT for table `jenis_geledah`
--
ALTER TABLE `jenis_geledah`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jenis_penahanan`
--
ALTER TABLE `jenis_penahanan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jenis_sita`
--
ALTER TABLE `jenis_sita`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pejabat`
--
ALTER TABLE `pejabat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `penahanan`
--
ALTER TABLE `penahanan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `pihak`
--
ALTER TABLE `pihak`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sita`
--
ALTER TABLE `sita`
  MODIFY `id_surat` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `status_penahanan`
--
ALTER TABLE `status_penahanan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `status_surat`
--
ALTER TABLE `status_surat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `status_surat_geledah`
--
ALTER TABLE `status_surat_geledah`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_instansi`
--
ALTER TABLE `tb_instansi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
