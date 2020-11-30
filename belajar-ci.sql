-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for belajar-ci
CREATE DATABASE IF NOT EXISTS `belajar-ci` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `belajar-ci`;

-- Dumping structure for table belajar-ci.berita
CREATE TABLE IF NOT EXISTS `berita` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `judulberita` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tglposting` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `foto` varchar(50) NOT NULL,
  `isiberita` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table belajar-ci.berita: ~1 rows (approximately)
/*!40000 ALTER TABLE `berita` DISABLE KEYS */;
INSERT INTO `berita` (`id`, `judulberita`, `author`, `tglposting`, `foto`, `isiberita`) VALUES
	(1, 'Tes Berita', 'Alif PD', '2020-11-29 19:52:31', '34939.jpg', 'Tes bikin berita gan');
/*!40000 ALTER TABLE `berita` ENABLE KEYS */;

-- Dumping structure for table belajar-ci.halaman
CREATE TABLE IF NOT EXISTS `halaman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judulhalaman` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `isihalaman` varchar(255) NOT NULL,
  `tglposting` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table belajar-ci.halaman: ~1 rows (approximately)
/*!40000 ALTER TABLE `halaman` DISABLE KEYS */;
INSERT INTO `halaman` (`id`, `judulhalaman`, `author`, `isihalaman`, `tglposting`) VALUES
	(2, 'Tes gan', 'Alif PD', 'Help gan', '2020-11-29 19:30:15');
/*!40000 ALTER TABLE `halaman` ENABLE KEYS */;

-- Dumping structure for table belajar-ci.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `name` varchar(100) NOT NULL COMMENT 'Name',
  `email` varchar(255) NOT NULL COMMENT 'Email Address',
  `contact_no` varchar(50) NOT NULL COMMENT 'Contact No',
  `password` varchar(200) NOT NULL COMMENT 'password',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Created date',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COMMENT='datatable demo table';

-- Dumping data for table belajar-ci.users: ~6 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `contact_no`, `password`, `created_at`) VALUES
	(7, 'Manager', 'manager@test.com', '9000000007', '', '2019-01-07 00:00:00'),
	(8, 'John', 'john@test.com', '9000000055', '', '2019-01-08 00:00:00'),
	(9, 'Merry', 'merry@test.com', '9000000088', '', '2019-01-09 00:00:00'),
	(10, 'Keliv', 'kelvin@test.com', '9000550088', '', '2019-01-10 00:00:00'),
	(12, 'Mark', 'mark@test.com', '9050550998', '', '2019-01-12 00:00:00'),
	(24, 'alif', 'anto123@gmail.com', '1231321231', '$2y$10$MB6Rz6fj5DyVzhzb5wkiQeGXEj7Tr5Egj88kUTs7yqpIrtA6EvAT2', '2020-11-29 19:49:20');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
