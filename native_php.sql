-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 04 2022 г., 15:48
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `native_php`
--

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`) VALUES
(9, 'Работа за границей. Переезд в Швецию', 'Сложно ли найти работу за границей? Вопрос, который волнует многих как начинающих специалистов, так и профессионалов с многолетним стажем. Очень часто возможность поработать за границей представляется чем-то недосягаемым, а одна только мысль о поиске вакансий приводит людей в ужас.  По своему личному опыту могу сказать, что бояться тут совершенно нечего.', '2022-03-04 10:54:39'),
(10, 'Облака, нейросети и управление данными.', 'В мире наметилось четыре основных тренда в области автоматизации бизнеса, которые в полной мере проявляются и в России. Самый очевидный — интеллектуализация, то есть включение технологий искусственного интеллекта (ИИ) в информационные системы. С одной стороны, это инженерия ИИ, а с другой — внедрение отдельных элементов ИИ в рутинные операции: чат-боты, голосовые помощники, специфические интеллектуальные сервисы.', '2022-03-04 10:55:57'),
(11, 'Как устроен банкомат:', 'Вместе приёмник, транспорт и валидатор напоминают банковскую счётную машинку с функцией пономинального подсчёта и проверкой банкнот. Это сложное устройство с большим количеством датчиков и движущихся деталей. Неудивительно, что попадание посторонних предметов в приёмник смертельно опасно для банкомата.', '2022-03-04 10:55:57');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `login`, `password`, `email`, `created_at`) VALUES
(1, 'Вася', 'vasya', '123456', 'vasya@mail.ru', '2022-03-04 12:43:27'),
(2, 'Петя', 'petya', '321', 'petya@mail.ru', '2022-03-04 12:43:27'),
(3, 'Игорь', 'igor', '14789', 'igor@mail.ru', '2022-03-04 12:44:22'),
(4, 'Сеня', 'senya', '951852', 'senya@mail.ru', '2022-03-04 12:44:22');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
