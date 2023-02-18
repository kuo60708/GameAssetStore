-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-02-17 16:35:37
-- 伺服器版本： 10.4.27-MariaDB
-- PHP 版本： 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `j_project`
--

-- --------------------------------------------------------

--
-- 資料表結構 `member`
--

CREATE TABLE `member` (
  `cID` tinyint(2) UNSIGNED ZEROFILL NOT NULL,
  `cName` varchar(20) NOT NULL,
  `cSex` enum('F','M') NOT NULL DEFAULT 'F',
  `cBirthday` date NOT NULL,
  `cEmail` varchar(100) DEFAULT NULL,
  `cPhone` varchar(50) DEFAULT NULL,
  `cAddr` varchar(255) DEFAULT NULL,
  `cHeight` tinyint(3) UNSIGNED DEFAULT NULL,
  `cWeight` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `member`
--

INSERT INTO `member` (`cID`, `cName`, `cSex`, `cBirthday`, `cEmail`, `cPhone`, `cAddr`, `cHeight`, `cWeight`) VALUES
(01, '簡奉君', 'F', '1978-04-04', 'elven@superstar.com', '0922988876', '台北市濟洲北路12號', 160, 49),
(02, '黃靖輪', 'M', '1987-07-01', 'jinglun@superstar.com', '0918181111', '台北市敦化南路93號5樓', 175, 72),
(03, '潘四敬', 'M', '1987-08-11', 'sugie@superstar.com', '0914530768', '台北市中央路201號7樓', 162, 65),
(04, '賴勝恩', 'M', '1984-06-20', 'shane@superstar.com', '0946820035', '台北市建國路177號6樓', 178, 72),
(05, '黎楚寧', 'F', '1988-02-15', 'ivy@superstar.com', '0920981230', '台北市忠孝東路520號6樓', 164, 45),
(06, '蔡中穎', 'M', '1987-05-05', 'zhong@superstar.com', '0951983366', '台北市三民路1巷10號', 172, 75),
(07, '徐佳螢', 'F', '1985-08-30', 'lala@superstar.com', '0918123456', '台北市仁愛路100號', 158, 56),
(08, '林雨媗', 'F', '1986-12-10', 'crystal@superstar.com', '0907408965', '台北市民族路204號', 166, 48),
(09, '林心儀', 'F', '1981-12-01', 'peggy@superstar.com', '0916456723', '台北市建國北路10號', 168, 50),
(10, '王燕博', 'M', '1993-08-10', 'albert@superstar.com', '0918976588', '台北市北環路2巷80號', 169, 68);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`cID`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member`
--
ALTER TABLE `member`
  MODIFY `cID` tinyint(2) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
