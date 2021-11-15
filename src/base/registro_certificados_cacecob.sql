-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 05-11-2021 a las 22:09:12
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
-- Base de datos: `registro certificados cacecob`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificado`
--

CREATE TABLE `certificado` (
  `codCertificado` int(11) NOT NULL,
  `codCurso` int(11) NOT NULL,
  `estado` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `observacion` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `codCiudad` int(11) NOT NULL,
  `nombreCiudad` int(11) NOT NULL,
  `direccion` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `codProvincia` int(11) NOT NULL,
  `codDepartamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `codCurso` int(11) NOT NULL,
  `nombreCurso` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaTermino` date NOT NULL,
  `estado` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `codDepartamento` int(11) NOT NULL,
  `nombreDepartamento` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`codDepartamento`, `nombreDepartamento`) VALUES
(1, 'AMAZONAS'),
(2, 'ANCASH'),
(3, 'APURIMAC'),
(4, 'AREQUIPA'),
(5, 'AYACUCHO'),
(6, 'CAJAMARCA'),
(7, 'CALLAO'),
(8, 'CUZCO'),
(9, 'HUANCAVELICA'),
(10, 'HUANUCO'),
(11, 'ICA'),
(12, 'JUNIN'),
(13, 'LA LIBERTAD'),
(14, 'LAMBAYEQUE'),
(15, 'LIMA'),
(16, 'LORETO'),
(17, 'MADRE DE DIOS'),
(18, 'MOQUEGUA'),
(19, 'PASCO'),
(20, 'PIURA'),
(21, 'PUNO'),
(22, 'SAN MARTIN'),
(23, 'TACNA'),
(24, 'TUMBES'),
(25, 'UCAYALI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentodeidentidad`
--

CREATE TABLE `documentodeidentidad` (
  `codDocumento` int(11) NOT NULL,
  `documento` varchar(200) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `documentodeidentidad`
--

INSERT INTO `documentodeidentidad` (`codDocumento`, `documento`) VALUES
(1, 'DNI'),
(2, 'PASAPORTE'),
(3, 'CARNET DE EXTRANJERIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `codPersona` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `codDocumento` int(11) NOT NULL,
  `numeroDocumento` int(11) NOT NULL,
  `codDepartamento` int(11) NOT NULL,
  `codProvincia` int(11) NOT NULL,
  `codCiudad` int(11) NOT NULL,
  `codCurso` int(11) NOT NULL,
  `correo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `codProvincia` int(11) NOT NULL,
  `nombreProvincia` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `codDepartamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`codProvincia`, `nombreProvincia`, `codDepartamento`) VALUES
(10001, 'BAGUA', 1),
(10002, 'BONGARÁ', 1),
(10003, 'CHACHAPOYAS', 1),
(10004, 'CONDORCANQUI', 1),
(10005, 'LUYA', 1),
(10006, 'RODRÍGUES DE MENDOZA', 1),
(10007, 'UTCUBAMBA', 1),
(20001, 'AIJA', 2),
(20002, 'ANTONIO RAYMONDI', 2),
(20003, 'ASUNCIÓN', 2),
(20004, 'BOLOGNESI', 2),
(20005, 'CARHUAZ', 2),
(20006, 'CARLOS F. FITZCARRALD', 2),
(20007, 'CASMA', 2),
(20008, 'CORONGO', 2),
(20009, 'HUARAZ', 2),
(20010, 'HUARI', 2),
(20011, 'HUARMEY', 2),
(20012, 'HUAYLAS', 2),
(20013, 'MARISCAL LUZURIAGA', 2),
(20014, 'OCROS', 2),
(20015, 'PALLASCA', 2),
(20016, 'POMABAMBA', 2),
(20017, 'RECUAY', 2),
(20018, 'SANTA', 2),
(20019, 'SIHUAS', 2),
(20020, 'YUNGAY', 2),
(30001, 'ABANCAY', 3),
(30002, 'ANTABAMBA', 3),
(30003, 'AYMARAES', 3),
(30004, 'COTABAMBAS', 3),
(30005, 'GRAU', 3),
(30006, 'CHINCHEROS', 3),
(30007, 'ANDAHUAYLAS', 3),
(40001, 'AREQUIPA', 4),
(40002, 'CAMANÁ', 4),
(40003, 'CARAVELÍ', 4),
(40004, 'CASTILLA', 4),
(40005, 'CAYLLOMA', 4),
(40006, 'CONDESUYOS', 4),
(40007, 'ISLAY', 4),
(40008, 'LA UNIÓN', 4),
(50001, 'CANGALLO', 5),
(50002, 'HUANTA', 5),
(50003, 'HUAMANGA', 5),
(50004, 'HUANCA SANCOS', 5),
(50005, 'LA MAR', 5),
(50006, 'LUCANAS', 5),
(50007, 'PARINACOCHAS', 5),
(50008, 'PÁUCAR DEL SARA SARA', 5),
(50009, 'SUCRE', 5),
(50010, 'VÍCTOR FAJARDO ', 5),
(50011, 'VILCASHUAMÁN', 5),
(60001, 'CAJABAMBA', 6),
(60002, 'CAJAMARCA', 6),
(60003, 'CELEDÍN', 6),
(60004, 'CHOTA', 6),
(60005, 'CONTUMAZÁ', 6),
(60006, 'CUTERVO', 6),
(60007, 'HUALGAYOC', 6),
(60008, 'JAEN', 6),
(60009, 'SAN IGNACIO', 6),
(60010, 'SAN MARCOS', 6),
(60011, 'SAN MIGUEL', 6),
(60012, 'SAN PABLO', 6),
(60013, 'SANTA CRUZ', 6),
(70001, 'CALLAO', 7),
(80001, 'ACOMAYO', 8),
(80002, 'ANTA', 8),
(80003, 'CALCA', 8),
(80004, 'CANAS', 8),
(80005, 'CHANCHIS', 8),
(80006, 'CHUMBIVILCAS', 8),
(80007, 'CUZCO', 8),
(80008, 'ESPINAR', 8),
(80009, 'LA CONVENCIÓN', 8),
(80010, 'PARURO', 8),
(80011, 'PAUCARTAMBO', 8),
(80012, 'QUISPICANCHI', 8),
(80013, 'URUBAMBA', 8),
(90001, 'ACOBAMBA', 9),
(90002, 'ANGARES', 9),
(90003, 'CASTROVIRREYNA', 9),
(90004, 'CHURCAMPA', 9),
(90005, 'HUANCAVELICA', 9),
(90006, 'HUAYTARÁ', 9),
(90007, 'TAYACAJA', 9),
(100001, 'AMBO', 10),
(100002, 'DOS DE MAYO', 10),
(100004, 'HUACAYBAMBA', 10),
(100005, 'HUAMALÍES', 10),
(100006, 'HUÁNUCO', 10),
(100007, 'LEONCIO PRADO', 10),
(100008, 'MARAÑON', 10),
(100009, 'PACHITEA', 10),
(100010, 'PUERTO INCA', 10),
(100011, 'LAURICOCHA', 10),
(100012, 'YAROWILCA', 10),
(110001, 'CHINCHA', 11),
(110002, 'ICA', 11),
(110003, 'NAZCA', 11),
(110004, 'PALPA', 11),
(110005, 'PISCO', 11),
(120001, 'CHANCHAMAYO', 12),
(120002, 'CHUPACA', 12),
(120003, 'CONCEPCIÓN', 12),
(120004, 'HUANCAYO', 12),
(120005, 'JAUJA', 12),
(120006, 'JUNÍN', 12),
(120007, 'SATIPO', 12),
(120008, 'TARMA', 12),
(120009, 'YAULI', 12),
(130001, 'ASCOPE', 13),
(130002, 'BOLÍVAR', 13),
(130003, 'CHEPÉN', 13),
(130004, 'JULCÁN', 13),
(130005, 'OTUZCO', 13),
(130006, 'GRAN CHIMU', 13),
(130007, 'PACASMAYO', 13),
(130008, 'PATAZ', 13),
(130009, 'SANCHEZ CARRION', 13),
(130010, 'SANTIAGO DE CHUCO', 13),
(130011, 'TRUJILLO', 13),
(130012, 'VIRÚ', 13),
(140001, 'CHICLAYO', 14),
(140002, 'FERREÑAFE', 14),
(140003, 'LAMBAYEQUE', 14),
(150001, 'BARRANCA', 15),
(150002, 'CAJATAMBO', 15),
(150003, 'CANTA', 15),
(150004, 'CAÑETE', 15),
(150005, 'HUARAL', 15),
(150006, 'HUAROCHIRÍ', 15),
(150007, 'HUAURA', 15),
(150008, 'LIMA', 15),
(150009, 'OYÓN', 15),
(150010, 'YAUYOS', 15),
(160001, 'MAYNAS', 16),
(160002, 'PUTUMAYO', 16),
(160003, 'ALTO AMAZONAS', 16),
(160004, 'LORETO', 16),
(160005, 'MARISCAL RAMÓN CASTILLA', 16),
(160006, 'REQUENA', 16),
(160007, 'UCAYALI', 16),
(160008, 'DATEM DEL MARAÑÓN', 16),
(170001, 'TAMBOPATA', 17),
(170002, 'MANU', 17),
(170003, 'TAHUAMANU', 17),
(180001, 'MARISCAL NIETO', 18),
(180002, 'GENERAL SÁNCHEZ CERRO', 18),
(180003, 'ILO', 18),
(190001, 'PASCO', 19),
(190002, 'OXAPAMPA', 19),
(190003, 'DANIEL A. CARRIÓN', 19),
(200001, 'AYABACA', 20),
(200002, 'HUANCABAMBA', 20),
(200003, 'MORROPÓN', 20),
(200004, 'PIURA', 20),
(200005, 'SECHURA', 20),
(200006, 'SULLANA', 20),
(200007, 'PAITA', 20),
(200008, 'TALARA', 20),
(210001, 'SAN ROMÁN ', 21),
(210002, 'PUNO', 21),
(210003, 'AZÁNGARO', 21),
(210004, 'CHUCUITO', 21),
(210005, 'EL COLLAO', 21),
(210006, 'MELGAR', 21),
(210007, 'CARABAYA', 21),
(210008, 'HUANCANÉ', 21),
(210009, 'SANDIA', 21),
(210010, 'SAN ANTONIO DE PUTINA', 21),
(210011, 'LAMPA', 21),
(210012, 'YUGOYO', 21),
(210013, 'MOHO', 21),
(220001, 'BELLAVISTA', 22),
(220002, 'EL DORADO', 22),
(220003, 'HUALLAGA', 22),
(220004, 'LAMAS', 22),
(220005, 'MARISCAL CÁCERES', 22),
(220006, 'MOYOBAMBA', 22),
(220007, 'PICOTA', 22),
(220008, 'RIOJA', 22),
(220009, 'SAN MARTÍN', 22),
(220010, 'TOCACHE', 22),
(230001, 'TACNA', 23),
(230002, 'CANDARAVE', 23),
(230003, 'JORGE BASADRE', 23),
(230004, 'TARATA', 23),
(240001, 'TUMBES', 24),
(240002, 'ZARUMILLA', 24),
(240003, 'CONTRALMIRANTE VILLAR', 24),
(250001, 'CORONEL PORTILLO', 25),
(250002, 'ATALAYA', 25),
(250003, 'PADRE ABAD', 25),
(250004, 'PURÚS', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `codUsuario` int(11) NOT NULL,
  `nombreUsuario` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `correoUsuario` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `passwordUsuario` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `estadoUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`codUsuario`, `nombreUsuario`, `correoUsuario`, `passwordUsuario`, `estadoUsuario`) VALUES
(20210001, 'luis martin mesones almonacid', 'luismesonesalmonacid@gmail.com', 'leonor9727', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `certificado`
--
ALTER TABLE `certificado`
  ADD PRIMARY KEY (`codCertificado`),
  ADD KEY `codCurso` (`codCurso`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`codCiudad`),
  ADD KEY `codProvincia` (`codProvincia`),
  ADD KEY `codDepartamento` (`codDepartamento`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`codCurso`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`codDepartamento`);

--
-- Indices de la tabla `documentodeidentidad`
--
ALTER TABLE `documentodeidentidad`
  ADD PRIMARY KEY (`codDocumento`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`codPersona`),
  ADD KEY `codDocumento` (`codDocumento`),
  ADD KEY `codDepartamento` (`codDepartamento`),
  ADD KEY `codProvincia` (`codProvincia`),
  ADD KEY `codCiudad` (`codCiudad`),
  ADD KEY `codCurso` (`codCurso`),
  ADD KEY `codCurso_2` (`codCurso`),
  ADD KEY `codCurso_3` (`codCurso`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`codProvincia`),
  ADD KEY `codDepartamento` (`codDepartamento`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`codUsuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `certificado`
--
ALTER TABLE `certificado`
  ADD CONSTRAINT `certificado_ibfk_1` FOREIGN KEY (`codCurso`) REFERENCES `curso` (`codCurso`);

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`codDepartamento`) REFERENCES `departamentos` (`codDepartamento`),
  ADD CONSTRAINT `ciudad_ibfk_2` FOREIGN KEY (`codProvincia`) REFERENCES `provincia` (`codProvincia`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`codDepartamento`) REFERENCES `departamentos` (`codDepartamento`),
  ADD CONSTRAINT `persona_ibfk_2` FOREIGN KEY (`codProvincia`) REFERENCES `provincia` (`codProvincia`),
  ADD CONSTRAINT `persona_ibfk_3` FOREIGN KEY (`codCurso`) REFERENCES `curso` (`codCurso`),
  ADD CONSTRAINT `persona_ibfk_4` FOREIGN KEY (`codCiudad`) REFERENCES `ciudad` (`codCiudad`),
  ADD CONSTRAINT `persona_ibfk_5` FOREIGN KEY (`codDocumento`) REFERENCES `documentodeidentidad` (`codDocumento`);

--
-- Filtros para la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD CONSTRAINT `provincia_ibfk_1` FOREIGN KEY (`codDepartamento`) REFERENCES `departamentos` (`codDepartamento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
