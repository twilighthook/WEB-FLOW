-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2018-04-10 03:05:09
-- 伺服器版本: 10.1.30-MariaDB
-- PHP 版本： 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `test`
--

-- --------------------------------------------------------

--
-- 資料表結構 `beverage`
--

CREATE TABLE `beverage` (
  `ID` int(10) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `food`
--

CREATE TABLE `food` (
  `ID` int(10) NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `food`
--

INSERT INTO `food` (`ID`, `Name`) VALUES
(4000, 'Beverage'),
(2000, 'Hamburger'),
(1000, 'Omelet'),
(3000, 'Sandwich'),
(1233, '果汁');

-- --------------------------------------------------------

--
-- 資料表結構 `hamburger`
--

CREATE TABLE `hamburger` (
  `ID` int(10) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `omelet`
--

CREATE TABLE `omelet` (
  `ID` int(10) NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `omelet`
--

INSERT INTO `omelet` (`ID`, `Name`, `Price`) VALUES
(1001, '原味蛋餅', 15),
(1002, '玉米蛋餅', 20),
(1003, '豬肉蛋餅', 25),
(1004, '柴魚蛋餅', 15),
(1005, '起司蛋餅', 25),
(1006, '培根蛋餅', 25),
(1007, '雞肉蛋餅', 25),
(1008, '火腿蛋餅', 25),
(1009, '卡啦雞蛋餅', 35),
(1010, '熱狗蛋餅', 25);

-- --------------------------------------------------------

--
-- 資料表結構 `sandwich`
--

CREATE TABLE `sandwich` (
  `ID` int(10) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `food`
--
ALTER TABLE `food`
  ADD UNIQUE KEY `Name` (`Name`);

--
-- 資料表索引 `omelet`
--
ALTER TABLE `omelet`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
