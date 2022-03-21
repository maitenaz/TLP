-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-03-2022 a las 14:17:21
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hidalgozuazaga`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id_legajo` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `domicilio` varchar(30) NOT NULL,
  `telefono` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id_legajo`, `nombre`, `apellido`, `domicilio`, `telefono`) VALUES
(1, 'maitena', 'zuazaga', 'av cvolon', 2147483647),
(2, 'felicitas', 'hidalgo', 'la cascada', 218545654),
(3, 'ramiro', 'ordoñes', 'los molinos', 351485695),
(4, 'ramiro', 'ordoñes', 'los molinos', 351485695),
(5, 'valeria ', 'masa', 'las delicias', 351684597),
(6, 'valeria ', 'masa', 'las delicias', 351684597),
(8, 'lionel andres', 'messi', 'paris', 365984525),
(9, 'lionel andres', 'messi', 'paris', 365984525),
(10, 'pablo', 'garcia', 'nueve de julio', 45892654),
(11, 'pablo', 'garcia', 'nueve de julio', 45892654),
(12, 'juan', 'garcia', 'rio cuarto', 4589654),
(13, 'juan', 'garcia', 'rio cuarto', 4589654),
(14, 'nacho', 'perez', 'rio ceballos', 4569852),
(15, 'nacho', 'perez', 'rio ceballos', 4569852),
(16, 'jazmin', 'arrechavaleta', 'buenos aires', 785312654),
(17, 'jazmin', 'arrechavaleta', 'buenos aires', 785312654),
(18, 'simon ', 'garcia', 'cerro de las rosas', 4589654),
(19, 'simon ', 'garcia', 'cerro de las rosas', 4589654);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id_legajo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id_legajo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
