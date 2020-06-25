-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2020-06-25 16:36:39
-- サーバのバージョン： 10.4.11-MariaDB
-- PHP のバージョン: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacf_d06_01`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `mail_sent`
--

CREATE TABLE `mail_sent` (
  `氏名` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `かな` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `広報メモ` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `過去応募` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `企業名` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `住所` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `部署` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `役職` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MAIL` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TEL` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `mail_sent`
--

INSERT INTO `mail_sent` (`氏名`, `かな`, `広報メモ`, `過去応募`, `企業名`, `住所`, `部署`, `役職`, `MAIL`, `TEL`) VALUES
('浅野泰輔', 'アサノタイスケ', 'PR', '有', 'トーマツ', 'エルガーラ', 'TS', 'スタッフ', 'メール', '電話');

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(12) NOT NULL,
  `todo` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `created_at`, `updated_at`) VALUES
(1, 'SQLを学ぶ', '2020-06-21', '2020-06-20 15:47:41', '2020-06-20 15:47:41'),
(2, 'PHPを学ぶ', '2020-06-22', '2020-06-20 15:49:03', '2020-06-20 15:49:03'),
(3, 'JSを学ぶ', '2020-06-21', '2020-06-20 15:49:42', '2020-06-20 15:49:42'),
(4, 'test', '2020-06-11', '2020-06-20 17:18:29', '2020-06-20 17:18:29'),
(5, 'testtest', '2020-06-17', '2020-06-20 17:39:21', '2020-06-20 17:39:21'),
(6, 'test', '2020-06-10', '2020-06-25 23:14:47', '2020-06-25 23:14:47');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
