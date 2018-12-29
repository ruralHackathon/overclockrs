-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-12-2018 a las 14:59:00
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `alburquerquemonumental`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_12_28_162635_create_monumentos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monumentos`
--

CREATE TABLE `monumentos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Imagen` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` float(8,6) NOT NULL,
  `long` float(8,6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `monumentos`
--

INSERT INTO `monumentos` (`id`, `name`, `description`, `Imagen`, `lat`, `long`, `created_at`, `updated_at`) VALUES
(1, 'Tumbas Antropomórficas', 'Situadas en uno de los laterales de la Iglesia de Santa María del Mercado. Hace miles de años, en una etapa clave para la historia de la humanidad, contemporáneo de dos grandes logros de la civilización, la escritura y la metalurgia, se excavaban en la piedra y utilizadas para enterramientos colectivos', 'Tumbas.jpg', 39.220001, -7.000000, '2018-12-30 23:00:00', '2018-12-17 23:00:00'),
(2, 'Paseo de la Alameda', 'Delimita la Villa Adentro por su parte norte, esta formado por un céntrico parque y terraza en el que se realizan numerosas actividades a lo largo del año', 'PaseoAlameda.jpg', 39.220001, -7.000000, '2018-12-17 23:00:00', '2018-12-17 23:00:00'),
(3, 'Paseo de las Laderas', 'Grandes son las vistas de este paseo que rodea la montaña coronada por el majestuoso Castillo de Luna. Ubicación del festival de música indie Contempopranea.', 'PaseoLaderas.jpg', 39.220001, -7.000000, '2018-12-24 23:00:00', '2018-12-18 23:00:00'),
(4, 'Iglesia de San Mateo', 'Esta iglesia fue construida entre los siglos XVI y XVII, se construyó en una sola planta rectangular con la intención de acoger a los muertos de la villa. Una obra religiosa que concentra elementos del arte gótico, renacentista y barroco en la que podemos observar numerosos arcos y pilares, cinco capillas y un retablo mayor realizado posteriormente (1940) pero siguiendo el estilo del renacimiento.', 'IglesiaSanMateo.jpg', 39.220001, -7.000000, '2018-12-24 23:00:00', NULL),
(5, 'Fuente del caño', 'Fuente tradicional edificada en el camino a Badajoz, formada por un pórtico de columnas que soportan la cúpula.', 'FuentedelCaño.jpg', 39.209999, -7.000000, NULL, NULL),
(6, 'Iglesia Santa María del Mercado', 'Ubicada en la Villa Adentro, su estructura básica y sus portadas se remontan más allá del Siglo XV. Consta de planta rectangular, con tres naves y bóveda de cañón. La capilla tiene forma poligonal, coronada con bóveda de crucería y un retablo mayor de el estilo renacentista', 'IglesiaSantaMariadelMercado.jpg', 39.220001, -7.000000, NULL, NULL),
(7, 'Iglesia de San Francisco', 'Actualmente el convento se encuentra dividido en tres partes: una privada, otra del obispado y la ultima del ayuntamiento. El convento consta de un claustro con tres arcos por cada lado, apoyados en columnas pareadas y una composición de cuatro en los ángulos, todas de orden toscano. El claustro superior tiene arcos rebajados, sobre pilastras de ladrillo, que se encuentran blanqueadas.', 'IglesiaSanFrancisco.jpg', 39.220001, -7.000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Juan Manuel', 'jmmariah01@gmail.com', NULL, '$2y$10$wTs4EFX7dpeDY9zyRqToAOvWfi6XXKelhQq9RyWfm498yUwTLvqw2', NULL, '2018-12-29 10:41:44', '2018-12-29 10:41:44');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `monumentos`
--
ALTER TABLE `monumentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `monumentos`
--
ALTER TABLE `monumentos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
