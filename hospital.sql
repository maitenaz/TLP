-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-04-2022 a las 15:16:15
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
-- Base de datos: `hospital`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicos`
--

CREATE TABLE `medicos` (
  `codigo del doctor` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `especialidad` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `telefono` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medicos`
--

INSERT INTO `medicos` (`codigo del doctor`, `nombre`, `especialidad`, `direccion`, `telefono`) VALUES
(1, 'dra. Sanz', 'internista', 'calle 4 # 2312', '8234567');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitas`
--

CREATE TABLE `visitas` (
  `codigo del paciente` int(11) NOT NULL,
  `diagnostico` varchar(30) NOT NULL,
  `fecha visita` varchar(30) NOT NULL,
  `tratamiento` varchar(30) NOT NULL,
  `codigo del doctor` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `visitas`
--

INSERT INTO `visitas` (`codigo del paciente`, `diagnostico`, `fecha visita`, `tratamiento`, `codigo del doctor`) VALUES
(4, 'diabetes', '9/2/2009', 'dieta baja en azucar', '4'),
(5, 'apendicitis', '6/12/2008', 'cirugia', '1'),
(6, 'anemia', '15/04/2009', 'purgante', '10'),
(12, 'gripe', '10/02/2009', 'azetamino', '5'),
(13, 'migrania', '16/04/2009', 'acetaminofer', '11'),
(21, 'fractura', '8/1/2009', 'cirugia', '3'),
(23, 'cirrosis', '13/03/2009', 'clamoxil', '8'),
(28, 'atritis', '7/1/2009', 'cirugia', '2'),
(45, 'cinusitis', '12/03/2009', 'azetaminofem', '7'),
(62, 'sarampion', '11/02/2009', 'sinus', '6'),
(122, 'amigdalitis', '14/03/2009', 'clamoxil', '9');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `medicos`
--
ALTER TABLE `medicos`
  ADD PRIMARY KEY (`codigo del doctor`);

--
-- Indices de la tabla `visitas`
--
ALTER TABLE `visitas`
  ADD PRIMARY KEY (`codigo del paciente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `medicos`
--
ALTER TABLE `medicos`
  MODIFY `codigo del doctor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `visitas`
--
ALTER TABLE `visitas`
  MODIFY `codigo del paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
