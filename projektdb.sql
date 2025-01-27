-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Jan 27. 18:15
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `projektdb`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `hallgatottsagtabla`
--

CREATE TABLE `hallgatottsagtabla` (
  `id` int(11) NOT NULL,
  `hallgatottsag` int(11) DEFAULT NULL,
  `zene_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `hallgatottsagtabla`
--

INSERT INTO `hallgatottsagtabla` (`id`, `hallgatottsag`, `zene_id`) VALUES
(1, 615436624, 1),
(2, 22092561, 2),
(3, 231663704, 3),
(4, 943357633, 4),
(5, 100513207, 5),
(6, 279987223, 6),
(7, 943714322, 7),
(8, 786311312, 8),
(9, 236171202, 9),
(10, 326208339, 10),
(11, 510753705, 11),
(12, 944245802, 12),
(13, 868554645, 13),
(14, 932160985, 14),
(15, 950889520, 15),
(16, 956994559, 16),
(17, 467756352, 17),
(18, 991466796, 18),
(19, 314133506, 19),
(20, 843528022, 20),
(21, 830731928, 21),
(22, 486773229, 22),
(23, 651068042, 23),
(24, 123902640, 24),
(25, 779762298, 25),
(26, 919146897, 26),
(27, 238181886, 27),
(28, 702638622, 28),
(29, 605115708, 29),
(30, 842221287, 30),
(31, 141437471, 31),
(32, 387465873, 32),
(33, 114370873, 33),
(34, 742764102, 34),
(35, 262986510, 35),
(36, 150519884, 36),
(37, 260204738, 37),
(38, 39433905, 38),
(39, 327275089, 39),
(40, 590553554, 40),
(41, 974915712, 41),
(42, 296186934, 42),
(43, 81262317, 43),
(44, 709610981, 44),
(45, 960792575, 45),
(46, 510880384, 46),
(47, 8827589, 47),
(48, 976526174, 48),
(49, 237341800, 49),
(50, 17148064, 50),
(51, 406380992, 51),
(52, 997603003, 52),
(53, 355829904, 53),
(54, 740784417, 54),
(55, 845866463, 55),
(56, 58415752, 56),
(57, 395209823, 57),
(58, 343890244, 58),
(59, 931424936, 59),
(60, 704318702, 60),
(61, 576605584, 61),
(62, 347452577, 62),
(63, 159331194, 63),
(64, 285819257, 64),
(65, 652435890, 65),
(66, 376588792, 66),
(67, 590481889, 67),
(68, 967384004, 68),
(69, 353436712, 69),
(70, 824393243, 70),
(71, 177020226, 71),
(72, 716686763, 72),
(73, 853513214, 73),
(74, 586100910, 74),
(75, 323630890, 75),
(76, 469876704, 76),
(77, 580240230, 77),
(78, 858261871, 78),
(79, 809997242, 79),
(80, 900170357, 80),
(81, 396679344, 81),
(82, 401765619, 82),
(83, 492106145, 83),
(84, 700772422, 84),
(85, 840038521, 85),
(86, 726728928, 86),
(87, 521519396, 87),
(88, 549118246, 88),
(89, 470549930, 89),
(90, 97562835, 90),
(91, 185693860, 91),
(92, 691204466, 92),
(93, 129868441, 93),
(94, 764852224, 94),
(95, 376827400, 95),
(96, 300991132, 96),
(97, 196049009, 97),
(98, 859552507, 98),
(99, 453384146, 99),
(100, 650669794, 100),
(101, 236963057, 101),
(102, 36643428, 102),
(103, 379626516, 103),
(104, 419512058, 104),
(105, 151192726, 105),
(106, 842536100, 106),
(107, 208467144, 107),
(108, 873140615, 108),
(109, 308709772, 109),
(110, 181772560, 110),
(111, 660234109, 111),
(112, 683709428, 112),
(113, 413049016, 113),
(114, 365362449, 114),
(115, 78285963, 115),
(116, 800211144, 116),
(117, 669329509, 117),
(118, 334330601, 118),
(119, 357532058, 119),
(120, 101263412, 120);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `zenek`
--

CREATE TABLE `zenek` (
  `id` int(11) NOT NULL,
  `cim` varchar(49) DEFAULT NULL,
  `szerzo` varchar(50) DEFAULT NULL,
  `mufaj` varchar(19) DEFAULT NULL,
  `kiadas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `zenek`
--

INSERT INTO `zenek` (`id`, `cim`, `szerzo`, `mufaj`, `kiadas`) VALUES
(1, 'Blandest', 'Carling Eichmann', 'Rap', 1936),
(2, 'Take It Easy', 'Averil Hayhow', 'Blues', 2017),
(3, 'Bad to the Bone', 'Myriam Cluer', 'Avant-garde', 1956),
(4, 'The Sound of Silence', 'Karita Bargh', 'Calypso', 2007),
(5, 'Scentless Apprentice', 'Kaylee Allatt', 'Vaporwave', 1946),
(6, 'Take On Me', 'Bing Sanchez', 'Old School Hip-hop', 1988),
(7, 'Sweet Home Alabama', 'Joel Thyng', 'Psytrance', 1908),
(8, 'Where Did You Sleep Last Night', 'Ellswerth Pedican', 'Glam Rock', 1944),
(9, 'Pumped Up Kicks', 'Craggy Kinvig', 'Electro Swing', 1963),
(10, 'The Box', 'Brandise Christophe', 'Minimalista zene', 1905),
(11, 'Hairspray King', 'Sibella Ledeker', 'Britpop', 1904),
(12, 'Bad Romance', 'Nancy Heeley', 'Bebop', 1995),
(13, 'Radio Friendly', 'Dexter D\'Orsay', 'Free Jazz', 1975),
(14, 'Roxanne', 'Isobel Leban', 'Metal', 1908),
(15, 'Holiweek', 'Phil Mullender', 'Power Metal', 1979),
(16, 'Everything I Do', 'Kathryn Capron', 'Calypso', 1909),
(17, 'Radio Friendly Unit Shifter', 'Franchot Bellinger', 'Art Rock', 1910),
(18, 'Every Breath You Take', 'Seamus O\'Callaghan', 'Swing', 1911),
(19, 'Brain Stew', 'Claudell Mordey', 'Black Metal', 2018),
(20, 'Nothing Else', 'Ramonda Mompesson', 'Hardcore', 1980),
(21, 'Torn', 'Janela Dallewater', 'Smooth Jazz', 1931),
(22, 'Fast Car', 'Rachael Jobes', 'Opera', 1970),
(23, 'Hairspray Queen', 'Husein Jakoviljevic', 'Crunk', 1943),
(24, 'Help Me I’m Hungry', 'Clem Spinage', 'Noise Rock', 1912),
(25, 'The Man Who Sold the World', 'Florinda Plum', 'Experimental', 1997),
(26, 'You Know You’re Right', 'Dion Rolling', 'Tango', 2004),
(27, 'Push It', 'Devinne Fryers', 'Romantikus zene', 1974),
(28, 'Take Me Out', 'Willy Wainscoat', 'Black Metal', 1974),
(29, 'The Professor', 'Burton Velez', 'Soul', 1910),
(30, 'No Scrubs', 'Thaine Dearan', 'Ambient', 1974),
(31, 'The Way You Make Me Feel', 'Duke Santhouse', 'Boom Bap', 1952),
(32, 'Gangsta’s Paradise', 'Eustacia Ammer', 'Ska', 1992),
(33, 'Jesus Doesn’t Want Me for a Sunbeam', 'Raffarty Scoon', 'Hard Rock', 2020),
(34, 'The Scientist', 'Dall Leall', 'Grunge', 1977),
(35, 'Everything I Do (I Do It for You)', 'Melodie Rodie', 'Mambo', 2020),
(36, 'Lose Myself', 'Randy Clews', 'Sludge Metal', 1952),
(37, 'What\'s Going On', 'Diego Rumbellow', 'Filmzene', 2008),
(38, 'Redundant', 'Caritta Lazarus', 'Drill', 2010),
(39, 'No Cry', 'Elvira Kincade', 'Punk', 1925),
(40, 'Thorns', 'Stacy Blennerhassett', 'Alternative Hip-hop', 2011),
(41, 'Take a Bow', 'Batholomew Gawthrope', 'Trap Metal', 1903),
(42, 'Blinding Lights', 'Stephana Snedden', 'Elektronikus zene', 1909),
(43, 'If You Not', 'Alanson Sandercroft', 'Drill', 1976),
(44, 'Mexican Seafood', 'Tades Muat', 'New Age', 1980),
(45, 'Warning', 'Elisabet Corro', 'Psytrance', 1916),
(46, 'Like a Rolling Stone', 'Ramsey Fears', 'Alternative Hip-hop', 1953),
(47, 'Swap Meet', 'Ettie Lewry', 'Minimalista zene', 2014),
(48, 'Sliver', 'Ransom Arnolds', 'Cool Jazz', 1905),
(49, 'the Guilt', 'Julius Rickerby', 'Bachata', 1940),
(50, 'In the Start', 'Wells Durning', 'Latin', 1942),
(51, 'Take Six', 'Lavinie Woolam', 'Neo-soul', 1973),
(52, 'Take Five', 'Loydie Alves', 'Bebop', 1949),
(53, 'With or Without Me', 'Malory Zeale', 'Progressive Rock', 2024),
(54, 'Holiday', 'Rhody Caulkett', 'Indie', 1943),
(55, 'I’m Yours', 'Sofie Heaps', 'Musical', 1962),
(56, 'We Will Rock You', 'Doe Sillito', 'Power Metal', 2020),
(57, 'Rape Me', 'Arty Mitchley', 'Trap Metal', 1970),
(58, 'S.O.S.', 'Marne Milhench', 'Indie', 1924),
(59, 'Time to Pretend', 'Marney Fragino', 'Afrobeat', 1934),
(60, 'Very Ape', 'Xever Guerry', 'Flamenco', 1910),
(61, 'Your Song', 'Zea Gosnall', 'Boom Bap', 1911),
(62, 'Jailhouse Rock', 'Nanni Ollis', 'Smooth Jazz', 2004),
(63, 'Viva La Vida', 'Valle Goodinge', 'Neo-soul', 1965),
(64, 'Happy', 'Jephthah Curless', 'Barokk zene', 1955),
(65, 'the Guild', 'Aryn Carradice', 'Power Metal', 1969),
(66, 'Valami', 'Eolande Baggallay', 'Symphonic Metal', 1968),
(67, 'Hotel Yorba', 'Cass Lantaph', 'Drill', 1918),
(68, 'Here Comes the Star', 'Stacey Blanc', 'Techno', 1978),
(69, 'Molly’s Lips', 'Hebert Timby', 'House', 1965),
(70, 'Wonderwall', 'Aguste Blankau', 'Latin', 1993),
(71, 'Even in His Youth', 'Rosina Clutterham', 'Crunk', 1920),
(72, 'Boulevard of Broken Dreams', 'Ginger Averies', 'K-pop', 1969),
(73, 'Rolling in the Deep', 'Derk Bothie', 'Big Band', 1969),
(74, 'HUMBLE.', 'Paddy Whyteman', 'Jazz', 1989),
(75, 'Walking Contradiction', 'Chandra Akrigg', 'Bluegrass', 2018),
(76, 'Shake It Off', 'Daria Goskar', 'Honky Tonk', 1998),
(77, 'Lose Yourself to Dance', 'Flemming Ingle', 'Progressive Rock', 1921),
(78, 'Eye of the Tiger', 'Sharai Dmych', 'Post-rock', 1948),
(79, 'Toxic', 'Bobinette Quye', 'op', 1995),
(80, 'With or Without You', 'Delia Lambard', 'Elektronikus zene', 1948),
(81, 'Sweet Home', 'Bevan Brigham', 'Ska', 1976),
(82, 'Tennessee Whiskey', 'Jessi Grolmann', 'Trap Metal', 1974),
(83, 'All Apologies', 'Christoper Pes', 'Tango', 1992),
(84, 'Breathe Me', 'Garrick Pottie', 'Opera', 1982),
(85, 'Bad Guy', 'Burnaby Brandli', 'Trip-hop', 1929),
(86, 'Titan', 'Willey Petheridge', 'Speed Metal', 1906),
(87, 'Jump', 'Laird Sigsworth', 'Power Metal', 1914),
(88, 'Bailando', 'Delcina Behling', 'Speed Metal', 1961),
(89, 'Imagine', 'Guglielma Leason', 'Romantikus zene', 2012),
(90, 'Let\'s Dance', 'Mattheus Jeandet', 'Industrial', 2012),
(91, 'Basket Case', 'Devin Servant', 'Black Metal', 1918),
(92, 'If You Must', 'Janette Posnett', 'Surf Rock', 2011),
(93, 'Valerie Paint It Black', 'Mufinella Oxshott', 'Indie', 1978),
(94, 'They Hung Him on a Cross', 'Aldridge Paice', 'Folk', 2018),
(95, 'Summer of \'69', 'Petra Callcott', 'New Age', 2004),
(96, 'Lose Control', 'Cindelyn Pichmann', 'Smooth Jazz', 1977),
(97, 'Clair de Lune', 'Blair Blencowe', 'Trance', 2009),
(98, 'In Bloom', 'Glenn Boni', 'Techno', 1920),
(99, 'Here Comes the Moon', 'Cornie Sor', 'Flamenco', 1917),
(100, 'Even in His', 'Talia Denisevich', 'Tango', 1934),
(101, 'Blowin\' in the Wind', 'Darrell Petriello', 'Death Metal', 1912),
(102, 'In the End', 'Blinny Finley', 'Opera', 1941),
(103, 'Rock You Like a Hurricane', 'Aurilia Bockmaster', 'Disco', 1920),
(104, 'Lose Yourself', 'Kennedy d\'Escoffier', 'Bachata', 1927),
(105, 'Longview', 'Dania Dodding', 'Trip-hop', 1998),
(106, 'I Gotta Feeling', 'Fabiano Jonk', 'Grunge', 1991),
(107, 'The Weight', 'Weylin Hanway', 'Glam Rock', 1909),
(108, 'Titanium', 'Tilly Spadeck', 'Folk', 1942),
(109, 'Lose My Breath', 'Meggi Nealey', 'Old School Hip-hop', 1913),
(110, 'Gangnam Style', 'Abdul Hadwen', 'Lo-fi', 1992),
(111, 'Here Comes the Sun', 'Andy Arnoult', 'Heavy Metal', 1911),
(112, 'Nothing Else Matters', 'Ethel Gonet', 'Hard Rock', 1947),
(113, 'Hitchin’ a Ride', 'Nedi Marmon', 'Doo-wop', 1903),
(114, 'The Final Countdown', 'Ibby Bushell', 'Blues', 2006),
(115, 'Can\'t Stop', 'Charmain Gotcher', 'Avant-garde', 1911),
(116, 'Creep', 'Dalis Markham', 'Trance', 1953),
(117, 'Dancing Queen', 'Curr Riste', 'Samba', 2006),
(118, 'Someone Like You', 'Appolonia Kuhnhardt', 'Rock', 1908),
(119, 'Blackbird', 'Lexi Jennaroy', 'Neo-soul', 1999),
(120, 'Beeswax', 'Ellene Marden', 'Flamenco', 1964);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `hallgatottsagtabla`
--
ALTER TABLE `hallgatottsagtabla`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kulcs` (`zene_id`);

--
-- A tábla indexei `zenek`
--
ALTER TABLE `zenek`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `hallgatottsagtabla`
--
ALTER TABLE `hallgatottsagtabla`
  MODIFY `zene_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `hallgatottsagtabla`
--
ALTER TABLE `hallgatottsagtabla`
  ADD CONSTRAINT `hallgatottsagtabla_ibfk_1` FOREIGN KEY (`zene_id`) REFERENCES `zenek` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
