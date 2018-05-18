-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.1.29-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for dbpegawai
CREATE DATABASE IF NOT EXISTS `dbpegawai` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dbpegawai`;

-- Dumping structure for table dbpegawai.jabatan
CREATE TABLE IF NOT EXISTS `jabatan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jabatan` varchar(50) DEFAULT NULL,
  `gaji_pokok` double DEFAULT NULL,
  `tunjangan` double DEFAULT NULL,
  `uang_transport` double DEFAULT NULL,
  `uang_makan` double DEFAULT NULL,
  `lembur` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table dbpegawai.jabatan: ~7 rows (approximately)
DELETE FROM `jabatan`;
/*!40000 ALTER TABLE `jabatan` DISABLE KEYS */;
INSERT INTO `jabatan` (`id`, `nama_jabatan`, `gaji_pokok`, `tunjangan`, `uang_transport`, `uang_makan`, `lembur`) VALUES
	(1, 'Manager', 7500000, 1000000, 500000, 500000, 0),
	(2, 'HRD', 5000000, 500000, 300000, 200000, 25000),
	(3, 'Head Purchasing', 4000000, 250000, 250000, 200000, 25000),
	(4, 'Head Finance', 4000000, 250000, 250000, 200000, 25000),
	(5, 'Head Marketing', 4000000, 250000, 250000, 200000, 0),
	(6, 'Marketing', 3000000, 200000, 200000, 150000, 0),
	(7, 'Staff', 2500000, 200000, 2000000, 150000, 25000);
/*!40000 ALTER TABLE `jabatan` ENABLE KEYS */;

-- Dumping structure for table dbpegawai.pegawai
CREATE TABLE IF NOT EXISTS `pegawai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jabatan_id` int(11) NOT NULL,
  `nama_pegawai` varchar(50) DEFAULT NULL,
  `alamat` text,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_pegawai_jabatan` (`jabatan_id`),
  CONSTRAINT `FK_pegawai_jabatan` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatan` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table dbpegawai.pegawai: ~7 rows (approximately)
DELETE FROM `pegawai`;
/*!40000 ALTER TABLE `pegawai` DISABLE KEYS */;
INSERT INTO `pegawai` (`id`, `jabatan_id`, `nama_pegawai`, `alamat`, `tempat_lahir`, `tgl_lahir`, `email`, `telepon`) VALUES
	(1, 1, 'Petrus Budiman Saragih', 'Jl Alam Sutera Tangerang', 'Pontianak', '1975-08-10', 'Petrus@gmail.com', '08121045123'),
	(2, 4, 'Siska', 'Jl Teluk Gong Raya', 'Medan', '1960-04-10', 'Siska@gmail.com', '08131457876'),
	(3, 2, 'Titin', 'Jl Bandengan Utara', 'Jakarta', '1961-05-14', 'Titin@gmail.com', '0216661098'),
	(4, 3, 'Ridwan', 'Jl Kampung Gusti', 'Jakarta', '1980-01-26', 'Ridwan@gmail.com', '08387165789'),
	(5, 5, 'Sugiarti', 'Jl Rawamangun', 'Jakarta', '1966-02-12', 'Sugiarti@gmail.com', '08581234567'),
	(6, 6, 'Lila', 'Jl Depok Bogor', 'Jakarta', '1993-05-13', 'Lila@gmail.com', '08197654789'),
	(7, 7, 'Mailinda', 'Jl Bogor', 'Jakarta', '1993-09-17', 'Mailinda@gmail.com', '021898298');
/*!40000 ALTER TABLE `pegawai` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
