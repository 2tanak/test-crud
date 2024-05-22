-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 22 2024 г., 16:14
-- Версия сервера: 5.7.39
-- Версия PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `hu`
--

-- --------------------------------------------------------

--
-- Структура таблицы `blog`
--

CREATE TABLE `blog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_img` text COLLATE utf8mb4_unicode_ci,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `text` text COLLATE utf8mb4_unicode_ci,
  `publish` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `blog`
--

INSERT INTO `blog` (`id`, `name`, `file_id`, `gallery_img`, `photo`, `text`, `publish`, `created_at`, `updated_at`) VALUES
(22, 'xxxxxxxxxxxxx', '10', NULL, NULL, '<p>xxxxxxxxx</p>', '1', '2024-05-22 09:28:22', '2024-05-22 09:28:22');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_2000` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `large` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extralarge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` text COLLATE utf8mb4_unicode_ci,
  `dir` text COLLATE utf8mb4_unicode_ci,
  `size` int(11) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `files`
--

INSERT INTO `files` (`id`, `disk`, `path`, `size_2000`, `large`, `extralarge`, `original`, `medium`, `small`, `extension`, `mime_type`, `original_name`, `description`, `name`, `dir`, `size`, `is_deleted`, `date`, `created_at`, `updated_at`) VALUES
(6, 'public', 'blog/original/2024/05/21/FQz7QsHd77WBTsbUKrtWzAUCqdm6cCeXYKc2oxRU.png', 'blog/resize_thumbs2000/2024/05/21/FQz7QsHd77WBTsbUKrtWzAUCqdm6cCeXYKc2oxRU.png', 'blog/resize_thumbs700/2024/05/21/FQz7QsHd77WBTsbUKrtWzAUCqdm6cCeXYKc2oxRU.png', 'blog/resize_thumbs1000/2024/05/21/FQz7QsHd77WBTsbUKrtWzAUCqdm6cCeXYKc2oxRU.png', NULL, 'blog/resize_thumbs300/2024/05/21/FQz7QsHd77WBTsbUKrtWzAUCqdm6cCeXYKc2oxRU.png', 'blog/resize_thumbs170/2024/05/21/FQz7QsHd77WBTsbUKrtWzAUCqdm6cCeXYKc2oxRU.png', NULL, 'image/png', 'Снимок1.png', NULL, 'FQz7QsHd77WBTsbUKrtWzAUCqdm6cCeXYKc2oxRU.png', '/blog/original/2024/05/21', 1302404, NULL, NULL, '2024-05-21 14:06:15', '2024-05-21 14:06:15'),
(7, 'public', 'blog/original/2024/05/22/QY4d8XIsKajNf4amEF6iuUIWECxbnIJ6AynBjxLD.png', 'blog/resize_thumbs2000/2024/05/22/QY4d8XIsKajNf4amEF6iuUIWECxbnIJ6AynBjxLD.png', 'blog/resize_thumbs700/2024/05/22/QY4d8XIsKajNf4amEF6iuUIWECxbnIJ6AynBjxLD.png', 'blog/resize_thumbs1000/2024/05/22/QY4d8XIsKajNf4amEF6iuUIWECxbnIJ6AynBjxLD.png', NULL, 'blog/resize_thumbs300/2024/05/22/QY4d8XIsKajNf4amEF6iuUIWECxbnIJ6AynBjxLD.png', 'blog/resize_thumbs170/2024/05/22/QY4d8XIsKajNf4amEF6iuUIWECxbnIJ6AynBjxLD.png', NULL, 'image/png', 'Снимок1.png', NULL, 'QY4d8XIsKajNf4amEF6iuUIWECxbnIJ6AynBjxLD.png', '/blog/original/2024/05/22', 1302404, NULL, NULL, '2024-05-22 04:49:02', '2024-05-22 04:49:02'),
(8, 'public', 'blog/original/2024/05/22/SZddXyqYw6QvkXolTwW8baFLA2DLkLpBIWi743pm.png', 'blog/resize_thumbs1000/2024/05/22/SZddXyqYw6QvkXolTwW8baFLA2DLkLpBIWi743pm.png', 'blog/resize_thumbs1000/2024/05/22/SZddXyqYw6QvkXolTwW8baFLA2DLkLpBIWi743pm.png', 'blog/resize_thumbs700/2024/05/22/SZddXyqYw6QvkXolTwW8baFLA2DLkLpBIWi743pm.png', NULL, 'blog/resize_thumbs700/2024/05/22/SZddXyqYw6QvkXolTwW8baFLA2DLkLpBIWi743pm.png', 'blog/resize_thumbs300/2024/05/22/SZddXyqYw6QvkXolTwW8baFLA2DLkLpBIWi743pm.png', NULL, 'image/png', 'Снимок1.png', NULL, 'SZddXyqYw6QvkXolTwW8baFLA2DLkLpBIWi743pm.png', '/blog/original/2024/05/22', 1302404, NULL, NULL, '2024-05-22 08:35:35', '2024-05-22 08:35:35'),
(9, 'public', 'blog/original/2024/05/22/KDJdd1iqsif62mbLp6jCNJBn4xo10rKZBn14BuIr.png', 'blog/resize_thumbs1000/2024/05/22/KDJdd1iqsif62mbLp6jCNJBn4xo10rKZBn14BuIr.png', 'blog/resize_thumbs1000/2024/05/22/KDJdd1iqsif62mbLp6jCNJBn4xo10rKZBn14BuIr.png', 'blog/resize_thumbs700/2024/05/22/KDJdd1iqsif62mbLp6jCNJBn4xo10rKZBn14BuIr.png', NULL, 'blog/resize_thumbs700/2024/05/22/KDJdd1iqsif62mbLp6jCNJBn4xo10rKZBn14BuIr.png', 'blog/resize_thumbs300/2024/05/22/KDJdd1iqsif62mbLp6jCNJBn4xo10rKZBn14BuIr.png', NULL, 'image/png', 'Снимок1.png', NULL, 'KDJdd1iqsif62mbLp6jCNJBn4xo10rKZBn14BuIr.png', '/blog/original/2024/05/22', 1302404, NULL, NULL, '2024-05-22 08:39:07', '2024-05-22 08:39:07'),
(10, 'public', 'blog/original/2024/05/22/pKrvk8Ss5RkQCbdN8fTV7SVag54IVrQzzsjoDEAl.png', 'blog/resize_thumbs1000/2024/05/22/pKrvk8Ss5RkQCbdN8fTV7SVag54IVrQzzsjoDEAl.png', 'blog/resize_thumbs1000/2024/05/22/pKrvk8Ss5RkQCbdN8fTV7SVag54IVrQzzsjoDEAl.png', 'blog/resize_thumbs700/2024/05/22/pKrvk8Ss5RkQCbdN8fTV7SVag54IVrQzzsjoDEAl.png', NULL, 'blog/resize_thumbs700/2024/05/22/pKrvk8Ss5RkQCbdN8fTV7SVag54IVrQzzsjoDEAl.png', 'blog/resize_thumbs300/2024/05/22/pKrvk8Ss5RkQCbdN8fTV7SVag54IVrQzzsjoDEAl.png', NULL, 'image/png', 'Снимок1.png', NULL, 'pKrvk8Ss5RkQCbdN8fTV7SVag54IVrQzzsjoDEAl.png', '/blog/original/2024/05/22', 1302404, NULL, NULL, '2024-05-22 09:28:22', '2024-05-22 09:28:22');

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_28_134318_create_blog_table', 1),
(6, '2023_02_28_180435_create_files_table', 1),
(7, '2023_05_06_082254_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@mail.ru', NULL, '$2y$10$BrW1HF70GvzFqcaA7hpKSueHlAAfO67SVyZ2s4hlaFMsyXoGl2A.q', NULL, '2024-05-21 13:00:39', '2024-05-21 13:00:39');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
