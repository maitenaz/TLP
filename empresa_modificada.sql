-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2022 a las 19:32:19
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
-- Base de datos: `empresa modificada`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductores`
--

CREATE TABLE `conductores` (
  `codC` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `localidad` varchar(30) NOT NULL,
  `categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `conductores`
--

INSERT INTO `conductores` (`codC`, `nombre`, `localidad`, `categoria`) VALUES
(1, 'Jose Sanchez ', 'Arganda', 18),
(2, 'Manuel Diaz', 'Arganda', 15),
(3, 'Juan perez', 'Rivas', 20),
(4, 'Luis Ortiz', 'Arganda', 18),
(5, 'Javier Martin', 'Loeches', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maquinas`
--

CREATE TABLE `maquinas` (
  `codM` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `preciohora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `maquinas`
--

INSERT INTO `maquinas` (`codM`, `nombre`, `preciohora`) VALUES
(1, 'excavadora', 15000),
(2, 'hormigonera', 10000),
(3, 'volquete', 11000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `codP` int(11) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `localidad` varchar(30) NOT NULL,
  `cliente` varchar(30) NOT NULL,
  `telefono` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`codP`, `descripcion`, `localidad`, `cliente`, `telefono`) VALUES
(6, 'solado', 'rivas', 'Jose Perez', '912222222'),
(7, 'garaje', 'arganda', 'Rosa Lopez', '666999666'),
(8, 'techado', 'loeches', 'Jose Perez', '913333333'),
(9, 'buhardilla', 'rivas', 'Ana Botijo', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajos`
--

CREATE TABLE `trabajos` (
  `codC` varchar(30) NOT NULL,
  `codM` varchar(30) NOT NULL,
  `codP` varchar(30) NOT NULL,
  `fecha` date NOT NULL,
  `tiempo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `trabajos`
--

INSERT INTO `trabajos` (`codC`, `codM`, `codP`, `fecha`, `tiempo`) VALUES
('C02', 'M03', 'P01', '2002-09-10', 100),
('C03', 'M01', 'P02', '2002-09-10', 200),
('C05', 'M03', 'P02', '2002-09-10', 150),
('C04', 'M03', 'P02', '2002-09-10', 90),
('C01', 'M02', 'P02', '2002-09-12', 120),
('C02', 'M03', 'P03', '2002-09-13', 30),
('C03', 'M01', 'P04', '2002-09-15', 300),
('C02', 'M03', 'P02', '2002-09-15', 0),
('C01', 'M03', 'P04', '2002-09-15', 180),
('C05', 'M03', 'P04', '2002-09-15', 90),
('C01', 'M02', 'P04', '2002-09-17', 0),
('C02', 'M03', 'P01', '2002-09-18', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `conductores`
--
ALTER TABLE `conductores`
  ADD PRIMARY KEY (`codC`);

--
-- Indices de la tabla `maquinas`
--
ALTER TABLE `maquinas`
  ADD PRIMARY KEY (`codM`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`codP`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `conductores`
--
ALTER TABLE `conductores`
  MODIFY `codC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `maquinas`
--
ALTER TABLE `maquinas`
  MODIFY `codM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `codP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
