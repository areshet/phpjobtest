-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 31 2018 г., 11:06
-- Версия сервера: 10.1.25-MariaDB
-- Версия PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `account`
--

-- --------------------------------------------------------

--
-- Структура таблицы `t_storage`
--

CREATE TABLE `t_storage` (
  `number` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `surname` varchar(32) NOT NULL,
  `patronymic` varchar(32) NOT NULL,
  `date` date NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t_storage`
--

INSERT INTO `t_storage` (`number`, `name`, `surname`, `patronymic`, `date`, `amount`) VALUES
(1, 'Василий0', 'Пупкин6', 'Александрович3782', '1997-08-31', 5142),
(2, 'Василий1', 'Пупкин7', 'Александрович2442', '1997-08-30', 3802),
(3, 'Василий2', 'Пупкин8', 'Александрович3050', '1997-08-29', 4410),
(4, 'Василий3', 'Пупкин9', 'Александрович312', '1997-08-28', 1672),
(5, 'Василий4', 'Пупкин10', 'Александрович1360', '1997-08-27', 2720),
(6, 'Василий5', 'Пупкин11', 'Александрович3232', '1997-08-26', 4592),
(7, 'Василий6', 'Пупкин12', 'Александрович23', '1997-08-25', 1383),
(8, 'Василий7', 'Пупкин13', 'Александрович519', '1997-08-24', 1879),
(9, 'Василий8', 'Пупкин14', 'Александрович171', '1997-08-23', 1531),
(10, 'Василий9', 'Пупкин15', 'Александрович1924', '1997-08-22', 3284),
(11, 'Василий10', 'Пупкин16', 'Александрович1338', '1997-08-21', 2698),
(12, 'Василий11', 'Пупкин17', 'Александрович2093', '1997-08-20', 3453),
(13, 'Василий12', 'Пупкин18', 'Александрович37', '1997-08-19', 1397),
(14, 'Василий13', 'Пупкин19', 'Александрович1893', '1997-08-18', 3253),
(15, 'Василий14', 'Пупкин20', 'Александрович5397', '1997-08-17', 6757),
(16, 'Василий15', 'Пупкин21', 'Александрович1301', '1997-08-16', 2661),
(17, 'Василий16', 'Пупкин22', 'Александрович3624', '1997-08-15', 4984),
(18, 'Василий17', 'Пупкин23', 'Александрович3672', '1997-08-14', 5032),
(19, 'Василий18', 'Пупкин24', 'Александрович2070', '1997-08-13', 3430),
(20, 'Василий19', 'Пупкин25', 'Александрович2941', '1997-08-12', 4301),
(21, 'Василий20', 'Пупкин26', 'Александрович5067', '1997-08-11', 6427),
(22, 'Василий21', 'Пупкин27', 'Александрович4951', '1997-08-10', 6311),
(23, 'Василий22', 'Пупкин28', 'Александрович1131', '1997-08-09', 2491),
(24, 'Василий23', 'Пупкин29', 'Александрович3282', '1997-08-08', 4642),
(25, 'Василий24', 'Пупкин30', 'Александрович1346', '1997-08-07', 2706),
(26, 'Василий25', 'Пупкин31', 'Александрович577', '1997-08-06', 1937),
(27, 'Василий26', 'Пупкин32', 'Александрович3823', '1997-08-05', 5183),
(28, 'Василий27', 'Пупкин33', 'Александрович1435', '1997-08-04', 2795),
(29, 'Василий28', 'Пупкин34', 'Александрович3655', '1997-08-03', 5015),
(30, 'Василий29', 'Пупкин35', 'Александрович5299', '1997-08-02', 6659),
(31, 'Василий30', 'Пупкин36', 'Александрович2862', '1997-08-01', 4222),
(32, 'Василий31', 'Пупкин37', 'Александрович5041', '1997-07-31', 6401),
(33, 'Василий32', 'Пупкин38', 'Александрович3288', '1997-07-30', 4648),
(34, 'Василий33', 'Пупкин39', 'Александрович2592', '1997-07-29', 3952),
(35, 'Василий34', 'Пупкин40', 'Александрович5177', '1997-07-28', 6537),
(36, 'Василий35', 'Пупкин41', 'Александрович1839', '1997-07-27', 3199),
(37, 'Василий36', 'Пупкин42', 'Александрович66', '1997-07-26', 1426),
(38, 'Василий37', 'Пупкин43', 'Александрович1516', '1997-07-25', 2876),
(39, 'Василий38', 'Пупкин44', 'Александрович3482', '1997-07-24', 4842),
(40, 'Василий39', 'Пупкин45', 'Александрович5156', '1997-07-23', 6516),
(41, 'Василий40', 'Пупкин46', 'Александрович2342', '1997-07-22', 3702),
(42, 'Василий41', 'Пупкин47', 'Александрович2607', '1997-07-21', 3967),
(43, 'Василий42', 'Пупкин48', 'Александрович4709', '1997-07-20', 6069),
(44, 'Василий43', 'Пупкин49', 'Александрович2731', '1997-07-19', 4091),
(45, 'Василий44', 'Пупкин50', 'Александрович4252', '1997-07-18', 5612),
(46, 'Василий45', 'Пупкин51', 'Александрович3553', '1997-07-17', 4913),
(47, 'Василий46', 'Пупкин52', 'Александрович1571', '1997-07-16', 2931),
(48, 'Василий47', 'Пупкин53', 'Александрович2206', '1997-07-15', 3566),
(49, 'Василий48', 'Пупкин54', 'Александрович2774', '1997-07-14', 4134),
(50, 'Василий49', 'Пупкин55', 'Александрович4888', '1997-07-13', 6248),
(51, 'Василий50', 'Пупкин56', 'Александрович998', '1997-07-12', 2358),
(52, 'Василий51', 'Пупкин57', 'Александрович2691', '1997-07-11', 4051),
(53, 'Василий52', 'Пупкин58', 'Александрович3417', '1997-07-10', 4777),
(54, 'Василий53', 'Пупкин59', 'Александрович4301', '1997-07-09', 5661),
(55, 'Василий54', 'Пупкин60', 'Александрович1392', '1997-07-08', 2752),
(56, 'Василий55', 'Пупкин61', 'Александрович456', '1997-07-07', 1816),
(57, 'Василий56', 'Пупкин62', 'Александрович3161', '1997-07-06', 4521),
(58, 'Василий57', 'Пупкин63', 'Александрович2326', '1997-07-05', 3686),
(59, 'Василий58', 'Пупкин64', 'Александрович3995', '1997-07-04', 5355),
(60, 'Василий59', 'Пупкин65', 'Александрович297', '1997-07-03', 1657),
(61, 'Василий60', 'Пупкин66', 'Александрович1828', '1997-07-02', 3188),
(62, 'Василий61', 'Пупкин67', 'Александрович2340', '1997-07-01', 3700),
(63, 'Василий62', 'Пупкин68', 'Александрович1524', '1997-06-30', 2884),
(64, 'Василий63', 'Пупкин69', 'Александрович4169', '1997-06-29', 5529),
(65, 'Василий64', 'Пупкин70', 'Александрович2083', '1997-06-28', 3443),
(66, 'Василий65', 'Пупкин71', 'Александрович4874', '1997-06-27', 6234),
(67, 'Василий66', 'Пупкин72', 'Александрович907', '1997-06-26', 2267),
(68, 'Василий67', 'Пупкин73', 'Александрович5498', '1997-06-25', 6858),
(69, 'Василий68', 'Пупкин74', 'Александрович3748', '1997-06-24', 5108),
(70, 'Василий69', 'Пупкин75', 'Александрович1933', '1997-06-23', 3293),
(71, 'Василий70', 'Пупкин76', 'Александрович545', '1997-06-22', 1905),
(72, 'Василий71', 'Пупкин77', 'Александрович553', '1997-06-21', 1913),
(73, 'Василий72', 'Пупкин78', 'Александрович3803', '1997-06-20', 5163),
(74, 'Василий73', 'Пупкин79', 'Александрович5422', '1997-06-19', 6782),
(75, 'Василий74', 'Пупкин80', 'Александрович1682', '1997-06-18', 3042),
(76, 'Василий75', 'Пупкин81', 'Александрович5502', '1997-06-17', 6862),
(77, 'Василий76', 'Пупкин82', 'Александрович2069', '1997-06-16', 3429),
(78, 'Василий77', 'Пупкин83', 'Александрович1659', '1997-06-15', 3019),
(79, 'Василий78', 'Пупкин84', 'Александрович2720', '1997-06-14', 4080),
(80, 'Василий79', 'Пупкин85', 'Александрович5243', '1997-06-13', 6603),
(81, 'Василий80', 'Пупкин86', 'Александрович1214', '1997-06-12', 2574),
(82, 'Василий81', 'Пупкин87', 'Александрович2550', '1997-06-11', 3910),
(83, 'Василий82', 'Пупкин88', 'Александрович4902', '1997-06-10', 6262),
(84, 'Василий83', 'Пупкин89', 'Александрович4574', '1997-06-09', 5934),
(85, 'Василий84', 'Пупкин90', 'Александрович1057', '1997-06-08', 2417),
(86, 'Василий85', 'Пупкин91', 'Александрович98', '1997-06-07', 1458),
(87, 'Василий86', 'Пупкин92', 'Александрович942', '1997-06-06', 2302),
(88, 'Василий87', 'Пупкин93', 'Александрович5447', '1997-06-05', 6807),
(89, 'Василий88', 'Пупкин94', 'Александрович4266', '1997-06-04', 5626),
(90, 'Василий89', 'Пупкин95', 'Александрович522', '1997-06-03', 1882),
(91, 'Василий90', 'Пупкин96', 'Александрович3457', '1997-06-02', 4817),
(92, 'Василий91', 'Пупкин97', 'Александрович1291', '1997-06-01', 2651),
(93, 'Василий92', 'Пупкин98', 'Александрович4976', '1997-05-31', 6336),
(94, 'Василий93', 'Пупкин99', 'Александрович1512', '1997-05-30', 2872),
(95, 'Василий94', 'Пупкин100', 'Александрович5161', '1997-05-29', 6521),
(96, 'Василий95', 'Пупкин101', 'Александрович5429', '1997-05-28', 6789),
(97, 'Василий96', 'Пупкин102', 'Александрович167', '1997-05-27', 1527),
(98, 'Василий97', 'Пупкин103', 'Александрович3602', '1997-05-26', 4962),
(99, 'Василий98', 'Пупкин104', 'Александрович1612', '1997-05-25', 2972),
(100, 'Василий99', 'Пупкин105', 'Александрович5604', '1997-05-24', 6964);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `t_storage`
--
ALTER TABLE `t_storage`
  ADD PRIMARY KEY (`number`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `t_storage`
--
ALTER TABLE `t_storage`
  MODIFY `number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
