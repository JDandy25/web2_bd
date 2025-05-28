-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2025 a las 19:18:39
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ejemplo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` bigint(20) NOT NULL,
  `nombres` varchar(64) NOT NULL,
  `apellidos` varchar(64) NOT NULL,
  `dni` char(8) DEFAULT NULL,
  `telefono` char(9) DEFAULT NULL,
  `correo` varchar(128) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1,
  `fecha_creado` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `nombres`, `apellidos`, `dni`, `telefono`, `correo`, `estado`, `fecha_creado`) VALUES
(1, 'Juan Carlos', 'Velez', '78541236', '965', 'wedwewed@gmailc.om', 1, '2025-05-28 15:41:12'),
(2, 'Andi', 'Farfan', '75241256', '911111111', 'actualziado@gmail.com', 1, '2025-05-28 15:42:42'),
(3, 'Pedro', 'Rojas', '75241256', '965231487', 'ejemplo02@gmail.com', 1, '2025-05-28 15:43:06'),
(4, 'walter', 'mendoza', '78563241', '985645213', 'mendoza@gmail.com', 0, '2025-05-28 16:52:49'),
(5, 'walter', 'mendoza', '78563241', '985645213', 'mendoza@gmail.com', 1, '2025-05-28 16:54:14'),
(6, 'walter', 'mendoza', '78563241', '985645213', 'mendoza@gmail.com', 1, '2025-05-28 16:54:18'),
(7, 'jimi', 'sanches', '78563241', '985645213', 'mendoza@gmail.com', 1, '2025-05-28 16:58:13'),
(8, 'jimi', 'sanches', '78563241', '985645213', 'mendoza@gmail.com', 1, '2025-05-28 16:58:58'),
(9, 'jimi', 'sanches', '78563241', '985645213', 'mendoza@gmail.com', 1, '2025-05-28 17:02:10'),
(10, 'jimi', 'sanches', '78563241', '985645213', 'mendoza@gmail.com', 1, '2025-05-28 17:09:24');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
