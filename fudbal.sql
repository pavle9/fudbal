-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2020 at 11:07 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fudbal`
--

-- --------------------------------------------------------

--
-- Table structure for table `ekipa`
--

CREATE TABLE `ekipa` (
  `ID_EKIPE` int(11) NOT NULL,
  `NAZIV_EKIPE` varchar(30) NOT NULL,
  `BROJ_BODOVA` decimal(3,0) NOT NULL,
  `BROJ_POBJEDA` decimal(3,0) NOT NULL,
  `BROJ_NERJESENIH` decimal(3,0) NOT NULL,
  `BROJ_PORAZA` decimal(3,0) NOT NULL,
  `BROJ_DATIH_GOLOVA` decimal(3,0) NOT NULL,
  `BROJ_PRIMLJENIH_GOLOVA` decimal(3,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ekipa`
--

INSERT INTO `ekipa` (`ID_EKIPE`, `NAZIV_EKIPE`, `BROJ_BODOVA`, `BROJ_POBJEDA`, `BROJ_NERJESENIH`, `BROJ_PORAZA`, `BROJ_DATIH_GOLOVA`, `BROJ_PRIMLJENIH_GOLOVA`) VALUES
(1, 'Crvena Zvezda', '0', '0', '0', '0', '0', '0'),
(2, 'Napredak', '0', '0', '0', '0', '0', '0'),
(3, 'Partizan', '1', '0', '1', '0', '2', '2'),
(4, 'Vojvodina', '0', '0', '0', '0', '0', '0'),
(5, 'Rad', '1', '0', '1', '0', '1', '1'),
(6, 'Proleter', '1', '0', '1', '0', '1', '1'),
(7, 'Radnicki Nis', '0', '0', '0', '0', '0', '0'),
(8, 'Backa', '1', '0', '1', '0', '2', '2'),
(9, 'Vozdovac', '0', '0', '0', '0', '0', '0'),
(10, 'Cukaricki', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `sezona`
--

CREATE TABLE `sezona` (
  `ID_SEZONE` int(11) NOT NULL,
  `SEZONA` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sezona`
--

INSERT INTO `sezona` (`ID_SEZONE`, `SEZONA`) VALUES
(1, '2019/2020.');

-- --------------------------------------------------------

--
-- Table structure for table `utakmica`
--

CREATE TABLE `utakmica` (
  `ID_UTAKMICE` int(11) NOT NULL,
  `ID_SEZONE` int(11) NOT NULL,
  `REZULTAT` varchar(10) NOT NULL,
  `BROJ_KOLA` decimal(3,0) NOT NULL,
  `DATUM` date NOT NULL,
  `VRIJEME` time NOT NULL,
  `DOMACIN` varchar(20) NOT NULL,
  `GOST` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utakmica`
--

INSERT INTO `utakmica` (`ID_UTAKMICE`, `ID_SEZONE`, `REZULTAT`, `BROJ_KOLA`, `DATUM`, `VRIJEME`, `DOMACIN`, `GOST`) VALUES
(1, 1, '1-1', '1', '2020-05-04', '15:00:00', 'Proleter', 'Rad'),
(2, 1, '2-2', '1', '2020-05-04', '15:00:00', 'Partizan', 'Backa'),
(3, 1, '0-0', '1', '2020-05-04', '15:00:00', 'Crvena Zvezda', 'Vojvodina'),
(4, 1, '0-0', '1', '2020-05-04', '15:00:00', 'Cukaricki', 'Napredak'),
(5, 1, '0-0', '1', '2020-05-04', '15:00:00', 'Radnicki Nis', 'Vozdovac'),
(6, 1, '0-0', '2', '2020-05-11', '15:00:00', 'Backa', 'Rad'),
(7, 1, '0-0', '2', '2020-05-11', '15:00:00', 'Vojvodina', 'Proleter'),
(8, 1, '0-0', '2', '2020-05-11', '15:00:00', 'Napredak', 'Partizan'),
(9, 1, '0-0', '2', '2020-05-11', '15:00:00', 'Vozdovac', 'Crvena Zvezda'),
(10, 1, '0-0', '2', '2020-05-11', '15:00:00', 'Cukaricki', 'Radnicki Nis'),
(11, 1, '0-0', '3', '2020-05-18', '15:00:00', 'Backa', 'Vojvodina'),
(12, 1, '0-0', '3', '2020-05-18', '15:00:00', 'Rad', 'Napredak'),
(13, 1, '0-0', '3', '2020-05-18', '15:00:00', 'Proleter', 'Vozdovac'),
(14, 1, '0-0', '3', '2020-05-18', '15:00:00', 'Partizan', 'Cukaricki'),
(15, 1, '0-0', '3', '2020-05-18', '15:00:00', 'Radnicki Nis', 'Crvena Zvezda'),
(16, 1, '0-0', '4', '2020-05-25', '15:00:00', 'Napredak', 'Vojvodina'),
(17, 1, '0-0', '4', '2020-05-25', '15:00:00', 'Vozdovac', 'Backa'),
(18, 1, '0-0', '4', '2020-05-25', '15:00:00', 'Cukaricki', 'Rad'),
(19, 1, '0-0', '4', '2020-05-25', '15:00:00', 'Crvena Zvezda', 'Proleter'),
(20, 1, '0-0', '4', '2020-05-25', '15:00:00', 'Partizan', 'Radnicki Nis'),
(21, 1, '0-0', '5', '2020-06-01', '15:00:00', 'Napredak', 'Vozdovac'),
(22, 1, '0-0', '5', '2020-06-01', '15:00:00', 'Vojvodina', 'Cukaricki'),
(23, 1, '0-0', '5', '2020-06-01', '15:00:00', 'Backa', 'Crvena Zvezda'),
(24, 1, '0-0', '5', '2020-06-01', '15:00:00', 'Rad', 'Partizan'),
(25, 1, '0-0', '5', '2020-06-01', '15:00:00', 'Radnicki Nis', 'Proleter'),
(26, 1, '0-0', '6', '2020-06-08', '15:00:00', 'Cukaricki', 'Vozdovac'),
(27, 1, '0-0', '6', '2020-06-08', '15:00:00', 'Crvena Zvezda', 'Napredak'),
(28, 1, '0-0', '6', '2020-06-08', '15:00:00', 'Partizan', 'Vojvodina'),
(29, 1, '0-0', '6', '2020-06-08', '15:00:00', 'Proleter', 'Backa'),
(30, 1, '0-0', '6', '2020-06-08', '15:00:00', 'Rad', 'Radnicki Nis'),
(31, 1, '0-0', '7', '2020-06-15', '15:00:00', 'Cukaricki', 'Crvena Zvezda'),
(32, 1, '0-0', '7', '2020-06-15', '15:00:00', 'Vozdovac', 'Partizan'),
(33, 1, '0-0', '7', '2020-06-15', '15:00:00', 'Napredak', 'Proleter'),
(34, 1, '0-0', '7', '2020-06-15', '15:00:00', 'Vojvodina', 'Rad'),
(35, 1, '0-0', '7', '2020-06-15', '15:00:00', 'Radnicki Nis', 'Backa'),
(36, 1, '0-0', '8', '2020-06-22', '15:00:00', 'Partizan', 'Crvena Zvezda'),
(37, 1, '0-0', '8', '2020-06-22', '15:00:00', 'Proleter', 'Cukaricki'),
(38, 1, '0-0', '8', '2020-06-22', '15:00:00', 'Rad', 'Vozdovac'),
(39, 1, '0-0', '8', '2020-06-22', '15:00:00', 'Backa', 'Napredak'),
(40, 1, '0-0', '8', '2020-06-22', '15:00:00', 'Vojvodina', 'Radnicki Nis'),
(41, 1, '0-0', '9', '2020-06-29', '15:00:00', 'Partizan', 'Proleter'),
(42, 1, '0-0', '9', '2020-06-29', '15:00:00', 'Crvena Zvezda', 'Rad'),
(43, 1, '0-0', '9', '2020-06-29', '15:00:00', 'Cukaricki', 'Backa'),
(44, 1, '0-0', '9', '2020-06-29', '15:00:00', 'Vozdovac', 'Vojvodina'),
(45, 1, '0-0', '9', '2020-06-29', '15:00:00', 'Radnicki Nis', 'Napredak'),
(46, 1, '0-0', '10', '2020-07-06', '15:00:00', 'Rad', 'Proleter'),
(47, 1, '0-0', '10', '2020-07-06', '15:00:00', 'Backa', 'Partizan'),
(48, 1, '0-0', '10', '2020-07-06', '15:00:00', 'Vojvodina', 'Crvena Zvezda'),
(49, 1, '0-0', '10', '2020-07-06', '15:00:00', 'Napredak', 'Cukaricki'),
(50, 1, '0-0', '10', '2020-07-06', '15:00:00', 'Vozdovac', 'Radnicki Nis'),
(51, 1, '0-0', '11', '2020-07-13', '15:00:00', 'Rad', 'Backa'),
(52, 1, '0-0', '11', '2020-07-13', '15:00:00', 'Proleter', 'Vojvodina'),
(53, 1, '0-0', '11', '2020-07-13', '15:00:00', 'Partizan', 'Napredak'),
(54, 1, '0-0', '11', '2020-07-13', '15:00:00', 'Crvena Zvezda', 'Vozdovac'),
(55, 1, '0-0', '11', '2020-07-13', '15:00:00', 'Radnicki Nis', 'Cukaricki'),
(56, 1, '0-0', '12', '2020-07-20', '15:00:00', 'Vojvodina', 'Backa'),
(57, 1, '0-0', '12', '2020-07-20', '15:00:00', 'Napredak', 'Rad'),
(58, 1, '0-0', '12', '2020-07-20', '15:00:00', 'Vozdovac', 'Proleter'),
(59, 1, '0-0', '12', '2020-07-20', '15:00:00', 'Cukaricki', 'Partizan'),
(60, 1, '0-0', '12', '2020-07-20', '15:00:00', 'Crvena Zvezda', 'Radnicki Nis'),
(61, 1, '0-0', '13', '2020-07-27', '15:00:00', 'Vojvodina', 'Napredak'),
(62, 1, '0-0', '13', '2020-07-27', '15:00:00', 'Backa', 'Vozdovac'),
(63, 1, '0-0', '13', '2020-07-27', '15:00:00', 'Rad', 'Cukaricki'),
(64, 1, '0-0', '13', '2020-07-27', '15:00:00', 'Proleter', 'Crvena Zvezda'),
(65, 1, '0-0', '13', '2020-07-27', '15:00:00', 'Radnicki Nis', 'Partizan'),
(66, 1, '0-0', '14', '2020-08-03', '15:00:00', 'Vozdovac', 'Napredak'),
(67, 1, '0-0', '14', '2020-08-03', '15:00:00', 'Cukaricki', 'Vojvodina'),
(68, 1, '0-0', '14', '2020-08-03', '15:00:00', 'Crvena Zvezda', 'Backa'),
(69, 1, '0-0', '14', '2020-08-03', '15:00:00', 'Partizan', 'Rad'),
(70, 1, '0-0', '14', '2020-08-03', '15:00:00', 'Proleter', 'Radnicki Nis'),
(71, 1, '0-0', '15', '2020-08-10', '15:00:00', 'Vozdovac', 'Cukaricki'),
(72, 1, '0-0', '15', '2020-08-10', '15:00:00', 'Napredak', 'Crvena Zvezda'),
(73, 1, '0-0', '15', '2020-08-10', '15:00:00', 'Vojvodina', 'Partizan'),
(74, 1, '0-0', '15', '2020-08-10', '15:00:00', 'Backa', 'Proleter'),
(75, 1, '0-0', '15', '2020-08-10', '15:00:00', 'Radnicki Nis', 'Rad'),
(76, 1, '0-0', '16', '2020-08-17', '15:00:00', 'Crvena Zvezda', 'Cukaricki'),
(77, 1, '0-0', '16', '2020-08-17', '15:00:00', 'Partizan', 'Vozdovac'),
(78, 1, '0-0', '16', '2020-08-17', '15:00:00', 'Proleter', 'Napredak'),
(79, 1, '0-0', '16', '2020-08-17', '15:00:00', 'Rad', 'Vojvodina'),
(80, 1, '0-0', '16', '2020-08-17', '15:00:00', 'Backa', 'Radnicki Nis'),
(81, 1, '0-0', '17', '2020-08-24', '15:00:00', 'Crvena Zvezda', 'Partizan'),
(82, 1, '0-0', '17', '2020-08-24', '15:00:00', 'Cukaricki', 'Proleter'),
(83, 1, '0-0', '17', '2020-08-24', '15:00:00', 'Vozdovac', 'Rad'),
(84, 1, '0-0', '17', '2020-08-24', '15:00:00', 'Napredak', 'Backa'),
(85, 1, '0-0', '17', '2020-08-24', '15:00:00', 'Radnicki Nis', 'Vojvodina'),
(86, 1, '0-0', '18', '2020-08-31', '15:00:00', 'Proleter', 'Partizan'),
(87, 1, '0-0', '18', '2020-08-31', '15:00:00', 'Rad', 'Crvena Zvezda'),
(88, 1, '0-0', '18', '2020-08-31', '15:00:00', 'Backa', 'Cukaricki'),
(89, 1, '0-0', '18', '2020-08-31', '15:00:00', 'Vojvodina', 'Vozdovac'),
(90, 1, '0-0', '18', '2020-08-31', '15:00:00', 'Napredak', 'Radnicki Nis');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ekipa`
--
ALTER TABLE `ekipa`
  ADD PRIMARY KEY (`ID_EKIPE`);

--
-- Indexes for table `sezona`
--
ALTER TABLE `sezona`
  ADD PRIMARY KEY (`ID_SEZONE`);

--
-- Indexes for table `utakmica`
--
ALTER TABLE `utakmica`
  ADD PRIMARY KEY (`ID_UTAKMICE`),
  ADD KEY `FK_ODIGRANO` (`ID_SEZONE`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ekipa`
--
ALTER TABLE `ekipa`
  MODIFY `ID_EKIPE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sezona`
--
ALTER TABLE `sezona`
  MODIFY `ID_SEZONE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `utakmica`
--
ALTER TABLE `utakmica`
  MODIFY `ID_UTAKMICE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `utakmica`
--
ALTER TABLE `utakmica`
  ADD CONSTRAINT `FK_ODIGRANO` FOREIGN KEY (`ID_SEZONE`) REFERENCES `sezona` (`ID_SEZONE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
