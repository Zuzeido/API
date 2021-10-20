-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 20-10-2021 a las 13:44:16
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Nebrija`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Asignatura`
--

CREATE TABLE `Asignatura` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `idEstudio` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Asignatura`
--

INSERT INTO `Asignatura` (`id`, `nombre`, `idEstudio`) VALUES
(2, 'LOGICA', 1),
(3, 'FUNDAMENTOS FISICOS Y TECNOLOGICOS DE LA INFORMATICA', 2),
(4, 'ALGEBRA LINEAL', 3),
(5, 'PROGRAMACION I', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Estudio`
--

CREATE TABLE `Estudio` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Estudio`
--

INSERT INTO `Estudio` (`id`, `nombre`) VALUES
(1, 'Grado'),
(2, 'Máster');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Profesor`
--

CREATE TABLE `Profesor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Profesor`
--

INSERT INTO `Profesor` (`id`, `nombre`) VALUES
(1, 'Ruben'),
(2, 'Roberto'),
(3, 'Ángel'),
(4, 'Jose Luis'),
(5, 'Pedro'),
(6, 'Jose'),
(7, 'David'),
(8, 'Aurelio\r\n'),
(9, 'Dolores'),
(10, 'Maria'),
(11, 'Olga'),
(12, 'Miriam');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ProfesorAsignatura`
--

CREATE TABLE `ProfesorAsignatura` (
  `id` int(11) NOT NULL,
  `idprofesor` int(11) NOT NULL,
  `idasignatura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ProfesorAsignatura`
--

INSERT INTO `ProfesorAsignatura` (`id`, `idprofesor`, `idasignatura`) VALUES
(1, 2, 3),
(2, 4, 5),
(3, 2, 3),
(4, 4, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Asignatura`
--
ALTER TABLE `Asignatura`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idEstudio` (`idEstudio`);

--
-- Indices de la tabla `Estudio`
--
ALTER TABLE `Estudio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Profesor`
--
ALTER TABLE `Profesor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ProfesorAsignatura`
--
ALTER TABLE `ProfesorAsignatura`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Asignatura`
--
ALTER TABLE `Asignatura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `Estudio`
--
ALTER TABLE `Estudio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `Profesor`
--
ALTER TABLE `Profesor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `ProfesorAsignatura`
--
ALTER TABLE `ProfesorAsignatura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
