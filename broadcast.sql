-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2020 at 08:50 AM
-- Server version: 5.5.36
-- PHP Version: 5.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `brodcast`
--

-- --------------------------------------------------------

--
-- Table structure for table `broadcast`
--

CREATE TABLE IF NOT EXISTS `broadcast` (
  `bc_id` int(3) NOT NULL AUTO_INCREMENT,
  `id_pesan` varchar(6) NOT NULL,
  `bc_to` varchar(15) NOT NULL,
  `bc_ind` int(3) NOT NULL,
  `bc_tanggal` datetime NOT NULL,
  PRIMARY KEY (`bc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `broadcast`
--

INSERT INTO `broadcast` (`bc_id`, `id_pesan`, `bc_to`, `bc_ind`, `bc_tanggal`) VALUES
(1, 'PSN001', 'Karyawan', 0, '2020-07-08 13:39:36'),
(2, 'PSN001', 'Sekretaris', 0, '2020-07-08 13:39:36'),
(3, 'PSN001', 'Managjer', 0, '2020-07-08 13:39:36'),
(4, 'PSN001', 'Manajer', 0, '2020-07-08 13:39:36');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE IF NOT EXISTS `pesan` (
  `id` varchar(6) NOT NULL,
  `pesan` text NOT NULL,
  `desk` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id`, `pesan`, `desk`) VALUES
('PSN001', 'rapat', 'rapat');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `usr_id` int(3) NOT NULL AUTO_INCREMENT,
  `usr_nama` varchar(45) NOT NULL,
  `usr_email` varchar(45) NOT NULL,
  `usr_username` varchar(35) NOT NULL,
  `usr_password` varchar(50) NOT NULL,
  `usr_jabatan` varchar(15) NOT NULL,
  `usr_tgl` datetime NOT NULL,
  PRIMARY KEY (`usr_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`usr_id`, `usr_nama`, `usr_email`, `usr_username`, `usr_password`, `usr_jabatan`, `usr_tgl`) VALUES
(1, 'Rizal', 'rizal@gmail.com', 'rizal', '584ffd958df0120b7b1e2a122302c8099b6bdbe8', 'Karyawan', '2020-07-01 00:00:00'),
(2, 'Rida', 'rida@gmail.com', 'rida', 'c26f488d24cdcc7740c8579052b4080ff047ce70', 'Karyawan', '2020-07-01 00:00:00'),
(3, 'Agus', 'ags@gmail.com', 'agus', '0525885565bb6a150db63f19bf42f11bd2db4702', 'Karyawan', '2020-07-01 00:00:00'),
(4, 'Vina', 'vina@gmail.com', 'vina', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Sekretaris', '2020-07-04 00:00:00'),
(5, 'Noni', 'nn@gmail.com', 'noni', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Sekretaris', '2020-07-04 00:00:00'),
(6, 'Dodi S', 'dodi@gmail.com', 'dodi', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Managjer', '2020-07-06 00:00:00'),
(7, 'Ridwan', 'rdw@gmail.com', 'ridwan', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Manajer', '2020-07-07 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
