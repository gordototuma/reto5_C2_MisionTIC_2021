-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-09-2021 a las 19:21:00
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mision2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistente`
--

CREATE TABLE `asistente` (
  `asi_login` char(20) NOT NULL,
  `asi_nombre` char(20) NOT NULL,
  `asi_apellido` char(20) NOT NULL,
  `asi_email` char(30) NOT NULL,
  `asi_celular` bigint(20) NOT NULL,
  `asi_clave` char(20) NOT NULL,
  `asi_fecha_nto` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asistente`
--

INSERT INTO `asistente` (`asi_login`, `asi_nombre`, `asi_apellido`, `asi_email`, `asi_celular`, `asi_clave`, `asi_fecha_nto`) VALUES
('camiru', 'Camilo', 'Rueda', 'ok', 878787, 'b5b5', '2021-08-11'),
('gabit', 'leo', 'abcd', 'asddas', 87787787, 'UDSpMmdJvp', '2021-09-09'),
('iiiiiiiiii', 'hjhh', 'hjhhj', 'hjhjh', 877887, '9upUt0LSUX', '2021-09-09'),
('jaironi', 'Jairo', 'Nieto', '1', 45, 'a', '2021-08-10'),
('Jairve', 'Jair', 'Velasco', 'as12', 3164778432, '2qw1', '2021-08-04'),
('luisco', 'Luis', 'Cortez', 'qw11111', 45445, 'qwqw', '2021-08-09'),
('manu', 'manuel', 'chao', 'manuchao@', 159444, 'eas4PzMKZg', '2021-09-10'),
('nataper', 'Natali', 'perdomo', '23131a', 111111, '222222', '2021-08-19'),
('paploper', 'Pablo', 'Perez', 'saffs', 3223232, 'c4s4s', '2021-08-01'),
('qqwqwwww', 'manu', 'hjhhj', 'hjhjh', 877887, 'AgWijB2SO6', '2021-09-09'),
('ramala', 'pales', 'tina', 'asdas@', 544554, '6FEnVTCTdm', '2021-09-09'),
('renegó', 'Rene', 'Gómez', 's78jk', 45455454, 'q44q4q', '2021-08-18'),
('rortiz', 'Roberto', 'Ortiz', 'asd', 12123, 'asd1', '2021-08-11'),
('uiiui', 'iuii', 'jhjh', 'jhjhjh', 888787, '1pTHLRkpH3', '2021-09-11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compañia`
--

CREATE TABLE `compañia` (
  `com_id` int(11) NOT NULL,
  `com_nombre` char(20) NOT NULL,
  `com_coordinador` char(20) NOT NULL,
  `com_pais` char(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `compañia`
--

INSERT INTO `compañia` (`com_id`, `com_nombre`, `com_coordinador`, `com_pais`) VALUES
(1, 'Andrayas', 'Vladimir Smith', 'Colombia'),
(2, 'Do Chapito', 'Ronaldo Prieto', 'Portugal'),
(3, 'Workcenter', 'Francesco Milán', 'Italia'),
(4, 'Colectivo granjas de', 'Jairo Gómez', 'Uruguay'),
(5, 'La máscara', 'Lucy Martinez', 'Colombia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obra`
--

CREATE TABLE `obra` (
  `ob_id` int(11) NOT NULL,
  `ob_titulo` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `obra`
--

INSERT INTO `obra` (`ob_id`, `ob_titulo`) VALUES
(1, 'El jardín de las delicias'),
(2, 'Whomyn'),
(3, 'Electra'),
(4, 'Gravedad'),
(5, 'Electroacústica'),
(6, 'Pinocho'),
(7, 'La cenicienta'),
(8, 'Los tres cerditos'),
(9, 'El niño valiente'),
(10, 'La bella durmiente'),
(11, 'Blanca nieves'),
(12, 'El patito feo'),
(13, 'Rin rin renacuajo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obraasistida`
--

CREATE TABLE `obraasistida` (
  `oa_id` int(11) NOT NULL,
  `oa_user` char(40) NOT NULL,
  `oa_obra` int(11) NOT NULL,
  `oa_fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `obraasistida`
--

INSERT INTO `obraasistida` (`oa_id`, `oa_user`, `oa_obra`, `oa_fecha`) VALUES
(1, 'rortiz', 1, '2021-08-10 08:00:00'),
(2, 'rortiz', 4, '2021-08-15 18:30:00'),
(3, 'rortiz', 9, '2021-08-20 20:30:18'),
(4, 'paploper', 1, '2021-08-10 20:30:00'),
(5, 'nataper', 2, '2021-08-14 20:30:00'),
(6, 'nataper', 3, '2018-08-15 21:30:00'),
(7, 'nataper', 6, '2021-08-14 15:30:00'),
(8, 'jaironi', 6, '2021-08-14 15:30:00'),
(9, 'Jairve', 8, '2021-08-16 20:30:00'),
(10, 'Jairve', 9, '2021-08-14 18:30:20'),
(11, 'Jairve', 12, '2021-08-14 18:30:00'),
(12, 'renegó', 11, '2021-08-12 21:30:00'),
(13, 'camiru', 2, '2021-08-13 17:30:00'),
(15, 'camiru', 5, '2021-08-16 18:30:00'),
(16, 'jaironi', 7, '2021-08-13 18:30:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obrateatro`
--

CREATE TABLE `obrateatro` (
  `ot_id` int(11) NOT NULL,
  `ot_resumen` char(250) NOT NULL,
  `ot_anio` int(11) NOT NULL,
  `ot_compañia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `obrateatro`
--

INSERT INTO `obrateatro` (`ot_id`, `ot_resumen`, `ot_anio`, `ot_compañia`) VALUES
(1, 'Mujeres y niñas son víctimas de la violencia sexual', 2019, 5),
(2, 'Homenaje a las mujeres excepcionales.', 2020, 1),
(3, 'En la Atenas del rey Agamenón se convoca una guerra.', 2021, 2),
(4, 'Una familia exiliada durante la dictadura chilena.', 2020, 3),
(5, 'Granja de Piratas lleva su característico estilo roquero.', 2021, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obratitere`
--

CREATE TABLE `obratitere` (
  `oti_id` int(11) NOT NULL,
  `oti_presentaciones` int(11) NOT NULL,
  `oti_duracion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `obratitere`
--

INSERT INTO `obratitere` (`oti_id`, `oti_presentaciones`, `oti_duracion`) VALUES
(6, 5, 120),
(7, 6, 60),
(8, 7, 40),
(9, 8, 45),
(11, 9, 60),
(12, 3, 70),
(13, 4, 80),
(10, 5, 90);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistente`
--
ALTER TABLE `asistente`
  ADD PRIMARY KEY (`asi_login`);

--
-- Indices de la tabla `compañia`
--
ALTER TABLE `compañia`
  ADD PRIMARY KEY (`com_id`);

--
-- Indices de la tabla `obra`
--
ALTER TABLE `obra`
  ADD PRIMARY KEY (`ob_id`);

--
-- Indices de la tabla `obraasistida`
--
ALTER TABLE `obraasistida`
  ADD PRIMARY KEY (`oa_id`),
  ADD KEY `oa_user` (`oa_user`),
  ADD KEY `oa_obra` (`oa_obra`);

--
-- Indices de la tabla `obrateatro`
--
ALTER TABLE `obrateatro`
  ADD PRIMARY KEY (`ot_id`),
  ADD KEY `ot_compañia` (`ot_compañia`);

--
-- Indices de la tabla `obratitere`
--
ALTER TABLE `obratitere`
  ADD KEY `oti_id` (`oti_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compañia`
--
ALTER TABLE `compañia`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `obra`
--
ALTER TABLE `obra`
  MODIFY `ob_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `obraasistida`
--
ALTER TABLE `obraasistida`
  MODIFY `oa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `obraasistida`
--
ALTER TABLE `obraasistida`
  ADD CONSTRAINT `obraasistida_ibfk_1` FOREIGN KEY (`oa_user`) REFERENCES `asistente` (`asi_login`),
  ADD CONSTRAINT `obraasistida_ibfk_2` FOREIGN KEY (`oa_obra`) REFERENCES `obra` (`ob_id`);

--
-- Filtros para la tabla `obrateatro`
--
ALTER TABLE `obrateatro`
  ADD CONSTRAINT `obrateatro_ibfk_2` FOREIGN KEY (`ot_id`) REFERENCES `obra` (`ob_id`),
  ADD CONSTRAINT `obrateatro_ibfk_3` FOREIGN KEY (`ot_compañia`) REFERENCES `compañia` (`com_id`);

--
-- Filtros para la tabla `obratitere`
--
ALTER TABLE `obratitere`
  ADD CONSTRAINT `obratitere_ibfk_1` FOREIGN KEY (`oti_id`) REFERENCES `obra` (`ob_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
