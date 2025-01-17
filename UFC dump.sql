-- phpMyAdmin SQL Dump
-- version 4.0.10deb1ubuntu0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 17, 2025 at 05:11 PM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `UFC`
--

-- --------------------------------------------------------

--
-- Table structure for table `AUDIENCE_FEEDBACK`
--

CREATE TABLE IF NOT EXISTS `AUDIENCE_FEEDBACK` (
  `event_id` int(11) NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `comments` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`event_id`,`comments`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AUDIENCE_FEEDBACK`
--

INSERT INTO `AUDIENCE_FEEDBACK` (`event_id`, `rating`, `comments`) VALUES
(1, 4.5, 'Great event, well organized!'),
(2, 3.8, 'Good but could be better.'),
(3, 4.9, 'Amazing atmosphere and matches!'),
(4, 4.0, 'Enjoyable event with minor issues.'),
(5, 3.5, 'Average experience, not too exciting.'),
(6, 4.7, 'Fantastic performances!'),
(7, 4.2, 'Good event, enjoyable overall.'),
(8, 3.9, 'Decent event but room for improvement.'),
(9, 4.8, 'Outstanding! Highly recommend.'),
(10, 4.4, 'Well executed event, great experience.'),
(11, 3.6, 'Okay but lacked energy.'),
(12, 4.3, 'Entertaining and well managed.'),
(13, 4.6, 'Loved the matches and the vibe!'),
(14, 4.1, 'Very good event, nice work!'),
(15, 3.7, 'Mediocre event with some highlights.'),
(16, 4.9, 'Exceptional event, truly amazing!'),
(17, 4.2, 'Solid effort, enjoyable.'),
(18, 3.8, 'Not bad, but could be better.'),
(19, 4.5, 'Highly entertaining and well managed.'),
(20, 4.0, 'Good overall experience.'),
(21, 3.9, 'Fairly enjoyable, not too exciting.'),
(22, 4.7, 'One of the best events I have attended!'),
(23, 4.1, 'Nice effort, keep it up!'),
(24, 4.3, 'Good vibes and well handled.'),
(25, 4.8, 'Outstanding, thoroughly enjoyed!'),
(26, 3.5, 'Below expectations, could improve.'),
(27, 4.4, 'Great show, well put together.'),
(28, 4.0, 'Good overall but some flaws.'),
(29, 4.6, 'Fantastic experience, would recommend.'),
(30, 4.2, 'Enjoyable and well done!');

-- --------------------------------------------------------

--
-- Table structure for table `BET`
--

CREATE TABLE IF NOT EXISTS `BET` (
  `id` int(11) NOT NULL,
  `fight_id` int(11) NOT NULL,
  `blue_by_sub` decimal(3,2) DEFAULT NULL,
  `blue_by_ko` decimal(3,2) DEFAULT NULL,
  `blue_win` decimal(3,2) DEFAULT NULL,
  `red_by_sub` decimal(3,2) DEFAULT NULL,
  `red_by_ko` decimal(3,2) DEFAULT NULL,
  `red_win` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`id`,`fight_id`),
  KEY `fight_id` (`fight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BET`
--

INSERT INTO `BET` (`id`, `fight_id`, `blue_by_sub`, `blue_by_ko`, `blue_win`, `red_by_sub`, `red_by_ko`, `red_win`) VALUES
(1, 1, 0.20, 0.35, 0.45, 0.25, 0.30, 0.45),
(2, 2, 0.25, 0.30, 0.45, 0.20, 0.35, 0.45),
(3, 3, 0.15, 0.40, 0.45, 0.30, 0.25, 0.45),
(4, 4, 0.35, 0.20, 0.45, 0.25, 0.30, 0.45),
(5, 5, 0.30, 0.25, 0.45, 0.40, 0.15, 0.45),
(6, 6, 0.20, 0.30, 0.50, 0.25, 0.25, 0.50),
(7, 7, 0.25, 0.25, 0.50, 0.30, 0.20, 0.50),
(8, 8, 0.40, 0.15, 0.45, 0.35, 0.10, 0.55),
(9, 9, 0.30, 0.20, 0.50, 0.25, 0.25, 0.50),
(10, 10, 0.25, 0.30, 0.45, 0.20, 0.35, 0.45),
(11, 11, 0.20, 0.35, 0.45, 0.30, 0.25, 0.45),
(12, 12, 0.15, 0.40, 0.45, 0.25, 0.30, 0.45),
(13, 13, 0.35, 0.20, 0.45, 0.40, 0.15, 0.45),
(14, 14, 0.40, 0.10, 0.50, 0.35, 0.15, 0.50),
(15, 15, 0.30, 0.20, 0.50, 0.20, 0.30, 0.50),
(16, 16, 0.25, 0.30, 0.45, 0.35, 0.25, 0.40),
(17, 17, 0.20, 0.35, 0.45, 0.30, 0.25, 0.45),
(18, 18, 0.25, 0.30, 0.45, 0.40, 0.15, 0.40),
(19, 19, 0.15, 0.40, 0.45, 0.35, 0.10, 0.55),
(20, 20, 0.20, 0.35, 0.45, 0.25, 0.30, 0.45),
(21, 21, 0.25, 0.30, 0.45, 0.30, 0.20, 0.50),
(22, 22, 0.30, 0.25, 0.45, 0.25, 0.25, 0.50),
(23, 23, 0.20, 0.35, 0.45, 0.40, 0.15, 0.45),
(24, 24, 0.25, 0.30, 0.45, 0.35, 0.25, 0.40),
(25, 25, 0.40, 0.15, 0.45, 0.30, 0.20, 0.50),
(26, 26, 0.35, 0.20, 0.45, 0.25, 0.30, 0.45),
(27, 27, 0.30, 0.25, 0.45, 0.15, 0.40, 0.45),
(28, 28, 0.20, 0.35, 0.45, 0.25, 0.30, 0.45),
(29, 29, 0.25, 0.30, 0.45, 0.35, 0.15, 0.50),
(30, 30, 0.20, 0.35, 0.45, 0.30, 0.25, 0.45);

-- --------------------------------------------------------

--
-- Table structure for table `CAGE`
--

CREATE TABLE IF NOT EXISTS `CAGE` (
  `id` int(11) NOT NULL,
  `capacity` int(11) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CAGE`
--

INSERT INTO `CAGE` (`id`, `capacity`, `country`, `city`) VALUES
(1, 20000, 'USA', 'Las Vegas'),
(2, 18000, 'Canada', 'Toronto'),
(3, 22000, 'Brazil', 'Rio de Janeiro'),
(4, 15000, 'Japan', 'Tokyo'),
(5, 25000, 'UK', 'London'),
(6, 19000, 'Australia', 'Sydney'),
(7, 21000, 'France', 'Paris'),
(8, 16000, 'Germany', 'Berlin'),
(9, 23000, 'Mexico', 'Mexico City'),
(10, 17000, 'Italy', 'Rome'),
(11, 24000, 'South Africa', 'Johannesburg'),
(12, 20000, 'Russia', 'Moscow'),
(13, 15000, 'China', 'Beijing'),
(14, 18000, 'India', 'Mumbai'),
(15, 22000, 'South Korea', 'Seoul'),
(16, 20000, 'Netherlands', 'Amsterdam'),
(17, 17000, 'Sweden', 'Stockholm'),
(18, 15000, 'Norway', 'Oslo'),
(19, 18000, 'Denmark', 'Copenhagen'),
(20, 19000, 'Argentina', 'Buenos Aires'),
(21, 21000, 'Colombia', 'Bogota'),
(22, 22000, 'Chile', 'Santiago'),
(23, 16000, 'New Zealand', 'Auckland'),
(24, 23000, 'Ireland', 'Dublin'),
(25, 19000, 'Poland', 'Warsaw'),
(26, 24000, 'Portugal', 'Lisbon'),
(27, 25000, 'Belgium', 'Brussels'),
(28, 20000, 'Switzerland', 'Zurich'),
(29, 22000, 'Austria', 'Vienna'),
(30, 21000, 'Spain', 'Madrid');

-- --------------------------------------------------------

--
-- Table structure for table `COMMENTATOR`
--

CREATE TABLE IF NOT EXISTS `COMMENTATOR` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `year_joined` date DEFAULT '2024-12-12',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COMMENTATOR`
--

INSERT INTO `COMMENTATOR` (`id`, `first_name`, `last_name`, `year_joined`) VALUES
(1, 'Joe', 'Rogan', '1997-01-01'),
(2, 'Daniel', 'Cormier', '2019-01-01'),
(3, 'Jon', 'Anik', '2011-01-01'),
(4, 'Michael', 'Bisping', '2019-01-01'),
(5, 'Paul', 'Felder', '2018-01-01'),
(6, 'Dominick', 'Cruz', '2014-01-01'),
(7, 'John', 'Gooden', '2013-01-01'),
(8, 'Kenny', 'Florian', '2009-01-01'),
(9, 'Randy', 'Couture', '2007-01-01'),
(10, 'Frank', 'Mir', '2006-01-01'),
(11, 'Dan', 'Hardy', '2010-01-01'),
(12, 'Brian', 'Stann', '2012-01-01'),
(13, 'Sean', 'O''Connell', '2015-01-01'),
(14, 'Robin', 'Black', '2016-01-01'),
(15, 'Laura', 'Sanko', '2022-01-01'),
(16, 'Megan', 'Olivi', '2015-01-01'),
(17, 'Karen', 'Bryant', '2010-01-01'),
(18, 'Heidi', 'Androl', '2017-01-01'),
(19, 'Bruce', 'Buffer', '1996-01-01'),
(20, 'Mike', 'Goldberg', '1997-01-01'),
(21, 'Jimmy', 'Smith', '2018-01-01'),
(22, 'Chael', 'Sonnen', '2015-01-01'),
(23, 'Bas', 'Rutten', '1999-01-01'),
(24, 'Pat', 'Miletich', '2005-01-01'),
(25, 'Gilbert', 'Melendez', '2017-01-01'),
(26, 'Anthony', 'Smith', '2020-01-01'),
(27, 'Michael', 'Chandler', '2023-01-01'),
(28, 'Henry', 'Cejudo', '2022-01-01'),
(29, 'Aljamain', 'Sterling', '2023-01-01'),
(30, 'Daniel', 'Hooker', '2023-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `EVENT`
--

CREATE TABLE IF NOT EXISTS `EVENT` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `sponsor_id` int(11) DEFAULT NULL,
  `sponsor_amount` int(11) DEFAULT NULL,
  `cage_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sponsor_id` (`sponsor_id`),
  KEY `cage_id` (`cage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `EVENT`
--

INSERT INTO `EVENT` (`id`, `date`, `sponsor_id`, `sponsor_amount`, `cage_id`) VALUES
(1, '2024-01-01', 1, 500000, 1),
(2, '2024-02-01', 2, 300000, 2),
(3, '2024-03-01', 3, 400000, 3),
(4, '2024-04-01', 4, 350000, 4),
(5, '2024-05-01', 5, 250000, 5),
(6, '2024-06-01', 6, 200000, 6),
(7, '2024-07-01', 7, 450000, 7),
(8, '2024-08-01', 8, 300000, 8),
(9, '2024-09-01', 9, 150000, 9),
(10, '2024-10-01', 10, 350000, 10),
(11, '2024-11-01', 11, 200000, 11),
(12, '2024-12-01', 12, 100000, 12),
(13, '2025-01-01', 13, 300000, 13),
(14, '2025-02-01', 14, 50000, 14),
(15, '2025-03-01', 15, 600000, 15),
(16, '2025-04-01', 16, 400000, 16),
(17, '2025-05-01', 17, 700000, 17),
(18, '2025-06-01', 18, 800000, 18),
(19, '2025-07-01', 19, 900000, 19),
(20, '2025-08-01', 20, 1000000, 20),
(21, '2025-09-01', 21, 1100000, 21),
(22, '2025-10-01', 22, 1200000, 22),
(23, '2025-11-01', 23, 1300000, 23),
(24, '2025-12-01', 24, 1400000, 24),
(25, '2026-01-01', 25, 1500000, 25),
(26, '2026-02-01', 26, 1600000, 26),
(27, '2026-03-01', 27, 1700000, 27),
(28, '2026-04-01', 28, 1800000, 28),
(29, '2026-05-01', 29, 1900000, 29),
(30, '2026-06-01', 30, 2000000, 30);

-- --------------------------------------------------------

--
-- Table structure for table `FIGHT`
--

CREATE TABLE IF NOT EXISTS `FIGHT` (
  `id` int(11) NOT NULL,
  `event_date` date DEFAULT NULL,
  `weight_class` enum('feather_weight','light_weight','middle_weight','light_heavy_weight','heavy_weight') DEFAULT NULL,
  `wins_by` enum('KO','TKO','SUB','DECISION') DEFAULT NULL,
  `title_bout` tinyint(1) DEFAULT '0',
  `blue_id` int(11) NOT NULL,
  `red_id` int(11) NOT NULL,
  `winner_id` int(11) DEFAULT NULL,
  `ref_id` int(11) DEFAULT '1',
  `event_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blue_id` (`blue_id`),
  KEY `red_id` (`red_id`),
  KEY `ref_id` (`ref_id`),
  KEY `event_id` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `FIGHT`
--

INSERT INTO `FIGHT` (`id`, `event_date`, `weight_class`, `wins_by`, `title_bout`, `blue_id`, `red_id`, `winner_id`, `ref_id`, `event_id`) VALUES
(1, '2024-01-01', 'feather_weight', NULL, 0, 1, 2, NULL, 1, 1),
(2, '2024-02-01', 'light_weight', NULL, 1, 3, 4, NULL, 2, 2),
(3, '2024-03-01', 'middle_weight', NULL, 0, 5, 6, NULL, 3, 3),
(4, '2024-04-01', 'light_heavy_weight', NULL, 0, 7, 8, NULL, 4, 4),
(5, '2024-05-01', 'heavy_weight', NULL, 1, 9, 10, NULL, 5, 5),
(6, '2024-06-01', 'feather_weight', NULL, 0, 11, 12, NULL, 6, 6),
(7, '2024-07-01', 'light_weight', NULL, 0, 13, 14, NULL, 7, 7),
(8, '2024-08-01', 'middle_weight', NULL, 1, 15, 16, NULL, 8, 8),
(9, '2024-09-01', 'light_heavy_weight', NULL, 0, 17, 18, NULL, 9, 9),
(10, '2024-10-01', 'heavy_weight', NULL, 0, 19, 20, NULL, 10, 10),
(11, '2024-11-01', 'feather_weight', NULL, 1, 21, 22, NULL, 11, 11),
(12, '2024-12-01', 'light_weight', NULL, 0, 23, 24, NULL, 12, 12),
(13, '2025-01-01', 'middle_weight', NULL, 0, 25, 26, NULL, 13, 13),
(14, '2025-02-01', 'light_heavy_weight', NULL, 1, 27, 28, NULL, 14, 14),
(15, '2025-03-01', 'heavy_weight', NULL, 0, 29, 30, NULL, 15, 15),
(16, '2025-04-01', 'feather_weight', NULL, 0, 1, 3, NULL, 16, 16),
(17, '2025-05-01', 'light_weight', NULL, 1, 2, 4, NULL, 17, 17),
(18, '2025-06-01', 'middle_weight', NULL, 0, 5, 7, NULL, 18, 18),
(19, '2025-07-01', 'light_heavy_weight', NULL, 0, 6, 8, NULL, 19, 19),
(20, '2025-08-01', 'heavy_weight', NULL, 1, 9, 11, NULL, 20, 20),
(21, '2025-09-01', 'feather_weight', NULL, 0, 10, 12, NULL, 21, 21),
(22, '2025-10-01', 'light_weight', NULL, 0, 13, 15, NULL, 22, 22),
(23, '2025-11-01', 'middle_weight', NULL, 1, 14, 16, NULL, 23, 23),
(24, '2025-12-01', 'light_heavy_weight', NULL, 0, 17, 19, NULL, 24, 24),
(25, '2026-01-01', 'heavy_weight', NULL, 0, 18, 20, NULL, 25, 25),
(26, '2026-02-01', 'feather_weight', NULL, 1, 21, 23, NULL, 26, 26),
(27, '2026-03-01', 'light_weight', NULL, 0, 22, 24, NULL, 27, 27),
(28, '2026-04-01', 'middle_weight', NULL, 0, 25, 27, NULL, 28, 28),
(29, '2026-05-01', 'light_heavy_weight', NULL, 1, 26, 28, NULL, 29, 29),
(30, '2026-06-01', 'heavy_weight', NULL, 0, 29, 30, NULL, 30, 30);

-- --------------------------------------------------------

--
-- Table structure for table `FIGHTER`
--

CREATE TABLE IF NOT EXISTS `FIGHTER` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `reach` int(11) DEFAULT NULL,
  `stance` varchar(50) DEFAULT NULL,
  `ko_wins` int(11) DEFAULT NULL,
  `sub_wins` int(11) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `FIGHTER`
--

INSERT INTO `FIGHTER` (`id`, `first_name`, `last_name`, `nationality`, `weight`, `height`, `reach`, `stance`, `ko_wins`, `sub_wins`, `date_of_birth`) VALUES
(1, 'Conor', 'McGregor', 'Ireland', 155, 175, 188, 'Orthodox', 19, 1, '1988-07-14'),
(2, 'Khabib', 'Nurmagomedov', 'Russia', 155, 178, 178, 'Orthodox', 8, 11, '1988-09-20'),
(3, 'Israel', 'Adesanya', 'Nigeria', 185, 193, 203, 'Switch', 15, 0, '1989-07-22'),
(4, 'Jon', 'Jones', 'USA', 205, 193, 215, 'Orthodox', 10, 6, '1987-07-19'),
(5, 'Amanda', 'Nunes', 'Brazil', 135, 173, 175, 'Orthodox', 13, 4, '1988-05-30'),
(6, 'Daniel', 'Cormier', 'USA', 205, 180, 183, 'Orthodox', 10, 4, '1979-03-20'),
(7, 'Stipe', 'Miocic', 'USA', 240, 193, 203, 'Orthodox', 14, 0, '1982-08-19'),
(8, 'Rose', 'Namajunas', 'USA', 115, 165, 165, 'Switch', 5, 6, '1992-06-29'),
(9, 'Max', 'Holloway', 'USA', 145, 180, 175, 'Orthodox', 10, 2, '1991-12-04'),
(10, 'Tony', 'Ferguson', 'USA', 155, 180, 193, 'Orthodox', 12, 8, '1984-02-12'),
(11, 'Jose', 'Aldo', 'Brazil', 145, 170, 178, 'Orthodox', 17, 1, '1986-09-09'),
(12, 'Henry', 'Cejudo', 'USA', 135, 163, 170, 'Orthodox', 7, 0, '1987-02-09'),
(13, 'Demetrious', 'Johnson', 'USA', 125, 160, 170, 'Orthodox', 5, 11, '1986-08-13'),
(14, 'Robert', 'Whittaker', 'Australia', 185, 180, 183, 'Orthodox', 10, 2, '1990-12-20'),
(15, 'Francis', 'Ngannou', 'Cameroon', 265, 193, 213, 'Orthodox', 12, 0, '1986-09-05'),
(16, 'Jorge', 'Masvidal', 'USA', 170, 180, 188, 'Orthodox', 16, 2, '1984-11-12'),
(17, 'Colby', 'Covington', 'USA', 170, 180, 188, 'Orthodox', 4, 4, '1988-02-22'),
(18, 'Kamaru', 'Usman', 'Nigeria', 170, 183, 193, 'Orthodox', 9, 1, '1987-05-11'),
(19, 'Petr', 'Yan', 'Russia', 135, 170, 170, 'Orthodox', 7, 1, '1993-02-11'),
(20, 'Aljamain', 'Sterling', 'USA', 135, 170, 183, 'Orthodox', 2, 8, '1989-07-31'),
(21, 'TJ', 'Dillashaw', 'USA', 135, 168, 170, 'Orthodox', 8, 3, '1986-02-07'),
(22, 'Dominick', 'Cruz', 'USA', 135, 173, 175, 'Orthodox', 7, 1, '1985-03-09'),
(23, 'Glover', 'Teixeira', 'Brazil', 205, 188, 193, 'Orthodox', 18, 10, '1979-10-28'),
(24, 'Jan', 'Blachowicz', 'Poland', 205, 188, 193, 'Orthodox', 10, 9, '1983-02-24'),
(25, 'Brandon', 'Moreno', 'Mexico', 125, 170, 175, 'Orthodox', 3, 11, '1993-12-07'),
(26, 'Alexander', 'Volkanovski', 'Australia', 145, 168, 173, 'Orthodox', 12, 3, '1988-09-29'),
(27, 'Islam', 'Makhachev', 'Russia', 155, 178, 178, 'Orthodox', 5, 7, '1991-10-27'),
(28, 'Charles', 'Oliveira', 'Brazil', 155, 178, 178, 'Orthodox', 10, 21, '1989-10-17'),
(29, 'Gilbert', 'Burns', 'Brazil', 170, 178, 188, 'Orthodox', 6, 8, '1986-07-20'),
(30, 'Dustin', 'Poirier', 'USA', 155, 175, 183, 'Orthodox', 15, 7, '1989-01-19');

-- --------------------------------------------------------

--
-- Table structure for table `FIGHT_ROUND_ASSISTANT`
--

CREATE TABLE IF NOT EXISTS `FIGHT_ROUND_ASSISTANT` (
  `fight_id` int(11) NOT NULL,
  `round_no` enum('1','2','3','4','5') NOT NULL,
  `girl_id` int(11) NOT NULL,
  PRIMARY KEY (`fight_id`,`round_no`),
  KEY `girl_id` (`girl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `FIGHT_ROUND_ASSISTANT`
--

INSERT INTO `FIGHT_ROUND_ASSISTANT` (`fight_id`, `round_no`, `girl_id`) VALUES
(1, '1', 1),
(2, '1', 1),
(3, '1', 1),
(4, '1', 1),
(5, '1', 1),
(1, '2', 2),
(2, '2', 2),
(3, '2', 2),
(4, '2', 2),
(5, '2', 2),
(1, '3', 3),
(2, '3', 3),
(3, '3', 3),
(4, '3', 3),
(5, '3', 3),
(6, '1', 4),
(6, '2', 4),
(6, '3', 4),
(7, '1', 5),
(7, '2', 5),
(7, '3', 5),
(7, '4', 5),
(7, '5', 5),
(6, '4', 11),
(6, '5', 12),
(8, '1', 13),
(8, '2', 15),
(8, '5', 19),
(8, '3', 21),
(8, '4', 23);

-- --------------------------------------------------------

--
-- Table structure for table `HOSTS`
--

CREATE TABLE IF NOT EXISTS `HOSTS` (
  `event_id` int(11) NOT NULL,
  `commentator_1_id` int(11) NOT NULL DEFAULT '0',
  `commentator_2_id` int(11) DEFAULT NULL,
  `commentator_3_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`event_id`,`commentator_1_id`),
  KEY `commentator_1_id` (`commentator_1_id`),
  KEY `commentator_2_id` (`commentator_2_id`),
  KEY `commentator_3_id` (`commentator_3_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `HOSTS`
--

INSERT INTO `HOSTS` (`event_id`, `commentator_1_id`, `commentator_2_id`, `commentator_3_id`) VALUES
(1, 1, 2, 3),
(2, 4, 5, 6),
(3, 7, 8, 9),
(4, 10, 11, 12),
(5, 13, 14, 15),
(6, 16, 17, 18),
(7, 19, 20, 21),
(8, 22, 23, 24),
(9, 25, 26, 27),
(10, 28, 29, 30),
(11, 1, 3, 5),
(12, 2, 4, 6),
(13, 7, 9, 11),
(14, 8, 10, 12),
(15, 13, 15, 17),
(16, 14, 16, 18),
(17, 19, 21, 23),
(18, 20, 22, 24),
(19, 25, 27, 29),
(20, 26, 28, 30),
(21, 1, 2, 3),
(22, 4, 5, 6),
(23, 7, 8, 9),
(24, 10, 11, 12),
(25, 13, 14, 15),
(26, 16, 17, 18),
(27, 19, 20, 21),
(28, 22, 23, 24),
(29, 25, 26, 27),
(30, 28, 29, 30);

-- --------------------------------------------------------

--
-- Table structure for table `MEDICAL_REPORT`
--

CREATE TABLE IF NOT EXISTS `MEDICAL_REPORT` (
  `fighter_id` int(11) NOT NULL,
  `fight_id` int(11) NOT NULL,
  `injuries` text,
  `recovery_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`fighter_id`,`fight_id`),
  KEY `fight_id` (`fight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `MEDICAL_REPORT`
--

INSERT INTO `MEDICAL_REPORT` (`fighter_id`, `fight_id`, `injuries`, `recovery_time`) VALUES
(1, 1, 'Fractured rib, bruises', 60),
(2, 1, 'Sprained wrist', 30),
(3, 2, 'Concussion', 90),
(4, 2, 'Dislocated shoulder', 120),
(5, 3, 'Bruised knee', 20),
(6, 3, 'Torn ligament', 150),
(7, 4, 'Broken nose', 45),
(8, 4, 'Bruised ribs', 30),
(9, 5, 'Cuts and bruises', 15),
(10, 5, 'Fractured hand', 75),
(11, 6, 'Sprained ankle', 25),
(12, 6, 'Pulled muscle', 20),
(13, 7, 'Fractured collarbone', 90),
(14, 7, 'Concussion', 60),
(15, 8, 'Torn muscle', 100),
(16, 8, 'Bruised ribs', 30),
(17, 9, 'Cuts and bruises', 20),
(18, 9, 'Broken arm', 120),
(19, 10, 'Fractured leg', 180),
(20, 10, 'Bruised shoulder', 40),
(21, 11, 'Concussion', 75),
(22, 11, 'Torn ligament', 150),
(23, 12, 'Broken jaw', 90),
(24, 12, 'Bruised eye', 20),
(25, 13, 'Fractured rib', 60),
(26, 13, 'Bruised elbow', 25),
(27, 14, 'Sprained wrist', 30),
(28, 14, 'Cuts and bruises', 15),
(29, 15, 'Dislocated shoulder', 120),
(30, 15, 'Bruised knee', 20);

-- --------------------------------------------------------

--
-- Table structure for table `OCTAGON_GIRL`
--

CREATE TABLE IF NOT EXISTS `OCTAGON_GIRL` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `no_events_attended` int(11) DEFAULT NULL,
  `fight_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fight_id` (`fight_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `OCTAGON_GIRL`
--

INSERT INTO `OCTAGON_GIRL` (`id`, `name`, `age`, `nationality`, `no_events_attended`, `fight_id`) VALUES
(1, 'Anna Smith', 25, 'USA', 50, 1),
(2, 'Maria Garcia', 30, 'Spain', 45, 2),
(3, 'Sophia Lee', 27, 'South Korea', 60, 3),
(4, 'Emma Brown', 24, 'Canada', 40, 4),
(5, 'Olivia Martinez', 29, 'Mexico', 35, 5),
(6, 'Isabella Johnson', 26, 'Australia', 55, 6),
(7, 'Mia Davis', 28, 'New Zealand', 20, 7),
(8, 'Ava Wilson', 23, 'England', 30, 8),
(9, 'Charlotte Thomas', 25, 'South Africa', 25, 9),
(10, 'Amelia White', 31, 'Ireland', 10, 10),
(11, 'Harper Harris', 22, 'Scotland', 15, 11),
(12, 'Evelyn Clark', 32, 'USA', 70, 12),
(13, 'Abigail Rodriguez', 28, 'Colombia', 65, 13),
(14, 'Emily Walker', 27, 'France', 50, 14),
(15, 'Elizabeth Hall', 30, 'Germany', 80, 15),
(16, 'Grace Allen', 26, 'Italy', 90, 16),
(17, 'Victoria Young', 29, 'Brazil', 20, 17),
(18, 'Luna King', 25, 'Argentina', 35, 18),
(19, 'Chloe Wright', 24, 'USA', 40, 19),
(20, 'Penelope Hill', 27, 'Japan', 30, 20),
(21, 'Ella Scott', 31, 'China', 55, 21),
(22, 'Nora Green', 22, 'Russia', 45, 22),
(23, 'Scarlett Adams', 28, 'Norway', 70, 23),
(24, 'Camila Baker', 25, 'Cuba', 50, 24),
(25, 'Aria Perez', 29, 'Philippines', 65, 25),
(26, 'Lillian Campbell', 26, 'Sweden', 35, 26),
(27, 'Zoe Mitchell', 23, 'Denmark', 25, 27),
(28, 'Hannah Carter', 30, 'Finland', 30, 28),
(29, 'Lucy Phillips', 27, 'Netherlands', 20, 29),
(30, 'Savannah Evans', 28, 'USA', 40, 30);

-- --------------------------------------------------------

--
-- Table structure for table `REFEREE`
--

CREATE TABLE IF NOT EXISTS `REFEREE` (
  `id` int(11) NOT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `REFEREE`
--

INSERT INTO `REFEREE` (`id`, `nationality`, `first_name`, `last_name`) VALUES
(1, 'USA', 'John', 'Doe'),
(2, 'Canada', 'Mike', 'Smith'),
(3, 'Brazil', 'Carlos', 'Silva'),
(4, 'Japan', 'Hiro', 'Tanaka'),
(5, 'Russia', 'Ivan', 'Petrov'),
(6, 'UK', 'James', 'Brown'),
(7, 'Australia', 'Steve', 'Irwin'),
(8, 'France', 'Jean', 'Dupont'),
(9, 'Germany', 'Hans', 'Schmidt'),
(10, 'Mexico', 'Juan', 'Lopez'),
(11, 'Italy', 'Luca', 'Rossi'),
(12, 'Spain', 'Miguel', 'Garcia'),
(13, 'China', 'Wei', 'Zhang'),
(14, 'India', 'Raj', 'Kumar'),
(15, 'South Korea', 'Min', 'Lee'),
(16, 'Netherlands', 'Johan', 'De Jong'),
(17, 'Sweden', 'Erik', 'Larsson'),
(18, 'Norway', 'Ola', 'Hansen'),
(19, 'Denmark', 'Niels', 'Christensen'),
(20, 'South Africa', 'Sipho', 'Nkosi'),
(21, 'Argentina', 'Diego', 'Martinez'),
(22, 'Colombia', 'Luis', 'Gomez'),
(23, 'Chile', 'Pedro', 'Fernandez'),
(24, 'New Zealand', 'Mark', 'Taylor'),
(25, 'Ireland', 'Liam', 'Murphy'),
(26, 'Poland', 'Jakub', 'Nowak'),
(27, 'Portugal', 'Joao', 'Costa'),
(28, 'Belgium', 'Luc', 'Van Damme'),
(29, 'Switzerland', 'Roger', 'Meier'),
(30, 'Austria', 'Karl', 'Huber');

-- --------------------------------------------------------

--
-- Table structure for table `SPONSOR`
--

CREATE TABLE IF NOT EXISTS `SPONSOR` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `events_sponsored` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SPONSOR`
--

INSERT INTO `SPONSOR` (`id`, `name`, `events_sponsored`) VALUES
(1, 'Monster Energy', 50),
(2, 'Reebok', 30),
(3, 'Nike', 25),
(4, 'Adidas', 20),
(5, 'Under Armour', 15),
(6, 'Puma', 12),
(7, 'Gatorade', 40),
(8, 'Coca-Cola', 35),
(9, 'Budweiser', 18),
(10, 'Pepsi', 28),
(11, 'Samsung', 22),
(12, 'Apple', 15),
(13, 'Microsoft', 10),
(14, 'Dell', 8),
(15, 'HP', 5),
(16, 'Sony', 20),
(17, 'LG', 12),
(18, 'Intel', 9),
(19, 'AMD', 7),
(20, 'Huawei', 4),
(21, 'Xiaomi', 3),
(22, 'Amazon', 25),
(23, 'Google', 30),
(24, 'Facebook', 18),
(25, 'Twitter', 12),
(26, 'Instagram', 10),
(27, 'YouTube', 20),
(28, 'Netflix', 15),
(29, 'Disney', 8),
(30, 'Spotify', 5);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AUDIENCE_FEEDBACK`
--
ALTER TABLE `AUDIENCE_FEEDBACK`
  ADD CONSTRAINT `AUDIENCE_FEEDBACK_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `EVENT` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `BET`
--
ALTER TABLE `BET`
  ADD CONSTRAINT `BET_ibfk_1` FOREIGN KEY (`fight_id`) REFERENCES `FIGHT` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `EVENT`
--
ALTER TABLE `EVENT`
  ADD CONSTRAINT `EVENT_ibfk_1` FOREIGN KEY (`sponsor_id`) REFERENCES `SPONSOR` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `EVENT_ibfk_2` FOREIGN KEY (`cage_id`) REFERENCES `CAGE` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `FIGHT`
--
ALTER TABLE `FIGHT`
  ADD CONSTRAINT `FIGHT_ibfk_1` FOREIGN KEY (`blue_id`) REFERENCES `FIGHTER` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FIGHT_ibfk_2` FOREIGN KEY (`red_id`) REFERENCES `FIGHTER` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FIGHT_ibfk_3` FOREIGN KEY (`ref_id`) REFERENCES `REFEREE` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FIGHT_ibfk_4` FOREIGN KEY (`event_id`) REFERENCES `EVENT` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `FIGHT_ROUND_ASSISTANT`
--
ALTER TABLE `FIGHT_ROUND_ASSISTANT`
  ADD CONSTRAINT `FIGHT_ROUND_ASSISTANT_ibfk_1` FOREIGN KEY (`fight_id`) REFERENCES `FIGHT` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FIGHT_ROUND_ASSISTANT_ibfk_2` FOREIGN KEY (`girl_id`) REFERENCES `OCTAGON_GIRL` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `HOSTS`
--
ALTER TABLE `HOSTS`
  ADD CONSTRAINT `HOSTS_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `EVENT` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `HOSTS_ibfk_2` FOREIGN KEY (`commentator_1_id`) REFERENCES `COMMENTATOR` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `HOSTS_ibfk_3` FOREIGN KEY (`commentator_2_id`) REFERENCES `COMMENTATOR` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `HOSTS_ibfk_4` FOREIGN KEY (`commentator_3_id`) REFERENCES `COMMENTATOR` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `MEDICAL_REPORT`
--
ALTER TABLE `MEDICAL_REPORT`
  ADD CONSTRAINT `MEDICAL_REPORT_ibfk_1` FOREIGN KEY (`fighter_id`) REFERENCES `FIGHTER` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `MEDICAL_REPORT_ibfk_2` FOREIGN KEY (`fight_id`) REFERENCES `FIGHT` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `OCTAGON_GIRL`
--
ALTER TABLE `OCTAGON_GIRL`
  ADD CONSTRAINT `OCTAGON_GIRL_ibfk_1` FOREIGN KEY (`fight_id`) REFERENCES `FIGHT` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
