-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2018 at 05:22 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leather-shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_user` varchar(20) NOT NULL,
  `admin_pass` varchar(20) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_address` varchar(100) NOT NULL,
  `admin_tel` varchar(10) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `date_save` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_user`, `admin_pass`, `admin_name`, `admin_address`, `admin_tel`, `admin_email`, `status`, `date_save`) VALUES
(1, '1', '1', 'ผู้ดูแลระบบ', 'test add', '0123456789', 'e-mail@admin.com', 'admin', '2017-08-29 17:00:00'),
(2, '2', '2', 'พนักงาน', 'test staff', '0123456789', 'e-mail@staff.com', 'staff', '2018-01-24 17:00:00'),
(10, '3', '3', 'ผู้บริหาร', 'test staff', '0222222222', '23superadmin@superadmin.com', 'superadmin', '2018-10-19 17:00:00'),
(18, 'root', '123123123', 'หกดกหด', 'หกดหกด', '0222222222', '23supedfn@superadmin.com', 'ex', '2018-11-27 13:22:11'),
(17, 'rootrdfg', '123123123', 'sdfsdfsa', 'asdasd', '0222222222', '23ssdfn@superadmin.com', 'ex', '2018-11-27 12:22:47'),
(19, 'asdad', '123123123', 'asdasd', 'asdasd', '0222222222', '23superadssmin@superyyadmin.com', 'ex', '2018-11-26 17:39:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `b_id` int(11) NOT NULL,
  `b_number` varchar(50) NOT NULL,
  `b_name` varchar(50) NOT NULL,
  `b_type` varchar(50) NOT NULL,
  `b_owner` varchar(50) NOT NULL,
  `bn_name` varchar(50) NOT NULL,
  `b_logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`b_id`, `b_number`, `b_name`, `b_type`, `b_owner`, `bn_name`, `b_logo`) VALUES
(2, '3653032132', 'กรุงไทย', 'ออมทรัพ', 'สมชาย ใจดี', 'พระสมุทรเจดีย์', 'imgb87159464020180819_000254.jpg'),
(3, '5431535463', 'กสิกรไทย', 'ออมทรัพย์', 'มงคล ศรีสุข', 'พระสมุทรเจดีย์', 'imgb197504342620180818_223441.png'),
(4, '4453543233', 'ไทยพาณิชย์', 'ออมทรัพย์', 'สมบูรณ์ มั่งมี', 'พระสมุทรเจดีย์', 'imgb133828463220180818_223607.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `mem_id` int(11) NOT NULL,
  `mem_name` varchar(50) NOT NULL,
  `mem_address` varchar(255) NOT NULL,
  `mem_tel` varchar(10) NOT NULL,
  `mem_username` varchar(20) NOT NULL,
  `mem_password` varchar(20) NOT NULL,
  `mem_email` varchar(20) NOT NULL,
  `status` varchar(5) NOT NULL,
  `sid` varchar(32) NOT NULL,
  `active` varchar(3) NOT NULL,
  `dateinsert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`mem_id`, `mem_name`, `mem_address`, `mem_tel`, `mem_username`, `mem_password`, `mem_email`, `status`, `sid`, `active`, `dateinsert`) VALUES
(14, 'เบญจรงคกุล', '256/344 หมู่ 4 ถนนรามคำแหง ตำบลคลองกุ่ม อำเภอบึงกุ่ม กรุงเทพมหานคร 12400', '0902020202', 'ben', '123456789', '23.noop@gmail.com', 'user', 'u3ia1e8d7ddbmcpqt7b0uq2tr0', 'no', '2018-11-26 17:12:56'),
(15, 'วงศ์กุศลกิจ', ' ถ.เพชรบุรีตัดใหม่ แขวงมักกะสัน เขตราชเทวี กรุงเทพฯ 10400', '0902020202', 'vo', '123456789', '23.noop@gmail.com', 'user', 'u3ia1e8d7ddbmcpqt7b0uq2tr0', 'yes', '2018-11-01 17:11:15'),
(17, 'มาลี', 'บ้านสังแก  ตำบลสะเดา  อำเภอบัวเชด  จังหวัดสุรินทร์  32230', '0915678456', 'ma', '123456789', '23.noop@gmail.com', 'user', '3vravt2ad0rg6g0j4tmfbsll86', 'yes', '2018-11-27 14:52:32'),
(19, 'มาลี นาชา', '39/161', '0816664891', 'mare', '123456', 'mare@gmail.com', 'ex', 'essr89qqurv4g1q95pd7ihj286', 'yes', '2018-11-27 14:04:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `mem_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `order_status` int(1) NOT NULL,
  `pay_slip` varchar(200) DEFAULT NULL,
  `b_name` varchar(100) DEFAULT NULL,
  `b_number` varchar(200) DEFAULT NULL,
  `pay_date` date DEFAULT NULL,
  `pay_amount` float(10,2) DEFAULT NULL,
  `postcode` varchar(30) DEFAULT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `mem_id`, `name`, `address`, `email`, `phone`, `order_status`, `pay_slip`, `b_name`, `b_number`, `pay_date`, `pay_amount`, `postcode`, `order_date`) VALUES
(000012, 15, 'วงศ์กุศลกิจ', ' ถ.เพชรบุรีตัดใหม่ แขวงมักกะสัน เขตราชเทวี กรุงเทพฯ 10400', '23.noop@gmail.com', '0902020202', 3, '91940817020181122_121624.jpg', 'กสิกรไทย', '5431535463', '2018-11-22', 42728.00, 'ED552656215TH', '2018-11-21 17:00:00'),
(000013, 15, 'วงศ์กุศลกิจ', ' ถ.เพชรบุรีตัดใหม่ แขวงมักกะสัน เขตราชเทวี กรุงเทพฯ 10400', '23.noop@gmail.com', '0902020202', 3, '93123818920181122_123326.jpg', 'กสิกรไทย', '5431535463', '2018-11-22', 49486.00, 'ED785496854TH', '2018-11-21 17:00:00'),
(000014, 18, 'สมชาย กิตติกันยาปัด', '97/44 ถ.บางใหญ่ อ.บางกระดี่ แขวง บางคอหลาม 10140', 'junpha01@gmail.com', '0845974828', 3, '47116913320181122_124540.jpg', 'ไทยพาณิชย์', '4453543233', '2018-11-22', 45889.00, 'ED487459154TH', '2018-11-21 17:00:00'),
(000015, 18, 'สมชาย กิตติกันยาปัด', '97/44 ถ.บางใหญ่ อ.บางกระดี่ แขวง บางคอหลาม 10140', 'junpha01@gmail.com', '0845974828', 3, '22441858420181118_125600.jpg', 'ไทยพาณิชย์', '4453543233', '2018-11-11', 128020.50, 'ED456847594TH', '2018-11-17 17:00:00'),
(000016, 16, 'มหากิจศิริ', 'ซอยลาดพร้าว 110 ถนนลาดพร้าว  แขวงคลองจั่น เขตบางกะปิ  กรุงเทพมหานคร  10240', '23.noop@gmail.com', '0902020202', 3, '63084820820181118_130536.jpg', 'กรุงไทย', '3653032132', '2018-11-18', 40384.50, 'ED777444888TH', '2018-11-17 17:00:00'),
(000017, 16, 'มหากิจศิริ', 'ซอยลาดพร้าว 110 ถนนลาดพร้าว  แขวงคลองจั่น เขตบางกะปิ  กรุงเทพมหานคร  10240', '23.noop@gmail.com', '0902020202', 3, '184297978320181013_130837.jpg', 'ไทยพาณิชย์', '4453543233', '2018-10-13', 46597.50, 'ED789487548TH', '2018-10-12 17:00:00'),
(000018, 16, 'มหากิจศิริ', 'ซอยลาดพร้าว 110 ถนนลาดพร้าว  แขวงคลองจั่น เขตบางกะปิ  กรุงเทพมหานคร  10240', '23.noop@gmail.com', '0902020202', 4, '', '', '', '0000-00-00', 0.00, '', '2018-10-12 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `d_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `p_name` varchar(200) DEFAULT NULL,
  `p_c_qty` int(11) NOT NULL,
  `total` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`d_id`, `order_id`, `p_id`, `p_name`, `p_c_qty`, `total`) VALUES
(11, 6, 44, 'หมวกหนังวัวแท้ Quinn Hat Coffee ', 1, 2981.15),
(12, 6, 40, 'แจ็คเก็ตหนังPU สำหรับ Biker', 1, 6033.15),
(13, 7, 47, 'รองเท้าหนังแท้ Chilling Loafer Brown', 1, 4681.55),
(14, 8, 37, 'กระเป๋าสตางค์ Wallet Easy-S Black', 1, 1891.15),
(15, 9, 45, 'กระเป๋าใส่พวงกุญแจหนัง Gaston Blue', 1, 1782.15),
(16, 11, 73, 'รองเท้าหนัง LSW02 ไซส์ 42', 1, 2670.50),
(17, 12, 74, 'รองเท้าหนังLSW03 ไซส์ 41', 10, 26705.00),
(18, 12, 75, 'รองเท้าหนัง LSW04 ไซส์ 42', 6, 16023.00),
(19, 13, 73, 'รองเท้าหนัง LSW02 ไซส์ 42', 3, 8011.50),
(20, 13, 74, 'รองเท้าหนังLSW03 ไซส์ 41', 2, 5341.00),
(21, 13, 67, 'รองเท้าหนัง LSSO04 ไซส์ 40', 5, 13897.50),
(22, 13, 65, 'รองเท้าหนัง LSSO02 ไซส์ 34', 3, 8338.50),
(23, 13, 60, 'รองเท้าหนัง LSR08 ไซส์ 43', 5, 13897.50),
(24, 14, 67, 'รองเท้าหนัง LSSO04 ไซส์ 40', 4, 11118.00),
(25, 14, 54, 'รองเท้าหนัง LSR02 ไซส์ 43', 5, 13352.50),
(26, 14, 84, 'เข็มขัดหนัง LBE06', 5, 7902.50),
(27, 14, 78, 'กระเป๋าสตางค์ LBAW04', 4, 6758.00),
(28, 14, 77, 'กระเป๋าสตางค์ LBAW03', 4, 6758.00),
(29, 15, 73, 'รองเท้าหนัง LSW02 ไซส์ 42', 5, 13352.50),
(30, 15, 69, 'รองเท้าหนัง LSSO06 ไซส์ 41', 6, 16677.00),
(31, 15, 72, 'รองเท้าหนัง LSW01 ไซส์ 40', 5, 13352.50),
(32, 15, 68, 'รองเท้าหนัง LSSO05 ไซส์ 37', 6, 16023.00),
(33, 15, 54, 'รองเท้าหนัง LSR02 ไซส์ 43', 4, 10682.00),
(34, 15, 71, 'รองเท้าหนัง LSSO08 ไซส์ 39', 6, 16023.00),
(35, 15, 64, 'รองเท้าหนัง LSSO01 ไซส์ 44', 5, 13352.50),
(36, 15, 61, 'รองเท้าหนัง LSR09 ไซส์ 36', 4, 10682.00),
(37, 15, 59, 'รองเท้าหนัง LSR07 ไซส์ 41', 4, 11118.00),
(38, 15, 81, 'เข็มขัดหนัง LBE03', 4, 6758.00),
(39, 16, 78, 'กระเป๋าสตางค์ LBAW04', 3, 5068.50),
(40, 16, 77, 'กระเป๋าสตางค์ LBAW03', 4, 6758.00),
(41, 16, 76, 'กระเป๋าสตางค์ LBAW02', 4, 6758.00),
(42, 16, 81, 'เข็มขัดหนัง LBE03', 5, 8447.50),
(43, 16, 61, 'รองเท้าหนัง LSR09 ไซส์ 36', 5, 13352.50),
(44, 17, 74, 'รองเท้าหนังLSW03 ไซส์ 41', 2, 5341.00),
(45, 17, 57, 'รองเท้าหนัง LSR05 ไซส์ 41', 3, 8338.50),
(46, 17, 68, 'รองเท้าหนัง LSSO05 ไซส์ 37', 4, 10682.00),
(47, 17, 58, 'รองเท้าหนัง LSR06 ไซส์ 43', 5, 13897.50),
(48, 17, 56, 'รองเท้าหนัง LSR04 ไซส์ 40', 3, 8338.50),
(49, 18, 73, 'รองเท้าหนัง LSW02 ไซส์ 42', 5, 13352.50),
(50, 18, 75, 'รองเท้าหนัง LSW04 ไซส์ 42', 7, 18693.50),
(51, 18, 58, 'รองเท้าหนัง LSR06 ไซส์ 43', 5, 13897.50),
(52, 18, 57, 'รองเท้าหนัง LSR05 ไซส์ 41', 4, 11118.00),
(53, 18, 55, 'รองเท้าหนัง LSR03 ไซส์ 42', 6, 16677.00),
(54, 18, 76, 'กระเป๋าสตางค์ LBAW02', 5, 8447.50),
(55, 18, 59, 'รองเท้าหนัง LSR07 ไซส์ 41', 5, 13897.50);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `p_detial` text NOT NULL,
  `p_price` float(10,2) NOT NULL,
  `p_unit` varchar(20) NOT NULL,
  `p_img1` varchar(200) NOT NULL,
  `p_img2` varchar(100) DEFAULT NULL,
  `p_img3` varchar(200) NOT NULL,
  `p_img4` varchar(200) NOT NULL,
  `p_img5` varchar(200) NOT NULL,
  `p_view` int(11) NOT NULL,
  `p_qty` int(11) DEFAULT NULL,
  `p_size` varchar(50) NOT NULL,
  `p_ems` int(50) NOT NULL,
  `promo` float(10,2) NOT NULL,
  `date_save` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `t_id`, `p_name`, `p_detial`, `p_price`, `p_unit`, `p_img1`, `p_img2`, `p_img3`, `p_img4`, `p_img5`, `p_view`, `p_qty`, `p_size`, `p_ems`, `promo`, `date_save`) VALUES
(82, 13, 'เข็มขัดหนัง LBE04', '<p>ผลิตจากหนังวัวแท้</p>\r\n\r\n<p>ทนทาน ใช้งานได้นาน</p>\r\n\r\n<p>ตัวล็อคแน่นหนา ไม่หลุดง่าย</p>\r\n\r\n<p>ขนาดยาวพอเหมาะ<br />\r\n&nbsp;</p>\r\n', 1400.00, 'ชิ้น', 'img148022928620181111_165430.jpg', 'img248022928620181111_165430.jpg', '', '', '', 0, 5, '0', 50, 0.00, '2018-11-10 17:00:00'),
(83, 13, 'เข็มขัดหนัง LBE05', '<p>ผลิตจากหนังวัวแท้</p>\r\n\r\n<p>ทนทาน ใช้งานได้นาน</p>\r\n\r\n<p>ตัวล็อคแน่นหนา ไม่หลุดง่าย</p>\r\n\r\n<p>ขนาดยาวพอเหมาะ<br />\r\n&nbsp;</p>\r\n', 1400.00, 'ชิ้น', 'img1184492184620181111_165516.jpg', 'img2184492184620181111_165516.jpg', '', '', '', 0, 6, '0', 50, 0.00, '2018-11-10 17:00:00'),
(84, 13, 'เข็มขัดหนัง LBE06', '<p>ผลิตจากหนังวัวแท้</p>\r\n\r\n<p>ทนทาน ใช้งานได้นาน</p>\r\n\r\n<p>ตัวล็อคแน่นหนา ไม่หลุดง่าย</p>\r\n\r\n<p>ขนาดยาวพอเหมาะ<br />\r\n </p>\r\n', 1400.00, 'ชิ้น', 'img173474011320181111_165611.jpg', 'img273474011320181111_165611.jpg', '', '', '', 0, 2, '0', 50, 0.00, '2018-11-10 17:00:00'),
(78, 10, 'กระเป๋าสตางค์ LBAW04', '<p>กระเป๋าสตางค์ เป็นงาน Handmade</p>\r\n\r\n<p>ผลิตจากหนังวัวแท้</p>\r\n\r\n<p>กระเป๋าเป็นทรงแนวตั้ง</p>\r\n\r\n<p>สามารถใส่ การ์ด นามบัตร บัตรต่าง ๆ ได้</p>\r\n', 1500.00, 'ใบ', 'img1108101225620181111_163948.jpg', 'img2108101225620181111_163948.jpg', '', '', '', 0, 10, '0', 50, 0.00, '2018-11-10 17:00:00'),
(79, 13, 'เข็มขัดหนัง LBE01', '<p>ผลิตจากหนังวัวแท้</p>\r\n\r\n<p>ทนทาน ใช้งานได้นาน</p>\r\n\r\n<p>ตัวล็อคแน่นหนา ไม่หลุดง่าย</p>\r\n\r\n<p>ขนาดยาวพอเหมาะ<br />\r\n&nbsp;</p>\r\n', 1500.00, 'ชิ้น', 'img1152428098520181111_165052.jpg', 'img2152428098520181111_165052.jpg', '', '', '', 0, 5, '0', 50, 0.00, '2018-11-10 17:00:00'),
(80, 13, 'เข็มขัดหนัง LBE02', '<p>ผลิตจากหนังวัวแท้</p>\r\n\r\n<p>ทนทาน ใช้งานได้นาน</p>\r\n\r\n<p>ตัวล็อคแน่นหนา ไม่หลุดง่าย</p>\r\n\r\n<p>ขนาดยาวพอเหมาะ<br />\r\n&nbsp;</p>\r\n', 1500.00, 'ชิ้น', 'img1153714357220181111_165203.jpg', 'img2153714357220181111_165203.jpg', '', '', '', 0, 4, '0', 50, 0.00, '2018-11-10 17:00:00'),
(81, 13, 'เข็มขัดหนัง LBE03', '<p>ผลิตจากหนังวัวแท้</p>\r\n\r\n<p>ทนทาน ใช้งานได้นาน</p>\r\n\r\n<p>ตัวล็อคแน่นหนา ไม่หลุดง่าย</p>\r\n\r\n<p>ขนาดยาวพอเหมาะ<br />\r\n </p>\r\n', 1500.00, 'ชิ้น', 'img119277948120181111_165317.jpg', 'img219277948120181111_165317.jpg', '', '', '', 0, 11, '0', 50, 0.00, '2018-11-10 17:00:00'),
(76, 10, 'กระเป๋าสตางค์ LBAW02', '<p>กระเป๋าสตางค์ เป็นงาน Handmade</p>\r\n\r\n<p>ผลิตจากหนังวัวแท้</p>\r\n\r\n<p>กระเป๋าเป็นทรงแนวนอน</p>\r\n\r\n<p>สามารถใส่ การ์ด นามบัตร บัตรต่าง ๆ ได้</p>\r\n', 1500.00, 'ใบ', 'img139867733220181111_163201.jpg', 'img239867733220181111_163201.jpg', '', '', '', 2, 6, '0', 50, 0.00, '2018-11-10 17:00:00'),
(77, 10, 'กระเป๋าสตางค์ LBAW03', '<p>กระเป๋าสตางค์ เป็นงาน Handmade</p>\r\n\r\n<p>ผลิตจากหนังวัวแท้</p>\r\n\r\n<p>กระเป๋าเป็นทรงแนวนอน</p>\r\n\r\n<p>สามารถใส่ การ์ด นามบัตร บัตรต่าง ๆ ได้</p>\r\n', 1500.00, 'ใบ', 'img1191191296620181111_163609.jpg', 'img2191191296620181111_163609.jpg', '', '', '', 1, 9, '0', 50, 0.00, '2018-11-10 17:00:00'),
(73, 14, 'รองเท้าหนัง LSW02 ไซส์ 42', '<p>ตัวรองเท้าเป็นงาน Handmade</p>\r\n\r\n<p>น้ำหนักกำลังดีไม่หนัก ไม่เบาเกินไป</p>\r\n\r\n<p>ผลิตจากหนังวัวแท้ 100%</p>\r\n\r\n<p>สวมใส่สบาย</p>\r\n', 2400.00, 'คู่', 'img197919774120181111_162028.jpg', 'img297919774120181111_162028.jpg', 'img397919774120181111_162028.jpg', 'img497919774120181111_162028.jpg', '', 1, 2, '42', 50, 0.00, '2018-11-10 17:00:00'),
(74, 14, 'รองเท้าหนังLSW03 ไซส์ 41', '<p>ตัวรองเท้าเป็นงาน Handmade</p>\r\n\r\n<p>น้ำหนักกำลังดีไม่หนัก ไม่เบาเกินไป</p>\r\n\r\n<p>ผลิตจากหนังวัวแท้ 100%</p>\r\n\r\n<p>สวมใส่สบาย</p>\r\n', 2400.00, 'คู่', 'img18022966520181111_162154.jpg', 'img28022966520181111_162154.jpg', 'img38022966520181111_162154.jpg', 'img48022966520181111_162154.jpg', '', 5, 16, '41', 50, 0.00, '2018-11-10 17:00:00'),
(75, 14, 'รองเท้าหนัง LSW04 ไซส์ 42', '<p>ตัวรองเท้าเป็นงาน Handmade</p>\r\n\r\n<p>น้ำหนักกำลังดีไม่หนัก ไม่เบาเกินไป</p>\r\n\r\n<p>ผลิตจากหนังวัวแท้ 100%</p>\r\n\r\n<p>สวมใส่สบาย</p>\r\n', 2400.00, 'ชิ้น', 'img1208176296620181111_162343.jpg', 'img2208176296620181111_162343.jpg', 'img3208176296620181111_162343.jpg', 'img4208176296620181111_162343.jpg', '', 0, 3, '42', 50, 0.00, '2018-11-10 17:00:00'),
(71, 14, 'รองเท้าหนัง LSSO08 ไซส์ 39', '<p>ตัวรองเท้าเป็นงาน Handmade</p>\r\n\r\n<p>น้ำหนักกำลังดีไม่หนัก ไม่เบาเกินไป</p>\r\n\r\n<p>ผลิตจากหนังวัวแท้ 100%</p>\r\n\r\n<p>สวมใส่สบาย</p>\r\n', 2400.00, 'คู่', 'img193340183520181111_161718.jpg', 'img293340183520181111_161718.jpg', 'img393340183520181111_161718.jpg', 'img493340183520181111_161718.jpg', '', 0, 11, '39', 50, 0.00, '2018-11-10 17:00:00'),
(72, 14, 'รองเท้าหนัง LSW01 ไซส์ 40', '<p>ตัวรองเท้าเป็นงาน Handmade</p>\r\n\r\n<p>น้ำหนักกำลังดีไม่หนัก ไม่เบาเกินไป</p>\r\n\r\n<p>ผลิตจากหนังวัวแท้ 100%</p>\r\n\r\n<p>สวมใส่สบาย</p>\r\n', 2400.00, 'คู่', 'img1128175334120181111_161847.jpg', 'img2128175334120181111_161847.jpg', 'img3128175334120181111_161847.jpg', 'img4128175334120181111_161847.jpg', '', 2, 16, '40', 50, 0.00, '2018-11-10 17:00:00'),
(69, 14, 'รองเท้าหนัง LSSO06 ไซส์ 41', '<p>ตัวรองเท้าเป็นงาน Handmade</p>\r\n\r\n<p>น้ำหนักกำลังดีไม่หนัก ไม่เบาเกินไป</p>\r\n\r\n<p>ผลิตจากหนังวัวแท้ 100%</p>\r\n\r\n<p>สวมใส่สบาย<br />\r\n </p>\r\n', 2500.00, 'คู่', 'img129136629120181111_160843.jpg', 'img229136629120181111_160843.jpg', 'img329136629120181111_160843.jpg', 'img429136629120181111_160843.jpg', '', 1, 12, '41', 50, 0.00, '2018-11-10 17:00:00'),
(70, 14, 'รองเท้าหนัง LSSO07 ไซส์ 38', '<p>ตัวรองเท้าเป็นงาน Handmade</p>\r\n\r\n<p>น้ำหนักกำลังดีไม่หนัก ไม่เบาเกินไป</p>\r\n\r\n<p>ผลิตจากหนังวัวแท้ 100%</p>\r\n\r\n<p>สวมใส่สบาย</p>\r\n', 2400.00, 'คู่', 'img117100580620181111_161330.jpg', 'img217100580620181111_161330.jpg', 'img317100580620181111_161330.jpg', 'img417100580620181111_161330.jpg', '', 15, 12, '38', 50, 0.00, '2018-11-10 17:00:00'),
(67, 14, 'รองเท้าหนัง LSSO04 ไซส์ 40', '<p>ตัวรองเท้าเป็นงาน Handmade</p>\r\n\r\n<p>น้ำหนักกำลังดีไม่หนัก ไม่เบาเกินไป</p>\r\n\r\n<p>ผลิตจากหนังวัวแท้ 100%</p>\r\n\r\n<p>สวมใส่สบาย</p>\r\n', 2500.00, 'คู่', 'img1157581415720181111_155734.jpg', 'img2157581415720181111_155734.jpg', 'img3157581415720181111_155734.jpg', 'img4157581415720181111_155734.jpg', '', 0, 12, '40', 50, 0.00, '2018-11-10 17:00:00'),
(68, 14, 'รองเท้าหนัง LSSO05 ไซส์ 37', '<p>ตัวรองเท้าเป็นงาน Handmade</p>\r\n\r\n<p>น้ำหนักกำลังดีไม่หนัก ไม่เบาเกินไป</p>\r\n\r\n<p>ผลิตจากหนังวัวแท้ 100%</p>\r\n\r\n<p>สวมใส่สบาย</p>\r\n', 2400.00, 'คู่', 'img151365872820181111_160100.jpg', 'img251365872820181111_160100.jpg', 'img351365872820181111_160100.jpg', 'img451365872820181111_160100.jpg', '', 0, 3, '37', 50, 0.00, '2018-11-10 17:00:00'),
(64, 14, 'รองเท้าหนัง LSSO01 ไซส์ 44', '<p>ตัวรองเท้าเป็นงาน Handmade</p>\r\n\r\n<p>น้ำหนักกำลังดีไม่หนัก ไม่เบาเกินไป</p>\r\n\r\n<p>ตกแต่งด้วยตะเข็บกลางรองเท้า<br />\r\nผลิตจากหนังวัวแท้ 100%</p>\r\n\r\n<p>สวมใส่สบาย</p>\r\n', 2400.00, 'คู่', 'img1111777089920181111_154717.jpg', 'img2111777089920181111_154717.jpg', 'img3111777089920181111_154717.jpg', 'img4111777089920181111_154717.jpg', '', 19, 15, '44', 50, 0.00, '2018-11-10 17:00:00'),
(65, 14, 'รองเท้าหนัง LSSO02 ไซส์ 34', '<p>ตัวรองเท้าเป็นงาน Handmade</p>\r\n\r\n<p>น้ำหนักกำลังดีไม่หนัก ไม่เบาเกินไป</p>\r\n\r\n<p>ผลิตจากหนังวัวแท้ 100%</p>\r\n\r\n<p>สวมใส่สบาย</p>\r\n', 2500.00, 'คู่', 'img1102694049820181111_155205.jpg', 'img2102694049820181111_155205.jpg', 'img3102694049820181111_155205.jpg', 'img4102694049820181111_155205.jpg', '', 25, 3, '34', 50, 0.00, '2018-11-10 17:00:00'),
(66, 14, 'รองเท้าหนัง LSSO03 ไซส์ 36', '<p>ตัวรองเท้าเป็นงาน Handmade</p>\r\n\r\n<p>น้ำหนักกำลังดีไม่หนัก ไม่เบาเกินไป</p>\r\n\r\n<p>ผลิตจากหนังวัวแท้ 100%</p>\r\n\r\n<p>สวมใส่สบาย</p>\r\n', 2400.00, 'คู่', 'img176511124620181111_155426.jpg', 'img276511124620181111_155426.jpg', 'img376511124620181111_155426.jpg', 'img476511124620181111_155426.jpg', '', 0, 6, '36', 50, 0.00, '2018-11-10 17:00:00'),
(63, 14, 'รองเท้าหนัง LSSK02 ไซส์ 40', '<p>ตัวรองเท้าเป็นงาน Handmade</p>\r\n\r\n<p>น้ำหนักกำลังดีไม่หนัก ไม่เบาเกินไป<br />\r\nผลิตจากหนังวัวแท้ 100%</p>\r\n\r\n<p>สวมใส่สบาย</p>\r\n', 2500.00, 'คู่', 'img189084204820181111_154216.jpg', 'img289084204820181111_154216.jpg', 'img389084204820181111_154216.jpg', 'img489084204820181111_154216.jpg', '', 1, 5, '35', 50, 0.00, '2018-11-10 17:00:00'),
(61, 14, 'รองเท้าหนัง LSR09 ไซส์ 36', '<p>ตัวรองเท้าเป็นงาน Handmade</p>\r\n\r\n<p>น้ำหนักกำลังดีไม่หนัก ไม่เบาเกินไป</p>\r\n\r\n<p>ลิตจากหนังวัวแท้ 100%</p>\r\n\r\n<p>สวมใส่สบาย<br />\r\n </p>\r\n', 2400.00, 'ชิ้น', 'img1150999665520181111_153331.jpg', 'img2150999665520181111_153331.jpg', 'img3150999665520181111_153331.jpg', 'img4150999665520181111_153331.jpg', '', 1, 5, '36', 50, 0.00, '2018-11-11 17:00:00'),
(62, 14, 'รองเท้าหนัง LSSK01 ไซส์ 35', '<p>ตัวรองเท้าเป็นงาน Handmade</p>\r\n\r\n<p>น้ำหนักกำลังดีไม่หนัก ไม่เบาเกินไป</p>\r\n\r\n<p>ผลิตจากหนังวัวแท้ 100%</p>\r\n\r\n<p>สวมใส่สบาย</p>\r\n', 2500.00, 'คู่', 'img110121828520181111_153940.jpg', 'img210121828520181111_153940.jpg', 'img310121828520181111_153940.jpg', 'img410121828520181111_153940.jpg', '', 2, 7, '35', 50, 0.00, '2018-11-10 17:00:00'),
(58, 14, 'รองเท้าหนัง LSR06 ไซส์ 43', '<p>ตัวรองเท้าเป็นงาน Handmade</p>\r\n\r\n<p>น้ำหนักกำลังดีไม่หนัก ไม่เบาเกินไป</p>\r\n\r\n<p>ผลิตจากหนังวัวแท้ 100%</p>\r\n\r\n<p>สวมใส่สบาย<br />\r\n&nbsp;</p>\r\n', 2500.00, 'คู่', 'img1186089341220181111_151153.jpg', 'img2186089341220181111_151153.jpg', 'img3186089341220181111_151153.jpg', 'img4186089341220181111_151153.jpg', '', 3, 8, '43', 50, 0.00, '2018-11-04 17:00:00'),
(59, 14, 'รองเท้าหนัง LSR07 ไซส์ 41', '<p>ตัวรองเท้าเป็นงาน Handmade</p>\r\n\r\n<p>น้ำหนักกำลังดีไม่หนัก ไม่เบาเกินไป</p>\r\n\r\n<p>ผลิตจากหนังวัวแท้ 100%</p>\r\n\r\n<p>สวมใส่สบาย<br />\r\n </p>\r\n', 2500.00, 'คู่', 'img1131666085320181111_152457.jpg', 'img2131666085320181111_152457.jpg', 'img3131666085320181111_152457.jpg', 'img4131666085320181111_152457.jpg', '', 0, 5, '41', 50, 0.00, '2018-11-10 17:00:00'),
(60, 14, 'รองเท้าหนัง LSR08 ไซส์ 43', '<p>ตัวรองเท้าเป็นงาน Handmade</p>\r\n\r\n<p>น้ำหนักกำลังดีไม่หนัก ไม่เบาเกินไป</p>\r\n\r\n<p>ผลิตจากหนังวัวแท้ 100%</p>\r\n\r\n<p>สวมใส่สบาย<br />\r\n&nbsp;</p>\r\n', 2500.00, 'คู่', 'img1124005921520181111_152921.jpg', 'img2124005921520181111_152921.jpg', 'img3124005921520181111_152921.jpg', 'img4124005921520181111_152921.jpg', '', 1, 0, '43', 50, 0.00, '2018-11-10 17:00:00'),
(56, 14, 'รองเท้าหนัง LSR04 ไซส์ 40', '<p>ตัวรองเท้าเป็นงาน Handmade</p>\r\n\r\n<p>น้ำหนักกำลังดีไม่หนัก ไม่เบาเกินไป</p>\r\n\r\n<p>ตกแต่งด้วยตะเข็บกลางรองเท้า</p>\r\n\r\n<p>รองเท้าเป็นแบบหุ้มข้อ</p>\r\n\r\n<p>ผลิตจากหนังวัวแท้ 100%</p>\r\n\r\n<p>สวมใส่สบาย<br />\r\n </p>\r\n', 2500.00, 'คู่', 'img1192450910120181111_145209.jpg', 'img2192450910120181111_145209.jpg', 'img3192450910120181111_145209.jpg', 'img4192450910120181111_145209.jpg', '', 0, 11, '40', 50, 0.00, '2018-11-10 17:00:00'),
(57, 14, 'รองเท้าหนัง LSR05 ไซส์ 41', '<p>ตัวรองเท้าเป็นงาน Handmade</p>\r\n\r\n<p>น้ำหนักกำลังดีไม่หนัก ไม่เบาเกินไป</p>\r\n\r\n<p>ตกแต่งด้วยตะเข็บกลางรองเท้า</p>\r\n\r\n<p>ผลิตจากหนังวัวแท้ 100%</p>\r\n\r\n<p>สวมใส่สบาย<br />\r\n </p>\r\n', 2500.00, 'คู่', 'img1163547283320181111_150905.jpg', 'img2163547283320181111_150905.jpg', 'img3163547283320181111_150905.jpg', 'img4163547283320181111_150905.jpg', '', 0, 5, '41', 50, 0.00, '2018-11-10 17:00:00'),
(53, 14, 'รองเท้าหนัง LSR01 ไซส์ 40', '<p>ตัวรองเท้าเป็นงาน Handmade</p>\r\n\r\n<p>น้ำหนักกำลังดีไม่หนัก ไม่เบาเกินไป</p>\r\n\r\n<p>ตกแต่งด้วยตะเข็บกลางรองเท้า</p>\r\n\r\n<p>รองเท้าเป็นแบบหุ้มข้อ</p>\r\n\r\n<p>ผลิตจากหนังวัวแท้ 100%</p>\r\n\r\n<p>สวมใส่สบาย</p>\r\n', 2500.00, 'คู่', 'img175790772020181111_141949.jpg', 'img275790772020181111_141949.jpg', 'img375790772020181111_141949.jpg', 'img475790772020181111_141949.jpg', '', 2, 13, '40', 50, 0.00, '2018-11-10 17:00:00'),
(55, 14, 'รองเท้าหนัง LSR03 ไซส์ 42', '<p>ตัวรองเท้าเป็นงาน Handmade</p>\r\n\r\n<p>น้ำหนักกำลังดีไม่หนัก ไม่เบาเกินไป</p>\r\n\r\n<p>รองเท้าเป็นแบบหุ้มข้อ</p>\r\n\r\n<p>ผลิตจากหนังวัวแท้ 100%</p>\r\n\r\n<p>สวมใส่สบาย<br />\r\n </p>\r\n', 2500.00, 'คู่', 'img197755449320181111_144628.jpg', 'img297755449320181111_144628.jpg', 'img397755449320181111_144628.jpg', 'img497755449320181111_144628.jpg', '', 0, 11, '42', 50, 0.00, '2018-11-10 17:00:00'),
(54, 14, 'รองเท้าหนัง LSR02 ไซส์ 43', '<p>ตัวรองเท้าเป็นงาน Handmade</p>\r\n\r\n<p>น้ำหนักกำลังดีไม่หนัก ไม่เบาเกินไป</p>\r\n\r\n<p>ตกแต่งด้วยตะเข็บกลางรองเท้า</p>\r\n\r\n<p>รองเท้าเป็นแบบหุ้มข้อ</p>\r\n\r\n<p>ผลิตจากหนังวัวแท้ 100%</p>\r\n\r\n<p>สวมใส่สบาย<br />\r\n </p>\r\n', 2400.00, 'คู่', 'img1119883132320181111_142759.jpg', 'img2119883132320181111_142759.jpg', 'img3119883132320181111_142759.jpg', 'img4119883132320181111_142759.jpg', '', 0, 10, '43', 50, 0.00, '2018-11-10 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sell`
--

CREATE TABLE `tbl_sell` (
  `s_id` int(11) NOT NULL,
  `s_number` varchar(50) NOT NULL,
  `sn_number` varchar(50) NOT NULL,
  `s_price` varchar(50) NOT NULL,
  `s_date` date NOT NULL,
  `sn_date` date NOT NULL,
  `s_bill` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sell`
--

INSERT INTO `tbl_sell` (`s_id`, `s_number`, `sn_number`, `s_price`, `s_date`, `sn_date`, `s_bill`) VALUES
(0, 'MS985', '54', '285', '2018-11-10', '2018-11-18', 'imgbill26420032620181118_095658.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type`
--

CREATE TABLE `tbl_type` (
  `t_id` int(11) NOT NULL,
  `t_type` varchar(11) NOT NULL,
  `t_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_type`
--

INSERT INTO `tbl_type` (`t_id`, `t_type`, `t_name`) VALUES
(10, 'WE', 'กระเป๋าสตางค์'),
(13, 'BE', 'เข็มขัดหนังแท้'),
(14, 'HE', 'รองเท้าหนังแท้');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`mem_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_type`
--
ALTER TABLE `tbl_type`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
