-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Feb 15. 16:34
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `szinesz`
--
CREATE DATABASE IF NOT EXISTS `szinesz` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `szinesz`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `hallgato`
--

CREATE TABLE `hallgato` (
  `id` int(4) DEFAULT NULL,
  `osztalyid` int(2) DEFAULT NULL,
  `nev` varchar(32) DEFAULT NULL,
  `ferfi` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- A tábla adatainak kiíratása `hallgato`
--

INSERT INTO `hallgato` (`id`, `osztalyid`, `nev`, `ferfi`) VALUES
(1, 76, 'Somfai Margit (Ulbrich Józsefné)', 0),
(2, 34, 'Bardóczy Attila', -1),
(3, 76, 'Veszelei Mária', 0),
(4, 93, 'Rada Bálint', -1),
(5, 84, 'Ruzsik Katalin', 0),
(6, 43, 'Sárvári Győző', -1),
(7, 69, 'Sólyom Ildikó', 0),
(8, 66, 'Nagy Anna', 0),
(9, 32, 'Oláh Bódi Éva', 0),
(10, 64, 'Meszléry Judit', 0),
(11, 37, 'Dezsényi Péter', -1),
(12, 17, 'Vasvári Emese', 0),
(13, 11, 'Benkő Nóra', 0),
(14, 53, 'Reviczky Gábor', -1),
(15, 53, 'Balázs Piri Zoltán', -1),
(16, 28, 'Spolarics Andrea', 0),
(17, 55, 'Simon Péter', -1),
(18, 71, 'Fonyó József', -1),
(19, 17, 'Király Attila', -1),
(20, 70, 'Király Levente', -1),
(21, 36, 'Karsai István', -1),
(22, 18, 'Juhász Judit', 0),
(23, 59, 'Benedek Miklós', -1),
(24, 12, 'Tallián Mariann', 0),
(25, 66, 'Harsányi Frigyes', -1),
(26, 28, 'Kiss Erika', 0),
(27, 85, 'Elek Ferenc', -1),
(28, 23, 'Háda János', -1),
(29, 77, 'Lászlóffy Kata', 0),
(30, 33, 'Hirtling István', -1),
(31, 79, 'Keres Emil', -1),
(32, 92, 'Tóth János', -1),
(33, 6, 'Janicsek Péter', -1),
(34, 2, 'Cseh Judit', 0),
(35, 77, 'Prókai István', -1),
(36, 80, 'Nagy Margit', 0),
(37, 10, 'Szabó Zoltán', -1),
(38, 10, 'Tari Teréz', 0),
(39, 30, 'Palásthy Bea', 0),
(40, 50, 'Helyey László', -1),
(41, 63, 'Vajda Márta', 0),
(42, 83, 'Viola Mihály', -1),
(43, 92, 'Zsigmond Emőke', 0),
(44, 82, 'Inke László', -1),
(45, 40, 'Karancz Katalin', 0),
(46, 53, 'Markovits Borbála', 0),
(47, 57, 'Fenyő Ervin', -1),
(48, 1, 'Martinovics Dorina', 0),
(49, 4, 'Ubrankovics Júlia', 0),
(50, 39, 'Fehér Anna', 0),
(51, 59, 'Benkő Péter', -1),
(52, 5, 'Kovács Ádám', -1),
(53, 45, 'Faragó József', -1),
(54, 87, 'Kelemen Csaba', -1),
(55, 85, 'Rába Roland', -1),
(56, 81, 'Kiszely Tibor', -1),
(57, 20, 'Söptei Andrea', 0),
(58, 21, 'Széles László', -1),
(59, 53, 'Borbás Gabriella', 0),
(60, 58, 'Bodnár Erika', 0),
(61, 29, 'Vajdai Vilmos', -1),
(62, 81, 'Galamb Zoltán', -1),
(63, 83, 'Kárpáthy Zoltán', -1),
(64, 20, 'Stohl András', -1),
(65, 8, 'Chován Gábor', -1),
(66, 7, 'Mészáros Béla', -1),
(67, 3, 'Mészáros Piroska', 0),
(68, 22, 'Kökényessy Ágnes', 0),
(69, 41, 'Dörner György', -1),
(70, 5, 'Majorfalvi Bálint', -1),
(71, 78, 'Sinkovits Imre', -1),
(72, 80, 'Ferrari Violetta', 0),
(73, 80, 'Ambrus Edit', 0),
(74, 15, 'Anger Zsolt', -1),
(75, 59, 'Pálos Zsuzsa', 0),
(76, 32, 'Tunyogi Péter', -1),
(77, 15, 'Kéry Kitty', 0),
(78, 49, 'Dancsházi Hajnal', 0),
(79, 3, 'Szűcs Péter Pál', -1),
(80, 1, 'Tompa Ádám', -1),
(81, 67, 'Sinkó László', -1),
(82, 34, 'Eszenyi Enikő', 0),
(83, 7, 'Kovács Patrícia', 0),
(84, 79, 'Szirtes Ádám', -1),
(85, 3, 'Adorjáni Bálint', -1),
(86, 93, 'Király Dániel', -1),
(87, 38, 'Kulka János', -1),
(88, 89, 'Bálint András', -1),
(89, 77, 'Kovács János', -1),
(90, 47, 'Mihályi Győző', -1),
(91, 86, 'Tóth Gáspár András', -1),
(92, 33, 'Juhász Róza', 0),
(93, 11, 'Kolovratnik Krisztián', -1),
(94, 1, 'Andrássy Máté', -1),
(95, 77, 'Szénási Ernő', -1),
(96, 15, 'Németh Mónika', 0),
(97, 76, 'Brunda Mihály', -1),
(98, 21, 'Náray Erika', 0),
(99, 72, 'Garas Dezső', -1),
(100, 75, 'Simon Erika', 0),
(101, 66, 'S. Tóth József', -1),
(102, 59, 'Balázsovits Lajos', -1),
(103, 37, 'Németh János', -1),
(104, 39, 'Szalma Tamás', -1),
(105, 47, 'Fehér Ildikó', 0),
(106, 28, 'Bagó Bertalan', -1),
(107, 70, 'Vetró Margit', 0),
(108, 89, 'Pálfi Gabriella', 0),
(109, 50, 'Soproni Ágnes', 0),
(110, 82, 'Gáti Vilma', 0),
(111, 33, 'Kerekes László', -1),
(112, 77, 'Papp Teri', 0),
(113, 6, 'Herczeg Adrienn', 0),
(114, 88, 'Básti Juli', 0),
(115, 33, 'Kolos István', -1),
(116, 67, 'Karikás Péter', -1),
(117, 10, 'Pavletits Béla', -1),
(118, 24, 'Szabó Sipos Barnabás', -1),
(119, 76, 'Hegedűs Erzsébet', 0),
(120, 74, 'Halász László', -1),
(121, 74, 'Szerencsi Hugó', -1),
(122, 82, 'Kőszegi Gyula', -1),
(123, 21, 'Illés Györgyi', 0),
(124, 77, 'Hacser Józsa', 0),
(125, 8, 'Tóth Attila', -1),
(126, 14, 'Kovács Vanda', 0),
(127, 16, 'Naszlady Éva', 0),
(128, 74, 'Dariday Róbert', -1),
(129, 80, 'Taby Márta', 0),
(130, 63, 'Szakács Eszter', 0),
(131, 89, 'Tóth Sándor', -1),
(132, 5, 'Józan László', -1),
(133, 16, 'Schramek Géza', -1),
(134, 8, 'Szanitter Dávid', -1),
(135, 55, 'Áron László', -1),
(136, 63, 'Voith Ági', 0),
(137, 70, 'Csűrös Karola', 0),
(138, 15, 'Marozsán Erika', 0),
(139, 14, 'Hevér Gábor', -1),
(140, 47, 'Vitai András', -1),
(141, 76, 'Csihák László', -1),
(142, 29, 'Varga Zoltán', -1),
(143, 1, 'Nemes Vanda', 0),
(144, 22, 'Kelemen József', -1),
(145, 21, 'Kocsis Marianna', 0),
(146, 89, 'Tóth Gabriella', 0),
(147, 70, 'Polgár Géza', -1),
(148, 22, 'László Zsolt', -1),
(149, 31, 'Várhelyi Dénes', -1),
(150, 47, 'Saárossy Kinga', 0),
(151, 12, 'Sarkadi Kiss János', -1),
(152, 47, 'Dunai Tamás', -1),
(153, 10, 'Széles Zita', 0),
(154, 91, 'Végvári Tamás', -1),
(155, 4, 'O. Szabó Soma', -1),
(156, 42, 'Horineczki Erika', 0),
(157, 43, 'Molnár Zsuzsanna', 0),
(158, 37, 'Csere Ágnes', 0),
(159, 62, 'Dózsa László', -1),
(160, 55, 'Bánsági Ildikó', 0),
(161, 12, 'Cservenák Vilmos', -1),
(162, 88, 'Palkó László', -1),
(163, 74, 'Munk Ilona', 0),
(164, 82, 'Velenczey István', -1),
(165, 1, 'Érsek-Obádovics Mercédesz', 0),
(166, 47, 'Vándor Éva', 0),
(167, 35, 'Rácz Géza', -1),
(168, 90, 'Szilágyi Tibor', -1),
(169, 68, 'Verebély Iván', -1),
(170, 41, 'Kovács Krisztina', 0),
(171, 28, 'Orosz Helga', 0),
(172, 52, 'Varsa Mátyás', -1),
(173, 88, 'Bezerédi Zoltán', -1),
(174, 17, 'Kálid Artúr', -1),
(175, 50, 'Rácz Tibor', -1),
(176, 90, 'Szabó Éva', 0),
(177, 12, 'Haumann Petra', 0),
(178, 1, 'Vass Teréz', 0),
(179, 36, 'Oláh Zsuzsa', 0),
(180, 89, 'Drahota Andrea', 0),
(181, 89, 'Farkas Gabi', 0),
(182, 33, 'Antal Olga', 0),
(183, 90, 'Szersén Gyula', -1),
(184, 91, 'Dávid Ágnes', 0),
(185, 33, 'Funtek Frigyes', -1),
(186, 51, 'Felföldy László', -1),
(187, 65, 'Piróth Gyula', -1),
(188, 51, 'Szakácsi Sándor', -1),
(189, 2, 'Gilicze Márta', 0),
(190, 32, 'Pálfi Zoltán', -1),
(191, 40, 'Dánielfy Zsolt', -1),
(192, 6, 'Keresztes Tamás', -1),
(193, 18, 'Kelemen István', -1),
(194, 6, 'Hajduk Károly', -1),
(195, 26, 'Hegedűs Zoltán', -1),
(196, 76, 'Győri Ernő', -1),
(197, 57, 'Szacsvay László', -1),
(198, 33, 'Janisch Éva', 0),
(199, 67, 'Mendelényi Vilmos', -1),
(200, 32, 'Csuja Imre', -1),
(201, 12, 'Jánosi Dávid', -1),
(202, 21, 'Kanda Pál', -1),
(203, 8, 'Kasvinszky Attila', -1),
(204, 13, 'Dányi Krisztián', -1),
(205, 90, 'Horváth László', -1),
(207, 56, 'Cserhalmi György', -1),
(208, 3, 'Orosz Ákos', -1),
(209, 61, 'Ábrahám István', -1),
(210, 86, 'Bede Fazekas Szabolcs', -1),
(211, 74, 'Sütő Irén', 0),
(212, 65, 'Béres Ilona', 0),
(213, 76, 'Sabák Piroska', 0),
(214, 67, 'Demjén Gyöngyvér', 0),
(215, 89, 'Gönczöl András', -1),
(216, 66, 'Hőgye Zsuzsa', 0),
(217, 44, 'Vizi György', -1),
(218, 8, 'Sás Péter', -1),
(219, 68, 'Varga Tibor', -1),
(220, 65, 'Izsóf Vilmos', -1),
(221, 21, 'Csonka András', -1),
(222, 67, 'Keresztes Irén', 0),
(223, 69, 'Petényi Ilona', 0),
(224, 92, 'Tóth András', -1),
(225, 11, 'Polyák Lilla', 0),
(226, 33, 'Mészáros Károly', -1),
(227, 44, 'Jutkovics Krisztina', 0),
(228, 36, 'Tóth Tamás', -1),
(229, 20, 'Tihanyi Szilvia', 0),
(230, 40, 'Szerednyei Béla', -1),
(231, 88, 'Sándor Erzsébet', 0),
(232, 53, 'Vas Zoltán Iván', -1),
(233, 30, 'Lippai László', -1),
(234, 62, 'Gyulay Károly', -1),
(235, 56, 'Zsolnay Júlia', 0),
(236, 82, 'Szathmáry István', -1),
(237, 20, 'Majzik Edit', 0),
(238, 78, 'Selényi Etelka', 0),
(239, 29, 'Tarján Péter', -1),
(240, 18, 'Vasvári Csaba', -1),
(241, 54, 'Bencze Ilona', 0),
(242, 13, 'Lázár Balázs', -1),
(243, 5, 'Kőrösi Petra', 0),
(244, 81, 'Surányi Imre', -1),
(245, 72, 'Harkányi Endre', -1),
(246, 80, 'Gosztonyi János', -1),
(247, 88, 'Máté Gábor', -1),
(248, 80, 'Barlay Gusztáv', -1),
(249, 68, 'Győry Emil', -1),
(250, 93, 'Fehér László', -1),
(251, 69, 'Szilárd Sándor', -1),
(252, 23, 'Haás Vander Péter', -1),
(253, 32, 'Gados Béla', -1),
(254, 38, 'Kubik Anna', 0),
(255, 5, 'Petrik Andrea', 0),
(256, 52, 'Lázár Katalin', 0),
(257, 13, 'Pindroch Csaba', -1),
(258, 85, 'Horváth Lili', 0),
(259, 53, 'Gálvölgyi János', -1),
(260, 87, 'Igó Éva', 0),
(261, 69, 'Buday István', -1),
(262, 30, 'Pusztaszeri Kornél', -1),
(263, 56, 'Maros Gábor', -1),
(264, 39, 'Lesznek Tibor', -1),
(265, 1, 'Kádas József', -1),
(266, 22, 'Horváth Lajos Ottó', -1),
(267, 12, 'Menszátor Héresz Attila', -1),
(268, 90, 'Balogh Zsuzsa', 0),
(269, 80, 'Miklóssy György', -1),
(270, 16, 'Szalay Marianna', 0),
(271, 43, 'Seres Gabriella', 0),
(272, 65, 'Dobos Ildikó', 0),
(273, 94, 'Rétfalvi Tamás', -1),
(274, 29, 'Vlahovics Edit', 0),
(275, 85, 'Mundruczó Kornél', -1),
(276, 74, 'Földi Teri', 0),
(277, 32, 'Farkas Ignác', -1),
(278, 76, 'Garics János', -1),
(279, 50, 'Maszlay István', -1),
(280, 62, 'Szabó Tünde', 0),
(281, 48, 'Fabó Györgyi', 0),
(282, 16, 'Debreczeny Csaba', -1),
(283, 66, 'Koncz Gábor', -1),
(284, 6, 'Gidró Katalin', 0),
(285, 36, 'Philippovich Tamás', -1),
(286, 69, 'Mészöly Júlia', 0),
(287, 14, 'Vida Péter', -1),
(288, 53, 'Horváth Péter', -1),
(289, 87, 'Sziki Károly', -1),
(290, 4, 'Kovács Judit Katalin', 0),
(291, 7, 'Száraz Dénes', -1),
(292, 26, 'Spilák Klára', 0),
(293, 80, 'Ilniczky Ildikó', 0),
(294, 45, 'Zsurzs Kati', 0),
(295, 62, 'Joós László', -1),
(296, 37, 'Derzsi János', -1),
(297, 23, 'Für Anikó', 0),
(298, 76, 'Bódis Irén', 0),
(299, 34, 'Rudolf Péter', -1),
(300, 65, 'Szegedi Erika', 0),
(301, 46, 'Nagy Anikó', 0),
(302, 65, 'Kis Endre', -1),
(303, 7, 'Vajda Milán', -1),
(304, 82, 'Dévai Kamilla', 0),
(305, 62, 'Szilvásssy Annamária', 0),
(306, 61, 'Markaly Gábor', -1),
(307, 87, 'Gáspár Tibor', -1),
(308, 30, 'Ráckevei Anna', 0),
(309, 3, 'Gera Marina', 0),
(310, 75, 'Varga Gyula', -1),
(311, 89, 'Moór Mariann', 0),
(312, 73, 'Fehéregyházi Tibor', -1),
(313, 85, 'Fullajtár Andrea', 0),
(314, 11, 'Hujber Ferenc', -1),
(315, 8, 'Wéber Kata', 0),
(316, 11, 'Sipos Imre', -1),
(317, 28, 'Both András', -1),
(318, 19, 'Molnár Csaba', -1),
(319, 48, 'Papadimitriu Athina', 0),
(320, 52, 'Soltis Lajos', -1),
(321, 26, 'Kolti Helga', 0),
(322, 88, 'Kassai Károly', -1),
(323, 15, 'Széles Tamás', -1),
(324, 74, 'Janusevszkaja Olga', 0),
(325, 14, 'Viczián Ottó', -1),
(326, 22, 'Györgyi Anna', 0),
(327, 38, 'Forgács Péter', -1),
(328, 84, 'Barabás Richárd', -1),
(329, 71, 'Perlaky István', -1),
(330, 80, 'Petress Zsuzsa', 0),
(332, 74, 'Korompai Vali', 0),
(333, 10, 'Pálfi Katalin', 0),
(334, 17, 'Csapó Virág', 0),
(335, 74, 'Kun Vilmos', -1),
(336, 86, 'Létay Dóra', 0),
(337, 40, 'Beratin Gábor', -1),
(338, 14, 'Varga Zsuzsa', 0),
(339, 59, 'Körtvélyessy Zsolt', -1),
(340, 84, 'Juhász Virág Lujza', 0),
(341, 36, 'Lukácsi József', -1),
(342, 32, 'Maronka Csilla', 0),
(343, 42, 'Peremartoni Krisztina', 0),
(344, 26, 'Csomor Csilla', 0),
(345, 68, 'Mécs Károly', -1),
(346, 94, 'Kovács Gergely', -1),
(347, 45, 'Mikó István', -1),
(349, 38, 'Ujvári Zoltán', -1),
(350, 34, 'Kaszás Attila', -1),
(351, 40, 'Ábrahám Edit', 0),
(352, 15, 'Gregor Bernadett', 0),
(353, 11, 'Pataki Ferenc', -1),
(354, 7, 'Péter Kata', 0),
(355, 88, 'Póka Éva', 0),
(356, 74, 'Zolnay Zsuzsa', 0),
(357, 37, 'Bognár Mónika', 0),
(358, 82, 'Fóti Edit', 0),
(359, 68, 'Pap Éva', 0),
(360, 26, 'Kerekes Éva', 0),
(361, 76, 'Csapó János', -1),
(362, 31, 'Borbély László', -1),
(363, 52, 'Kútvölgyi Erzsébet', 0),
(364, 90, 'Juhász Jácint', -1),
(365, 52, 'Maróti Gábor', -1),
(366, 60, 'Lelkes Júlia', 0),
(367, 76, 'Gurnik Ilona', 0),
(368, 83, 'Károlyi Irén', 0),
(369, 59, 'Monori Lili', 0),
(370, 79, 'Ferencz László', -1),
(371, 82, 'Pádua Ildikó', 0),
(372, 1, 'Hajdú László', -1),
(373, 85, 'Pelsőczy Réka', 0),
(374, 48, 'Dóczi János', -1),
(375, 21, 'Dégi János', -1),
(376, 13, 'Csöre Gábor', -1),
(377, 23, 'Nyírő Beáta', 0),
(378, 45, 'Rátonyi Hajnal', 0),
(379, 6, 'Géczi Zoltán', -1),
(380, 86, 'Balázs Ágnes', 0),
(381, 77, 'Czigány Judit', 0),
(382, 19, 'Kövesdi László', -1),
(383, 27, 'Csarnóy Zsuzsa', 0),
(384, 28, 'Győry Péter', -1),
(385, 24, 'Szűcs Sándor', -1),
(386, 31, 'Bognár János', -1),
(387, 70, 'Pásztor Erzsi', 0),
(388, 80, 'Lengyel János', -1),
(389, 91, 'Pécsi Ildikó', 0),
(390, 55, 'Jenei István', -1),
(391, 37, 'Wohlmuth István', -1),
(392, 6, 'Czapkó Antal', -1),
(393, 1, 'Kovács Lehel', -1),
(394, 14, 'Timkó Eszter', 0),
(395, 63, 'Káldi Nóra', 0),
(396, 59, 'Gyenge Mária', 0),
(397, 62, 'Vajda László', -1),
(398, 75, 'Hajdú Endre', -1),
(399, 7, 'Mészáros Máté', -1),
(400, 7, 'Jordán Adél', 0),
(401, 52, 'Egri Márta', 0),
(402, 90, 'Dániel Vali', 0),
(403, 4, 'Pálmai Anna', 0),
(404, 4, 'Zrinyi Gál Vince', -1),
(405, 23, 'Bellus Attila', -1),
(406, 65, 'ifj. Ujlaky László', -1),
(407, 66, 'Horesnyi László', -1),
(408, 55, 'Melis György', -1),
(409, 15, 'Schell Judit', 0),
(410, 35, 'Ivancsics Ilona', 0),
(411, 66, 'Bókai Mária', 0),
(412, 8, 'Karalyos Gábor', -1),
(413, 27, 'Szalai Krisztina', 0),
(414, 77, 'Tarnay Margit', 0),
(415, 27, 'Csudai Csaba', -1),
(416, 90, 'Almási Éva', 0),
(417, 81, 'György László', -1),
(418, 82, 'Hindi Sándor', -1),
(419, 16, 'Horváth Virgil', 0),
(420, 49, 'Kovács Gyula', -1),
(421, 58, 'Sunyovszky Szilvia', 0),
(422, 37, 'Csonka Ibolya', 0),
(423, 51, 'Jancsó Sarolta', 0),
(424, 30, 'Götz Anna', 0),
(425, 13, 'Bozsó Péter', -1),
(426, 69, 'Sztankay István', -1),
(427, 76, 'Kádár Flóra', 0),
(428, 68, 'Bürös Gyöngyi', 0),
(429, 30, 'Kiss László', -1),
(430, 63, 'Konrád Antal', -1),
(431, 61, 'Harsányi Gábor', -1),
(432, 80, 'Földes Gábor', -1),
(433, 74, 'Almássy Béla', -1),
(434, 75, 'Kaló Flórián', -1),
(435, 10, 'Nagy Zsolt', -1),
(436, 80, 'Molnár Tibor', -1),
(437, 5, 'Klem Viktor Dávid', -1),
(438, 66, 'Agárdy Ilona', 0),
(439, 49, 'Téri Sándor', -1),
(440, 4, 'Schruff Tamás Milán', -1),
(441, 71, 'Bodrogi Gyula', -1),
(442, 77, 'Buss Gyula', -1),
(443, 5, 'Csémy Balázs', -1),
(444, 39, 'Sipos András', -1),
(445, 35, 'ifj. Pathó István', -1),
(446, 12, 'Szirtes Balázs', -1),
(447, 40, 'Sashalmi József', -1),
(448, 28, 'Rékasi Károly', -1),
(449, 39, 'Nádházy Péter', -1),
(450, 81, 'Győri Ilona', 0),
(451, 25, 'Varga Éva', 0),
(452, 1, 'Nagy Cecília', 0),
(453, 87, 'Gergely (Vajek) Róbert', -1),
(454, 87, 'Mester Edit', 0),
(455, 70, 'Dégi István', -1),
(456, 44, 'Katona János', -1),
(457, 28, 'Solymosi Tibor', -1),
(458, 40, 'Borbiczky Ferenc', -1),
(459, 56, 'Vogt Károly', -1),
(460, 78, 'Körmendi János', -1),
(461, 9, 'Dolmány Attila', -1),
(462, 71, 'Törőcsik Mari', 0),
(463, 46, 'Bácskai János', -1),
(464, 60, 'Györgyfalvay Péter', -1),
(465, 59, 'Schütz Ila', 0),
(466, 52, 'Miklósy Judit', 0),
(467, 49, 'Takács Katalin', 0),
(468, 35, 'Fon Gabriella', 0),
(469, 4, 'Horváth Sándor', -1),
(470, 61, 'Császár Angela', 0),
(471, 76, 'Hadics László', -1),
(472, 71, 'Fülöp Zsigmond', -1),
(473, 14, 'Gubás Gabriella', 0),
(474, 69, 'Majcen Mária', 0),
(475, 15, 'Kamarás Iván', -1),
(476, 10, 'Ruttkay Laura', 0),
(477, 58, 'Kern András', -1),
(478, 45, 'Dimulász Miklós', -1),
(479, 88, 'Eperjes Károly', -1),
(480, 52, 'Szalay Edit', 0),
(481, 6, 'Csonka Szilvia', 0),
(482, 6, 'Danis Lídia', 0),
(483, 15, 'Ujvári Csaba', -1),
(484, 25, 'Lux Ádám', -1),
(485, 10, 'Melkvi Beáta', 0),
(486, 53, 'Vörös Eszter', 0),
(487, 91, 'Falvay Klára', 0),
(488, 44, 'Balkay Géza', -1),
(489, 28, 'Mikula Sándor', -1),
(490, 63, 'Kránitz Lajos', -1),
(491, 80, 'Kálmán György', -1),
(492, 59, 'Antal Anetta', 0),
(493, 62, 'Márton András', -1),
(494, 83, 'Fáy Györgyi', 0),
(495, 73, 'Őze Lajos', -1),
(496, 38, 'Incze József', -1),
(497, 54, 'Koroknay Géza', -1),
(498, 74, 'Nagy Attila', -1),
(499, 32, 'Mátrai Tamás', -1),
(500, 1, 'Kovács Olga', 0),
(501, 76, 'Ambrus András', -1),
(502, 66, 'Koltai János', -1),
(503, 20, 'Csendes Olivér', -1),
(504, 50, 'Mátray Márta', 0),
(505, 71, 'Szabó Ildikó', 0),
(506, 7, 'Gál Kristóf', -1),
(507, 74, 'Sándor Géza', -1),
(508, 1, 'Sipos Vera', 0),
(509, 1, 'Simkó Katalin', 0),
(510, 75, 'Szirmai Jenő', -1),
(511, 41, 'Frajt Edit', 0),
(512, 37, 'Vass Péter', -1),
(513, 45, 'Dzsupin Ibolya', 0),
(514, 16, 'Huszárik Katalin', 0),
(515, 65, 'Tordai Teri', 0),
(516, 6, 'Pető Kata', 0),
(517, 32, 'Vajda János', -1),
(518, 58, 'Verebes István', -1),
(519, 47, 'O. Szabó István', -1),
(520, 77, 'Soós Imre', -1),
(521, 74, 'Horváth József', -1),
(522, 45, 'Barbinek Péter', -1),
(523, 27, 'Gesztesi Károly', -1),
(524, 20, 'Kaszás Gergő', -1),
(525, 14, 'Major Melinda', 0),
(526, 35, 'Papp Zoltán', -1),
(527, 65, 'Polonyi Gyöngyi', 0),
(528, 43, 'Szoboszlai Éva', 0),
(529, 20, 'Gazdag Tibor', -1),
(530, 38, 'Lang Györgyi', 0),
(531, 49, 'Hegedűs D. Géza', -1),
(532, 48, 'Kánya Kata', 0),
(533, 88, 'Szirtes Gábor', -1),
(534, 9, 'Lengyel Tamás', -1),
(535, 37, 'Zillich Beatrix', 0),
(536, 28, 'Epres Attila', -1),
(537, 54, 'Nagy Gábor', -1),
(538, 89, 'Orbán Tibor', -1),
(539, 47, 'Rupnik Károly', -1),
(540, 76, 'Pápai Erzsi', 0),
(541, 74, 'Kapeller Éva', 0),
(542, 78, 'Pénzes János', -1),
(543, 52, 'Farády István', -1),
(544, 39, 'Balikó Tamás', -1),
(545, 92, 'ifj. Vidnyánszky Attila', -1),
(546, 3, 'Stork Natasa', 0),
(547, 85, 'Tóth Anita', 0),
(548, 40, 'Csizmadia Gabriella', 0),
(549, 49, 'Hűvösvölgyi Ildikó', 0),
(550, 26, 'Szervét Tibor', -1),
(551, 29, 'Bal József Sándor', -1),
(552, 11, 'Gyuriska János', -1),
(553, 26, 'Cvetkó Sándor', -1),
(554, 1, 'Mészáros Tibor', -1),
(555, 77, 'Farkas Antal', -1),
(556, 21, 'Földes Tamás', -1),
(557, 27, 'Olasz Ágnes', 0),
(558, 52, 'Kalocsay Miklós', -1),
(559, 59, 'Korbuly Péter', -1),
(560, 19, 'Bíró Krisztina', 0),
(561, 16, 'Molnár Tamás', -1),
(562, 53, 'Szilárdy István', -1),
(563, 47, 'Fekete Gizella', 0),
(564, 6, 'Kovalik Ágnes', 0),
(565, 2, 'Juhász István', -1),
(566, 83, 'Koppány Miklós', -1),
(567, 12, 'Gryllus Dorka', 0),
(568, 83, 'Lenkei Edit', 0),
(569, 79, 'Bakos Magda', 0),
(570, 25, 'Román Judit', 0),
(571, 25, 'Cserna Antal', -1),
(572, 74, 'Rácz Mihály', -1),
(573, 43, 'Medgyessy Pál', -1),
(574, 94, 'Huzella Júlia', 0),
(575, 27, 'Bede Fazekas Annamária', 0),
(576, 2, 'Molnár Mariann', 0),
(577, 15, 'Keszég László', -1),
(578, 58, 'Bus Kati', 0),
(579, 78, 'Gyurkovics Zsuzsa', 0),
(580, 84, 'Földes Eszter', 0),
(581, 22, 'Schnell Ádám', -1),
(582, 44, 'Hartmann Teréz', 0),
(583, 75, 'Avar István', -1),
(584, 13, 'Liptai Claudia', 0),
(585, 62, 'Uri István', -1),
(586, 74, 'Iványi József', -1),
(587, 46, 'Bregyán Péter', -1),
(588, 70, 'Holl István', -1),
(589, 43, 'Emőd György', -1),
(590, 57, 'Faluhelyi Magda', 0),
(591, 42, 'Vass Gábor', -1),
(592, 26, 'Bartus Gyula', -1),
(593, 48, 'Vitéz László', -1),
(594, 58, 'Piros Ildikó', 0),
(595, 94, 'Pálos Hanna', 0),
(596, 93, 'Viktor Balázs', -1),
(597, 66, 'Thirring Viola', 0),
(598, 61, 'Szendrő Iván', -1),
(599, 14, 'Kardos Róbert', -1),
(600, 75, 'Erdei Irén', 0),
(601, 37, 'Schallinger Gábor', -1),
(602, 86, 'Nyári Zoltán', -1),
(603, 77, 'Psota Irén', 0),
(604, 88, 'Herceg Csilla', 0),
(605, 31, 'Sztárek Andrea', 0),
(606, 92, 'Szabó Erika', 0),
(607, 30, 'Várnagy Zoltán', -1),
(608, 66, 'Haumann Péter', -1),
(609, 17, 'Varga Klára', 0),
(610, 26, 'Végh Péter', -1),
(611, 43, 'Újhelyi Olga', 0),
(612, 26, 'Garay Nagy Tamás', -1),
(613, 9, 'Kovács Martina', 0),
(614, 90, 'Kozák András', -1),
(615, 94, 'Neudold Júlia', 0),
(616, 50, 'Bobor György', -1),
(617, 66, 'Szabó Kálmán', -1),
(618, 26, 'Juhász Károly', -1),
(619, 4, 'Lass Beáta', 0),
(620, 93, 'Kerkay Rita', 0),
(621, 29, 'Zsíros Ágnes', 0),
(622, 39, 'Bartal (Horváth) Zsuzsa', 0),
(623, 86, 'Bodor Erzsébet', 0),
(624, 48, 'Bordán Irén', 0),
(625, 5, 'Trokán Nóra', 0),
(626, 36, 'Rubold Ödön', -1),
(627, 6, 'Papp Dániel', -1),
(628, 3, 'Lazók Mátyás Zoltán', -1),
(629, 51, 'Sörös Sándor', -1),
(630, 93, 'Kurta Niké', 0),
(631, 51, 'Jónás Gabriella', 0),
(632, 33, 'Mácsai Pál', -1),
(633, 73, 'Henter Mária', 0),
(634, 70, 'Balogh Emese', 0),
(635, 56, 'Székhelyi József', -1),
(636, 34, 'Töreky Zsuzsa', 0),
(637, 7, 'Dömötör András', -1),
(638, 13, 'Juhász Réka', 0),
(639, 9, 'Bodó Viktor', -1),
(640, 12, 'Lévay Viktória', 0),
(641, 19, 'Czifra Krisztina', 0),
(642, 17, 'Rajkai Zoltán', -1),
(643, 17, 'Dózsa Zoltán László', -1),
(644, 69, 'Linka György', -1),
(645, 86, 'Őze Áron', -1),
(646, 70, 'Peczkay Endre', -1),
(647, 46, 'Petrozsényi Eszter', 0),
(648, 87, 'Zágoni Zsolt', -1),
(649, 78, 'Felföldy László', -1),
(650, 82, 'Rákosi Mária', 0),
(651, 23, 'Malcsiner Péter', -1),
(652, 92, 'Vecsei Miklós', -1),
(653, 55, 'Lukács Sándor', -1),
(654, 39, 'Bieder Éva', 0),
(655, 28, 'Kerekes József', -1),
(656, 26, 'Quintus Konrád', -1),
(657, 1, 'Mózes Balázs', -1),
(658, 81, 'Nánási Mária', 0),
(659, 6, 'Kedvek Richárd', -1),
(660, 91, 'Cs. Németh lajos', -1),
(661, 21, 'Rusz Márk Milán', -1),
(662, 79, 'Örkényi Éva', 0),
(663, 25, 'Megyeri Zoltán', -1),
(664, 70, 'Paláncz Ferenc', -1),
(665, 84, 'Tarr Judit', 0),
(666, 43, 'Tímár Zoltán', -1),
(667, 76, 'Suka Sándor', -1),
(668, 13, 'Balázsovits Edit', 0),
(669, 24, 'Csankó Zoltán', -1),
(670, 81, 'Ujvári Viktória', 0),
(671, 93, 'Bárnai Péter', -1),
(672, 67, 'Balassa Gábor', -1),
(673, 77, 'Szemes Mari', 0),
(674, 6, 'Tóth Orsolya', 0),
(675, 1, 'Egres Katinka', 0),
(676, 58, 'Detre Annamária', 0),
(677, 93, 'Bán Bálint', -1),
(678, 49, 'Egri Katalin', 0),
(679, 83, 'Zentai Anna', 0),
(680, 60, 'Koltai Róbert', -1),
(681, 60, 'Venczel Vera', 0),
(682, 84, 'Szabó Zsófia Anna', 0),
(683, 38, 'T. Katona Ágnes', 0),
(684, 42, 'Tahi-Tóth József', -1),
(685, 58, 'Sipeki Tibor', -1),
(686, 1, 'Miklós Marcell', -1),
(687, 45, 'Szilágyi Zsuzsa', 0),
(688, 94, 'Ficza István', -1),
(689, 48, 'Blaskó Balázs', -1),
(690, 19, 'Mihályfi Balázs', -1),
(691, 22, 'Balogh András', -1),
(692, 67, 'Csikos Gábor', -1),
(693, 38, 'Bánky Gábor', -1),
(694, 69, 'Tóth Miklós', -1),
(695, 20, 'Májer Zsigmond', -1),
(696, 10, 'Pikali Gerda', 0),
(697, 13, 'Karácsonyi Zoltán', -1),
(698, 15, 'Hajdú István', -1),
(699, 11, 'Buza Tímea', 0),
(700, 84, 'Molnár Áron', -1),
(701, 3, 'László Géza Attila', -1),
(702, 11, 'Varga Gabriella', 0),
(703, 92, 'Csapó Attila', -1),
(704, 82, 'Raksányi Gellért', -1),
(705, 31, 'Radó Denise', 0),
(706, 71, 'Verdes Tamás', -1),
(707, 29, 'Baráth Attila', -1),
(708, 15, 'Fekete Tibor', -1),
(709, 38, 'Sipos László', -1),
(710, 50, 'Kiss Mari', 0),
(711, 51, 'Szurdi Miklós', -1),
(712, 41, 'Földi László', -1),
(713, 66, 'Simon Kázmér', -1),
(714, 75, 'Domján Edit', 0),
(715, 16, 'Galambos Attila', -1),
(716, 66, 'Sebestyén Ferenc', -1),
(717, 28, 'Segesvári Gabriella', 0),
(718, 93, 'Ostorházi Bernadett', 0),
(719, 93, 'Kádár Lilla', 0),
(720, 43, 'Csák György', -1),
(721, 93, 'Fehér Balázs Benő', -1),
(722, 19, 'Kiss Andrea', 0),
(723, 32, 'Schlanger András', -1),
(724, 74, 'Szilágyi Eta', 0),
(725, 73, 'Horváth Sándor', -1),
(726, 68, 'Tiboldi Mária', 0),
(727, 86, 'Kállóy Molnár Péter', -1),
(728, 30, 'Jakab Tamás', -1),
(729, 91, 'Győry Franciska', 0),
(730, 16, 'Dévai Balázs Áron', -1),
(731, 62, 'Kovács Lajos', -1),
(732, 3, 'Földi László Ádám', -1),
(733, 8, 'Borombovits Ágnes', 0),
(734, 69, 'Tímár (Gerber) Éva', 0),
(735, 8, 'Stefanovics Angéla', 0),
(736, 46, 'Gáti Oszkár', -1),
(737, 38, 'Balogh Erika', 0),
(738, 14, 'Nyári Oszkár', -1),
(739, 22, 'Kozák Ágnes', 0),
(740, 84, 'Fehér Tibor', -1),
(741, 68, 'Fonyó István', -1),
(742, 54, 'Szegvári Menyhért', -1),
(743, 5, 'Tar Renáta', 0),
(744, 10, 'Kokics Péter', -1),
(745, 87, 'Kovács Titusz', -1),
(746, 30, 'Pásztor Edina', 0),
(747, 54, 'Marschek Gabriella', 0),
(748, 4, 'Cs. Tóth Simon Ferenc', -1),
(749, 16, 'Schneider Zoltán', -1),
(750, 72, 'Lőte Attila', -1),
(751, 56, 'Várday Zoltán', -1),
(752, 63, 'Huszti Péter', -1),
(753, 80, 'Németh Gabriella', 0),
(754, 77, 'Váradi Hédi', 0),
(755, 26, 'Horváth Valéria', 0),
(756, 79, 'Gera Zoltán', -1),
(757, 82, 'Árva János', -1),
(758, 2, 'Marjai Virág', 0),
(759, 55, 'Kőszegi Péter', -1),
(760, 23, 'Sajgál Erika', 0),
(761, 66, 'Házy Györgyi', 0),
(762, 82, 'Pálfalvi Éva', 0),
(763, 24, 'Korognai Károly', -1),
(764, 89, 'Balázs Péter', -1),
(765, 18, 'Szűcs Gábor', -1),
(766, 6, 'Lajos András', -1),
(767, 90, 'Harkányi János', -1),
(768, 40, 'Matoricz József', -1),
(769, 31, 'Pápai Erika', 0),
(770, 61, 'Esztergályos Cecília', 0),
(771, 57, 'Andai Kati', 0),
(772, 8, 'Zámbori Soma', -1),
(773, 7, 'Czukor Balázs', -1),
(774, 21, 'Tóth Ildikó', 0),
(775, 46, 'Bor Adrienne', 0),
(776, 64, 'Bősze György', -1),
(777, 64, 'Győrffy László', -1),
(778, 5, 'Réti Adrienn', 0),
(779, 38, 'Kárpáti Denise', 0),
(780, 75, 'Lente Ilona', 0),
(781, 60, 'Molnár Piroska', 0),
(782, 9, 'Csányi Sándor', -1),
(783, 7, 'Járó Zsuzsa', 0),
(784, 1, 'Földeáki Nóra', 0),
(785, 77, 'Tarsoly Elemér', -1),
(786, 86, 'Várnai Szilárd', -1),
(787, 36, 'Hirling Judit', 0),
(788, 43, 'Szirtes Ági', 0),
(789, 42, 'Korcsmáros György', -1),
(790, 58, 'Szűcs András', -1),
(791, 55, 'Martin Márta', 0),
(792, 30, 'Varga Mária', 0),
(793, 63, 'Kovács István', -1),
(794, 63, 'Iglódi István', -1),
(795, 59, 'Jobba Gabriella', 0),
(796, 91, 'ifj. Kőmíves Sándor', -1),
(797, 58, 'Tóth Titusz', -1),
(798, 21, 'Moravek Krisztina', 0),
(799, 26, 'Galbenisz Tomasz', -1),
(800, 60, 'Munk Magdolna', 0),
(801, 41, 'Gáspár Sándor', -1),
(802, 22, 'ifj. Fillár István', -1),
(803, 23, 'Hegyi Barbara', 0),
(804, 3, 'Orth Péter', -1),
(805, 85, 'Ónodi Eszter', 0),
(806, 3, 'Erdélyi Tímea', 0),
(807, 80, 'Varga András', -1),
(808, 70, 'Magda Gabriella', 0),
(809, 63, 'Ujréti László', -1),
(810, 42, 'Dobos Katalin', 0),
(811, 56, 'Farkas Zsuzsa', 0),
(812, 92, 'Janka Barnabás', -1),
(813, 87, 'Szatmári György', -1),
(814, 37, 'Árdeleán László', -1),
(815, 61, 'Szombathy Gyula', -1),
(816, 65, 'Somhegyi György', -1),
(817, 2, 'Tornyi Ildikó', 0),
(818, 20, 'Nagy Adrienne', 0),
(819, 94, 'Tóth Eszter', 0),
(820, 79, 'Lénárd Judit', 0),
(821, 71, 'Margitai Ági', 0),
(822, 67, 'Kiss Ferenc Nándor', -1),
(823, 41, 'Jakab Csaba', -1),
(824, 85, 'Nagy Viktor', -1),
(825, 8, 'Sztankay Orsolya', 0),
(826, 48, 'Nagyidai István', -1),
(827, 47, 'Polyák Margit', 0),
(828, 38, 'Borbély Sándor', -1),
(829, 43, 'Zsolnay András', -1),
(830, 72, 'Láng József', -1),
(831, 51, 'Szerencsi Éva', 0),
(832, 55, 'Földessy Margit', 0),
(833, 83, 'Létai Klára', 0),
(834, 10, 'Turek Miklós', -1),
(835, 61, 'Várhegyi Teréz', 0),
(836, 87, 'Varga Katalin', 0),
(837, 46, 'Kovács Erika', 0),
(838, 60, 'Kiss István', -1),
(839, 34, 'Rónaszegi Judit', 0),
(840, 31, 'Szepessy Klára', 0),
(841, 79, 'Békés Itala', 0),
(842, 90, 'Csikos Sándor', -1),
(843, 68, 'Szokolay Ottó', -1),
(845, 7, 'Fenyő Iván', -1),
(846, 20, 'Csányi János', -1),
(847, 39, 'Benedek Gyula', -1),
(848, 1, 'Krisztik Csaba', -1),
(849, 48, 'Holl Zsuzsanna', 0),
(850, 24, 'Seress Zoltán', -1),
(851, 37, 'Puskás Tamás', -1),
(852, 5, 'Rusznák András', -1),
(853, 75, 'Lombi Jenő', -1),
(854, 47, 'Bánfalvy Ágnes', 0),
(855, 58, 'Papp János', -1),
(856, 33, 'Fazekas Zsuzsa', 0),
(857, 75, 'Herczik Bertalan', -1),
(858, 88, 'Csernák János', -1),
(859, 27, 'R. Kárpáti Péter', -1),
(860, 61, 'Janka Béla', -1),
(861, 76, 'Marczi Erzsébet', 0),
(862, 5, 'Bata Éva', 0),
(863, 24, 'Jónás Judit', 0),
(864, 46, 'Besztercei Zsuzsa', 0),
(865, 29, 'Lengyel Ferenc', -1),
(866, 75, 'Stozicky Vilma', 0),
(867, 75, 'Szabó Gyula', -1),
(868, 86, 'Németh Zsuzsa', 0),
(869, 3, 'Szabó Emília', 0),
(870, 4, 'Polgár Péter', -1),
(871, 7, 'Szandtner Anna', 0),
(872, 83, 'Gyulai (Gyurkovics) Mária', 0),
(873, 2, 'Kovács Krisztián', -1),
(874, 30, 'Kőszegi Ákos', -1),
(875, 57, 'Zala Márk', -1),
(876, 52, 'Ivánka Csaba', -1),
(877, 36, 'Pregitzer Fruzsina', 0),
(878, 88, 'Kuna Károly', -1),
(879, 56, 'Mányai Zsuzsa', 0),
(880, 13, 'Fesztbaum Béla', -1),
(881, 72, 'Téby Katalin', 0),
(882, 45, 'Gelecsényi Sára', 0),
(883, 23, 'Kárpáti Levente', -1),
(884, 32, 'Dallos József', -1),
(885, 18, 'Rudolf Teréz', 0),
(886, 70, 'Somogyi Miklós', -1),
(887, 20, 'Bertalan Ágnes', 0),
(888, 81, 'Fodor Teréz', 0),
(889, 66, 'Gyöngyössy Katalin', 0),
(890, 44, 'Udvaros Dorottya', 0),
(891, 9, 'Hámori Gabriella', 0),
(892, 39, 'Lipcsei Tibor', -1),
(893, 65, 'Gonda György', -1),
(894, 3, 'Dankó István', -1),
(895, 62, 'Ronyecz Mária', 0),
(896, 18, 'Kerekes Viktória', 0),
(897, 2, 'Telekes Péter', -1),
(898, 74, 'Horváth Gyula', -1),
(899, 45, 'Málnai Zsuzsa', 0),
(900, 76, 'Fillár István', -1),
(901, 90, 'Csomós Mari', 0),
(902, 44, 'Andresz Kati', 0),
(903, 41, 'Leviczky Klára', 0),
(904, 34, 'Méhes László', -1),
(905, 21, 'Bertók Lajos', -1),
(906, 2, 'Varju Kálmán', -1),
(907, 87, 'Dóczy Péter', -1),
(908, 76, 'Harmath Irma', 0),
(909, 63, 'Dőry Virág', 0),
(910, 51, 'Koricza Miklós', -1),
(911, 75, 'Labancz Borbála', 0),
(912, 82, 'Somogyvári Pál', -1),
(913, 43, 'Tóth Éva', 0),
(914, 53, 'Jani Ildikó', 0),
(915, 16, 'Tímár Andor', -1),
(916, 19, 'Bajomi Nagy György', -1),
(917, 85, 'Samu Nagy Ádám', -1),
(918, 84, 'Farkas Dénes', -1),
(919, 4, 'Ötvös András', -1),
(920, 9, 'Szandtner Zsófia', 0),
(921, 50, 'Velez Olívia', 0),
(922, 79, 'Kohut Magda', 0),
(923, 79, 'Bagó László', -1),
(924, 54, 'Muszte Anna', 0),
(925, 11, 'Sarádi Zsolt', -1),
(926, 76, 'Szigeti Géza', -1),
(927, 92, 'Zoltán Áron', -1),
(928, 25, 'Jantyik Csaba', -1),
(929, 79, 'Tándor Lajos', -1),
(930, 88, 'Rosta Sándor', -1),
(931, 51, 'Horváth István', -1),
(932, 12, 'Németh Kristóf', -1),
(933, 64, 'Parragi Mária', 0),
(934, 57, 'Paudits Béla', -1),
(935, 41, 'Görög László', -1),
(936, 26, 'Nagy-Kálózy Eszter', 0),
(937, 77, 'Horváth Teri', 0),
(938, 37, 'Molnár Ildikó', 0),
(939, 48, 'Nagy Sándor', -1),
(940, 91, 'Tóth Judit', 0),
(941, 87, 'Moravetz Levente', -1),
(942, 27, 'Ternyák Zoltán', -1),
(943, 84, 'Szatory Dávid', -1),
(944, 73, 'Fekete András', -1),
(945, 64, 'Osztovics Cecília', 0),
(946, 19, 'Tóth Sándor', -1),
(947, 59, 'Vallai Péter', -1),
(948, 50, 'Menszátor Magdolna', 0),
(949, 1, 'Mercs János', -1),
(950, 76, 'Bitskey Tibor', -1),
(951, 29, 'Németh Gábor', -1),
(952, 10, 'Dobó Dániel', -1),
(953, 49, 'Gálffi László', -1),
(954, 32, 'Juhász György', -1),
(955, 35, 'Nyertes Zsuzsa', 0),
(956, 53, 'Holocsy István', -1),
(957, 79, 'Kéry Edit', 0),
(958, 94, 'Simon Zoltán', -1),
(959, 46, 'Bajza Viktória', 0),
(960, 2, 'Széll Attila', -1),
(961, 10, 'Betz István', -1),
(962, 42, 'Tomanek Gábor', -1),
(963, 27, 'Lipics Zsolt', -1),
(964, 75, 'Kovács Ibolya', 0),
(965, 47, 'Cseke Péter', -1),
(966, 27, 'Sztarenki Pál', -1),
(967, 42, 'Józsa Imre', -1),
(968, 64, 'Kardos Gábor', -1),
(969, 13, 'Németh Borbála', 0),
(970, 49, 'Pogány György', -1),
(971, 28, 'Kaszás Géza', -1),
(972, 11, 'Nagy Ervin', -1),
(973, 77, 'Berek Katalin', 0),
(974, 35, 'Simon Mária', 0),
(975, 14, 'Kocsis Pál', -1),
(976, 32, 'Mihály Marianna', 0),
(977, 51, 'Ferenczi Krisztina', 0),
(978, 65, 'Halász Judit', 0),
(979, 63, 'Tahi Tóth László', -1),
(980, 45, 'Németh Nóra', 0),
(981, 18, 'Ilyés Barna László', -1),
(982, 69, 'Szilágyi István', -1),
(983, 58, 'Blaskó Péter', -1),
(984, 75, 'Gelley Kornél', -1),
(985, 12, 'Botos Éva', 0),
(986, 89, 'Fodor Zsóka', 0),
(987, 49, 'Halmágyi Sándor', -1),
(988, 73, 'Kutas József', -1),
(989, 85, 'Kecskés Karina', 0),
(990, 16, 'Kiss Eszter', 0),
(991, 29, 'Zubornyák Zoltán', -1),
(992, 7, 'Máthé Zsolt', -1),
(993, 78, 'Csisztay Andor', -1),
(994, 26, 'Dimanopulu Afrodité', 0),
(995, 38, 'Bubik István', -1),
(996, 73, 'Füzessy Ertzsébet', 0),
(997, 84, 'Mohai Tamás Gábor', -1),
(998, 58, 'Lencz György', -1),
(999, 46, 'Safranek Károly', -1),
(1000, 40, 'Tihanyi Péter', -1),
(1001, 89, 'Ernyey Béla', -1),
(1002, 2, 'Zeck Julianna', 0),
(1003, 83, 'Horkay János', -1),
(1004, 50, 'Gyabronka József', -1),
(1005, 30, 'Kiss József', -1),
(1006, 57, 'Oszter Sándor', -1),
(1007, 55, 'Andai Györgyi', 0),
(1008, 29, 'Molnár Erika', 0),
(1009, 14, 'Mészáros Tamás', -1),
(1010, 41, 'Bán János', -1),
(1011, 44, 'Szirmai Péter', -1),
(1012, 70, 'Szekeres Ilona', 0),
(1013, 54, 'Sir Katalin', 0),
(1014, 64, 'Kertész Péter', -1),
(1015, 13, 'Majsai-Nyilas Tünde', 0),
(1016, 78, 'Hegedűs Ágnes', 0),
(1017, 25, 'Szarvas József', -1),
(1018, 28, 'Tallós Rita', 0),
(1019, 62, 'Liska Zsuzsa', 0),
(1020, 34, 'Rátóti Zoltán', -1),
(1021, 31, 'Magyar Tivadar', -1),
(1022, 87, 'Sebestyén András', -1),
(1023, 63, 'Csernák Árpád', -1),
(1024, 1, 'Nagy Péter', -1),
(1025, 67, 'Kézdy György', -1),
(1026, 24, 'Hankó Attila', -1),
(1027, 31, 'Kocsis Judit', 0),
(1028, 12, 'Vass György', -1),
(1029, 16, 'Molnár László', -1),
(1030, 73, 'Sturcz (Sós) Edit', 0),
(1031, 56, 'Hámori Ildikó', 0),
(1032, 40, 'Bognár Zsolt', -1),
(1033, 59, 'Gór Nagy Mária', 0),
(1034, 36, 'Karczag Ferenc', -1),
(1035, 8, 'Balázs Zoltán', -1),
(1036, 13, 'Cseke Katinka', 0),
(1037, 24, 'Görög László', -1),
(1038, 74, 'Tóth Béla', -1),
(1039, 53, 'Sáfár Anikó', 0),
(1040, 94, 'Borbély Alexandra', 0),
(1041, 44, 'Pobozsnyi Ágnes', 0),
(1042, 43, 'Kovács Nóra', 0),
(1043, 42, 'Hernádi Judit', 0),
(1044, 91, 'Huszár László', -1),
(1045, 80, 'Békés Rita', 0),
(1046, 77, 'Bagyinszky János', -1),
(1047, 47, 'Kerekes Valéria', 0),
(1048, 54, 'Timár Béla', -1),
(1049, 77, 'Bán Klára', 0),
(1050, 29, 'Kocsó Gábor', -1),
(1051, 80, 'Csornay Mária', 0),
(1052, 14, 'Crespo Rodrigo', -1),
(1053, 94, 'Tasnádi Bence', -1),
(1054, 17, 'Takátsy Péter', -1),
(1055, 20, 'Ilyés Róbert', -1),
(1056, 35, 'Nagy Miklós', -1),
(1057, 76, 'Horcsák Flóra', 0),
(1058, 12, 'Szabó Viktória', 0),
(1059, 67, 'ifj. Latabár Kálmán', -1),
(1060, 22, 'Kautzky Armand', -1),
(1061, 32, 'Varjú Olga', 0),
(1062, 24, 'Hullán Zsuzsanna', 0),
(1063, 41, 'Pataki Erzsébet', 0),
(1064, 78, 'Márkus László', -1),
(1065, 24, 'Földesi Judit', 0),
(1066, 36, 'Fráter Katalin', 0),
(1067, 23, 'Vincze Gábor Péter', -1),
(1068, 40, 'Tóth Enikő', 0),
(1069, 1, 'Barnák László', -1),
(1070, 41, 'Pap Vera', 0),
(1071, 3, 'Tenki Réka', 0),
(1072, 82, 'Garay József', -1),
(1073, 76, 'Árkos Gyula', -1),
(1074, 92, 'Mészáros Blanka', 0),
(1075, 74, 'Schubert Éva', 0),
(1076, 83, 'Lukács Éva', 0),
(1077, 47, 'Katona Ágnes', 0),
(1078, 81, 'Szentirmay Éva', 0),
(1079, 85, 'Almási Sándor', -1),
(1080, 36, 'Fésüs Tamás', -1),
(1081, 75, 'Bíró József', -1),
(1082, 6, 'Bartsch Katalin', 0),
(1083, 44, 'Spindler Béla', -1),
(1084, 39, 'Nemcsák Károly', -1),
(1085, 42, 'Homoki Magdolna', 0),
(1086, 17, 'Selmeczi Roland', -1),
(1087, 48, 'Andorai Péter', -1),
(1088, 31, 'Mertz Tibor', -1),
(1089, 71, 'Böröndy Katalin', 0),
(1090, 83, 'Felvinczy Győző', -1),
(1091, 92, 'Bach Kata', -1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `osztaly`
--

CREATE TABLE `osztaly` (
  `id` int(2) DEFAULT NULL,
  `kezdeseve` int(4) DEFAULT NULL,
  `vegzeseve` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- A tábla adatainak kiíratása `osztaly`
--

INSERT INTO `osztaly` (`id`, `kezdeseve`, `vegzeseve`) VALUES
(1, 2002, 2006),
(2, 2001, 2005),
(3, 2004, 2008),
(4, 2003, 2007),
(5, 2005, 2009),
(6, 2000, 2004),
(7, 1999, 2003),
(8, 1998, 2002),
(9, 1997, 2001),
(10, 1996, 2000),
(11, 1995, 1999),
(12, 1994, 1998),
(13, 1993, 1997),
(14, 1992, 1996),
(15, 1991, 1995),
(16, 1990, 1994),
(17, 1989, 1993),
(18, 1988, 1992),
(19, 1988, 1992),
(20, 1986, 1990),
(21, 1986, 1990),
(22, 1985, 1989),
(23, 1985, 1989),
(24, 1983, 1987),
(25, 1983, 1987),
(26, 1984, 1988),
(27, 1984, 1988),
(28, 1982, 1986),
(29, 1982, 1986),
(30, 1981, 1985),
(31, 1981, 1985),
(32, 1980, 1984),
(33, 1980, 1984),
(34, 1979, 1983),
(35, 1979, 1983),
(36, 1978, 1982),
(37, 1978, 1982),
(38, 1977, 1981),
(39, 1977, 1981),
(40, 1977, 1981),
(41, 1975, 1979),
(42, 1974, 1978),
(43, 1974, 1978),
(44, 1974, 1978),
(45, 1973, 1977),
(46, 1973, 1977),
(47, 1972, 1976),
(48, 1972, 1976),
(49, 1971, 1975),
(50, 1971, 1975),
(51, 1970, 1974),
(52, 1969, 1973),
(53, 1969, 1973),
(54, 1968, 1972),
(55, 1968, 1972),
(56, 1967, 1971),
(57, 1967, 1971),
(58, 1966, 1970),
(59, 1965, 1969),
(60, 1964, 1968),
(61, 1964, 1968),
(62, 1963, 1967),
(63, 1962, 1966),
(64, 1961, 1965),
(65, 1960, 1964),
(66, 1959, 1963),
(67, 1958, 1962),
(68, 1957, 1961),
(69, 1957, 1961),
(70, 1955, 1959),
(71, 1954, 1958),
(72, 1953, 1957),
(73, 1952, 1956),
(74, 1951, 1955),
(75, 1950, 1954),
(76, 1949, 1953),
(77, 1948, 1952),
(78, 1947, 1951),
(79, 1946, 1950),
(80, 1945, 1949),
(81, 1944, 1948),
(82, 1943, 1947),
(83, 1942, 1946),
(84, 2006, 2010),
(85, 1994, 1998),
(86, 1989, 1993),
(87, 1976, 1980),
(88, 1976, 1980),
(89, 1961, 1965),
(90, 1961, 1965),
(91, 1958, 1962),
(92, 2010, 2015),
(93, 2009, 2014),
(94, 2007, 2012);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tanar`
--

CREATE TABLE `tanar` (
  `id` int(2) DEFAULT NULL,
  `nev` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- A tábla adatainak kiíratása `tanar`
--

INSERT INTO `tanar` (`id`, `nev`) VALUES
(1, 'Ács János'),
(2, 'Békés András'),
(3, 'Dömötör András'),
(4, 'Gálffi László'),
(5, 'Hegedűs D. Géza'),
(6, 'Huszti Péter'),
(7, 'Iglódi István'),
(8, 'Jordán Tamás'),
(9, 'Kazimir Károly'),
(10, 'Kerényi Imre'),
(11, 'Lukáts Andor'),
(12, 'Benedek Miklós'),
(13, 'Forgács Péter'),
(14, 'Horvai István'),
(15, 'Kállai Ferenc'),
(16, 'Major Tamás'),
(17, 'Marton Endre'),
(18, 'Máté Gábor'),
(19, 'Pártos Géza'),
(20, 'Simon Zsuzsa'),
(21, 'Vámos László'),
(22, 'Várkonyi Zoltán'),
(23, 'Zsámbéki Gábor'),
(24, 'Zsótér Sándor'),
(31, 'Marton László'),
(32, 'Szinetár Miklós'),
(33, 'Szirtes Tamás');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tanitja`
--

CREATE TABLE `tanitja` (
  `tanarid` int(2) DEFAULT NULL,
  `osztalyid` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- A tábla adatainak kiíratása `tanitja`
--

INSERT INTO `tanitja` (`tanarid`, `osztalyid`) VALUES
(1, 84),
(2, 23),
(2, 31),
(2, 39),
(2, 50),
(2, 56),
(2, 64),
(12, 8),
(12, 12),
(3, 94),
(13, 92),
(4, 84),
(5, 5),
(5, 6),
(5, 92),
(14, 4),
(14, 11),
(14, 15),
(14, 25),
(14, 34),
(14, 41),
(14, 49),
(6, 19),
(7, 86),
(8, 1),
(15, 40),
(9, 27),
(9, 38),
(9, 45),
(9, 53),
(10, 10),
(10, 14),
(10, 18),
(10, 26),
(10, 33),
(10, 87),
(11, 1),
(16, 29),
(16, 37),
(17, 36),
(17, 44),
(31, 2),
(31, 5),
(31, 9),
(31, 13),
(31, 24),
(31, 35),
(31, 92),
(18, 4),
(18, 7),
(18, 94),
(19, 60),
(20, 32),
(20, 48),
(20, 55),
(20, 61),
(20, 88),
(20, 90),
(32, 21),
(32, 28),
(32, 47),
(32, 59),
(32, 89),
(33, 17),
(33, 22),
(33, 30),
(21, 43),
(21, 52),
(22, 42),
(22, 51),
(22, 58),
(22, 63),
(23, 3),
(23, 16),
(23, 20),
(23, 85),
(23, 93),
(24, 3),
(24, 93);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
