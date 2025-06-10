-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 10, 2025 at 06:45 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kwiaciarnia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bukiet`
--

CREATE TABLE `bukiet` (
  `id_bukietu` int(3) NOT NULL,
  `id_kwiatu` int(3) NOT NULL,
  `data` date NOT NULL,
  `cena` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bukiet`
--

INSERT INTO `bukiet` (`id_bukietu`, `id_kwiatu`, `data`, `cena`) VALUES
(4, 1, '2025-06-10', 30),
(5, 1, '2025-06-10', 10),
(6, 2, '2025-06-10', 50),
(7, 3, '2025-06-10', 24),
(8, 4, '2025-06-10', 105),
(9, 5, '2025-06-10', 36),
(10, 2, '2025-06-10', 10);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `bukiet`
--
ALTER TABLE `bukiet`
  ADD PRIMARY KEY (`id_bukietu`),
  ADD KEY `id_kwiatu` (`id_kwiatu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bukiet`
--
ALTER TABLE `bukiet`
  MODIFY `id_bukietu` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bukiet`
--
ALTER TABLE `bukiet`
  ADD CONSTRAINT `bukiet_ibfk_1` FOREIGN KEY (`id_kwiatu`) REFERENCES `kwiaty` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
