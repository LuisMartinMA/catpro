-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 13-11-2021 a las 05:39:53
-- Versión del servidor: 5.7.33
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registro de trabajadores`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `afp`
--

CREATE TABLE `afp` (
  `codAfp` int(11) NOT NULL,
  `nombreAfp` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `centrodetrabajo`
--

CREATE TABLE `centrodetrabajo` (
  `codLocalDetrabajo` int(11) NOT NULL,
  `nombeLocal` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrato`
--

CREATE TABLE `contrato` (
  `codContrato` int(11) NOT NULL,
  `nombrePuesto` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaTermino` date NOT NULL,
  `sueldo` int(10) NOT NULL,
  `codCentrotrabajador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE `documento` (
  `codArchivo` int(11) NOT NULL,
  `nombreArchivo` int(11) NOT NULL,
  `fechaSubida` int(11) NOT NULL,
  `codTrabajador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entidadbancaria`
--

CREATE TABLE `entidadbancaria` (
  `codBanco` int(11) NOT NULL,
  `nombreBanco` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipdocumento`
--

CREATE TABLE `tipdocumento` (
  `codDocumento` int(11) NOT NULL,
  `nombreDocumento` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipdocumento`
--

INSERT INTO `tipdocumento` (`codDocumento`, `nombreDocumento`) VALUES
(1, 'DNI'),
(2, 'PASAPORTE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajador`
--

CREATE TABLE `trabajador` (
  `CodTrabajador` int(11) NOT NULL,
  `nombreTrabajador` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `apellidoPaterno` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `apellidoMaterno` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `celular` int(9) NOT NULL,
  `correo` int(50) NOT NULL,
  `codAfp` int(11) NOT NULL,
  `codCentroTrabajo` int(11) NOT NULL,
  `codContrato` int(11) NOT NULL,
  `sueldo` int(11) NOT NULL,
  `CodBanco` int(11) NOT NULL,
  `codDocumento` int(11) NOT NULL,
  `numeroDocumento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `codUsuario` int(11) NOT NULL,
  `nombreUsuario` varchar(110) COLLATE utf8_spanish_ci NOT NULL,
  `correoUsuario` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `claveUsuario` varchar(11) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`codUsuario`, `nombreUsuario`, `correoUsuario`, `claveUsuario`) VALUES
(1, 'luis martin mesones almonacid', 'luismesonesalmonacid@gmail.com', 'cacecob1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `afp`
--
ALTER TABLE `afp`
  ADD PRIMARY KEY (`codAfp`);

--
-- Indices de la tabla `centrodetrabajo`
--
ALTER TABLE `centrodetrabajo`
  ADD PRIMARY KEY (`codLocalDetrabajo`);

--
-- Indices de la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD PRIMARY KEY (`codContrato`),
  ADD KEY `codCentrotrabajador` (`codCentrotrabajador`);

--
-- Indices de la tabla `documento`
--
ALTER TABLE `documento`
  ADD KEY `codTrabajador` (`codTrabajador`);

--
-- Indices de la tabla `entidadbancaria`
--
ALTER TABLE `entidadbancaria`
  ADD PRIMARY KEY (`codBanco`);

--
-- Indices de la tabla `tipdocumento`
--
ALTER TABLE `tipdocumento`
  ADD PRIMARY KEY (`codDocumento`);

--
-- Indices de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  ADD PRIMARY KEY (`CodTrabajador`),
  ADD KEY `codAfp` (`codAfp`),
  ADD KEY `codCentroTrabajo` (`codCentroTrabajo`),
  ADD KEY `codContrato` (`codContrato`),
  ADD KEY `sueldo` (`sueldo`),
  ADD KEY `CodBanco` (`CodBanco`),
  ADD KEY `codDocumento` (`codDocumento`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`codUsuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `documento`
--
ALTER TABLE `documento`
  ADD CONSTRAINT `documento_ibfk_1` FOREIGN KEY (`codTrabajador`) REFERENCES `trabajador` (`CodTrabajador`);

--
-- Filtros para la tabla `trabajador`
--
ALTER TABLE `trabajador`
  ADD CONSTRAINT `trabajador_ibfk_1` FOREIGN KEY (`CodBanco`) REFERENCES `entidadbancaria` (`codBanco`),
  ADD CONSTRAINT `trabajador_ibfk_2` FOREIGN KEY (`codDocumento`) REFERENCES `tipdocumento` (`codDocumento`),
  ADD CONSTRAINT `trabajador_ibfk_3` FOREIGN KEY (`codContrato`) REFERENCES `contrato` (`codContrato`),
  ADD CONSTRAINT `trabajador_ibfk_4` FOREIGN KEY (`codAfp`) REFERENCES `afp` (`codAfp`),
  ADD CONSTRAINT `trabajador_ibfk_5` FOREIGN KEY (`codCentroTrabajo`) REFERENCES `centrodetrabajo` (`codLocalDetrabajo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
