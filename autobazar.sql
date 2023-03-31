-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: St 22.Mar 2023, 19:07
-- Verzia serveru: 10.4.27-MariaDB
-- Verzia PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáza: `autobazar`
--
CREATE DATABASE IF NOT EXISTS `autobazar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `autobazar`;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `vehicle`
--

CREATE TABLE `vehicle` (
  `id` int(11) NOT NULL,
  `znacka` varchar(64) NOT NULL,
  `model` varchar(64) NOT NULL,
  `najazdene_km` int(11) NOT NULL,
  `cena` int(11) NOT NULL,
  `prevodovka` varchar(16) NOT NULL,
  `typ_paliva` varchar(16) NOT NULL,
  `vykon` int(11) NOT NULL,
  `karoseria` varchar(32) NOT NULL,
  `majitel` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Sťahujem dáta pre tabuľku `vehicle`
--

INSERT INTO `vehicle` (`id`, `znacka`, `model`, `najazdene_km`, `cena`, `prevodovka`, `typ_paliva`, `vykon`, `karoseria`, `majitel`) VALUES
(1, 'Skoda', 'Octavia', 530234, 16000, 'Automat', 'Benzin', 0, 'Combi', 'Peter Panisz'),
(3, 'Test', 'asd', 1, 1, 'Manual', 'Nafta', 0, 'asd', 'asd'),
(4, 'Audi', 'A4', 43921, 30000, 'Automat', 'Nafta', 0, 'Sedan', 'Peter Nagy'),
(5, 'Dodge', 'Charger', 25000, 55000, 'Automat', 'Benzin', 523, 'Sedan', 'Denis Cico'),
(6, 'Audi', 'A3', 59000, 20000, 'Automat', 'Benzin', 167, 'Sportback', 'Richard Bernath');

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
