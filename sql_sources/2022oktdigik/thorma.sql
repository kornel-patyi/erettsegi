-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Már 10. 08:41
-- Kiszolgáló verziója: 10.4.22-MariaDB
-- PHP verzió: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `thorma`
--
CREATE DATABASE IF NOT EXISTS `thorma` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE `thorma`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `festok`
--

CREATE TABLE `festok` (
  `azon` int(10) NOT NULL,
  `nev` varchar(50) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `szuletett` int(10) NOT NULL,
  `meghalt` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `festok`
--

INSERT INTO `festok` (`azon`, `nev`, `szuletett`, `meghalt`) VALUES
(103, 'Thorma János', 1870, 1937),
(107, 'Hollósy Simon', 1857, 1918),
(111, 'Ferenczy Károly', 1862, 1917),
(115, 'Iványi Grünwald Béla', 1867, 1940),
(119, 'Réti István', 1872, 1945),
(121, 'Balla Béla', 1882, 1965),
(124, 'Bernáth Aurél', 1895, 1982),
(127, 'Boldizsár István', 1897, 1984),
(130, 'Boromissza Tibor', 1880, 1960),
(133, 'Börtsök Samu', 1881, 1931),
(135, 'Orbán Dezső', 1884, 1986),
(137, 'Jándi Dávid', 1893, 1944),
(140, 'Kádár Géza', 1878, 1952),
(143, 'Kmetty János', 1889, 1975),
(145, 'Krizsán János', 1886, 1948),
(149, 'Mikola András', 1884, 1970),
(151, 'Mund Hugó', 1892, 1961),
(155, 'Nagy Oszkár', 1893, 1965),
(157, 'Pirk János', 1903, 1989),
(160, 'Pászk Jenő', 1895, 1948),
(163, 'Perlrott Csaba Vilmos', 1880, 1955),
(165, 'Pittner Olivér', 1911, 1971),
(167, 'Szőnyi István', 1894, 1960),
(169, 'Zsögödi Nagy Imre', 1893, 1976),
(172, 'Ziffer Sándor', 1880, 1962);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kepek`
--

CREATE TABLE `kepek` (
  `leltar` varchar(50) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `fazon` int(10) NOT NULL,
  `cim` varchar(50) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `keszult` int(10) NOT NULL,
  `anyag` varchar(50) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `technika` varchar(50) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `szeles` float(10,1) NOT NULL,
  `magas` float(10,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `kepek`
--

INSERT INTO `kepek` (`leltar`, `fazon`, `cim`, `keszult`, `anyag`, `technika`, `szeles`, `magas`) VALUES
('2003.39.1.', 103, 'Cseresznyeszedés', 1929, 'vászon', 'olaj', 70.0, 80.0),
('2004.9.1.', 103, 'Berki Antal és felesége portréja', 1895, 'vászon', 'olaj', 150.0, 125.0),
('2005.19.1.', 103, 'A nagybányai köszöntő ember', 1928, 'vászon', 'olaj', 56.5, 68.0),
('2010.6.1.', 103, 'Falusi asszonyok (Cigányutca)', 1907, 'vászon', 'olaj', 85.5, 109.0),
('2017.6.10.', 103, 'Hazatérő', 1912, 'vászon', 'olaj', 80.0, 94.0),
('2017.6.12.', 103, 'Virágzó almafa (Príma impresszió)', 1929, 'fa', 'olaj', 67.5, 56.0),
('2017.6.13.', 103, 'Fürdőzők', 1933, 'vászon', 'olaj', 150.0, 119.0),
('2017.6.15.', 103, 'Tavaszi szántás', 1930, 'vászon', 'olaj', 120.0, 100.0),
('2017.6.16.', 103, 'Napraforgós csendélet', 1907, 'vászon', 'olaj', 63.5, 79.0),
('2017.6.17.', 103, 'Párizsi lány', 1907, 'vászon', 'olaj', 32.5, 38.0),
('2017.6.19.', 107, 'Az apostol', 1903, 'vászon', 'olaj', 79.5, 58.0),
('2017.6.20.', 111, 'Borús táj fürdőző férfival', 1913, 'vászon', 'olaj', 85.5, 71.0),
('2017.6.21.', 111, 'Pieta', 1916, 'vászon', 'olaj', 116.0, 86.5),
('2017.6.22.', 111, 'Női akt zöld háttérrel', 1910, 'vászon', 'olaj', 140.2, 119.0),
('2017.6.23.', 115, 'Cigánylányok a Zazar-parton', 1910, 'vászon', 'olaj', 80.0, 59.5),
('2017.6.24.', 115, 'Téli táj', 1900, 'vászon', 'olaj', 103.0, 80.0),
('2017.6.25.', 119, 'Ősz a völgyben', 1898, 'vászon', 'olaj', 96.0, 103.0),
('2017.6.26.', 119, 'Olvasó nő lámpánál', 1895, 'fa', 'olaj', 56.5, 67.0),
('2017.6.27.', 121, 'Udvaron', 1908, 'karton', 'olaj', 38.0, 305.0),
('2017.6.28.', 124, 'Nagybányai piactér', 1916, 'vászon', 'olaj', 56.5, 49.5),
('2017.6.29.', 127, 'Almaszedők', 1930, 'fa', 'olaj', 54.0, 47.5),
('2017.6.3.', 103, 'Fürdés után', 1928, 'vászon', 'olaj', 101.0, 80.5),
('2017.6.30.', 130, 'Szénavásár Nagybányán', 1912, 'vászon', 'olaj', 70.5, 50.2),
('2017.6.31.', 133, 'A Kereszthegy télen', 1907, 'vászon', 'olaj', 92.0, 73.0),
('2017.6.33.', 135, 'Folyóparti dombok', 1920, 'fa', 'olaj', 30.0, 24.5),
('2017.6.35.', 137, 'Táj házakkal', 1929, 'vászon', 'olaj', 64.5, 50.5),
('2017.6.36.', 140, 'Nagybánya', 1911, 'vászon', 'olaj', 79.0, 71.0),
('2017.6.39.', 143, 'A nagybányai református templom', 1930, 'vászon', 'olaj', 46.0, 38.0),
('2017.6.40.', 145, 'Virághegy', 1920, 'vászon', 'olaj', 74.0, 73.5),
('2017.6.43', 149, 'Nagybányai főtér', 1906, 'vászon', 'olaj', 102.5, 75.0),
('2017.6.44.', 151, 'Nagybányai főtér', 1920, 'vászon', 'olaj', 100.0, 70.0),
('2017.6.45.', 151, 'Lápospart', 1927, 'vászon', 'olaj', 66.5, 54.5),
('2017.6.46.', 155, 'A Nagypénzverő utca', 1929, 'fa', 'olaj', 100.0, 69.5),
('2017.6.47.', 157, 'Kert virágokkal', 1944, 'papír', 'olaj', 43.5, 46.0),
('2017.6.48.', 160, 'Erdő belseje', 1943, 'vászon', 'olaj', 99.5, 69.5),
('2017.6.49.', 163, 'Ruhateregetők', 1905, 'vászon', 'olaj', 121.0, 110.0),
('2017.6.50.', 165, 'Munkások', 1935, 'fa', 'olaj', 69.5, 89.5),
('2017.6.55.', 167, 'Napsütötte udvar', 1926, 'vászon', 'olaj', 55.0, 68.0),
('2017.6.56.', 169, 'Dombos táj', 1926, 'vászon', 'olaj', 65.5, 60.5),
('2017.6.57.', 172, 'Veresvíz télen', 1920, 'vászon', 'olaj', 128.0, 95.0),
('2017.6.58.', 172, 'Nyár a libamezőn', 1926, 'vászon', 'olaj', 65.5, 98.5),
('2017.6.59.', 172, 'Lányok a nagybányai téren', 1942, 'vászon', 'olaj', 99.5, 77.5),
('2017.6.60.', 145, 'Festőnő', 1910, 'vászon', 'olaj', 28.0, 23.8),
('2017.6.8.', 103, 'Tavasz', 1915, 'vászon', 'olaj', 60.0, 75.0),
('2018.1.1.', 103, 'Bálint a nagybányai dalos ember', 1928, 'fa', 'olaj', 49.5, 69.0),
('62.62.1.', 103, 'Gesztenyés', 1926, 'vászon', 'olaj', 94.0, 74.0),
('68.1.1.', 103, 'Festőnő', 1934, 'vászon', 'olaj', 100.0, 80.0),
('68.1.2.', 103, 'Birsalmaszedés', 1929, 'vászon', 'olaj', 69.0, 56.0),
('70.24.1.', 103, 'Domboldal', 1934, 'vászon', 'olaj', 99.0, 92.0),
('70.24.2.', 103, 'Húsvéti kenyérszentelés', 1910, 'vászon', 'tempera', 175.0, 130.0);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `festok`
--
ALTER TABLE `festok`
  ADD PRIMARY KEY (`azon`);

--
-- A tábla indexei `kepek`
--
ALTER TABLE `kepek`
  ADD PRIMARY KEY (`leltar`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
