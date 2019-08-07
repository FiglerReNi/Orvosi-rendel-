-- Adatb�zis: `orvosos`
--
CREATE DATABASE IF NOT EXISTS `orvosos` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `orvosos`;

-- --------------------------------------------------------

--
-- T�bla szerkezet ehhez a t�bl�hoz `beosztas`
--

CREATE TABLE `beosztas` (
  `oid` int(11) NOT NULL,
  `razon` int(11) NOT NULL,
  `datum` date NOT NULL,
  `rendeles_tipusa` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `bazon` int(11) NOT NULL,
  `oraszam` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A t�bla adatainak ki�rat�sa `beosztas`
--

INSERT INTO `beosztas` (`oid`, `razon`, `datum`, `rendeles_tipusa`, `bazon`, `oraszam`) VALUES(1, 1, '2017-05-10', 'hazi', 1, 4);
INSERT INTO `beosztas` (`oid`, `razon`, `datum`, `rendeles_tipusa`, `bazon`, `oraszam`) VALUES(2, 3, '2017-04-12', 'szak', 2, 6);
INSERT INTO `beosztas` (`oid`, `razon`, `datum`, `rendeles_tipusa`, `bazon`, `oraszam`) VALUES(1, 2, '2017-06-16', 'hazi', 3, 4);
INSERT INTO `beosztas` (`oid`, `razon`, `datum`, `rendeles_tipusa`, `bazon`, `oraszam`) VALUES(1, 2, '2017-05-10', 'szak', 4, 4);

-- --------------------------------------------------------

--
-- T�bla szerkezet ehhez a t�bl�hoz `nyitvatartas`
--

CREATE TABLE `nyitvatartas` (
  `razon` int(11) NOT NULL,
  `hetfo` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `kedd` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `szerda` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `csutortok` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `pentek` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `szombat` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `vasarnap` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A t�bla adatainak ki�rat�sa `nyitvatartas`
--

INSERT INTO `nyitvatartas` (`razon`, `hetfo`, `kedd`, `szerda`, `csutortok`, `pentek`, `szombat`, `vasarnap`) VALUES(1, 'nincs', 'nincs', '10:00-14:00', '14:00-16:00', '8:00-10:00', 'nincs', 'nincs');
INSERT INTO `nyitvatartas` (`razon`, `hetfo`, `kedd`, `szerda`, `csutortok`, `pentek`, `szombat`, `vasarnap`) VALUES(2, 'nincs', '10:00-14:00', 'nincs', '14:00-16:00', 'nincs', '8:00-10:00', 'nincs');

-- --------------------------------------------------------

--
-- T�bla szerkezet ehhez a t�bl�hoz `orvosok`
--

CREATE TABLE `orvosok` (
  `oid` int(11) NOT NULL,
  `nev` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `szakterulet` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `mukodesi_azonosito` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `tel` int(11) NOT NULL,
  `ugyeleti_oraszam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A t�bla adatainak ki�rat�sa `orvosok`
--

INSERT INTO `orvosok` (`oid`, `nev`, `szakterulet`, `mukodesi_azonosito`, `email`, `tel`, `ugyeleti_oraszam`) VALUES(1, 'Kis B�la', 'h�ziorvos', '124FR47', 'r@b.hu', 61234567, 40);
INSERT INTO `orvosok` (`oid`, `nev`, `szakterulet`, `mukodesi_azonosito`, `email`, `tel`, `ugyeleti_oraszam`) VALUES(2, 'Nagy Roz�lia', 'gasztroenterol�gus', '194FR47', 're@b.hu', 617894612, 20);
INSERT INTO `orvosok` (`oid`, `nev`, `szakterulet`, `mukodesi_azonosito`, `email`, `tel`, `ugyeleti_oraszam`) VALUES(3, 'Haj�s Alfr�d', 'seb�sz', '824FR47', 'uiu@gmail.hu', 2147483647, 40);
INSERT INTO `orvosok` (`oid`, `nev`, `szakterulet`, `mukodesi_azonosito`, `email`, `tel`, `ugyeleti_oraszam`) VALUES(4, 'Kis Manyi', 'seb�sz', '124oR47', 'rplk@b.hu', 61234767, 40);
INSERT INTO `orvosok` (`oid`, `nev`, `szakterulet`, `mukodesi_azonosito`, `email`, `tel`, `ugyeleti_oraszam`) VALUES(5, '�rv�s B�la', 'h�ziorvos', '122TT47', 'jkljk@b.hu', 6145767, 60);

-- --------------------------------------------------------

--
-- T�bla szerkezet ehhez a t�bl�hoz `rendelok`
--

CREATE TABLE `rendelok` (
  `razon` int(11) NOT NULL,
  `telepules` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `megye` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `pontos_cim` varchar(255) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A t�bla adatainak ki�rat�sa `rendelok`
--

INSERT INTO `rendelok` (`razon`, `telepules`, `megye`, `pontos_cim`) VALUES(1, 'Homok', 'Gy�r-Moson-Sopron', 'Kisenyed utca 13.');
INSERT INTO `rendelok` (`razon`, `telepules`, `megye`, `pontos_cim`) VALUES(2, 'Kecskem�t', 'B�cs-Kiskun', 'H�rs k�z 6.');
INSERT INTO `rendelok` (`razon`, `telepules`, `megye`, `pontos_cim`) VALUES(3, 'Debrecen', 'Hajd�-Bihar', 'F� utca 3.');
INSERT INTO `rendelok` (`razon`, `telepules`, `megye`, `pontos_cim`) VALUES(4, 'Homok', 'Gy�r-Moson-Sopron', 'Kerepesi utca 2.');

--
-- Indexek a ki�rt t�bl�khoz
--

--
-- A t�bla indexei `beosztas`
--
ALTER TABLE `beosztas`
  ADD PRIMARY KEY (`bazon`),
  ADD UNIQUE KEY `bazon` (`bazon`),
  ADD KEY `razon` (`razon`),
  ADD KEY `oid` (`oid`);

--
-- A t�bla indexei `nyitvatartas`
--
ALTER TABLE `nyitvatartas`
  ADD PRIMARY KEY (`razon`),
  ADD UNIQUE KEY `razon` (`razon`);

--
-- A t�bla indexei `orvosok`
--
ALTER TABLE `orvosok`
  ADD PRIMARY KEY (`oid`),
  ADD UNIQUE KEY `oid` (`oid`);

--
-- A t�bla indexei `rendelok`
--
ALTER TABLE `rendelok`
  ADD PRIMARY KEY (`razon`),
  ADD UNIQUE KEY `razon` (`razon`);

--
-- A ki�rt t�bl�k AUTO_INCREMENT �rt�ke
--

--
-- AUTO_INCREMENT a t�bl�hoz `beosztas`
--
ALTER TABLE `beosztas`
  MODIFY `bazon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a t�bl�hoz `nyitvatartas`
--
ALTER TABLE `nyitvatartas`
  MODIFY `razon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a t�bl�hoz `orvosok`
--
ALTER TABLE `orvosok`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a t�bl�hoz `rendelok`
--
ALTER TABLE `rendelok`
  MODIFY `razon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Megk�t�sek a ki�rt t�bl�khoz
--

--
-- Megk�t�sek a t�bl�hoz `beosztas`
--
ALTER TABLE `beosztas`
  ADD CONSTRAINT `beosztas_ibfk_1` FOREIGN KEY (`razon`) REFERENCES `rendelok` (`razon`),
  ADD CONSTRAINT `beosztas_ibfk_2` FOREIGN KEY (`oid`) REFERENCES `orvosok` (`oid`);

--
-- Megk�t�sek a t�bl�hoz `nyitvatartas`
--
ALTER TABLE `nyitvatartas`
  ADD CONSTRAINT `nyitvatartas_ibfk_1` FOREIGN KEY (`razon`) REFERENCES `rendelok` (`razon`);
COMMIT;
