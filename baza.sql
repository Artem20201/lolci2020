-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Сен 30 2017 г., 09:11
-- Версия сервера: 5.5.57-0+deb8u1
-- Версия PHP: 5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `sanch867_skluniks`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cnfg_admn`
--

CREATE TABLE IF NOT EXISTS `cnfg_admn` (
`id` int(11) NOT NULL,
  `ref1` int(2) NOT NULL DEFAULT '0',
  `ref2` int(2) NOT NULL DEFAULT '0',
  `ref3` int(2) NOT NULL DEFAULT '0',
  `min_pay` double NOT NULL DEFAULT '15',
  `max_pay` double NOT NULL DEFAULT '500',
  `a_t_inh` float NOT NULL DEFAULT '0',
  `b_t_inh` float NOT NULL DEFAULT '0',
  `c_t_inh` float NOT NULL DEFAULT '0',
  `d_t_inh` float NOT NULL DEFAULT '0',
  `e_t_inh` float NOT NULL DEFAULT '0',
  `a_t_1_amount` float NOT NULL DEFAULT '0',
  `a_t_2_amount` float NOT NULL DEFAULT '0',
  `a_t_3_amount` float NOT NULL DEFAULT '0',
  `a_t_4_amount` float NOT NULL DEFAULT '0',
  `a_t_5_amount` float NOT NULL DEFAULT '0',
  `b_t_1_amount` float NOT NULL DEFAULT '0',
  `b_t_2_amount` float NOT NULL DEFAULT '0',
  `b_t_3_amount` float NOT NULL DEFAULT '0',
  `b_t_4_amount` float NOT NULL DEFAULT '0',
  `b_t_5_amount` float NOT NULL DEFAULT '0',
  `c_t_1_amount` float NOT NULL DEFAULT '0',
  `c_t_2_amount` float NOT NULL DEFAULT '0',
  `c_t_3_amount` float NOT NULL DEFAULT '0',
  `c_t_4_amount` float NOT NULL DEFAULT '0',
  `c_t_5_amount` float NOT NULL DEFAULT '0',
  `d_t_1_amount` float NOT NULL DEFAULT '0',
  `d_t_2_amount` float NOT NULL DEFAULT '0',
  `e_t_1_amount` float NOT NULL DEFAULT '0',
  `a_t_time` int(11) NOT NULL DEFAULT '0',
  `b_t_time` int(11) NOT NULL DEFAULT '0',
  `c_t_time` int(11) NOT NULL DEFAULT '0',
  `d_t_time` int(11) NOT NULL DEFAULT '0',
  `e_t_time` int(11) NOT NULL DEFAULT '86400',
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `first_char` varchar(3) CHARACTER SET utf8 NOT NULL,
  `comment` text CHARACTER SET utf8 NOT NULL,
  `	min_pay` double NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `cnfg_admn`
--

INSERT INTO `cnfg_admn` (`id`, `ref1`, `ref2`, `ref3`, `min_pay`, `max_pay`, `a_t_inh`, `b_t_inh`, `c_t_inh`, `d_t_inh`, `e_t_inh`, `a_t_1_amount`, `a_t_2_amount`, `a_t_3_amount`, `a_t_4_amount`, `a_t_5_amount`, `b_t_1_amount`, `b_t_2_amount`, `b_t_3_amount`, `b_t_4_amount`, `b_t_5_amount`, `c_t_1_amount`, `c_t_2_amount`, `c_t_3_amount`, `c_t_4_amount`, `c_t_5_amount`, `d_t_1_amount`, `d_t_2_amount`, `e_t_1_amount`, `a_t_time`, `b_t_time`, `c_t_time`, `d_t_time`, `e_t_time`, `title`, `first_char`, `comment`, `	min_pay`) VALUES
(1, 10, 2, 1, 0.5, 500, 125, 147, 170, 198, 400, 0.1, 0.5, 1, 1.5, 2, 4, 6, 7, 8, 9, 10, 15, 20, 25, 30, 50, 100, 500, 1209600, 1641600, 2073600, 3110400, 6048000, '', '', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `conabrul`
--

CREATE TABLE IF NOT EXISTS `conabrul` (
`id` int(11) NOT NULL,
  `rules` text CHARACTER SET cp1251 NOT NULL,
  `about` text NOT NULL,
  `contacts` text CHARACTER SET cp1251 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `db_competition`
--

CREATE TABLE IF NOT EXISTS `db_competition` (
`id` int(11) NOT NULL,
  `1m` varchar(50) NOT NULL DEFAULT '0',
  `2m` varchar(50) NOT NULL DEFAULT '0',
  `3m` varchar(50) NOT NULL DEFAULT '0',
  `user_1` varchar(10) NOT NULL,
  `user_2` varchar(10) NOT NULL,
  `user_3` varchar(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_end` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `db_competition_users`
--

CREATE TABLE IF NOT EXISTS `db_competition_users` (
`id` int(11) NOT NULL,
  `user` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `points` double NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `db_insert_money`
--

CREATE TABLE IF NOT EXISTS `db_insert_money` (
`id` int(11) NOT NULL,
  `user` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `payment_system` varchar(20) NOT NULL DEFAULT '0',
  `money` double NOT NULL DEFAULT '0',
  `valuta` varchar(11) NOT NULL DEFAULT 'USD',
  `itemname` varchar(11) NOT NULL,
  `date_add` int(11) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `db_insert_money`
--

INSERT INTO `db_insert_money` (`id`, `user`, `user_id`, `payment_system`, `money`, `valuta`, `itemname`, `date_add`, `status`) VALUES
(1, 'igor13', 1, 'Payeer', 0.1, 'USD', 'a_t_1', 1506521204, 1),
(4, 'VAMPAIR88', 11, 'Payeer', 0.1, 'USD', 'a_t_1', 1506662814, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `db_news`
--

CREATE TABLE IF NOT EXISTS `db_news` (
`id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `news` text CHARACTER SET utf8 NOT NULL,
  `date_add` int(11) NOT NULL DEFAULT '0',
  `like` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `db_payment`
--

CREATE TABLE IF NOT EXISTS `db_payment` (
  `id` int(11) NOT NULL,
  `user` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `purse` varchar(20) NOT NULL,
  `sum` double NOT NULL DEFAULT '0',
  `comission` double NOT NULL DEFAULT '0',
  `valuta` varchar(3) NOT NULL DEFAULT 'USD',
  `status` int(11) NOT NULL DEFAULT '0',
  `pay_sys` varchar(100) NOT NULL DEFAULT '0',
  `pay_sys_id` int(11) NOT NULL DEFAULT '0',
  `response` int(1) NOT NULL DEFAULT '0',
  `payment_id` int(11) NOT NULL,
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_del` int(11) NOT NULL DEFAULT '0',
  `serebro` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `db_payment`
--

INSERT INTO `db_payment` (`id`, `user`, `user_id`, `purse`, `sum`, `comission`, `valuta`, `status`, `pay_sys`, `pay_sys_id`, `response`, `payment_id`, `date_add`, `date_del`, `serebro`) VALUES
(1, 'takebet', 9, 'P1020499', 1, 0, 'USD', 3, 'Payeer', 0, 0, 0, 1502406290, 1503702290, 0),
(3, 'takebet', 9, 'P1020499', 1, 0, 'USD', 3, 'Payeer', 0, 0, 0, 1502422511, 1503718511, 0),
(6, 'takebet', 9, 'P1020499', 0.5, 0, 'USD', 3, 'PAYEER', 0, 0, 0, 1502558798, 0, 0),
(7, 'takebet', 9, 'P1020499', 0.1, 0, 'USD', 3, 'PAYEER', 0, 0, 0, 1502559184, 0, 0),
(8, 'takebet', 9, 'P1020499', 0.25, 0, 'USD', 3, 'PAYEER', 0, 0, 0, 1502559425, 0, 0),
(0, 'igor13', 1, 'P22495083', 0.5, 0, 'USD', 3, 'PAYEER', 0, 0, 406387164, 1506681389, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `db_paysystems`
--

CREATE TABLE IF NOT EXISTS `db_paysystems` (
  `id` int(11) NOT NULL,
  `payeer_payment` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `db_paysystems`
--

INSERT INTO `db_paysystems` (`id`, `payeer_payment`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `db_pay_systems`
--

CREATE TABLE IF NOT EXISTS `db_pay_systems` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `first_char` varchar(3) NOT NULL,
  `comment` text NOT NULL,
  `min_pay` double NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `db_pay_systems`
--

INSERT INTO `db_pay_systems` (`id`, `title`, `first_char`, `comment`, `min_pay`) VALUES
(2, 'Payeer', 'P', 'Платежная система Payeer.', 0.1);

-- --------------------------------------------------------

--
-- Структура таблицы `db_product_time`
--

CREATE TABLE IF NOT EXISTS `db_product_time` (
`id` int(10) unsigned NOT NULL,
  `id_user` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `date_add` int(10) unsigned NOT NULL,
  `date_del` int(10) unsigned NOT NULL,
  `status` int(10) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `db_product_time`
--

INSERT INTO `db_product_time` (`id`, `id_user`, `name`, `date_add`, `date_del`, `status`) VALUES
(1, 1, 'a_t_1', 1506521226, 1507730826, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `db_recovery`
--

CREATE TABLE IF NOT EXISTS `db_recovery` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_del` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `db_request_payment`
--

CREATE TABLE IF NOT EXISTS `db_request_payment` (
  `id` int(11) NOT NULL,
  `user` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `purse` varchar(20) NOT NULL,
  `sum` double NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `payment_id` int(11) NOT NULL,
  `date` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `db_request_payment`
--

INSERT INTO `db_request_payment` (`id`, `user`, `user_id`, `purse`, `sum`, `status`, `payment_id`, `date`) VALUES
(1, 'kvozimir', 11, '', 0, 0, 5, 1502537647),
(2, 'takebet', 9, '', 0, 0, 6, 1502558798),
(3, 'takebet', 9, '', 0, 0, 7, 1502559184),
(4, 'takebet', 9, '', 0, 0, 8, 1502559425),
(0, 'igor13', 1, '', 0, 0, 0, 1506681389);

-- --------------------------------------------------------

--
-- Структура таблицы `db_stats`
--

CREATE TABLE IF NOT EXISTS `db_stats` (
`id` int(11) NOT NULL,
  `all_users` int(11) NOT NULL DEFAULT '0',
  `all_payments` double NOT NULL DEFAULT '0',
  `all_insert` double NOT NULL DEFAULT '0',
  `donations` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `db_users_traf`
--

CREATE TABLE IF NOT EXISTS `db_users_traf` (
  `adress` varchar(50) NOT NULL,
  `users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `db_users_traf`
--

INSERT INTO `db_users_traf` (`adress`, `users`) VALUES
('', 2),
('xn--24-8kcl3b9anc.xn--p1ai', 4),
('away.vk.com', 8),
('xn----7sbbdsc1bfngehbi3ajk.xn--p1ai', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `ot_sup`
--

CREATE TABLE IF NOT EXISTS `ot_sup` (
  `id` int(11) NOT NULL,
  `id_mes` int(10) NOT NULL,
  `user` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `support`
--

CREATE TABLE IF NOT EXISTS `support` (
`id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `date` varchar(50) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `support`
--

INSERT INTO `support` (`id`, `user`, `title`, `text`, `date`, `status`) VALUES
(1, 'normimo', 'Привет', 'Привет Есть бонус снимать видео, чтобы довести до ваших активных пользователей', '1506541283', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `users_001`
--

CREATE TABLE IF NOT EXISTS `users_001` (
`id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `referer` varchar(10) NOT NULL,
  `referer_id` int(11) NOT NULL DEFAULT '0',
  `referals` int(11) NOT NULL DEFAULT '0',
  `date_reg` int(11) NOT NULL DEFAULT '0',
  `date_login` int(11) NOT NULL DEFAULT '0',
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `banned` int(1) NOT NULL DEFAULT '0',
  `banned_multi` int(11) NOT NULL DEFAULT '0',
  `refurl` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `users_001`
--

INSERT INTO `users_001` (`id`, `user`, `email`, `pass`, `referer`, `referer_id`, `referals`, `date_reg`, `date_login`, `ip`, `banned`, `banned_multi`, `refurl`) VALUES
(1, 'igor13', 'skrbux@yandex.ru', '123654', '', 0, 10, 1506456000, 1506680744, 2966905166, 0, 0, ''),
(2, 'pypcik', 'robonen@mail.ru', 'zxcvbn', 'igor13', 1, 0, 1506539504, 1506539535, 85119905, 0, 0, 'away.vk.com'),
(3, 'normimo', 'normimo800@gmail.com', '01121509232011', 'igor13', 1, 0, 1506541109, 1506541134, 2630173712, 0, 0, 'away.vk.com'),
(4, 'zagbk', 'zagbk777@gmail.com', '200977', 'igor13', 1, 0, 1506541156, 1506542147, 1578756546, 0, 0, 'away.vk.com'),
(5, '1111111', '111111111@mail.ru', '1111', 'igor13', 1, 0, 1506545521, 1506617943, 1435238952, 0, 0, 'away.vk.com'),
(6, 'Solnce80', 'anastasiaartuxina@gmail.com', 'nasta176', 'igor13', 1, 0, 1506545815, 1506545848, 1427826742, 0, 0, 'away.vk.com'),
(7, 'kolyaka105', 'kolyaka105@yandex.ru', 'kolyaka105', 'igor13', 1, 0, 1506605039, 1506605059, 2992620071, 0, 0, 'xn----7sbbdsc1bfngehbi3ajk.xn--p1ai'),
(8, 'mumu11', 'wernada@gmail.com', 'mumu12', 'igor13', 1, 0, 1506606240, 1506606276, 2999765534, 0, 0, 'xn----7sbbdsc1bfngehbi3ajk.xn--p1ai'),
(9, 'pozitiv', 'serg.kuksenko.lev@mail.ru', 'pp7474', 'igor13', 1, 0, 1506618112, 1506618238, 522792167, 0, 0, 'away.vk.com'),
(10, 'alex3891', 'alexleshu@mail.ru', 's3891s', 'igor13', 1, 0, 1506629152, 1506629229, 2988613265, 0, 0, 'away.vk.com'),
(11, 'VAMPAIR88', 'mariupolman88@gmail.com', 'V51556000', 'igor13', 1, 0, 1506662615, 1506662657, 2905355923, 0, 0, 'away.vk.com');

-- --------------------------------------------------------

--
-- Структура таблицы `users_002`
--

CREATE TABLE IF NOT EXISTS `users_002` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `money` double NOT NULL DEFAULT '0',
  `lastsbor` int(11) NOT NULL DEFAULT '0',
  `a_t_1` int(11) NOT NULL DEFAULT '0',
  `a_t_2` int(1) NOT NULL DEFAULT '0',
  `a_t_3` int(1) NOT NULL DEFAULT '0',
  `a_t_4` int(1) NOT NULL DEFAULT '0',
  `a_t_5` int(1) NOT NULL DEFAULT '0',
  `b_t_1` int(11) NOT NULL DEFAULT '0',
  `b_t_2` int(1) NOT NULL DEFAULT '0',
  `b_t_3` int(1) NOT NULL DEFAULT '0',
  `b_t_4` int(1) NOT NULL DEFAULT '0',
  `b_t_5` int(1) NOT NULL DEFAULT '0',
  `c_t_1` int(11) NOT NULL DEFAULT '0',
  `c_t_2` int(1) NOT NULL DEFAULT '0',
  `c_t_3` int(1) NOT NULL DEFAULT '0',
  `c_t_4` int(1) NOT NULL DEFAULT '0',
  `c_t_5` int(1) NOT NULL DEFAULT '0',
  `d_t_1` int(11) NOT NULL DEFAULT '0',
  `d_t_2` int(1) NOT NULL DEFAULT '0',
  `e_t_1` int(11) NOT NULL DEFAULT '0',
  `payment_sum` double NOT NULL DEFAULT '0',
  `insert_sum` double NOT NULL DEFAULT '0',
  `	payeer` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `users_002`
--

INSERT INTO `users_002` (`id`, `user`, `money`, `lastsbor`, `a_t_1`, `a_t_2`, `a_t_3`, `a_t_4`, `a_t_5`, `b_t_1`, `b_t_2`, `b_t_3`, `b_t_4`, `b_t_5`, `c_t_1`, `c_t_2`, `c_t_3`, `c_t_4`, `c_t_5`, `d_t_1`, `d_t_2`, `e_t_1`, `payment_sum`, `insert_sum`, `	payeer`) VALUES
(1, 'igor13', 0.5000009300595241, 1506680814, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.1, NULL),
(2, 'pypcik', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(3, 'normimo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(4, 'zagbk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(5, '1111111', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(6, 'Solnce80', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(7, 'kolyaka105', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(8, 'mumu11', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(9, 'pozitiv', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(10, 'alex3891', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(11, 'VAMPAIR88', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users_003`
--

CREATE TABLE IF NOT EXISTS `users_003` (
  `id` int(11) NOT NULL,
  `referer1_id` int(11) NOT NULL,
  `referer2_id` int(11) NOT NULL,
  `referer3_id` int(11) NOT NULL,
  `referer1` varchar(15) NOT NULL,
  `referer2` varchar(15) NOT NULL,
  `referer3` varchar(15) NOT NULL,
  `to_referer1` decimal(15,2) NOT NULL,
  `to_referer2` decimal(15,2) NOT NULL,
  `to_referer3` decimal(15,2) NOT NULL,
  `from_referals1` decimal(15,2) NOT NULL,
  `from_referals2` decimal(15,2) NOT NULL,
  `from_referals3` decimal(15,2) NOT NULL,
  `count_ref1` int(11) NOT NULL,
  `count_ref2` int(11) NOT NULL,
  `count_ref3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `users_003`
--

INSERT INTO `users_003` (`id`, `referer1_id`, `referer2_id`, `referer3_id`, `referer1`, `referer2`, `referer3`, `to_referer1`, `to_referer2`, `to_referer3`, `from_referals1`, `from_referals2`, `from_referals3`, `count_ref1`, `count_ref2`, `count_ref3`) VALUES
(2, 1, 0, 0, 'igor13', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0),
(3, 1, 0, 0, 'igor13', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0),
(4, 1, 0, 0, 'igor13', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0),
(5, 1, 0, 0, 'igor13', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0),
(6, 1, 0, 0, 'igor13', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0),
(7, 1, 0, 0, 'igor13', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0),
(8, 1, 0, 0, 'igor13', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0),
(9, 1, 0, 0, 'igor13', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0),
(10, 1, 0, 0, 'igor13', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0),
(11, 1, 0, 0, 'igor13', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `users_004`
--

CREATE TABLE IF NOT EXISTS `users_004` (
  `id` int(11) NOT NULL,
  `payeer` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users_004`
--

INSERT INTO `users_004` (`id`, `payeer`) VALUES
(1, 'P22495083'),
(2, '0'),
(3, '0'),
(4, '0'),
(5, '0'),
(6, '0'),
(7, '0'),
(8, '0'),
(9, '0'),
(10, '0'),
(11, '0');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cnfg_admn`
--
ALTER TABLE `cnfg_admn`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `conabrul`
--
ALTER TABLE `conabrul`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `db_competition`
--
ALTER TABLE `db_competition`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `db_competition_users`
--
ALTER TABLE `db_competition_users`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `db_insert_money`
--
ALTER TABLE `db_insert_money`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `db_news`
--
ALTER TABLE `db_news`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `db_product_time`
--
ALTER TABLE `db_product_time`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `db_stats`
--
ALTER TABLE `db_stats`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `support`
--
ALTER TABLE `support`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users_001`
--
ALTER TABLE `users_001`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`), ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `users_002`
--
ALTER TABLE `users_002`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users_003`
--
ALTER TABLE `users_003`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users_004`
--
ALTER TABLE `users_004`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cnfg_admn`
--
ALTER TABLE `cnfg_admn`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `conabrul`
--
ALTER TABLE `conabrul`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `db_competition`
--
ALTER TABLE `db_competition`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `db_competition_users`
--
ALTER TABLE `db_competition_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `db_insert_money`
--
ALTER TABLE `db_insert_money`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `db_news`
--
ALTER TABLE `db_news`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `db_product_time`
--
ALTER TABLE `db_product_time`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `db_stats`
--
ALTER TABLE `db_stats`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `support`
--
ALTER TABLE `support`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `users_001`
--
ALTER TABLE `users_001`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
