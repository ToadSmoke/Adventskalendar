-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 10. Nov 2023 um 14:54
-- Server-Version: 10.4.28-MariaDB
-- PHP-Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `adventskalender`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `persons`
--

CREATE TABLE `persons` (
  `name` varchar(255) NOT NULL,
  `end_name` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `persons`
--

INSERT INTO `persons` (`name`, `end_name`, `date`) VALUES
('Eetu', 'Ruben', '14-12-2023'),
('Oma', 'Peter', '20-12-2023'),
('Tante Eva', 'Doro', '21-12-2023'),
('Jakob', 'Renate', '01-12-2023'),
('Christiane', 'Arne', '05-12-2023'),
('Jule', 'Gina', '09-12-2023'),
('Renate', 'Christian', '18-12-2023'),
('Lena', 'Till', '12-12-2023'),
('Doro', 'Tobias', '13-12-2023'),
('Jürgen', 'Jakob', '19-12-2023'),
('Ruben', 'Christiane', '07-12-2023'),
('Till', 'Anna', '08-12-2023'),
('Anneke', 'Eetu', '17-12-2023'),
('Gina', 'Oma', '06-12-2023'),
('Jonathan', 'Lena', '02-12-2023'),
('Tobias', 'Anneke', '10-12-2023'),
('Arne', 'Johanne', '16-12-2023'),
('Christian', 'Tante Eva', '15-12-2023'),
('Johanne', 'Jule', '03-12-2023'),
('Peter', 'Jürgen', '04-12-2023'),
('Anna', 'Jonathan', '11-12-2023');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
