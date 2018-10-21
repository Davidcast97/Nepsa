-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2018 at 08:00 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nepsa`
--

-- --------------------------------------------------------

--
-- Table structure for table `actividadmantenimiento`
--

CREATE TABLE `actividadmantenimiento` (
  `idActividadMantenimiento` int(11) NOT NULL,
  `idTipoMantenimiento` int(11) NOT NULL,
  `descripcion` text,
  `fecha` varchar(10) DEFAULT NULL,
  `kilometraje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `camion`
--

CREATE TABLE `camion` (
  `idCamion` int(11) NOT NULL,
  `modelo` varchar(4) NOT NULL,
  `motor` varchar(20) NOT NULL,
  `kilometraje` int(11) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `conductor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tipomantenimiento`
--

CREATE TABLE `tipomantenimiento` (
  `idTipoMantenimiento` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actividadmantenimiento`
--
ALTER TABLE `actividadmantenimiento`
  ADD PRIMARY KEY (`idActividadMantenimiento`),
  ADD KEY `idTipoMantenimiento` (`idTipoMantenimiento`);

--
-- Indexes for table `camion`
--
ALTER TABLE `camion`
  ADD PRIMARY KEY (`idCamion`);

--
-- Indexes for table `tipomantenimiento`
--
ALTER TABLE `tipomantenimiento`
  ADD PRIMARY KEY (`idTipoMantenimiento`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actividadmantenimiento`
--
ALTER TABLE `actividadmantenimiento`
  MODIFY `idActividadMantenimiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tipomantenimiento`
--
ALTER TABLE `tipomantenimiento`
  MODIFY `idTipoMantenimiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actividadmantenimiento`
--
ALTER TABLE `actividadmantenimiento`
  ADD CONSTRAINT `actividadmantenimiento_ibfk_1` FOREIGN KEY (`idTipoMantenimiento`) REFERENCES `tipomantenimiento` (`idTipoMantenimiento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
