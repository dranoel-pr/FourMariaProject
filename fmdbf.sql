-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2020 at 11:17 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fmdbf`
--

-- --------------------------------------------------------

--
-- Table structure for table `client_table`
--

CREATE TABLE IF NOT EXISTS `client_table` (
  `CCODE` varchar(4) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `ADD` varchar(50) NOT NULL,
  `NUMBER` varchar(11) NOT NULL,
  PRIMARY KEY (`CCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_table`
--

INSERT INTO `client_table` (`CCODE`, `NAME`, `ADD`, `NUMBER`) VALUES
('AGX', 'AGX EXPRESSION', '8888 ILOG ST TAGABUNDOK', '12334556789');

-- --------------------------------------------------------

--
-- Table structure for table `refference_table`
--

CREATE TABLE IF NOT EXISTS `refference_table` (
  `OR` varchar(4) NOT NULL,
  `REF` varchar(4) NOT NULL,
  `ABF` varchar(9) NOT NULL,
  `TRK` varchar(9) NOT NULL,
  `VATABLE` varchar(9) NOT NULL,
  PRIMARY KEY (`REF`),
  KEY `OR` (`OR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `refference_table`
--

INSERT INTO `refference_table` (`OR`, `REF`, `ABF`, `TRK`, `VATABLE`) VALUES
('001', '001', '100', '', '150');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_table`
--

CREATE TABLE IF NOT EXISTS `transaction_table` (
  `OR` varchar(4) NOT NULL,
  `DATE` date NOT NULL,
  `CCODE` varchar(4) NOT NULL,
  `TOTAL` varchar(9) NOT NULL,
  PRIMARY KEY (`OR`),
  KEY `CCODE` (`CCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_table`
--

INSERT INTO `transaction_table` (`OR`, `DATE`, `CCODE`, `TOTAL`) VALUES
('001', '2020-02-01', 'AGX', '1000');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `refference_table`
--
ALTER TABLE `refference_table`
  ADD CONSTRAINT `FOR` FOREIGN KEY (`OR`) REFERENCES `transaction_table` (`OR`);

--
-- Constraints for table `transaction_table`
--
ALTER TABLE `transaction_table`
  ADD CONSTRAINT `FCCODE` FOREIGN KEY (`CCODE`) REFERENCES `client_table` (`CCODE`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
