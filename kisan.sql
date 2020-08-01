-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2020 at 02:52 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kisan`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add buyers', 7, 'add_buyers'),
(26, 'Can change buyers', 7, 'change_buyers'),
(27, 'Can delete buyers', 7, 'delete_buyers'),
(28, 'Can view buyers', 7, 'view_buyers'),
(29, 'Can add items', 8, 'add_items'),
(30, 'Can change items', 8, 'change_items'),
(31, 'Can delete items', 8, 'delete_items'),
(32, 'Can view items', 8, 'view_items'),
(33, 'Can add sellers', 9, 'add_sellers'),
(34, 'Can change sellers', 9, 'change_sellers'),
(35, 'Can delete sellers', 9, 'delete_sellers'),
(36, 'Can view sellers', 9, 'view_sellers'),
(37, 'Can add orders', 10, 'add_orders'),
(38, 'Can change orders', 10, 'change_orders'),
(39, 'Can delete orders', 10, 'delete_orders'),
(40, 'Can view orders', 10, 'view_orders'),
(41, 'Can add order items', 11, 'add_orderitems'),
(42, 'Can change order items', 11, 'change_orderitems'),
(43, 'Can delete order items', 11, 'delete_orderitems'),
(44, 'Can view order items', 11, 'view_orderitems');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$c60uYfuHZHZn$z5AGFADRzWXNOGZDylddHgAkg9Ci0KzehiMzgdnJj/w=', '2020-07-29 13:08:04.544209', 1, 'admin', '', '', 'admin@admin.com', 1, 1, '2020-07-29 13:07:37.904829');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-07-29 13:09:23.816539', '1', 'Sellers object (1)', 1, '[{\"added\": {}}]', 9, 1),
(2, '2020-07-29 13:10:16.723767', '2', 'Sellers object (2)', 1, '[{\"added\": {}}]', 9, 1),
(3, '2020-07-29 13:10:55.514475', '1', 'Items object (1)', 1, '[{\"added\": {}}]', 8, 1),
(4, '2020-07-29 13:11:08.480864', '2', 'Items object (2)', 1, '[{\"added\": {}}]', 8, 1),
(5, '2020-07-29 13:11:19.880080', '3', 'Items object (3)', 1, '[{\"added\": {}}]', 8, 1),
(6, '2020-07-29 13:11:32.187508', '4', 'Items object (4)', 1, '[{\"added\": {}}]', 8, 1),
(7, '2020-07-29 13:12:12.496188', '1', 'Buyers object (1)', 1, '[{\"added\": {}}]', 7, 1),
(8, '2020-07-29 13:12:21.479613', '2', 'Buyers object (2)', 1, '[{\"added\": {}}]', 7, 1),
(9, '2020-07-29 13:12:50.089138', '1', 'Orders object (1)', 1, '[{\"added\": {}}]', 10, 1),
(10, '2020-07-29 13:12:57.326812', '2', 'Orders object (2)', 1, '[{\"added\": {}}]', 10, 1),
(11, '2020-07-29 13:13:06.648918', '3', 'Orders object (3)', 1, '[{\"added\": {}}]', 10, 1),
(12, '2020-07-29 13:13:38.512543', '1', 'OrderItems object (1)', 1, '[{\"added\": {}}]', 11, 1),
(13, '2020-07-29 13:13:45.647646', '2', 'OrderItems object (2)', 1, '[{\"added\": {}}]', 11, 1),
(14, '2020-07-29 13:13:52.852745', '3', 'OrderItems object (3)', 1, '[{\"added\": {}}]', 11, 1),
(15, '2020-07-29 13:13:58.781528', '4', 'OrderItems object (4)', 1, '[{\"added\": {}}]', 11, 1),
(16, '2020-07-29 13:14:06.535480', '5', 'OrderItems object (5)', 1, '[{\"added\": {}}]', 11, 1),
(17, '2020-07-29 16:40:52.095149', '4', 'Items object (4)', 2, '[{\"changed\": {\"fields\": [\"Price\"]}}]', 8, 1),
(18, '2020-07-29 16:40:57.661211', '4', 'Items object (4)', 2, '[]', 8, 1),
(19, '2020-07-29 16:41:05.167757', '3', 'Items object (3)', 2, '[{\"changed\": {\"fields\": [\"Price\"]}}]', 8, 1),
(20, '2020-07-29 16:41:13.823360', '2', 'Items object (2)', 2, '[{\"changed\": {\"fields\": [\"Price\"]}}]', 8, 1),
(21, '2020-07-29 16:41:21.174203', '1', 'Items object (1)', 2, '[{\"changed\": {\"fields\": [\"Price\"]}}]', 8, 1),
(22, '2020-07-29 21:00:37.114686', '1', 'OrderItems object (1)', 2, '[{\"changed\": {\"fields\": [\"OrderItemsSeller\", \"Quantity\"]}}]', 11, 1),
(23, '2020-07-29 21:00:48.473732', '2', 'OrderItems object (2)', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 11, 1),
(24, '2020-07-29 21:00:55.223771', '3', 'OrderItems object (3)', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 11, 1),
(25, '2020-07-29 21:01:03.258316', '4', 'OrderItems object (4)', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 11, 1),
(26, '2020-07-29 21:01:10.538130', '5', 'OrderItems object (5)', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 11, 1),
(27, '2020-07-29 22:09:19.557152', '4', 'Items object (4)', 2, '[{\"changed\": {\"fields\": [\"Tex\"]}}]', 8, 1),
(28, '2020-07-29 22:09:29.223169', '3', 'Items object (3)', 2, '[{\"changed\": {\"fields\": [\"Tex\"]}}]', 8, 1),
(29, '2020-07-29 22:09:38.590418', '2', 'Items object (2)', 2, '[{\"changed\": {\"fields\": [\"Tex\"]}}]', 8, 1),
(30, '2020-07-29 22:09:46.094987', '1', 'Items object (1)', 2, '[{\"changed\": {\"fields\": [\"Tex\"]}}]', 8, 1),
(31, '2020-07-29 23:01:41.475448', '3', 'Buyers object (3)', 1, '[{\"added\": {}}]', 7, 1),
(32, '2020-07-29 23:02:30.726051', '3', 'Sellers object (3)', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'invoice', 'buyers'),
(8, 'invoice', 'items'),
(11, 'invoice', 'orderitems'),
(10, 'invoice', 'orders'),
(9, 'invoice', 'sellers'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-07-29 12:37:34.148550'),
(2, 'auth', '0001_initial', '2020-07-29 12:37:41.753878'),
(3, 'admin', '0001_initial', '2020-07-29 12:38:02.605444'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-07-29 12:38:08.006497'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-07-29 12:38:08.151410'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-07-29 12:38:09.595955'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-07-29 12:38:12.745644'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-07-29 12:38:13.081093'),
(9, 'auth', '0004_alter_user_username_opts', '2020-07-29 12:38:13.176647'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-07-29 12:38:15.882234'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-07-29 12:38:16.040960'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-07-29 12:38:16.201552'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-07-29 12:38:16.688772'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-07-29 12:38:16.969745'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-07-29 12:38:17.277029'),
(16, 'auth', '0011_update_proxy_permissions', '2020-07-29 12:38:17.435937'),
(17, 'invoice', '0001_initial', '2020-07-29 12:38:31.753002'),
(18, 'sessions', '0001_initial', '2020-07-29 12:38:56.930812'),
(19, 'invoice', '0002_auto_20200729_2018', '2020-07-29 14:48:39.550128'),
(20, 'invoice', '0003_auto_20200729_2019', '2020-07-29 14:49:22.066482'),
(21, 'invoice', '0004_items_price', '2020-07-29 16:39:39.192760'),
(22, 'invoice', '0005_orderitems_quantity', '2020-07-29 19:27:59.886279'),
(23, 'invoice', '0006_items_tex', '2020-07-29 21:18:16.454852');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('nmr05prnyi9jh0t4vl5nfhyze5bb0ecm', 'OTRkMjE3Mzc0MDEzOWEzOWE4MzZhMTBjNWUzMzQzNDkwNDg2MTc5Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZWY1MjhmMzUyNDMwZDU4Y2EyYTE3ZGI1ZDc1YTcyMWU4MDk5ZGI2In0=', '2020-08-12 13:08:04.550187');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_buyers`
--

CREATE TABLE `invoice_buyers` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_buyers`
--

INSERT INTO `invoice_buyers` (`id`, `name`, `address`) VALUES
(1, 'Buyer1', 'address 1'),
(2, 'buyer2', 'address 2'),
(3, 'Buyer 3', 'address 3');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `itemSeller_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `tex` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `name`, `quantity`, `itemSeller_id`, `price`, `tex`) VALUES
(1, 'item1', 10, 1, 5, 30),
(2, 'it2', 4, 1, 200, 2),
(3, 'team 5', 20, 2, 50, 20),
(4, 'team 6', 40, 2, 100, 10);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_orderitems`
--

CREATE TABLE `invoice_orderitems` (
  `id` int(11) NOT NULL,
  `orderItem_id` int(11) NOT NULL,
  `orderItemsSeller_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_orderitems`
--

INSERT INTO `invoice_orderitems` (`id`, `orderItem_id`, `orderItemsSeller_id`, `quantity`) VALUES
(1, 1, 4, 50),
(2, 1, 3, 40),
(3, 1, 4, 6),
(4, 3, 1, 50),
(5, 2, 2, 80);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_orders`
--

CREATE TABLE `invoice_orders` (
  `created_at` datetime(6) NOT NULL,
  `id` int(11) NOT NULL,
  `orderBuyer_id` int(11) NOT NULL,
  `orderSeller_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_orders`
--

INSERT INTO `invoice_orders` (`created_at`, `id`, `orderBuyer_id`, `orderSeller_id`) VALUES
('2020-07-29 13:12:39.000000', 1, 1, 1),
('2020-07-29 13:12:52.000000', 2, 2, 1),
('2020-07-29 13:13:01.000000', 3, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_sellers`
--

CREATE TABLE `invoice_sellers` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `signature` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_sellers`
--

INSERT INTO `invoice_sellers` (`id`, `name`, `address`, `signature`) VALUES
(1, 'Seller1', 'address 1', 'signature/17ad2a89_3AffpTI.jpg'),
(2, 'Seller2', 'address 2', 'signature/25d73a14_LQy097X.jpg'),
(3, 'Seller3', 'aDADS', 'signature/219d084b_OExx3Df.png');

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
-- Indexes for table `invoice_buyers`
--
ALTER TABLE `invoice_buyers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_items_itemSeller_id_2e59f690_fk_invoice_sellers_id` (`itemSeller_id`);

--
-- Indexes for table `invoice_orderitems`
--
ALTER TABLE `invoice_orderitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_orderitems_orderItem_id_24d74398_fk_invoice_orders_id` (`orderItem_id`),
  ADD KEY `invoice_orderitems_orderItemsSeller_id_f4d47f79_fk_invoice_i` (`orderItemsSeller_id`);

--
-- Indexes for table `invoice_orders`
--
ALTER TABLE `invoice_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_orders_orderSeller_id_b78f0028_fk_invoice_sellers_id` (`orderSeller_id`),
  ADD KEY `invoice_orders_orderBuyer_id_d1bd0bce_fk_invoice_buyers_id` (`orderBuyer_id`);

--
-- Indexes for table `invoice_sellers`
--
ALTER TABLE `invoice_sellers`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `invoice_buyers`
--
ALTER TABLE `invoice_buyers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `invoice_orderitems`
--
ALTER TABLE `invoice_orderitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `invoice_orders`
--
ALTER TABLE `invoice_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoice_sellers`
--
ALTER TABLE `invoice_sellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_itemSeller_id_2e59f690_fk_invoice_sellers_id` FOREIGN KEY (`itemSeller_id`) REFERENCES `invoice_sellers` (`id`);

--
-- Constraints for table `invoice_orderitems`
--
ALTER TABLE `invoice_orderitems`
  ADD CONSTRAINT `invoice_orderitems_orderItem_id_24d74398_fk_invoice_orders_id` FOREIGN KEY (`orderItem_id`) REFERENCES `invoice_orders` (`id`),
  ADD CONSTRAINT `invoice_orderitems_orderItemsSeller_id_f4d47f79_fk_invoice_i` FOREIGN KEY (`orderItemsSeller_id`) REFERENCES `invoice_items` (`id`);

--
-- Constraints for table `invoice_orders`
--
ALTER TABLE `invoice_orders`
  ADD CONSTRAINT `invoice_orders_orderBuyer_id_d1bd0bce_fk_invoice_buyers_id` FOREIGN KEY (`orderBuyer_id`) REFERENCES `invoice_buyers` (`id`),
  ADD CONSTRAINT `invoice_orders_orderSeller_id_b78f0028_fk_invoice_sellers_id` FOREIGN KEY (`orderSeller_id`) REFERENCES `invoice_sellers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
