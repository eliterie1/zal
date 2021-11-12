-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2021 at 06:18 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin@site.com', 'd8578edf8458ce06fbc5bb76a58c5ca4'),
(2, 'jefri@site.com', 'd8578edf8458ce06fbc5bb76a58c5ca4');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id` int(255) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `name`) VALUES
(1, 'Cipari'),
(19, 'Grand Kahuripan');

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `id` int(100) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`id`, `title`, `amount`, `type`, `date`) VALUES
(20, 'Manual Payment (cash) (cash)', '100000', 'Income', '2021-11-09'),
(22, 'Manual Payment (cash) (cash)', '0', 'Income', '2021-11-09');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `billid` int(11) NOT NULL,
  `userid` int(100) NOT NULL,
  `billstatus` varchar(250) CHARACTER SET latin1 NOT NULL,
  `month` varchar(250) CHARACTER SET latin1 NOT NULL,
  `year` varchar(250) CHARACTER SET latin1 NOT NULL,
  `package` varchar(250) CHARACTER SET latin1 NOT NULL,
  `matchid` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`billid`, `userid`, `billstatus`, `month`, `year`, `package`, `matchid`) VALUES
(218, 348, 'Paid', 'August', '2018', '12', ''),
(217, 355, 'Paid', 'August', '2018', '12', ''),
(224, 343, 'Paid', 'August', '2018', '12', ''),
(220, 344, 'Paid', 'August', '2018', '12', ''),
(229, 370, 'Unpaid', 'November', '2021', '20', '08-11-2021-07-370-1'),
(230, 369, 'Unpaid', 'November', '2021', '24', '08-11-2021-07-369-2'),
(231, 368, 'Unpaid', 'November', '2021', '20', '08-11-2021-07-368-3'),
(232, 367, 'Unpaid', 'November', '2021', '20', '08-11-2021-07-367-4'),
(233, 366, 'Paid', 'November', '2021', '23', '08-11-2021-07-366-5');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `emailID` int(11) NOT NULL,
  `time` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `emailTo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `emailSubject` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `network` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoiceID` int(255) NOT NULL,
  `userid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `duedate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paymentmethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paymentacc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paidamount` float DEFAULT NULL,
  `paidmethod` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paidacc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `package` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL,
  `matchid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost2` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value1` float DEFAULT NULL,
  `value2` float DEFAULT NULL,
  `value3` float DEFAULT NULL,
  `value4` float DEFAULT NULL,
  `value5` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoiceID`, `userid`, `createdate`, `duedate`, `paymentmethod`, `paymentacc`, `status`, `paidamount`, `paidmethod`, `paidacc`, `package`, `price`, `discount`, `matchid`, `cost1`, `cost2`, `cost3`, `cost4`, `cost5`, `value1`, `value2`, `value3`, `value4`, `value5`) VALUES
(5, '370', '2021-11-10', '2021-11-15', '', NULL, 'Unpaid', NULL, NULL, NULL, '', 0, 0, '08-11-2021-07-370-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '369', '2021-11-10', '2021-11-15', '', NULL, 'Paid', 100000, 'cash', 'cash', '', 0, 0, '08-11-2021-07-369-2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '368', '2021-11-10', '2021-11-15', '', NULL, 'Unpaid', NULL, NULL, NULL, '', 0, 0, '08-11-2021-07-368-3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '367', '2021-11-10', '2021-11-15', '', NULL, 'Unpaid', NULL, NULL, NULL, '', 0, 0, '08-11-2021-07-367-4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '366', '2021-11-10', '2021-11-15', '', NULL, 'Paid', 0, 'cash', 'cash', '', 0, 0, '08-11-2021-07-366-5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_pelanggan`
--

CREATE TABLE `m_pelanggan` (
  `no` int(11) NOT NULL,
  `nama` text DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `wa` text DEFAULT NULL,
  `no_foto` text DEFAULT NULL,
  `ukuran_foto` text DEFAULT NULL,
  `softfile` int(1) NOT NULL DEFAULT 0,
  `catatan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `m_pelanggan`
--

INSERT INTO `m_pelanggan` (`no`, `nama`, `alamat`, `email`, `wa`, `no_foto`, `ukuran_foto`, `softfile`, `catatan`) VALUES
(1, 'Kadal', 'Jl. Medan Merdeka Utara No.3, RT.2/RW.3, Gambir, Kecamatan Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10110', 'lembahcoding@gmail.com', '6283871204747', '12223', '3 Moment 10R', 0, NULL),
(2, 'Buaya', '', 'lembahcoding@gmail.com', '6283871204747', '12223', '5 Moment 10 R', 1, ''),
(3, 'Kuda Poni', NULL, 'lembahcoding@gmail.com', '6283871204747', '12223', '1 Moment 10 R', 0, NULL),
(4, 'Kijang', 'Jl. Medan Merdeka Utara No.3, RT.2/RW.3, Gambir, Kecamatan Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10110', 'lembahcoding@gmail.com', '6283871204747', '12223', '3 Moment 10R', 0, NULL),
(5, 'Burung Hantu', 'Jl. Medan Merdeka Utara No.3, RT.2/RW.3, Gambir, Kecamatan Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10110', 'lembahcoding@gmail.com', '6283871204747', '12223', '3 Moment 10R', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `packid` int(100) NOT NULL,
  `packname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `packvolume` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `packprice` float NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value1` float DEFAULT NULL,
  `value2` float DEFAULT NULL,
  `value3` float DEFAULT NULL,
  `value4` float DEFAULT NULL,
  `value5` float DEFAULT NULL,
  `total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`packid`, `packname`, `packvolume`, `packprice`, `code`, `cost1`, `cost2`, `cost3`, `cost4`, `cost5`, `value1`, `value2`, `value3`, `value4`, `value5`, `total`) VALUES
(18, 'ADMIN', 'P-ADMIN', 0, 'P-ADMIN', '', '', '', '', '', 0, 0, 0, 0, 0, 0),
(19, 'paket 3 mbps', '3Mbps', 100000, '3Mbps', '', '', '', '', '', 0, 0, 0, 0, 0, 0),
(20, 'Paket 5 Mbps', '5 MBPS', 200000, '5 MBPS', '', '', '', '', '', 0, 0, 0, 0, 0, 0),
(21, 'Paket 7 Mbps', '7 Mbps', 300000, '7 Mbps', '', '', '', '', '', 0, 0, 0, 0, 0, 0),
(22, 'Paket 10 Mbps', '10 Mbps', 400000, '10 Mbps', '', '', '', '', '', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `paymentid` int(100) NOT NULL,
  `invoiceid` int(100) NOT NULL,
  `transactionid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` float NOT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payerid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payeremail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payerfname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payerlname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `saleid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `saletime` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`paymentid`, `invoiceid`, `transactionid`, `amount`, `currency`, `method`, `payerid`, `payeremail`, `payerfname`, `payerlname`, `status`, `saleid`, `saletime`) VALUES
(42, 6, 'N/A', 100000, 'Rp', 'cash', '', 'cash', '', '', 'Paid', '', '2021-11-09'),
(44, 9, 'N/A', 0, 'Rp', 'cash', '', 'cash', '', '', 'Paid', '', '2021-11-09');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(100) NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slogan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paymentmethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paymentacc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vat` float NOT NULL,
  `smsapi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `emailapi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `smsonbills` int(11) NOT NULL,
  `emailonbills` int(11) NOT NULL,
  `mkipadd` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mkuser` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mkpassword` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `copyright` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kenadekha` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `name`, `slogan`, `mobile`, `email`, `currency`, `paymentmethod`, `paymentacc`, `vat`, `smsapi`, `emailapi`, `smsonbills`, `emailonbills`, `mkipadd`, `mkuser`, `mkpassword`, `address`, `city`, `country`, `zip`, `location`, `copyright`, `kenadekha`) VALUES
(1, '20211108_090540_129724.png', '20181107_055321_241543.png', 'Angkasa-Net', '', '081384424055', 'jefri.anggarap@gmail.com', 'Rp', 'Tranfer', 'jefri.anggarap@gmail.com', 0, 'Nexmo', 'Mailgun', 1, 1, '192.168.0.3', 'admin', '123456', 'GRAND KAHURIPAN', 'Bogor', '', '16710', '', 'Copyright @ 2021', '');

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `smsid` int(11) NOT NULL,
  `time` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `to` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `messageid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `remainingbalance` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `messageprice` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `network` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(255) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `photo`, `name`, `mobile`, `area`) VALUES
(8, '20211108_064447_268674.png', 'Jefri Anggara Putra', '081384424055', 'Grand Kahuripan');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticketID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `ticketdate` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `adminID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticketcomment`
--

CREATE TABLE `ticketcomment` (
  `commentID` int(11) NOT NULL,
  `ticketID` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `commentdate` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `usertype` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ticketcomment`
--

INSERT INTO `ticketcomment` (`commentID`, `ticketID`, `comment`, `commentdate`, `usertype`) VALUES
(1, 1, 'Hi, we are checking the issue. \r\nThanks for being with us. ', '2018-08-15 10:16:25', ''),
(2, 1, 'Hi, we are checking the issue. \r\nThanks for being with us. ', '2018-08-15 10:17:26', ''),
(3, 1, 'dfsdfsdfsd', '2018-08-15 10:32:46', '1'),
(4, 1, 'dsfsdfsdf', '2018-08-15 10:50:53', '2');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `package` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `staff` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `join_date` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `advance` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `pppoe_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pppoe_password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pppoe_service` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pppoe_profile` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hotspot_server` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hotspot_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hotspot_pass` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hotspot_profile` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `photo`, `name`, `mobile`, `package`, `area`, `staff`, `amount`, `user_id`, `password`, `join_date`, `advance`, `email`, `pass`, `location`, `role`, `status`, `pppoe_name`, `pppoe_password`, `pppoe_service`, `pppoe_profile`, `hotspot_server`, `hotspot_name`, `hotspot_pass`, `hotspot_profile`) VALUES
(370, '', 'Rizki Key', '085368397120', '20', 'Cipari', '8', ' ', 'rizkikey@cipari', 'angkasa2021', '2021-10-24', ' ', 'rizkikey@site.com', 'e10adc3949ba59abbe56e057f20f883e', 'cipari', 'User', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(366, '20211108_064228_583056.png', 'jefri anggara putra', '081384424055', '18', 'Grang Kahuripan', '8', '', 'ID20211108', 'PASS20211108', '2021-11-08', '', 'jefriq@site.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'Singgalang', 'Admin', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(369, '', 'Munir', '087775918980', '19', 'Cipari', '8', ' ', 'munir@cipari', 'angkasa2021', '2021-11-18', ' ', 'munir@site.com', 'e10adc3949ba59abbe56e057f20f883e', 'cipari', 'User', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(367, '', 'sri', '089515592649', '20', 'Cipari', '8', ' ', 'sri@cipari', 'angkasa2021', '2021-09-20', ' ', 'sri@site.com', 'c734854d17f3aabb80b8135aafe8fee6', 'cipari', 'User', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(368, '', 'Alviandi', '087780285657', '20', 'Cipari', '8', ' ', 'alviandi@cipari', 'angkasa2021', '2021-09-25', ' ', 'alviandi@site.com', 'e10adc3949ba59abbe56e057f20f883e', 'cipari', 'User', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`billid`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`emailID`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoiceID`);

--
-- Indexes for table `m_pelanggan`
--
ALTER TABLE `m_pelanggan`
  ADD PRIMARY KEY (`no`) USING BTREE;

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`packid`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`paymentid`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`smsid`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticketID`);

--
-- Indexes for table `ticketcomment`
--
ALTER TABLE `ticketcomment`
  ADD PRIMARY KEY (`commentID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `balance`
--
ALTER TABLE `balance`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `billid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `emailID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoiceID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `m_pelanggan`
--
ALTER TABLE `m_pelanggan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `packid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2425;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `paymentid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `smsid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticketID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ticketcomment`
--
ALTER TABLE `ticketcomment`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
