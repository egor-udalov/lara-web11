-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 10 2022 г., 22:12
-- Версия сервера: 10.4.24-MariaDB
-- Версия PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `web11_lara`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(4) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Собачки'),
(2, 'Кошечки'),
(3, 'Всякая хрень собачья и кошачья');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

CREATE TABLE `page` (
  `id` int(4) NOT NULL,
  `title` varchar(150) NOT NULL,
  `decription` text DEFAULT NULL,
  `keywords` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`id`, `title`, `decription`, `keywords`) VALUES
(1, 'Категории', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(4) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `old_price` int(11) DEFAULT NULL,
  `category_id` int(4) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `old_price`, `category_id`, `img`) VALUES
(1, 'Сибирский хаски', 100000, NULL, 1, 'vse-o-glazah-haski.jpg'),
(2, 'Американский Булли', 200000, 250000, 1, 'aa3057af31639307401da972e89618ce.jpeg'),
(3, 'Невская маскарадная', 150000, NULL, 2, 'nevskaya-maskaradnaya-1.jpeg'),
(4, 'bhApdJShxdFYZVqGpDMUJ6zGINuTXtuPYTcSIjiO', 1000, 2000, 3, '0.jpg'),
(5, 'qDzsx7vjKMReOzpWeAGeoFFclUFO74HyYKYNM1tH', 1000, 2000, 3, '0.jpg'),
(6, 'gQ9XLaaA1ZkI2xRLvHOWvXXEMGlP2Dlajky4KC8S', 1000, 2000, 3, '0.jpg'),
(7, 'nK644YFTpc6JyHfUuLFW1kxW68ZQoC0mTj5OUw0e', 1000, 2000, 3, '0.jpg'),
(8, 'nEV5oaGqnYFlePrH6boPI3kFcmM65lWruChkSYFl', 1000, 2000, 3, '0.jpg'),
(9, 'Ol40VIKfyPde6sxbQTMCChoQ5SqtBCumHRBJE5es', 1000, 2000, 3, '0.jpg'),
(10, 'QAqUlPKrsmvulpeY83vQYDojsXsDrNcLlb3Gwql1', 1000, 2000, 3, '0.jpg'),
(11, 'vCMG0vV8WOB5aD5pmPMuXeDrop4huk8a1qQ7eiW4', 1000, 2000, 3, '0.jpg'),
(12, 'NjL2D1gnlHY7MrUuBT0SAotDPcYQLBbePLNlFy2t', 1000, 2000, 3, '0.jpg'),
(13, 'rJhHd1hEZKMU0L0Uck7gvU3hZTsD2gqVHDK5MpTj', 1000, 2000, 3, '0.jpg'),
(14, '6tblWT3pGWHUQe1Oxmz6ETsyhL1fCX9FuxxHfOVV', 1000, 2000, 3, '0.jpg'),
(15, 'rVu86qJcypZE1Bf82fMo2bA3yN4f2DUvg0hHe3jD', 1000, 2000, 3, '0.jpg'),
(16, 'u10x4ufqSBQD4ud2DCQXN97JW2z1VbDTEYZERkeX', 1000, 2000, 3, '0.jpg'),
(17, 'sXTgbi1LeCNmKlMmao8Dn0DYDU2J8KeZR8Tmg33C', 1000, 2000, 3, '0.jpg'),
(18, 'APk4LiBtoa8JY2IMPyh6BSazyNWrt1uia5jwq4R4', 1000, 2000, 3, '0.jpg'),
(19, 'cTUS24b3MgsTmQsOavAxweZyFQuDhGCLSnqxsYfN', 1000, 2000, 3, '0.jpg'),
(20, 'AF01EQ0B5I7YF1vXdwTQk7BttvG7RajL0PbRBTno', 1000, 2000, 3, '0.jpg'),
(21, 'iUqc9f0thTWvDmy6mgDubK2rBXIiFQ7aLcvybbm9', 1000, 2000, 3, '0.jpg'),
(22, 'hEhQnI0Md4DslqhMBxeMbrphVWfqKTRFGmzfIgqd', 1000, 2000, 3, '0.jpg'),
(23, 'JEwZzleVJ1Pj3N6m9dVfkYHI91V8sX2281TwCN5x', 1000, 2000, 3, '0.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(4) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Администратор'),
(2, 'Покупатель'),
(3, 'Редактор'),
(4, 'SEO');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`) VALUES
(1, 'admin', 'admin@mail.ru', '2022-07-14 17:00:33', '$2y$10$7uCpXQArCCICMFydlo8tAOuuVB2F6wJqLVztWm78pVnSnybxlyANu', NULL, '2022-07-14 17:00:33', '2022-07-14 17:00:33', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `widgets`
--

CREATE TABLE `widgets` (
  `id` int(4) NOT NULL,
  `name` varchar(150) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `widgets`
--

INSERT INTO `widgets` (`id`, `name`, `content`) VALUES
(1, 'Sign Up for Newsletters', 'Be the First to Know. Sign up for newsletter today');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `page`
--
ALTER TABLE `page`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
