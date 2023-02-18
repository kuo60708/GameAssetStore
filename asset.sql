-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-02-17 16:35:25
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
-- 資料表結構 `asset`
--

CREATE TABLE `asset` (
  `a_id` int(11) NOT NULL COMMENT '遊戲/素材編號',
  `a_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '遊戲/素材名稱',
  `a_platform` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '平台',
  `a_filepic_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '遊戲圖片檔名',
  `a_des` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '遊戲/素材描述',
  `a_price` int(5) DEFAULT NULL COMMENT '價格'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `asset`
--

INSERT INTO `asset` (`a_id`, `a_name`, `a_platform`, `a_filepic_name`, `a_des`, `a_price`) VALUES
(1, 'HorrorVale', 'PC', 'as_1.PNG', 'Welcome to HorrorVale, a world full of monsters, ghouls, and all sorts of fiendish undead.\r\nHelp Alice on her quest to save her dog from strange and unusual monsters who suddenly showed up in HorrorVale!', 100),
(2, 'Manacircle', 'PC', 'as_2.PNG', NULL, 120),
(3, 'Nanotale', 'PC', 'as_3.PNG', NULL, 150),
(4, 'Epistory', 'PC', 'as_4.PNG', NULL, 170),
(5, 'Freeborn', 'PC', 'as_5.PNG', NULL, 199),
(6, 'Time to Morp', 'PC', 'as_6.PNG', NULL, 200),
(7, 'Mayhem in Single Valley: Prologue', 'PC', 'as_7.PNG', NULL, 250),
(8, 'Calico', 'PC', 'as_8.PNG', NULL, 400),
(9, 'Nightkeep - Indie RPG', 'PC', 'as_9.PNG', NULL, 500),
(10, 'Merchant of the Skies', 'PC', 'as_10.PNG', NULL, 1000);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`a_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `asset`
--
ALTER TABLE `asset`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '遊戲/素材編號', AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
