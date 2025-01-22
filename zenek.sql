-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Jan 22. 10:00
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
-- Adatbázis: `zenekprojekt`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `zenek`
--

CREATE TABLE `zenek` (
  `id` int(11) DEFAULT NULL,
  `cim` varchar(255) DEFAULT NULL,
  `szerzo` varchar(255) DEFAULT NULL,
  `kiadas` int(11) DEFAULT NULL,
  `mufaj` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `zenek`
--

INSERT INTO `zenek` (`id`, `cim`, `szerzo`, `kiadas`, `mufaj`) VALUES
(1, 'Valerie', 'Issie Mullineux', 1848, 'Electronic'),
(2, 'Runnin\' Down a Dream', 'Evita Davidovics', 1975, 'Rock'),
(3, 'Take Five', 'Sergeant Jagielski', 1857, 'Hip-hop'),
(4, 'Last Dance', 'Mattie Andersson', 1588, 'Pop'),
(5, 'Shallow', 'Joleen Arzu', 1984, 'Jazz'),
(6, 'Hurt', 'Catrina Blenkinship', 1942, 'Rock'),
(7, 'With or Without You', 'Randal Fuggle', 1595, 'Jazz'),
(8, 'Torn', 'Fina McCool', 2017, 'Classical'),
(9, 'Take Four', 'Cathyleen Grono', 1513, 'Electronic'),
(10, 'Is This Crippling Depression', 'Chrystal Ruzek', 1718, 'Rock'),
(11, 'Faded', 'Rosalinde Seeks', 1931, 'Hip-hop'),
(12, 'Pumped Up Kicks', 'Park Gladdis', 1602, 'Country'),
(13, 'Bohemian Rhapsody', 'Haroun Barnson', 2009, 'Pop'),
(14, 'Segitseg', 'Lana Del Rey', 1750, 'Jazz'),
(15, 'No Grubs', 'Federica Gill', 1666, 'R&B'),
(16, 'No Scrubs', 'Yanaton Seamarke', 1809, 'Jazz'),
(17, 'Don\'t Stop \'Til You Get Enough', 'Sayres Jonson', 1657, 'Country'),
(18, 'Girls Just Want to Have Fun', 'Torey Brailsford', 1789, 'Hip-hop'),
(19, 'Nothing Else Matters', 'Dasi Bracknall', 2024, 'Country'),
(20, 'Tearin\' Up My Heart', 'Morie Tartt', 1727, 'Classical'),
(21, 'Let\'s Stay Together', 'Giraldo Grinin', 1531, 'Pop'),
(22, 'House of the Rising Sun', 'Petey Kurdani', 1843, 'R&B'),
(23, 'Jackhammer', 'Leelah Tomalin', 1905, 'Jazz'),
(24, 'The Final Countdown', 'Tybie Seamen', 1798, 'Country'),
(25, 'Last Dance', 'Alli Ovid', 1924, 'Classical'),
(26, 'Dream On', 'Letizia Lawson', 1830, 'Jazz'),
(27, 'Shallow', 'Ebony Arnaut', 2018, 'Electronic'),
(28, 'Livin\' on a Prayer', 'Malina Gristwood', 1945, 'Rock'),
(29, 'Livin\' on a Rift', 'Sherm Titterton', 1726, 'R&B'),
(30, 'Ain\'t No Mountain High Enough', 'Calla Strotone', 1533, 'Classical'),
(31, 'Purple Haze', 'Lalo Lawtey', 1826, 'Electronic'),
(32, 'Black Hole Sun', 'Nerty Grasser', 2020, 'Electronic'),
(33, 'Shut Up and Dance', 'Judas Gobbet', 1572, 'Jazz'),
(34, 'Stand On Me', 'Alia McKinlay', 1621, 'Hip-hop'),
(35, 'Pumped Up BalazsKicks', 'Bengt Gronaller', 1550, 'Classical'),
(36, 'I Wanna Rock', 'Tadeas Janowski', 1901, 'R&B'),
(37, 'All Star', 'Mirna McNirlan', 1588, 'Electronic'),
(38, 'You’re Fat', 'Darby Cuss', 1536, 'R&B'),
(39, 'Wonderroof', 'Northrop Dimmick', 1990, 'Country'),
(40, 'Take a Bow', 'Lloyd Houlison', 1560, 'Pop'),
(41, 'Sicko Mode', 'Reagen Dymott', 1791, 'Electronic'),
(42, 'Livin', 'Dickie Capoun', 1503, 'Electronic'),
(43, 'S.O.S.', 'Margery Nutkin', 1766, 'R&B'),
(44, 'Shake It Off', 'Ruggiero Pacitti', 1768, 'Classical'),
(45, 'Let\'s not Dance', 'Vernor Yurchenko', 1698, 'Electronic'),
(46, 'The Sound of Silence', 'Bren Izhak', 1569, 'Pop'),
(47, 'Stand By Me', 'Brendon Toffalo', 1862, 'R&B'),
(48, 'Let\'s Stay', 'Yorgo Gilbane', 1719, 'Rock'),
(49, 'Breathe Me', 'Gale Symon', 1879, 'Pop'),
(50, 'Shape of You', 'Violante Derbyshire', 1800, 'R&B'),
(51, 'Gangnam Style', 'Salim Kave', 1667, 'Country'),
(52, 'Uptown Funk', 'Nicolis Anstis', 1807, 'R&B'),
(53, 'Blinding Darkness', 'Cherlyn Mathewes', 1662, 'Pop'),
(54, 'Titanium', 'Rollie Matiebe', 1573, 'Country'),
(55, 'Blinding Lights', 'Ardelia Mattisson', 1979, 'Rock'),
(56, 'With or Without Ui I Ai U U I I I Ai', 'Eliot Sommerlin', 1908, 'Hip-hop'),
(57, 'You’re Ugly', 'Liz Huddart', 1638, 'Electronic'),
(58, 'FEIN', 'Pen Hanssmann', 1872, 'Pop'),
(59, 'Mr. Saxobeat', 'Ann-marie Buttress', 1854, 'Country'),
(60, 'Wonderwindow', 'Nicol Mathers', 1574, 'Classical'),
(61, 'Here Comes the Sun', 'Ddene Stonier', 1723, 'Electronic'),
(62, 'Smells Like Teen Spirit', 'Cobby Shulver', 1711, 'Hip-hop'),
(63, 'Ain\'t No Sunshine', 'Arvin McGuinley', 1875, 'Rock'),
(64, 'Summer of \'69', 'Keslie Meco', 1717, 'Pop'),
(65, 'Blinding', 'Stevana Royans', 1783, 'Classical'),
(66, 'Wonderdoor', 'Linda Schoroder', 1694, 'R&B'),
(67, 'Lose My Breath', 'Alden Vinnick', 1577, 'Hip-hop'),
(68, 'Somebody to Hate', 'Mycah Gronous', 1820, 'Hip-hop'),
(69, 'All Moon', 'Emelyne Ruberti', 1638, 'Country'),
(70, 'Let\'s Dance', 'Lona Jest', 1684, 'Pop'),
(71, 'I Wanna Paper', 'Jasmine Berceros', 1758, 'Jazz'),
(72, 'You’re Beautiful', 'Jethro Christoforou', 1789, 'Jazz'),
(73, 'I Wanna Dance With Somebody', 'Vivianna O\'Dempsey', 1584, 'Hip-hop'),
(74, 'Push It', 'Sallyann Beddall', 1549, 'Pop'),
(75, 'Zombie', 'Zachary Tedridge', 1860, 'Jazz'),
(76, 'Take Me to Church', 'Cindra Davidov', 1542, 'Jazz'),
(77, 'Blackbird', 'Roddie Sowerbutts', 1976, 'Electronic'),
(78, 'Orsolya', 'Gaby Langford', 1687, 'Pop'),
(79, 'Jailhouse Rock', 'Theodora Kaas', 1998, 'Rock'),
(80, 'Don\'t Speak', 'Libbey Parcell', 1660, 'Hip-hop'),
(81, 'Sweet Caroline', 'Silvano Kroger', 1624, 'Classical'),
(82, 'Downtown Funk', 'Gunther Tolworthy', 1702, 'Pop'),
(83, 'Rolling in the Deep', 'Erny Ashe', 1517, 'Pop'),
(84, 'Bohemian Rhapsody', 'Libbi Hagland', 1765, 'Hip-hop'),
(85, 'Creep', 'Mamie Sturges', 1693, 'Hip-hop'),
(86, 'Shut Up and Dance', 'Dannie Stubbings', 1944, 'R&B'),
(87, 'Hallelujah', 'Luciano Treble', 1681, 'Country'),
(88, 'Back In Black', 'Shelly McKnockiter', 1534, 'Rock'),
(89, 'Mr. Brightside', 'Evangelin McVittie', 1541, 'R&B'),
(90, 'Jump', 'Brocky Alleyn', 1561, 'Rock'),
(91, 'Billie Jean', 'Tatiana Fisbey', 1943, 'Rock'),
(92, 'Titanium', 'Angelika Tregido', 1712, 'Jazz'),
(93, 'Wondertable', 'Niccolo De Ath', 1648, 'Classical'),
(94, 'Dancing in the Dark', 'Serena Torrijos', 1982, 'Hip-hop'),
(95, 'Radioactive', 'Sue Kitchinham', 1897, 'Rock'),
(96, 'Boogie Woogie Bugle Boy', 'Gennie Thirwell', 1610, 'Pop'),
(97, 'Back to Black', 'Jasen Kornousek', 1812, 'Pop'),
(98, 'I Want to Hold Your Hand', 'Camella Turley', 1944, 'Classical'),
(99, 'Wonderpepsi', 'Bryanty Myrkus', 1535, 'Pop'),
(100, 'Summer of \'69', 'Monty Mullin', 1955, 'Hip-hop'),
(101, 'Pumped Up Nigs', 'Arlen Coltman', 1976, 'Classical'),
(102, 'Counting Stars', 'Minerva Grinaway', 1872, 'Classical'),
(103, 'Ain\'t No Sunshine', 'Gus Cowlin', 1723, 'Electronic'),
(104, 'Stand In Me', 'Maegan Kerford', 1905, 'Electronic'),
(105, 'Thriller', 'Stefa Dorrington', 2014, 'Hip-hop'),
(106, 'Somebody to Love', 'Lilyan Bass', 1722, 'Country'),
(107, 'Take On Me', 'Adam Hanaford', 2020, 'Rock'),
(108, 'Is This Love', 'Ashley Vail', 1534, 'R&B'),
(109, 'Take Me Out', 'Staci Stook', 1883, 'R&B'),
(110, 'Bad to the Bone', 'Olag Maytom', 1659, 'Rock'),
(111, 'No Cry', 'Jocko Lougheid', 2000, 'R&B'),
(112, 'I Wanna Wood', 'Ileane Camous', 1651, 'Pop'),
(113, 'Pepe', 'Freddie Catcheside', 1926, 'Pop'),
(114, 'Gangsta’s Paradise', 'Leif Badsey', 1941, 'Rock'),
(115, 'The Weight', 'Vick Petrescu', 1823, 'Jazz'),
(116, 'Hey Jude', 'Tabitha Hayle', 1804, 'Country'),
(117, 'What\'s Going Off', 'Sarene Troker', 1660, 'Hip-hop'),
(118, 'Wonderwall', 'Dorey McWhinnie', 1717, 'Rock'),
(119, 'What\'s Going On', 'Salomon Cours', 1834, 'Pop'),
(120, 'Sledgehammer', 'Donnajean Brodbin', 1951, 'Country');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
