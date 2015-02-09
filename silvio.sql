-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Окт 27 2014 г., 21:56
-- Версия сервера: 5.5.32
-- Версия PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `silvio`
--
CREATE DATABASE IF NOT EXISTS `silvio` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `silvio`;

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_playlist`
--

CREATE TABLE IF NOT EXISTS `tbl_playlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `app` varchar(255) DEFAULT NULL,
  `stream` varchar(255) DEFAULT NULL,
  `rtsp` varchar(255) DEFAULT NULL,
  `http` varchar(255) DEFAULT NULL,
  `rtmp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `tbl_playlist`
--

INSERT INTO `tbl_playlist` (`id`, `title`, `server`, `port`, `app`, `stream`, `rtsp`, `http`, `rtmp`) VALUES
(1, 'first', 'lb.hd-livestream.de', 1935, 'live', 'Silvretta_360p', 'rtsp://lb.hd-livestream.de:1935/live/Silvretta_360p', 'http://lb.hd-livestream.de:1935/live/Silvretta_360p', 'rtmp://lb.hd-livestream.de:1935/live/Silvretta_360p'),
(2, 'dva', '', 0, NULL, NULL, 'http://hd-livestream.de/media_lib/widex/video/presserundgang.mp4', 'http://hd-livestream.de/media_lib/widex/video/presserundgang.mp4', 'http://hd-livestream.de/media_lib/widex/video/presserundgang.mp4'),
(3, 'third', '', 0, NULL, NULL, 'http://83.169.58.42:1935/livevod/Stream5/playlist.m3u8', 'http://83.169.58.42:1935/livevod/Stream5/playlist.m3u8', 'http://83.169.58.42:1935/livevod/Stream5/playlist.m3u8');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_port`
--

CREATE TABLE IF NOT EXISTS `tbl_port` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `port` int(11) NOT NULL DEFAULT '1935',
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `tbl_port`
--

INSERT INTO `tbl_port` (`id`, `port`, `comment`) VALUES
(1, 1935, 'Default port for streaming'),
(2, 8888, '');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_server`
--

CREATE TABLE IF NOT EXISTS `tbl_server` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server` varchar(255) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `tbl_server`
--

INSERT INTO `tbl_server` (`id`, `server`, `comment`) VALUES
(1, 'lb.hd-livestream.de', ''),
(2, 'origin.hd-livestream.de', ''),
(3, 'edge4.hd-livestream.de', '');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `role` varchar(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `role`, `email`) VALUES
(1, 'admin', 'pass1', 'administrator', 'test1@example.com'),
(2, 'test2', 'pass2', 'user', 'test2@example.com'),
(3, 'test3', 'pass3', '0', 'test3@example.com'),
(4, 'test4', 'pass4', '0', 'test4@example.com'),
(5, 'test5', 'pass5', '0', 'test5@example.com'),
(6, 'test6', 'pass6', '0', 'test6@example.com'),
(7, 'test7', 'pass7', '0', 'test7@example.com'),
(8, 'test8', 'pass8', '0', 'test8@example.com'),
(9, 'test9', 'pass9', '0', 'test9@example.com'),
(10, 'test10', 'pass10', '0', 'test10@example.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
