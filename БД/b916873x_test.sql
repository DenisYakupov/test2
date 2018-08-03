-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Авг 02 2018 г., 19:16
-- Версия сервера: 5.7.21-20-beget-5.7.21-20-1-log
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `b916873x_test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--
-- Создание: Авг 02 2018 г., 13:13
-- Последнее обновление: Авг 02 2018 г., 14:11
--

DROP TABLE IF EXISTS `authors`;
CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_books` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`id`, `name`, `id_books`) VALUES
(1, 'Пушкин', 3),
(2, 'Онегин', 2),
(3, 'Есенин', 4),
(4, 'Ахматова', 5),
(5, 'Гоголь', 4),
(11, 'Островский', 1),
(12, 'Крылов', 1),
(13, 'Булгаков', 2),
(14, 'Грин', 4),
(15, 'Достоевский', 5),
(16, 'Толстой', 7),
(17, 'Куприн', 1),
(18, 'Тургеньев', 7),
(19, 'Чехов', 10),
(20, 'Лермонтов', 3),
(21, 'Крестовский', 10),
(22, 'Васильев', 1),
(23, 'Мережковский', 6),
(24, 'Грибоедов', 9),
(25, 'Карамзин', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--
-- Создание: Авг 02 2018 г., 14:53
-- Последнее обновление: Авг 02 2018 г., 14:57
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `number_a` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `name`, `number_a`) VALUES
(1, 'Евгений Онегин', 4),
(2, 'Тарас Бульба', 2),
(3, 'Преступление и наказание', 2),
(4, 'Капитанская дочка', 3),
(5, 'Золотой теленок', 3),
(6, 'Гранатовый браслет', 1),
(7, 'Отцы и дети', 2),
(8, 'Мастер и Маргарита', 0),
(9, 'В списках не значился', 1),
(10, 'Дворянское гнездо', 2),
(11, 'Белые ночи', 0),
(12, 'Повесть о настоящем человеке', 0),
(13, 'Вишневый сад', 0),
(14, 'Герои нашего времени', 0),
(15, 'Чингиз-хан', 0),
(16, 'Кавказский пленник', 0),
(17, 'Петербургские трущобы', 0),
(18, 'На дне', 0),
(19, 'Ревизор', 0),
(20, 'Обыкновенные истории', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
