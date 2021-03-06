-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 29-01-2019 a las 18:55:38
-- Versión del servidor: 5.7.17-log
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;


--
-- Base de datos: `db_rrhh`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tactividad_social`
--

CREATE TABLE `tactividad_social` (
  `idactividad_social` int(11) NOT NULL,
  `actividad_social` varchar(70) NOT NULL,
  `idpersona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tafec_opera_lesiones`
--

CREATE TABLE `tafec_opera_lesiones` (
  `idafec_opera_lesiones` int(11) NOT NULL,
  `afec_opera_lesiones` varchar(70) NOT NULL,
  `duracion` varchar(20) NOT NULL,
  `estado_actual` varchar(20) NOT NULL,
  `idpersona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarea_interes`
--

CREATE TABLE `tarea_interes` (
  `idarea_interes` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `area_interes` varchar(40) NOT NULL,
  `estatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasegurado`
--

CREATE TABLE `tasegurado` (
  `idasegurado` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `parentesco` varchar(20) NOT NULL DEFAULT 'TITULAR',
  `idtipo_nomina` int(11) NOT NULL,
  `iddepartamento` int(11) NOT NULL,
  `maternidad` varchar(3) NOT NULL,
  `estatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tconocimiento_ofimatico`
--

CREATE TABLE `tconocimiento_ofimatico` (
  `idconocimiento_ofimatico` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `conocimiento_ofimatico` varchar(20) NOT NULL,
  `version` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tcordenadas`
--

CREATE TABLE `tcordenadas` (
  `idcordenadas` int(11) NOT NULL,
  `n_s` varchar(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `a1` varchar(6) NOT NULL,
  `a2` varchar(6) NOT NULL,
  `a3` varchar(6) NOT NULL,
  `a4` varchar(6) NOT NULL,
  `a5` varchar(6) NOT NULL,
  `a6` varchar(6) NOT NULL,
  `a7` varchar(6) NOT NULL,
  `a8` varchar(6) NOT NULL,
  `b1` varchar(6) NOT NULL,
  `b2` varchar(6) NOT NULL,
  `b3` varchar(6) NOT NULL,
  `b4` varchar(6) NOT NULL,
  `b5` varchar(6) NOT NULL,
  `b6` varchar(6) NOT NULL,
  `b7` varchar(6) NOT NULL,
  `b8` varchar(6) NOT NULL,
  `c1` varchar(6) NOT NULL,
  `c2` varchar(6) NOT NULL,
  `c3` varchar(6) NOT NULL,
  `c4` varchar(6) NOT NULL,
  `c5` varchar(6) NOT NULL,
  `c6` varchar(6) NOT NULL,
  `c7` varchar(6) NOT NULL,
  `c8` varchar(6) NOT NULL,
  `d1` varchar(6) NOT NULL,
  `d2` varchar(6) NOT NULL,
  `d3` varchar(6) NOT NULL,
  `d4` varchar(6) NOT NULL,
  `d5` varchar(6) NOT NULL,
  `d6` varchar(6) NOT NULL,
  `d7` varchar(6) NOT NULL,
  `d8` varchar(6) NOT NULL,
  `e1` varchar(6) NOT NULL,
  `e2` varchar(6) NOT NULL,
  `e3` varchar(6) NOT NULL,
  `e4` varchar(6) NOT NULL,
  `e5` varchar(6) NOT NULL,
  `e6` varchar(6) NOT NULL,
  `e7` varchar(6) NOT NULL,
  `e8` varchar(6) NOT NULL,
  `f1` varchar(6) NOT NULL,
  `f2` varchar(6) NOT NULL,
  `f3` varchar(6) NOT NULL,
  `f4` varchar(6) NOT NULL,
  `f5` varchar(6) NOT NULL,
  `f6` varchar(6) NOT NULL,
  `f7` varchar(6) NOT NULL,
  `f8` varchar(6) NOT NULL,
  `g1` varchar(6) NOT NULL,
  `g2` varchar(6) NOT NULL,
  `g3` varchar(6) NOT NULL,
  `g4` varchar(6) NOT NULL,
  `g5` varchar(6) NOT NULL,
  `g6` varchar(6) NOT NULL,
  `g7` varchar(6) NOT NULL,
  `g8` varchar(6) NOT NULL,
  `h1` varchar(6) NOT NULL,
  `h2` varchar(6) NOT NULL,
  `h3` varchar(6) NOT NULL,
  `h4` varchar(6) NOT NULL,
  `h5` varchar(6) NOT NULL,
  `h6` varchar(6) NOT NULL,
  `h7` varchar(6) NOT NULL,
  `h8` varchar(6) NOT NULL,
  `estatus` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tcordenadas`
--

INSERT INTO `tcordenadas` (`idcordenadas`, `n_s`, `idusuario`, `a1`, `a2`, `a3`, `a4`, `a5`, `a6`, `a7`, `a8`, `b1`, `b2`, `b3`, `b4`, `b5`, `b6`, `b7`, `b8`, `c1`, `c2`, `c3`, `c4`, `c5`, `c6`, `c7`, `c8`, `d1`, `d2`, `d3`, `d4`, `d5`, `d6`, `d7`, `d8`, `e1`, `e2`, `e3`, `e4`, `e5`, `e6`, `e7`, `e8`, `f1`, `f2`, `f3`, `f4`, `f5`, `f6`, `f7`, `f8`, `g1`, `g2`, `g3`, `g4`, `g5`, `g6`, `g7`, `g8`, `h1`, `h2`, `h3`, `h4`, `h5`, `h6`, `h7`, `h8`, `estatus`) VALUES
(1, '00254254jh', 1, 'UNLV', 'NJ53', 'VZUS', 'J1YD', 'O3S0', 'AE43', 'VUV2', 'ZK37', '5KLV', 'T7X5', 'QU3J', '47FU', 'UMJY', '3CKI', '62Y1', '282H', 'RR12', 'SCBI', 'J18L', 'EYWW', 'SVXW', 'LXCQ', 'E5OZ', 'IYI2', 'FH46', 'CB5O', 'QJ6U', '8WS2', 'XGM1', '2SXL', 'Z6XU', '3W39', '4FH3', '7FFJ', '34NN', 'FMCX', 'S5YA', 'PMFF', '2TC4', 'L1RR', 'RW6I', '8GND', 'IVH6', 'E4HK', 'QRWA', '4MSO', '744U', 'NZDO', 'GRDV', 'XPRN', 'B1J5', 'QDPK', 'KJYQ', 'RLQD', 'F737', 'RGIE', 'DZ6L', 'QZY7', '0XJM', 'S6OY', 'JKFK', 'PCCM', 'W0OH', '30AS', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tdefecto_fisico`
--

CREATE TABLE `tdefecto_fisico` (
  `iddefecto_fisico` int(11) NOT NULL,
  `defecto_fisico` varchar(70) NOT NULL,
  `tratamiento` varchar(2) NOT NULL,
  `detalle_tratamiento` varchar(255) NOT NULL,
  `idpersona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tdepartamento`
--

CREATE TABLE `tdepartamento` (
  `iddepartamento` int(11) NOT NULL,
  `departamento` varchar(40) NOT NULL,
  `idgerencia` int(11) NOT NULL,
  `estatus` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tdepartamento`
--

INSERT INTO `tdepartamento` (`iddepartamento`, `departamento`, `idgerencia`, `estatus`) VALUES
(1, 'SEGURIDAD INTEGRAL', 1, 0),
(2, 'ADMINISTRACION Y FINANZAS', 1, 0),
(3, 'PROCESOS Y SISTEMAS DE INFORMACION', 1, 0),
(4, 'RECURSOS HUMANOS', 1, 0),
(5, 'DESARROLLO Y MERCADEO', 1, 0),
(6, 'ASISTENCIA TECNICA', 1, 0),
(7, 'LOGISTICA Y PROCURA', 1, 0),
(8, 'PLANIFICACION DE LA PRODUCCION', 1, 0),
(9, 'ASEGURAMIENTO DE LA CALIDAD', 1, 0),
(10, 'CONTABILIDAD E IMPUESTOS', 1, 0),
(11, 'PROCESOS Y PROYECTOS', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tdependiente`
--

CREATE TABLE `tdependiente` (
  `iddependiente` int(11) NOT NULL,
  `idasegurado` int(11) NOT NULL,
  `cedula` varchar(8) NOT NULL,
  `nom1` varchar(70) NOT NULL,
  `nom2` varchar(70) DEFAULT NULL,
  `ape1` varchar(70) NOT NULL,
  `ape2` varchar(70) DEFAULT NULL,
  `sexo` varchar(15) NOT NULL,
  `fecha_nac` date NOT NULL,
  `edad` int(3) NOT NULL,
  `maternidad` varchar(2) NOT NULL,
  `idparentesco` int(11) NOT NULL,
  `idestado_civil` int(11) NOT NULL,
  `hijos_hasta_25` varchar(2) NOT NULL,
  `estatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tdireccion`
--

CREATE TABLE `tdireccion` (
  `iddireccion` int(11) NOT NULL,
  `urbanismo` varchar(40) NOT NULL,
  `direccion_domicilio` varchar(20) NOT NULL,
  `tipo_vivienda` varchar(20) NOT NULL,
  `numero` int(4) NOT NULL,
  `planta` varchar(20) DEFAULT NULL,
  `piso` int(3) DEFAULT NULL,
  `parroquia` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `estatus` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tdistin_acade_acti_social`
--

CREATE TABLE `tdistin_acade_acti_social` (
  `iddistin_acade_acti_social` int(11) NOT NULL,
  `distincion_academica` varchar(70) DEFAULT NULL,
  `idpersona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testados`
--

CREATE TABLE `testados` (
  `id_estado` int(11) NOT NULL,
  `estado` varchar(250) NOT NULL,
  `iso_3166-2` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `testados`
--

INSERT INTO `testados` (`id_estado`, `estado`, `iso_3166-2`) VALUES
(1, 'Amazonas', 'VE-X'),
(2, 'Anzoátegui', 'VE-B'),
(3, 'Apure', 'VE-C'),
(4, 'Aragua', 'VE-D'),
(5, 'Barinas', 'VE-E'),
(6, 'Bolívar', 'VE-F'),
(7, 'Carabobo', 'VE-G'),
(8, 'Cojedes', 'VE-H'),
(9, 'Delta Amacuro', 'VE-Y'),
(10, 'Falcón', 'VE-I'),
(11, 'Guárico', 'VE-J'),
(12, 'Lara', 'VE-K'),
(13, 'Mérida', 'VE-L'),
(14, 'Miranda', 'VE-M'),
(15, 'Monagas', 'VE-N'),
(16, 'Nueva Esparta', 'VE-O'),
(17, 'Portuguesa', 'VE-P'),
(18, 'Sucre', 'VE-R'),
(19, 'Táchira', 'VE-S'),
(20, 'Trujillo', 'VE-T'),
(21, 'Vargas', 'VE-W'),
(22, 'Yaracuy', 'VE-U'),
(23, 'Zulia', 'VE-V'),
(24, 'Distrito Capital', 'VE-A'),
(25, 'Dependencias Federales', 'VE-Z');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testado_civil`
--

CREATE TABLE `testado_civil` (
  `idestado_civil` int(11) NOT NULL,
  `estado_civil` varchar(20) NOT NULL,
  `estatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `testado_civil`
--

INSERT INTO `testado_civil` (`idestado_civil`, `estado_civil`, `estatus`) VALUES
(1, 'SOLTERO', 1),
(2, 'CASADO', 1),
(3, 'SOLTERA', 1),
(4, 'CASADA', 1),
(5, 'VIUDO', 1),
(6, 'VIUDA', 1),
(7, 'DIVORCIADO', 1),
(8, 'DIVORCIADA', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `texperiencia_laboral`
--

CREATE TABLE `texperiencia_laboral` (
  `idexperiencia_laboral` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `empresa` varchar(70) NOT NULL,
  `fecha_desde` date NOT NULL,
  `fecha_hasta` date NOT NULL,
  `ingreso_mensual_inicial` decimal(19,4) NOT NULL,
  `ingreso_mensual_final` decimal(19,4) NOT NULL,
  `cargo` varchar(40) NOT NULL,
  `supervisor_inmediato` varchar(70) DEFAULT NULL,
  `razon_salida` varchar(200) NOT NULL,
  `telefono` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tgerencia`
--

CREATE TABLE `tgerencia` (
  `idgerencia` int(11) NOT NULL,
  `gerencia` varchar(30) NOT NULL,
  `estatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tgerencia`
--

INSERT INTO `tgerencia` (`idgerencia`, `gerencia`, `estatus`) VALUES
(1, 'PRESIDENTE', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tgrado_instruccion`
--

CREATE TABLE `tgrado_instruccion` (
  `idgrado_instruccion` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `nivel` varchar(15) NOT NULL,
  `institucion` varchar(40) NOT NULL,
  `ciudad` varchar(15) NOT NULL,
  `desde_hasta` varchar(20) DEFAULT NULL,
  `anos_culminados` int(4) NOT NULL,
  `estatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `thijos`
--

CREATE TABLE `thijos` (
  `idhijos` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `nombre_hijo` varchar(70) NOT NULL,
  `sexo_hijo` varchar(20) NOT NULL,
  `nacimiento` varchar(20) NOT NULL,
  `ci_hijo` varchar(8) DEFAULT NULL,
  `ocupacion_hijo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tingreso`
--

CREATE TABLE `tingreso` (
  `idingreso` int(1) NOT NULL,
  `ingreso` varchar(40) NOT NULL,
  `estatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tingreso`
--

INSERT INTO `tingreso` (`idingreso`, `ingreso`, `estatus`) VALUES
(1, 'ACTIVO', 1),
(2, 'BANCO ELEGIBLE', 1),
(4, 'TERCERO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmontos_asegurado`
--

CREATE TABLE `tmontos_asegurado` (
  `idmonto_asegurado` int(11) NOT NULL,
  `monto_prima_asegurado` decimal(19,4) NOT NULL,
  `mes_prima_asegurado` int(2) NOT NULL,
  `monto_asegurado` decimal(19,4) NOT NULL,
  `monto_empleado_asegurado` decimal(19,4) NOT NULL,
  `monto_empresa_asegurado` decimal(19,4) NOT NULL,
  `fecha_corte_asegurado` date NOT NULL,
  `idasegurado` int(11) NOT NULL,
  `estatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmontos_dependiente`
--

CREATE TABLE `tmontos_dependiente` (
  `idmonto_dependiente` int(11) NOT NULL,
  `monto_prima_dependiente` decimal(19,4) NOT NULL,
  `mes_prima_dependiente` int(2) NOT NULL,
  `monto_dependiente` decimal(19,4) NOT NULL,
  `monto_empleado_dependiente` decimal(19,4) NOT NULL,
  `monto_empresa_dependiente` decimal(19,4) NOT NULL,
  `fecha_corte_dependiente` date NOT NULL,
  `iddependiente` int(11) NOT NULL,
  `estatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmunicipios`
--

CREATE TABLE `tmunicipios` (
  `id_municipio` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `municipio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tmunicipios`
--

INSERT INTO `tmunicipios` (`id_municipio`, `id_estado`, `municipio`) VALUES
(1, 1, 'Alto Orinoco'),
(2, 1, 'Atabapo'),
(3, 1, 'Atures'),
(4, 1, 'Autana'),
(5, 1, 'Manapiare'),
(6, 1, 'Maroa'),
(7, 1, 'Río Negro'),
(8, 2, 'Anaco'),
(9, 2, 'Aragua'),
(10, 2, 'Manuel Ezequiel Bruzual'),
(11, 2, 'Diego Bautista Urbaneja'),
(12, 2, 'Fernando Peñalver'),
(13, 2, 'Francisco Del Carmen Carvajal'),
(14, 2, 'General Sir Arthur McGregor'),
(15, 2, 'Guanta'),
(16, 2, 'Independencia'),
(17, 2, 'José Gregorio Monagas'),
(18, 2, 'Juan Antonio Sotillo'),
(19, 2, 'Juan Manuel Cajigal'),
(20, 2, 'Libertad'),
(21, 2, 'Francisco de Miranda'),
(22, 2, 'Pedro María Freites'),
(23, 2, 'Píritu'),
(24, 2, 'San José de Guanipa'),
(25, 2, 'San Juan de Capistrano'),
(26, 2, 'Santa Ana'),
(27, 2, 'Simón Bolívar'),
(28, 2, 'Simón Rodríguez'),
(29, 3, 'Achaguas'),
(30, 3, 'Biruaca'),
(31, 3, 'Muñóz'),
(33, 3, 'Pedro Camejo'),
(34, 3, 'Rómulo Gallegos'),
(35, 3, 'San Fernando'),
(36, 4, 'Atanasio Girardot'),
(37, 4, 'Bolívar'),
(38, 4, 'Camatagua'),
(39, 4, 'Francisco Linares Alcántara'),
(40, 4, 'José Ángel Lamas'),
(41, 4, 'José Félix Ribas'),
(42, 4, 'José Rafael Revenga'),
(43, 4, 'Libertador'),
(44, 4, 'Mario Briceño Iragorry'),
(45, 4, 'Ocumare de la Costa de Oro'),
(46, 4, 'San Casimiro'),
(47, 4, 'San Sebastián'),
(48, 4, 'Santiago Mariño'),
(49, 4, 'Santos Michelena'),
(50, 4, 'Sucre'),
(51, 4, 'Tovar'),
(52, 4, 'Urdaneta'),
(53, 4, 'Zamora'),
(54, 5, 'Alberto Arvelo Torrealba'),
(55, 5, 'Andrés Eloy Blanco'),
(56, 5, 'Antonio José de Sucre'),
(57, 5, 'Arismendi'),
(58, 5, 'Barinas'),
(59, 5, 'Bolívar'),
(60, 5, 'Cruz Paredes'),
(61, 5, 'Ezequiel Zamora'),
(62, 5, 'Obispos'),
(63, 5, 'Pedraza'),
(64, 5, 'Rojas'),
(65, 5, 'Sosa'),
(66, 6, 'Caroní'),
(67, 6, 'Cedeño'),
(68, 6, 'El Callao'),
(69, 6, 'Gran Sabana'),
(70, 6, 'Heres'),
(71, 6, 'Piar'),
(72, 6, 'Angostura (Raúl Leoni)'),
(73, 6, 'Roscio'),
(74, 6, 'Sifontes'),
(75, 6, 'Sucre'),
(76, 6, 'Padre Pedro Chien'),
(77, 7, 'Bejuma'),
(78, 7, 'Carlos Arvelo'),
(79, 7, 'Diego Ibarra'),
(80, 7, 'Guacara'),
(81, 7, 'Juan José Mora'),
(82, 7, 'Libertador'),
(83, 7, 'Los Guayos'),
(84, 7, 'Miranda'),
(85, 7, 'Montalbán'),
(86, 7, 'Naguanagua'),
(87, 7, 'Puerto Cabello'),
(88, 7, 'San Diego'),
(89, 7, 'San Joaquín'),
(90, 7, 'Valencia'),
(91, 8, 'Anzoátegui'),
(92, 8, 'Tinaquillo'),
(93, 8, 'Girardot'),
(94, 8, 'Lima Blanco'),
(95, 8, 'Pao de San Juan Bautista'),
(96, 8, 'Ricaurte'),
(97, 8, 'Rómulo Gallegos'),
(98, 8, 'San Carlos'),
(99, 8, 'Tinaco'),
(100, 9, 'Antonio Díaz'),
(101, 9, 'Casacoima'),
(102, 9, 'Pedernales'),
(103, 9, 'Tucupita'),
(104, 10, 'Acosta'),
(105, 10, 'Bolívar'),
(106, 10, 'Buchivacoa'),
(107, 10, 'Cacique Manaure'),
(108, 10, 'Carirubana'),
(109, 10, 'Colina'),
(110, 10, 'Dabajuro'),
(111, 10, 'Democracia'),
(112, 10, 'Falcón'),
(113, 10, 'Federación'),
(114, 10, 'Jacura'),
(115, 10, 'José Laurencio Silva'),
(116, 10, 'Los Taques'),
(117, 10, 'Mauroa'),
(118, 10, 'Miranda'),
(119, 10, 'Monseñor Iturriza'),
(120, 10, 'Palmasola'),
(121, 10, 'Petit'),
(122, 10, 'Píritu'),
(123, 10, 'San Francisco'),
(124, 10, 'Sucre'),
(125, 10, 'Tocópero'),
(126, 10, 'Unión'),
(127, 10, 'Urumaco'),
(128, 10, 'Zamora'),
(129, 11, 'Camaguán'),
(130, 11, 'Chaguaramas'),
(131, 11, 'El Socorro'),
(132, 11, 'José Félix Ribas'),
(133, 11, 'José Tadeo Monagas'),
(134, 11, 'Juan Germán Roscio'),
(135, 11, 'Julián Mellado'),
(136, 11, 'Las Mercedes'),
(137, 11, 'Leonardo Infante'),
(138, 11, 'Pedro Zaraza'),
(139, 11, 'Ortíz'),
(140, 11, 'San Gerónimo de Guayabal'),
(141, 11, 'San José de Guaribe'),
(142, 11, 'Santa María de Ipire'),
(143, 11, 'Sebastián Francisco de Miranda'),
(144, 12, 'Andrés Eloy Blanco'),
(145, 12, 'Crespo'),
(146, 12, 'Iribarren'),
(147, 12, 'Jiménez'),
(148, 12, 'Morán'),
(149, 12, 'Palavecino'),
(150, 12, 'Simón Planas'),
(151, 12, 'Torres'),
(152, 12, 'Urdaneta'),
(179, 13, 'Alberto Adriani'),
(180, 13, 'Andrés Bello'),
(181, 13, 'Antonio Pinto Salinas'),
(182, 13, 'Aricagua'),
(183, 13, 'Arzobispo Chacón'),
(184, 13, 'Campo Elías'),
(185, 13, 'Caracciolo Parra Olmedo'),
(186, 13, 'Cardenal Quintero'),
(187, 13, 'Guaraque'),
(188, 13, 'Julio César Salas'),
(189, 13, 'Justo Briceño'),
(190, 13, 'Libertador'),
(191, 13, 'Miranda'),
(192, 13, 'Obispo Ramos de Lora'),
(193, 13, 'Padre Noguera'),
(194, 13, 'Pueblo Llano'),
(195, 13, 'Rangel'),
(196, 13, 'Rivas Dávila'),
(197, 13, 'Santos Marquina'),
(198, 13, 'Sucre'),
(199, 13, 'Tovar'),
(200, 13, 'Tulio Febres Cordero'),
(201, 13, 'Zea'),
(223, 14, 'Acevedo'),
(224, 14, 'Andrés Bello'),
(225, 14, 'Baruta'),
(226, 14, 'Brión'),
(227, 14, 'Buroz'),
(228, 14, 'Carrizal'),
(229, 14, 'Chacao'),
(230, 14, 'Cristóbal Rojas'),
(231, 14, 'El Hatillo'),
(232, 14, 'Guaicaipuro'),
(233, 14, 'Independencia'),
(234, 14, 'Lander'),
(235, 14, 'Los Salias'),
(237, 14, 'Paz Castillo'),
(238, 14, 'Pedro Gual'),
(239, 14, 'Plaza'),
(240, 14, 'Simón Bolívar'),
(241, 14, 'Sucre'),
(242, 14, 'Urdaneta'),
(243, 14, 'Zamora'),
(258, 15, 'Acosta'),
(259, 15, 'Aguasay'),
(260, 15, 'Bolívar'),
(261, 15, 'Caripe'),
(262, 15, 'Cedeño'),
(263, 15, 'Ezequiel Zamora'),
(264, 15, 'Libertador'),
(265, 15, 'Maturín'),
(266, 15, 'Piar'),
(267, 15, 'Punceres'),
(268, 15, 'Santa Bárbara'),
(269, 15, 'Sotillo'),
(270, 15, 'Uracoa'),
(271, 16, 'Antolín del Campo'),
(272, 16, 'Arismendi'),
(273, 16, 'García'),
(274, 16, 'Gómez'),
(275, 16, 'Maneiro'),
(276, 16, 'Marcano'),
(277, 16, 'Mariño'),
(278, 16, 'Península de Macanao'),
(279, 16, 'Tubores'),
(280, 16, 'Villalba'),
(281, 16, 'Díaz'),
(282, 17, 'Agua Blanca'),
(283, 17, 'Araure'),
(284, 17, 'Esteller'),
(285, 17, 'Guanare'),
(286, 17, 'Guanarito'),
(287, 17, 'Monseñor José Vicente de Unda'),
(288, 17, 'Ospino'),
(289, 17, 'Páez'),
(290, 17, 'Papelón'),
(291, 17, 'San Genaro de Boconoíto'),
(292, 17, 'San Rafael de Onoto'),
(293, 17, 'Santa Rosalía'),
(294, 17, 'Sucre'),
(295, 17, 'Turén'),
(296, 18, 'Andrés Eloy Blanco'),
(297, 18, 'Andrés Mata'),
(298, 18, 'Arismendi'),
(299, 18, 'Benítez'),
(300, 18, 'Bermúdez'),
(301, 18, 'Bolívar'),
(302, 18, 'Cajigal'),
(303, 18, 'Cruz Salmerón Acosta'),
(304, 18, 'Libertador'),
(305, 18, 'Mariño'),
(306, 18, 'Mejía'),
(307, 18, 'Montes'),
(308, 18, 'Ribero'),
(309, 18, 'Sucre'),
(310, 18, 'Valdéz'),
(341, 19, 'Andrés Bello'),
(342, 19, 'Antonio Rómulo Costa'),
(343, 19, 'Ayacucho'),
(344, 19, 'Bolívar'),
(345, 19, 'Cárdenas'),
(346, 19, 'Córdoba'),
(347, 19, 'Fernández Feo'),
(348, 19, 'Francisco de Miranda'),
(349, 19, 'García de Hevia'),
(350, 19, 'Guásimos'),
(351, 19, 'Independencia'),
(352, 19, 'Jáuregui'),
(353, 19, 'José María Vargas'),
(354, 19, 'Junín'),
(355, 19, 'Libertad'),
(356, 19, 'Libertador'),
(357, 19, 'Lobatera'),
(358, 19, 'Michelena'),
(359, 19, 'Panamericano'),
(360, 19, 'Pedro María Ureña'),
(361, 19, 'Rafael Urdaneta'),
(362, 19, 'Samuel Darío Maldonado'),
(363, 19, 'San Cristóbal'),
(364, 19, 'Seboruco'),
(365, 19, 'Simón Rodríguez'),
(366, 19, 'Sucre'),
(367, 19, 'Torbes'),
(368, 19, 'Uribante'),
(369, 19, 'San Judas Tadeo'),
(370, 20, 'Andrés Bello'),
(371, 20, 'Boconó'),
(372, 20, 'Bolívar'),
(373, 20, 'Candelaria'),
(374, 20, 'Carache'),
(375, 20, 'Escuque'),
(376, 20, 'José Felipe Márquez Cañizalez'),
(377, 20, 'Juan Vicente Campos Elías'),
(378, 20, 'La Ceiba'),
(379, 20, 'Miranda'),
(380, 20, 'Monte Carmelo'),
(381, 20, 'Motatán'),
(382, 20, 'Pampán'),
(383, 20, 'Pampanito'),
(384, 20, 'Rafael Rangel'),
(385, 20, 'San Rafael de Carvajal'),
(386, 20, 'Sucre'),
(387, 20, 'Trujillo'),
(388, 20, 'Urdaneta'),
(389, 20, 'Valera'),
(390, 21, 'Vargas'),
(391, 22, 'Arístides Bastidas'),
(392, 22, 'Bolívar'),
(407, 22, 'Bruzual'),
(408, 22, 'Cocorote'),
(409, 22, 'Independencia'),
(410, 22, 'José Antonio Páez'),
(411, 22, 'La Trinidad'),
(412, 22, 'Manuel Monge'),
(413, 22, 'Nirgua'),
(414, 22, 'Peña'),
(415, 22, 'San Felipe'),
(416, 22, 'Sucre'),
(417, 22, 'Urachiche'),
(418, 22, 'José Joaquín Veroes'),
(441, 23, 'Almirante Padilla'),
(442, 23, 'Baralt'),
(443, 23, 'Cabimas'),
(444, 23, 'Catatumbo'),
(445, 23, 'Colón'),
(446, 23, 'Francisco Javier Pulgar'),
(448, 23, 'Jesús Enrique Losada'),
(449, 23, 'Jesús María Semprún'),
(450, 23, 'La Cañada de Urdaneta'),
(451, 23, 'Lagunillas'),
(452, 23, 'Machiques de Perijá'),
(453, 23, 'Mara'),
(454, 23, 'Maracaibo'),
(455, 23, 'Miranda'),
(456, 23, 'Rosario de Perijá'),
(457, 23, 'San Francisco'),
(458, 23, 'Santa Rita'),
(459, 23, 'Simón Bolívar'),
(460, 23, 'Sucre'),
(461, 23, 'Valmore Rodríguez'),
(462, 24, 'Libertador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tpaises`
--

CREATE TABLE `tpaises` (
  `idtpaises` int(11) NOT NULL,
  `iso` char(2) DEFAULT NULL,
  `pais` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tpaises`
--

INSERT INTO `tpaises` (`idtpaises`, `iso`, `pais`) VALUES
(1, 'AF', 'Afganistán'),
(2, 'AX', 'Islas Gland'),
(3, 'AL', 'Albania'),
(4, 'DE', 'Alemania'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antártida'),
(9, 'AG', 'Antigua y Barbuda'),
(10, 'AN', 'Antillas Holandesas'),
(11, 'SA', 'Arabia Saudí'),
(12, 'DZ', 'Argelia'),
(13, 'AR', 'Argentina'),
(14, 'AM', 'Armenia'),
(15, 'AW', 'Aruba'),
(16, 'AU', 'Australia'),
(17, 'AT', 'Austria'),
(18, 'AZ', 'Azerbaiyán'),
(19, 'BS', 'Bahamas'),
(20, 'BH', 'Bahréin'),
(21, 'BD', 'Bangladesh'),
(22, 'BB', 'Barbados'),
(23, 'BY', 'Bielorrusia'),
(24, 'BE', 'Bélgica'),
(25, 'BZ', 'Belice'),
(26, 'BJ', 'Benin'),
(27, 'BM', 'Bermudas'),
(28, 'BT', 'Bhután'),
(29, 'BO', 'Bolivia'),
(30, 'BA', 'Bosnia y Herzegovina'),
(31, 'BW', 'Botsuana'),
(32, 'BV', 'Isla Bouvet'),
(33, 'BR', 'Brasil'),
(34, 'BN', 'Brunéi'),
(35, 'BG', 'Bulgaria'),
(36, 'BF', 'Burkina Faso'),
(37, 'BI', 'Burundi'),
(38, 'CV', 'Cabo Verde'),
(39, 'KY', 'Islas Caimán'),
(40, 'KH', 'Camboya'),
(41, 'CM', 'Camerún'),
(42, 'CA', 'Canadá'),
(43, 'CF', 'República Centroafricana'),
(44, 'TD', 'Chad'),
(45, 'CZ', 'República Checa'),
(46, 'CL', 'Chile'),
(47, 'CN', 'China'),
(48, 'CY', 'Chipre'),
(49, 'CX', 'Isla de Navidad'),
(50, 'VA', 'Ciudad del Vaticano'),
(51, 'CC', 'Islas Cocos'),
(52, 'CO', 'Colombia'),
(53, 'KM', 'Comoras'),
(54, 'CD', 'República Democrática del Congo'),
(55, 'CG', 'Congo'),
(56, 'CK', 'Islas Cook'),
(57, 'KP', 'Corea del Norte'),
(58, 'KR', 'Corea del Sur'),
(59, 'CI', 'Costa de Marfil'),
(60, 'CR', 'Costa Rica'),
(61, 'HR', 'Croacia'),
(62, 'CU', 'Cuba'),
(63, 'DK', 'Dinamarca'),
(64, 'DM', 'Dominica'),
(65, 'DO', 'República Dominicana'),
(66, 'EC', 'Ecuador'),
(67, 'EG', 'Egipto'),
(68, 'SV', 'El Salvador'),
(69, 'AE', 'Emiratos Árabes Unidos'),
(70, 'ER', 'Eritrea'),
(71, 'SK', 'Eslovaquia'),
(72, 'SI', 'Eslovenia'),
(73, 'ES', 'España'),
(74, 'UM', 'Islas ultramarinas de Estados Unidos'),
(75, 'US', 'Estados Unidos'),
(76, 'EE', 'Estonia'),
(77, 'ET', 'Etiopía'),
(78, 'FO', 'Islas Feroe'),
(79, 'PH', 'Filipinas'),
(80, 'FI', 'Finlandia'),
(81, 'FJ', 'Fiyi'),
(82, 'FR', 'Francia'),
(83, 'GA', 'Gabón'),
(84, 'GM', 'Gambia'),
(85, 'GE', 'Georgia'),
(86, 'GS', 'Islas Georgias del Sur y Sandwich del Sur'),
(87, 'GH', 'Ghana'),
(88, 'GI', 'Gibraltar'),
(89, 'GD', 'Granada'),
(90, 'GR', 'Grecia'),
(91, 'GL', 'Groenlandia'),
(92, 'GP', 'Guadalupe'),
(93, 'GU', 'Guam'),
(94, 'GT', 'Guatemala'),
(95, 'GF', 'Guayana Francesa'),
(96, 'GN', 'Guinea'),
(97, 'GQ', 'Guinea Ecuatorial'),
(98, 'GW', 'Guinea-Bissau'),
(99, 'GY', 'Guyana'),
(100, 'HT', 'Haití'),
(101, 'HM', 'Islas Heard y McDonald'),
(102, 'HN', 'Honduras'),
(103, 'HK', 'Hong Kong'),
(104, 'HU', 'Hungría'),
(105, 'IN', 'India'),
(106, 'ID', 'Indonesia'),
(107, 'IR', 'Irán'),
(108, 'IQ', 'Iraq'),
(109, 'IE', 'Irlanda'),
(110, 'IS', 'Islandia'),
(111, 'IL', 'Israel'),
(112, 'IT', 'Italia'),
(113, 'JM', 'Jamaica'),
(114, 'JP', 'Japón'),
(115, 'JO', 'Jordania'),
(116, 'KZ', 'Kazajstán'),
(117, 'KE', 'Kenia'),
(118, 'KG', 'Kirguistán'),
(119, 'KI', 'Kiribati'),
(120, 'KW', 'Kuwait'),
(121, 'LA', 'Laos'),
(122, 'LS', 'Lesotho'),
(123, 'LV', 'Letonia'),
(124, 'LB', 'Líbano'),
(125, 'LR', 'Liberia'),
(126, 'LY', 'Libia'),
(127, 'LI', 'Liechtenstein'),
(128, 'LT', 'Lituania'),
(129, 'LU', 'Luxemburgo'),
(130, 'MO', 'Macao'),
(131, 'MK', 'ARY Macedonia'),
(132, 'MG', 'Madagascar'),
(133, 'MY', 'Malasia'),
(134, 'MW', 'Malawi'),
(135, 'MV', 'Maldivas'),
(136, 'ML', 'Malí'),
(137, 'MT', 'Malta'),
(138, 'FK', 'Islas Malvinas'),
(139, 'MP', 'Islas Marianas del Norte'),
(140, 'MA', 'Marruecos'),
(141, 'MH', 'Islas Marshall'),
(142, 'MQ', 'Martinica'),
(143, 'MU', 'Mauricio'),
(144, 'MR', 'Mauritania'),
(145, 'YT', 'Mayotte'),
(146, 'MX', 'México'),
(147, 'FM', 'Micronesia'),
(148, 'MD', 'Moldavia'),
(149, 'MC', 'Mónaco'),
(150, 'MN', 'Mongolia'),
(151, 'MS', 'Montserrat'),
(152, 'MZ', 'Mozambique'),
(153, 'MM', 'Myanmar'),
(154, 'NA', 'Namibia'),
(155, 'NR', 'Nauru'),
(156, 'NP', 'Nepal'),
(157, 'NI', 'Nicaragua'),
(158, 'NE', 'Níger'),
(159, 'NG', 'Nigeria'),
(160, 'NU', 'Niue'),
(161, 'NF', 'Isla Norfolk'),
(162, 'NO', 'Noruega'),
(163, 'NC', 'Nueva Caledonia'),
(164, 'NZ', 'Nueva Zelanda'),
(165, 'OM', 'Omán'),
(166, 'NL', 'Países Bajos'),
(167, 'PK', 'Pakistán'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestina'),
(170, 'PA', 'Panamá'),
(171, 'PG', 'Papúa Nueva Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Perú'),
(174, 'PN', 'Islas Pitcairn'),
(175, 'PF', 'Polinesia Francesa'),
(176, 'PL', 'Polonia'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'GB', 'Reino Unido'),
(181, 'RE', 'Reunión'),
(182, 'RW', 'Ruanda'),
(183, 'RO', 'Rumania'),
(184, 'RU', 'Rusia'),
(185, 'EH', 'Sahara Occidental'),
(186, 'SB', 'Islas Salomón'),
(187, 'WS', 'Samoa'),
(188, 'AS', 'Samoa Americana'),
(189, 'KN', 'San Cristóbal y Nevis'),
(190, 'SM', 'San Marino'),
(191, 'PM', 'San Pedro y Miquelón'),
(192, 'VC', 'San Vicente y las Granadinas'),
(193, 'SH', 'Santa Helena'),
(194, 'LC', 'Santa Lucía'),
(195, 'ST', 'Santo Tomé y Príncipe'),
(196, 'SN', 'Senegal'),
(197, 'CS', 'Serbia y Montenegro'),
(198, 'SC', 'Seychelles'),
(199, 'SL', 'Sierra Leona'),
(200, 'SG', 'Singapur'),
(201, 'SY', 'Siria'),
(202, 'SO', 'Somalia'),
(203, 'LK', 'Sri Lanka'),
(204, 'SZ', 'Suazilandia'),
(205, 'ZA', 'Sudáfrica'),
(206, 'SD', 'Sudán'),
(207, 'SE', 'Suecia'),
(208, 'CH', 'Suiza'),
(209, 'SR', 'Surinam'),
(210, 'SJ', 'Svalbard y Jan Mayen'),
(211, 'TH', 'Tailandia'),
(212, 'TW', 'Taiwán'),
(213, 'TZ', 'Tanzania'),
(214, 'TJ', 'Tayikistán'),
(215, 'IO', 'Territorio Británico del Océano Índico'),
(216, 'TF', 'Territorios Australes Franceses'),
(217, 'TL', 'Timor Oriental'),
(218, 'TG', 'Togo'),
(219, 'TK', 'Tokelau'),
(220, 'TO', 'Tonga'),
(221, 'TT', 'Trinidad y Tobago'),
(222, 'TN', 'Túnez'),
(223, 'TC', 'Islas Turcas y Caicos'),
(224, 'TM', 'Turkmenistán'),
(225, 'TR', 'Turquía'),
(226, 'TV', 'Tuvalu'),
(227, 'UA', 'Ucrania'),
(228, 'UG', 'Uganda'),
(229, 'UY', 'Uruguay'),
(230, 'UZ', 'Uzbekistán'),
(231, 'VU', 'Vanuatu'),
(232, 'VE', 'Venezuela'),
(233, 'VN', 'Vietnam'),
(234, 'VG', 'Islas Vírgenes Británicas'),
(235, 'VI', 'Islas Vírgenes de los Estados Unidos'),
(236, 'WF', 'Wallis y Futuna'),
(237, 'YE', 'Yemen'),
(238, 'DJ', 'Yibuti'),
(239, 'ZM', 'Zambia'),
(240, 'ZW', 'Zimbabue');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tparentesco`
--

CREATE TABLE `tparentesco` (
  `idparentesco` int(11) NOT NULL,
  `parentesco` varchar(20) NOT NULL,
  `estatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tparentesco`
--

INSERT INTO `tparentesco` (`idparentesco`, `parentesco`, `estatus`) VALUES
(1, 'HIJO', 1),
(2, 'HIJA', 1),
(3, 'PADRE', 1),
(4, 'MADRE', 1),
(5, 'HERMANO', 1),
(6, 'HERMANA', 1),
(7, 'NIETO', 1),
(8, 'NIETA', 1),
(9, 'SOBRINA', 1),
(10, 'SOBRINO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tparroquias`
--

CREATE TABLE `tparroquias` (
  `id_parroquia` int(11) NOT NULL,
  `id_municipio` int(11) NOT NULL,
  `parroquia` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tparroquias`
--

INSERT INTO `tparroquias` (`id_parroquia`, `id_municipio`, `parroquia`) VALUES
(1, 1, 'Alto Orinoco'),
(2, 1, 'Huachamacare Acanaña'),
(3, 1, 'Marawaka Toky Shamanaña'),
(4, 1, 'Mavaka Mavaka'),
(5, 1, 'Sierra Parima Parimabé'),
(6, 2, 'Ucata Laja Lisa'),
(7, 2, 'Yapacana Macuruco'),
(8, 2, 'Caname Guarinuma'),
(9, 3, 'Fernando Girón Tovar'),
(10, 3, 'Luis Alberto Gómez'),
(11, 3, 'Pahueña Limón de Parhueña'),
(12, 3, 'Platanillal Platanillal'),
(13, 4, 'Samariapo'),
(14, 4, 'Sipapo'),
(15, 4, 'Munduapo'),
(16, 4, 'Guayapo'),
(17, 5, 'Alto Ventuari'),
(18, 5, 'Medio Ventuari'),
(19, 5, 'Bajo Ventuari'),
(20, 6, 'Victorino'),
(21, 6, 'Comunidad'),
(22, 7, 'Casiquiare'),
(23, 7, 'Cocuy'),
(24, 7, 'San Carlos de Río Negro'),
(25, 7, 'Solano'),
(26, 8, 'Anaco'),
(27, 8, 'San Joaquín'),
(28, 9, 'Cachipo'),
(29, 9, 'Aragua de Barcelona'),
(30, 11, 'Lechería'),
(31, 11, 'El Morro'),
(32, 12, 'Puerto Píritu'),
(33, 12, 'San Miguel'),
(34, 12, 'Sucre'),
(35, 13, 'Valle de Guanape'),
(36, 13, 'Santa Bárbara'),
(37, 14, 'El Chaparro'),
(38, 14, 'Tomás Alfaro'),
(39, 14, 'Calatrava'),
(40, 15, 'Guanta'),
(41, 15, 'Chorrerón'),
(42, 16, 'Mamo'),
(43, 16, 'Soledad'),
(44, 17, 'Mapire'),
(45, 17, 'Piar'),
(46, 17, 'Santa Clara'),
(47, 17, 'San Diego de Cabrutica'),
(48, 17, 'Uverito'),
(49, 17, 'Zuata'),
(50, 18, 'Puerto La Cruz'),
(51, 18, 'Pozuelos'),
(52, 19, 'Onoto'),
(53, 19, 'San Pablo'),
(54, 20, 'San Mateo'),
(55, 20, 'El Carito'),
(56, 20, 'Santa Inés'),
(57, 20, 'La Romereña'),
(58, 21, 'Atapirire'),
(59, 21, 'Boca del Pao'),
(60, 21, 'El Pao'),
(61, 21, 'Pariaguán'),
(62, 22, 'Cantaura'),
(63, 22, 'Libertador'),
(64, 22, 'Santa Rosa'),
(65, 22, 'Urica'),
(66, 23, 'Píritu'),
(67, 23, 'San Francisco'),
(68, 24, 'San José de Guanipa'),
(69, 25, 'Boca de Uchire'),
(70, 25, 'Boca de Chávez'),
(71, 26, 'Pueblo Nuevo'),
(72, 26, 'Santa Ana'),
(73, 27, 'Bergantín'),
(74, 27, 'Caigua'),
(75, 27, 'El Carmen'),
(76, 27, 'El Pilar'),
(77, 27, 'Naricual'),
(78, 27, 'San Crsitóbal'),
(79, 28, 'Edmundo Barrios'),
(80, 28, 'Miguel Otero Silva'),
(81, 29, 'Achaguas'),
(82, 29, 'Apurito'),
(83, 29, 'El Yagual'),
(84, 29, 'Guachara'),
(85, 29, 'Mucuritas'),
(86, 29, 'Queseras del medio'),
(87, 30, 'Biruaca'),
(88, 31, 'Bruzual'),
(89, 31, 'Mantecal'),
(90, 31, 'Quintero'),
(91, 31, 'Rincón Hondo'),
(92, 31, 'San Vicente'),
(98, 33, 'San Juan de Payara'),
(99, 33, 'Codazzi'),
(100, 33, 'Cunaviche'),
(101, 34, 'Elorza'),
(102, 34, 'La Trinidad'),
(103, 35, 'San Fernando'),
(104, 35, 'El Recreo'),
(105, 35, 'Peñalver'),
(106, 35, 'San Rafael de Atamaica'),
(107, 36, 'Pedro José Ovalles'),
(108, 36, 'Joaquín Crespo'),
(109, 36, 'José Casanova Godoy'),
(110, 36, 'Madre María de San José'),
(111, 36, 'Andrés Eloy Blanco'),
(112, 36, 'Los Tacarigua'),
(113, 36, 'Las Delicias'),
(114, 36, 'Choroní'),
(115, 37, 'Bolívar'),
(116, 38, 'Camatagua'),
(117, 38, 'Carmen de Cura'),
(118, 39, 'Santa Rita'),
(119, 39, 'Francisco de Miranda'),
(120, 39, 'Moseñor Feliciano González'),
(121, 40, 'Santa Cruz'),
(122, 41, 'José Félix Ribas'),
(123, 41, 'Castor Nieves Ríos'),
(124, 41, 'Las Guacamayas'),
(125, 41, 'Pao de Zárate'),
(126, 41, 'Zuata'),
(127, 42, 'José Rafael Revenga'),
(128, 43, 'Palo Negro'),
(129, 43, 'San Martín de Porres'),
(130, 44, 'El Limón'),
(131, 44, 'Caña de Azúcar'),
(132, 45, 'Ocumare de la Costa'),
(133, 46, 'San Casimiro'),
(134, 46, 'Güiripa'),
(135, 46, 'Ollas de Caramacate'),
(136, 46, 'Valle Morín'),
(137, 47, 'San Sebastían'),
(138, 48, 'Turmero'),
(139, 48, 'Arevalo Aponte'),
(140, 48, 'Chuao'),
(141, 48, 'Samán de Güere'),
(142, 48, 'Alfredo Pacheco Miranda'),
(143, 49, 'Santos Michelena'),
(144, 49, 'Tiara'),
(145, 50, 'Cagua'),
(146, 50, 'Bella Vista'),
(147, 51, 'Tovar'),
(148, 52, 'Urdaneta'),
(149, 52, 'Las Peñitas'),
(150, 52, 'San Francisco de Cara'),
(151, 52, 'Taguay'),
(152, 53, 'Zamora'),
(153, 53, 'Magdaleno'),
(154, 53, 'San Francisco de Asís'),
(155, 53, 'Valles de Tucutunemo'),
(156, 53, 'Augusto Mijares'),
(157, 54, 'Sabaneta'),
(158, 54, 'Juan Antonio Rodríguez Domínguez'),
(159, 55, 'El Cantón'),
(160, 55, 'Santa Cruz de Guacas'),
(161, 55, 'Puerto Vivas'),
(162, 56, 'Ticoporo'),
(163, 56, 'Nicolás Pulido'),
(164, 56, 'Andrés Bello'),
(165, 57, 'Arismendi'),
(166, 57, 'Guadarrama'),
(167, 57, 'La Unión'),
(168, 57, 'San Antonio'),
(169, 58, 'Barinas'),
(170, 58, 'Alberto Arvelo Larriva'),
(171, 58, 'San Silvestre'),
(172, 58, 'Santa Inés'),
(173, 58, 'Santa Lucía'),
(174, 58, 'Torumos'),
(175, 58, 'El Carmen'),
(176, 58, 'Rómulo Betancourt'),
(177, 58, 'Corazón de Jesús'),
(178, 58, 'Ramón Ignacio Méndez'),
(179, 58, 'Alto Barinas'),
(180, 58, 'Manuel Palacio Fajardo'),
(181, 58, 'Juan Antonio Rodríguez Domínguez'),
(182, 58, 'Dominga Ortiz de Páez'),
(183, 59, 'Barinitas'),
(184, 59, 'Altamira de Cáceres'),
(185, 59, 'Calderas'),
(186, 60, 'Barrancas'),
(187, 60, 'El Socorro'),
(188, 60, 'Mazparrito'),
(189, 61, 'Santa Bárbara'),
(190, 61, 'Pedro Briceño Méndez'),
(191, 61, 'Ramón Ignacio Méndez'),
(192, 61, 'José Ignacio del Pumar'),
(193, 62, 'Obispos'),
(194, 62, 'Guasimitos'),
(195, 62, 'El Real'),
(196, 62, 'La Luz'),
(197, 63, 'Ciudad Bolívia'),
(198, 63, 'José Ignacio Briceño'),
(199, 63, 'José Félix Ribas'),
(201, 64, 'Libertad'),
(202, 64, 'Dolores'),
(203, 64, 'Santa Rosa'),
(204, 64, 'Palacio Fajardo'),
(205, 65, 'Ciudad de Nutrias'),
(206, 65, 'El Regalo'),
(207, 65, 'Puerto Nutrias'),
(208, 65, 'Santa Catalina'),
(209, 66, 'Cachamay'),
(210, 66, 'Chirica'),
(211, 66, 'Dalla Costa'),
(212, 66, 'Once de Abril'),
(213, 66, 'Simón Bolívar'),
(214, 66, 'Unare'),
(215, 66, 'Universidad'),
(216, 66, 'Vista al Sol'),
(217, 66, 'Pozo Verde'),
(218, 66, 'Yocoima'),
(219, 66, '5 de Julio'),
(220, 67, 'Cedeño'),
(221, 67, 'Altagracia'),
(222, 67, 'Ascensión Farreras'),
(223, 67, 'Guaniamo'),
(224, 67, 'La Urbana'),
(225, 67, 'Pijiguaos'),
(226, 68, 'El Callao'),
(227, 69, 'Gran Sabana'),
(228, 69, 'Ikabarú'),
(229, 70, 'Catedral'),
(230, 70, 'Zea'),
(231, 70, 'Orinoco'),
(232, 70, 'José Antonio Páez'),
(233, 70, 'Marhuanta'),
(234, 70, 'Agua Salada'),
(235, 70, 'Vista Hermosa'),
(236, 70, 'La Sabanita'),
(237, 70, 'Panapana'),
(238, 71, 'Andrés Eloy Blanco'),
(239, 71, 'Pedro Cova'),
(240, 72, 'Raúl Leoni'),
(241, 72, 'Barceloneta'),
(242, 72, 'Santa Bárbara'),
(243, 72, 'San Francisco'),
(244, 73, 'Roscio'),
(245, 73, 'Salóm'),
(246, 74, 'Sifontes'),
(247, 74, 'Dalla Costa'),
(248, 74, 'San Isidro'),
(249, 75, 'Sucre'),
(250, 75, 'Aripao'),
(251, 75, 'Guarataro'),
(252, 75, 'Las Majadas'),
(253, 75, 'Moitaco'),
(254, 76, 'Padre Pedro Chien'),
(255, 76, 'Río Grande'),
(256, 77, 'Bejuma'),
(257, 77, 'Canoabo'),
(258, 77, 'Simón Bolívar'),
(259, 78, 'Güigüe'),
(260, 78, 'Carabobo'),
(261, 78, 'Tacarigua'),
(262, 79, 'Mariara'),
(263, 79, 'Aguas Calientes'),
(264, 80, 'Ciudad Alianza'),
(265, 80, 'Guacara'),
(266, 80, 'Yagua'),
(267, 81, 'Morón'),
(268, 81, 'Yagua'),
(269, 82, 'Tocuyito'),
(270, 82, 'Independencia'),
(271, 83, 'Los Guayos'),
(272, 84, 'Miranda'),
(273, 85, 'Montalbán'),
(274, 86, 'Naguanagua'),
(275, 87, 'Bartolomé Salóm'),
(276, 87, 'Democracia'),
(277, 87, 'Fraternidad'),
(278, 87, 'Goaigoaza'),
(279, 87, 'Juan José Flores'),
(280, 87, 'Unión'),
(281, 87, 'Borburata'),
(282, 87, 'Patanemo'),
(283, 88, 'San Diego'),
(284, 89, 'San Joaquín'),
(285, 90, 'Candelaria'),
(286, 90, 'Catedral'),
(287, 90, 'El Socorro'),
(288, 90, 'Miguel Peña'),
(289, 90, 'Rafael Urdaneta'),
(290, 90, 'San Blas'),
(291, 90, 'San José'),
(292, 90, 'Santa Rosa'),
(293, 90, 'Negro Primero'),
(294, 91, 'Cojedes'),
(295, 91, 'Juan de Mata Suárez'),
(296, 92, 'Tinaquillo'),
(297, 93, 'El Baúl'),
(298, 93, 'Sucre'),
(299, 94, 'La Aguadita'),
(300, 94, 'Macapo'),
(301, 95, 'El Pao'),
(302, 96, 'El Amparo'),
(303, 96, 'Libertad de Cojedes'),
(304, 97, 'Rómulo Gallegos'),
(305, 98, 'San Carlos de Austria'),
(306, 98, 'Juan Ángel Bravo'),
(307, 98, 'Manuel Manrique'),
(308, 99, 'General en Jefe José Laurencio Silva'),
(309, 100, 'Curiapo'),
(310, 100, 'Almirante Luis Brión'),
(311, 100, 'Francisco Aniceto Lugo'),
(312, 100, 'Manuel Renaud'),
(313, 100, 'Padre Barral'),
(314, 100, 'Santos de Abelgas'),
(315, 101, 'Imataca'),
(316, 101, 'Cinco de Julio'),
(317, 101, 'Juan Bautista Arismendi'),
(318, 101, 'Manuel Piar'),
(319, 101, 'Rómulo Gallegos'),
(320, 102, 'Pedernales'),
(321, 102, 'Luis Beltrán Prieto Figueroa'),
(322, 103, 'San José (Delta Amacuro)'),
(323, 103, 'José Vidal Marcano'),
(324, 103, 'Juan Millán'),
(325, 103, 'Leonardo Ruíz Pineda'),
(326, 103, 'Mariscal Antonio José de Sucre'),
(327, 103, 'Monseñor Argimiro García'),
(328, 103, 'San Rafael (Delta Amacuro)'),
(329, 103, 'Virgen del Valle'),
(330, 10, 'Clarines'),
(331, 10, 'Guanape'),
(332, 10, 'Sabana de Uchire'),
(333, 104, 'Capadare'),
(334, 104, 'La Pastora'),
(335, 104, 'Libertador'),
(336, 104, 'San Juan de los Cayos'),
(337, 105, 'Aracua'),
(338, 105, 'La Peña'),
(339, 105, 'San Luis'),
(340, 106, 'Bariro'),
(341, 106, 'Borojó'),
(342, 106, 'Capatárida'),
(343, 106, 'Guajiro'),
(344, 106, 'Seque'),
(345, 106, 'Zazárida'),
(346, 106, 'Valle de Eroa'),
(347, 107, 'Cacique Manaure'),
(348, 108, 'Norte'),
(349, 108, 'Carirubana'),
(350, 108, 'Santa Ana'),
(351, 108, 'Urbana Punta Cardón'),
(352, 109, 'La Vela de Coro'),
(353, 109, 'Acurigua'),
(354, 109, 'Guaibacoa'),
(355, 109, 'Las Calderas'),
(356, 109, 'Macoruca'),
(357, 110, 'Dabajuro'),
(358, 111, 'Agua Clara'),
(359, 111, 'Avaria'),
(360, 111, 'Pedregal'),
(361, 111, 'Piedra Grande'),
(362, 111, 'Purureche'),
(363, 112, 'Adaure'),
(364, 112, 'Adícora'),
(365, 112, 'Baraived'),
(366, 112, 'Buena Vista'),
(367, 112, 'Jadacaquiva'),
(368, 112, 'El Vínculo'),
(369, 112, 'El Hato'),
(370, 112, 'Moruy'),
(371, 112, 'Pueblo Nuevo'),
(372, 113, 'Agua Larga'),
(373, 113, 'El Paují'),
(374, 113, 'Independencia'),
(375, 113, 'Mapararí'),
(376, 114, 'Agua Linda'),
(377, 114, 'Araurima'),
(378, 114, 'Jacura'),
(379, 115, 'Tucacas'),
(380, 115, 'Boca de Aroa'),
(381, 116, 'Los Taques'),
(382, 116, 'Judibana'),
(383, 117, 'Mene de Mauroa'),
(384, 117, 'San Félix'),
(385, 117, 'Casigua'),
(386, 118, 'Guzmán Guillermo'),
(387, 118, 'Mitare'),
(388, 118, 'Río Seco'),
(389, 118, 'Sabaneta'),
(390, 118, 'San Antonio'),
(391, 118, 'San Gabriel'),
(392, 118, 'Santa Ana'),
(393, 119, 'Boca del Tocuyo'),
(394, 119, 'Chichiriviche'),
(395, 119, 'Tocuyo de la Costa'),
(396, 120, 'Palmasola'),
(397, 121, 'Cabure'),
(398, 121, 'Colina'),
(399, 121, 'Curimagua'),
(400, 122, 'San José de la Costa'),
(401, 122, 'Píritu'),
(402, 123, 'San Francisco'),
(403, 124, 'Sucre'),
(404, 124, 'Pecaya'),
(405, 125, 'Tocópero'),
(406, 126, 'El Charal'),
(407, 126, 'Las Vegas del Tuy'),
(408, 126, 'Santa Cruz de Bucaral'),
(409, 127, 'Bruzual'),
(410, 127, 'Urumaco'),
(411, 128, 'Puerto Cumarebo'),
(412, 128, 'La Ciénaga'),
(413, 128, 'La Soledad'),
(414, 128, 'Pueblo Cumarebo'),
(415, 128, 'Zazárida'),
(416, 113, 'Churuguara'),
(417, 129, 'Camaguán'),
(418, 129, 'Puerto Miranda'),
(419, 129, 'Uverito'),
(420, 130, 'Chaguaramas'),
(421, 131, 'El Socorro'),
(422, 132, 'Tucupido'),
(423, 132, 'San Rafael de Laya'),
(424, 133, 'Altagracia de Orituco'),
(425, 133, 'San Rafael de Orituco'),
(426, 133, 'San Francisco Javier de Lezama'),
(427, 133, 'Paso Real de Macaira'),
(428, 133, 'Carlos Soublette'),
(429, 133, 'San Francisco de Macaira'),
(430, 133, 'Libertad de Orituco'),
(431, 134, 'Cantaclaro'),
(432, 134, 'San Juan de los Morros'),
(433, 134, 'Parapara'),
(434, 135, 'El Sombrero'),
(435, 135, 'Sosa'),
(436, 136, 'Las Mercedes'),
(437, 136, 'Cabruta'),
(438, 136, 'Santa Rita de Manapire'),
(439, 137, 'Valle de la Pascua'),
(440, 137, 'Espino'),
(441, 138, 'San José de Unare'),
(442, 138, 'Zaraza'),
(443, 139, 'San José de Tiznados'),
(444, 139, 'San Francisco de Tiznados'),
(445, 139, 'San Lorenzo de Tiznados'),
(446, 139, 'Ortiz'),
(447, 140, 'Guayabal'),
(448, 140, 'Cazorla'),
(449, 141, 'San José de Guaribe'),
(450, 141, 'Uveral'),
(451, 142, 'Santa María de Ipire'),
(452, 142, 'Altamira'),
(453, 143, 'El Calvario'),
(454, 143, 'El Rastro'),
(455, 143, 'Guardatinajas'),
(456, 143, 'Capital Urbana Calabozo'),
(457, 144, 'Quebrada Honda de Guache'),
(458, 144, 'Pío Tamayo'),
(459, 144, 'Yacambú'),
(460, 145, 'Fréitez'),
(461, 145, 'José María Blanco'),
(462, 146, 'Catedral'),
(463, 146, 'Concepción'),
(464, 146, 'El Cují'),
(465, 146, 'Juan de Villegas'),
(466, 146, 'Santa Rosa'),
(467, 146, 'Tamaca'),
(468, 146, 'Unión'),
(469, 146, 'Aguedo Felipe Alvarado'),
(470, 146, 'Buena Vista'),
(471, 146, 'Juárez'),
(472, 147, 'Juan Bautista Rodríguez'),
(473, 147, 'Cuara'),
(474, 147, 'Diego de Lozada'),
(475, 147, 'Paraíso de San José'),
(476, 147, 'San Miguel'),
(477, 147, 'Tintorero'),
(478, 147, 'José Bernardo Dorante'),
(479, 147, 'Coronel Mariano Peraza '),
(480, 148, 'Bolívar'),
(481, 148, 'Anzoátegui'),
(482, 148, 'Guarico'),
(483, 148, 'Hilario Luna y Luna'),
(484, 148, 'Humocaro Alto'),
(485, 148, 'Humocaro Bajo'),
(486, 148, 'La Candelaria'),
(487, 148, 'Morán'),
(488, 149, 'Cabudare'),
(489, 149, 'José Gregorio Bastidas'),
(490, 149, 'Agua Viva'),
(491, 150, 'Sarare'),
(492, 150, 'Buría'),
(493, 150, 'Gustavo Vegas León'),
(494, 151, 'Trinidad Samuel'),
(495, 151, 'Antonio Díaz'),
(496, 151, 'Camacaro'),
(497, 151, 'Castañeda'),
(498, 151, 'Cecilio Zubillaga'),
(499, 151, 'Chiquinquirá'),
(500, 151, 'El Blanco'),
(501, 151, 'Espinoza de los Monteros'),
(502, 151, 'Lara'),
(503, 151, 'Las Mercedes'),
(504, 151, 'Manuel Morillo'),
(505, 151, 'Montaña Verde'),
(506, 151, 'Montes de Oca'),
(507, 151, 'Torres'),
(508, 151, 'Heriberto Arroyo'),
(509, 151, 'Reyes Vargas'),
(510, 151, 'Altagracia'),
(511, 152, 'Siquisique'),
(512, 152, 'Moroturo'),
(513, 152, 'San Miguel'),
(514, 152, 'Xaguas'),
(515, 179, 'Presidente Betancourt'),
(516, 179, 'Presidente Páez'),
(517, 179, 'Presidente Rómulo Gallegos'),
(518, 179, 'Gabriel Picón González'),
(519, 179, 'Héctor Amable Mora'),
(520, 179, 'José Nucete Sardi'),
(521, 179, 'Pulido Méndez'),
(522, 180, 'La Azulita'),
(523, 181, 'Santa Cruz de Mora'),
(524, 181, 'Mesa Bolívar'),
(525, 181, 'Mesa de Las Palmas'),
(526, 182, 'Aricagua'),
(527, 182, 'San Antonio'),
(528, 183, 'Canagua'),
(529, 183, 'Capurí'),
(530, 183, 'Chacantá'),
(531, 183, 'El Molino'),
(532, 183, 'Guaimaral'),
(533, 183, 'Mucutuy'),
(534, 183, 'Mucuchachí'),
(535, 184, 'Fernández Peña'),
(536, 184, 'Matriz'),
(537, 184, 'Montalbán'),
(538, 184, 'Acequias'),
(539, 184, 'Jají'),
(540, 184, 'La Mesa'),
(541, 184, 'San José del Sur'),
(542, 185, 'Tucaní'),
(543, 185, 'Florencio Ramírez'),
(544, 186, 'Santo Domingo'),
(545, 186, 'Las Piedras'),
(546, 187, 'Guaraque'),
(547, 187, 'Mesa de Quintero'),
(548, 187, 'Río Negro'),
(549, 188, 'Arapuey'),
(550, 188, 'Palmira'),
(551, 189, 'San Cristóbal de Torondoy'),
(552, 189, 'Torondoy'),
(553, 190, 'Antonio Spinetti Dini'),
(554, 190, 'Arias'),
(555, 190, 'Caracciolo Parra Pérez'),
(556, 190, 'Domingo Peña'),
(557, 190, 'El Llano'),
(558, 190, 'Gonzalo Picón Febres'),
(559, 190, 'Jacinto Plaza'),
(560, 190, 'Juan Rodríguez Suárez'),
(561, 190, 'Lasso de la Vega'),
(562, 190, 'Mariano Picón Salas'),
(563, 190, 'Milla'),
(564, 190, 'Osuna Rodríguez'),
(565, 190, 'Sagrario'),
(566, 190, 'El Morro'),
(567, 190, 'Los Nevados'),
(568, 191, 'Andrés Eloy Blanco'),
(569, 191, 'La Venta'),
(570, 191, 'Piñango'),
(571, 191, 'Timotes'),
(572, 192, 'Eloy Paredes'),
(573, 192, 'San Rafael de Alcázar'),
(574, 192, 'Santa Elena de Arenales'),
(575, 193, 'Santa María de Caparo'),
(576, 194, 'Pueblo Llano'),
(577, 195, 'Cacute'),
(578, 195, 'La Toma'),
(579, 195, 'Mucuchíes'),
(580, 195, 'Mucurubá'),
(581, 195, 'San Rafael'),
(582, 196, 'Gerónimo Maldonado'),
(583, 196, 'Bailadores'),
(584, 197, 'Tabay'),
(585, 198, 'Chiguará'),
(586, 198, 'Estánquez'),
(587, 198, 'Lagunillas'),
(588, 198, 'La Trampa'),
(589, 198, 'Pueblo Nuevo del Sur'),
(590, 198, 'San Juan'),
(591, 199, 'El Amparo'),
(592, 199, 'El Llano'),
(593, 199, 'San Francisco'),
(594, 199, 'Tovar'),
(595, 200, 'Independencia'),
(596, 200, 'María de la Concepción Palacios Blanco'),
(597, 200, 'Nueva Bolivia'),
(598, 200, 'Santa Apolonia'),
(599, 201, 'Caño El Tigre'),
(600, 201, 'Zea'),
(601, 223, 'Aragüita'),
(602, 223, 'Arévalo González'),
(603, 223, 'Capaya'),
(604, 223, 'Caucagua'),
(605, 223, 'Panaquire'),
(606, 223, 'Ribas'),
(607, 223, 'El Café'),
(608, 223, 'Marizapa'),
(609, 224, 'Cumbo'),
(610, 224, 'San José de Barlovento'),
(611, 225, 'El Cafetal'),
(612, 225, 'Las Minas'),
(613, 225, 'Nuestra Señora del Rosario'),
(614, 226, 'Higuerote'),
(615, 226, 'Curiepe'),
(616, 226, 'Tacarigua de Brión'),
(617, 227, 'Mamporal'),
(618, 228, 'Carrizal'),
(619, 229, 'Chacao'),
(620, 230, 'Charallave'),
(621, 230, 'Las Brisas'),
(622, 231, 'El Hatillo'),
(623, 232, 'Altagracia de la Montaña'),
(624, 232, 'Cecilio Acosta'),
(625, 232, 'Los Teques'),
(626, 232, 'El Jarillo'),
(627, 232, 'San Pedro'),
(628, 232, 'Tácata'),
(629, 232, 'Paracotos'),
(630, 233, 'Cartanal'),
(631, 233, 'Santa Teresa del Tuy'),
(632, 234, 'La Democracia'),
(633, 234, 'Ocumare del Tuy'),
(634, 234, 'Santa Bárbara'),
(635, 235, 'San Antonio de los Altos'),
(641, 237, 'Santa Lucía del Tuy'),
(642, 238, 'Cúpira'),
(643, 238, 'Machurucuto'),
(644, 239, 'Guarenas'),
(645, 240, 'San Antonio de Yare'),
(646, 240, 'San Francisco de Yare'),
(647, 241, 'Leoncio Martínez'),
(648, 241, 'Petare'),
(649, 241, 'Caucagüita'),
(650, 241, 'Filas de Mariche'),
(651, 241, 'La Dolorita'),
(652, 242, 'Cúa'),
(653, 242, 'Nueva Cúa'),
(654, 243, 'Guatire'),
(655, 243, 'Bolívar'),
(656, 258, 'San Antonio de Maturín'),
(657, 258, 'San Francisco de Maturín'),
(658, 259, 'Aguasay'),
(659, 260, 'Caripito'),
(660, 261, 'El Guácharo'),
(661, 261, 'La Guanota'),
(662, 261, 'Sabana de Piedra'),
(663, 261, 'San Agustín'),
(664, 261, 'Teresen'),
(665, 261, 'Caripe'),
(666, 262, 'Areo'),
(667, 262, 'Capital Cedeño'),
(668, 262, 'San Félix de Cantalicio'),
(669, 262, 'Viento Fresco'),
(670, 263, 'El Tejero'),
(671, 263, 'Punta de Mata'),
(672, 264, 'Chaguaramas'),
(673, 264, 'Las Alhuacas'),
(674, 264, 'Tabasca'),
(675, 264, 'Temblador'),
(676, 265, 'Alto de los Godos'),
(677, 265, 'Boquerón'),
(678, 265, 'Las Cocuizas'),
(679, 265, 'La Cruz'),
(680, 265, 'San Simón'),
(681, 265, 'El Corozo'),
(682, 265, 'El Furrial'),
(683, 265, 'Jusepín'),
(684, 265, 'La Pica'),
(685, 265, 'San Vicente'),
(686, 266, 'Aparicio'),
(687, 266, 'Aragua de Maturín'),
(688, 266, 'Chaguamal'),
(689, 266, 'El Pinto'),
(690, 266, 'Guanaguana'),
(691, 266, 'La Toscana'),
(692, 266, 'Taguaya'),
(693, 267, 'Cachipo'),
(694, 267, 'Quiriquire'),
(695, 268, 'Santa Bárbara'),
(696, 269, 'Barrancas'),
(697, 269, 'Los Barrancos de Fajardo'),
(698, 270, 'Uracoa'),
(699, 271, 'Antolín del Campo'),
(700, 272, 'Arismendi'),
(701, 273, 'García'),
(702, 273, 'Francisco Fajardo'),
(703, 274, 'Bolívar'),
(704, 274, 'Guevara'),
(705, 274, 'Matasiete'),
(706, 274, 'Santa Ana'),
(707, 274, 'Sucre'),
(708, 275, 'Aguirre'),
(709, 275, 'Maneiro'),
(710, 276, 'Adrián'),
(711, 276, 'Juan Griego'),
(712, 276, 'Yaguaraparo'),
(713, 277, 'Porlamar'),
(714, 278, 'San Francisco de Macanao'),
(715, 278, 'Boca de Río'),
(716, 279, 'Tubores'),
(717, 279, 'Los Baleales'),
(718, 280, 'Vicente Fuentes'),
(719, 280, 'Villalba'),
(720, 281, 'San Juan Bautista'),
(721, 281, 'Zabala'),
(722, 283, 'Capital Araure'),
(723, 283, 'Río Acarigua'),
(724, 284, 'Capital Esteller'),
(725, 284, 'Uveral'),
(726, 285, 'Guanare'),
(727, 285, 'Córdoba'),
(728, 285, 'San José de la Montaña'),
(729, 285, 'San Juan de Guanaguanare'),
(730, 285, 'Virgen de la Coromoto'),
(731, 286, 'Guanarito'),
(732, 286, 'Trinidad de la Capilla'),
(733, 286, 'Divina Pastora'),
(734, 287, 'Monseñor José Vicente de Unda'),
(735, 287, 'Peña Blanca'),
(736, 288, 'Capital Ospino'),
(737, 288, 'Aparición'),
(738, 288, 'La Estación'),
(739, 289, 'Páez'),
(740, 289, 'Payara'),
(741, 289, 'Pimpinela'),
(742, 289, 'Ramón Peraza'),
(743, 290, 'Papelón'),
(744, 290, 'Caño Delgadito'),
(745, 291, 'San Genaro de Boconoito'),
(746, 291, 'Antolín Tovar'),
(747, 292, 'San Rafael de Onoto'),
(748, 292, 'Santa Fe'),
(749, 292, 'Thermo Morles'),
(750, 293, 'Santa Rosalía'),
(751, 293, 'Florida'),
(752, 294, 'Sucre'),
(753, 294, 'Concepción'),
(754, 294, 'San Rafael de Palo Alzado'),
(755, 294, 'Uvencio Antonio Velásquez'),
(756, 294, 'San José de Saguaz'),
(757, 294, 'Villa Rosa'),
(758, 295, 'Turén'),
(759, 295, 'Canelones'),
(760, 295, 'Santa Cruz'),
(761, 295, 'San Isidro Labrador'),
(762, 296, 'Mariño'),
(763, 296, 'Rómulo Gallegos'),
(764, 297, 'San José de Aerocuar'),
(765, 297, 'Tavera Acosta'),
(766, 298, 'Río Caribe'),
(767, 298, 'Antonio José de Sucre'),
(768, 298, 'El Morro de Puerto Santo'),
(769, 298, 'Puerto Santo'),
(770, 298, 'San Juan de las Galdonas'),
(771, 299, 'El Pilar'),
(772, 299, 'El Rincón'),
(773, 299, 'General Francisco Antonio Váquez'),
(774, 299, 'Guaraúnos'),
(775, 299, 'Tunapuicito'),
(776, 299, 'Unión'),
(777, 300, 'Santa Catalina'),
(778, 300, 'Santa Rosa'),
(779, 300, 'Santa Teresa'),
(780, 300, 'Bolívar'),
(781, 300, 'Maracapana'),
(782, 302, 'Libertad'),
(783, 302, 'El Paujil'),
(784, 302, 'Yaguaraparo'),
(785, 303, 'Cruz Salmerón Acosta'),
(786, 303, 'Chacopata'),
(787, 303, 'Manicuare'),
(788, 304, 'Tunapuy'),
(789, 304, 'Campo Elías'),
(790, 305, 'Irapa'),
(791, 305, 'Campo Claro'),
(792, 305, 'Maraval'),
(793, 305, 'San Antonio de Irapa'),
(794, 305, 'Soro'),
(795, 306, 'Mejía'),
(796, 307, 'Cumanacoa'),
(797, 307, 'Arenas'),
(798, 307, 'Aricagua'),
(799, 307, 'Cogollar'),
(800, 307, 'San Fernando'),
(801, 307, 'San Lorenzo'),
(802, 308, 'Villa Frontado (Muelle de Cariaco)'),
(803, 308, 'Catuaro'),
(804, 308, 'Rendón'),
(805, 308, 'San Cruz'),
(806, 308, 'Santa María'),
(807, 309, 'Altagracia'),
(808, 309, 'Santa Inés'),
(809, 309, 'Valentín Valiente'),
(810, 309, 'Ayacucho'),
(811, 309, 'San Juan'),
(812, 309, 'Raúl Leoni'),
(813, 309, 'Gran Mariscal'),
(814, 310, 'Cristóbal Colón'),
(815, 310, 'Bideau'),
(816, 310, 'Punta de Piedras'),
(817, 310, 'Güiria'),
(818, 341, 'Andrés Bello'),
(819, 342, 'Antonio Rómulo Costa'),
(820, 343, 'Ayacucho'),
(821, 343, 'Rivas Berti'),
(822, 343, 'San Pedro del Río'),
(823, 344, 'Bolívar'),
(824, 344, 'Palotal'),
(825, 344, 'General Juan Vicente Gómez'),
(826, 344, 'Isaías Medina Angarita'),
(827, 345, 'Cárdenas'),
(828, 345, 'Amenodoro Ángel Lamus'),
(829, 345, 'La Florida'),
(830, 346, 'Córdoba'),
(831, 347, 'Fernández Feo'),
(832, 347, 'Alberto Adriani'),
(833, 347, 'Santo Domingo'),
(834, 348, 'Francisco de Miranda'),
(835, 349, 'García de Hevia'),
(836, 349, 'Boca de Grita'),
(837, 349, 'José Antonio Páez'),
(838, 350, 'Guásimos'),
(839, 351, 'Independencia'),
(840, 351, 'Juan Germán Roscio'),
(841, 351, 'Román Cárdenas'),
(842, 352, 'Jáuregui'),
(843, 352, 'Emilio Constantino Guerrero'),
(844, 352, 'Monseñor Miguel Antonio Salas'),
(845, 353, 'José María Vargas'),
(846, 354, 'Junín'),
(847, 354, 'La Petrólea'),
(848, 354, 'Quinimarí'),
(849, 354, 'Bramón'),
(850, 355, 'Libertad'),
(851, 355, 'Cipriano Castro'),
(852, 355, 'Manuel Felipe Rugeles'),
(853, 356, 'Libertador'),
(854, 356, 'Doradas'),
(855, 356, 'Emeterio Ochoa'),
(856, 356, 'San Joaquín de Navay'),
(857, 357, 'Lobatera'),
(858, 357, 'Constitución'),
(859, 358, 'Michelena'),
(860, 359, 'Panamericano'),
(861, 359, 'La Palmita'),
(862, 360, 'Pedro María Ureña'),
(863, 360, 'Nueva Arcadia'),
(864, 361, 'Delicias'),
(865, 361, 'Pecaya'),
(866, 362, 'Samuel Darío Maldonado'),
(867, 362, 'Boconó'),
(868, 362, 'Hernández'),
(869, 363, 'La Concordia'),
(870, 363, 'San Juan Bautista'),
(871, 363, 'Pedro María Morantes'),
(872, 363, 'San Sebastián'),
(873, 363, 'Dr. Francisco Romero Lobo'),
(874, 364, 'Seboruco'),
(875, 365, 'Simón Rodríguez'),
(876, 366, 'Sucre'),
(877, 366, 'Eleazar López Contreras'),
(878, 366, 'San Pablo'),
(879, 367, 'Torbes'),
(880, 368, 'Uribante'),
(881, 368, 'Cárdenas'),
(882, 368, 'Juan Pablo Peñalosa'),
(883, 368, 'Potosí'),
(884, 369, 'San Judas Tadeo'),
(885, 370, 'Araguaney'),
(886, 370, 'El Jaguito'),
(887, 370, 'La Esperanza'),
(888, 370, 'Santa Isabel'),
(889, 371, 'Boconó'),
(890, 371, 'El Carmen'),
(891, 371, 'Mosquey'),
(892, 371, 'Ayacucho'),
(893, 371, 'Burbusay'),
(894, 371, 'General Ribas'),
(895, 371, 'Guaramacal'),
(896, 371, 'Vega de Guaramacal'),
(897, 371, 'Monseñor Jáuregui'),
(898, 371, 'Rafael Rangel'),
(899, 371, 'San Miguel'),
(900, 371, 'San José'),
(901, 372, 'Sabana Grande'),
(902, 372, 'Cheregüé'),
(903, 372, 'Granados'),
(904, 373, 'Arnoldo Gabaldón'),
(905, 373, 'Bolivia'),
(906, 373, 'Carrillo'),
(907, 373, 'Cegarra'),
(908, 373, 'Chejendé'),
(909, 373, 'Manuel Salvador Ulloa'),
(910, 373, 'San José'),
(911, 374, 'Carache'),
(912, 374, 'La Concepción'),
(913, 374, 'Cuicas'),
(914, 374, 'Panamericana'),
(915, 374, 'Santa Cruz'),
(916, 375, 'Escuque'),
(917, 375, 'La Unión'),
(918, 375, 'Santa Rita'),
(919, 375, 'Sabana Libre'),
(920, 376, 'El Socorro'),
(921, 376, 'Los Caprichos'),
(922, 376, 'Antonio José de Sucre'),
(923, 377, 'Campo Elías'),
(924, 377, 'Arnoldo Gabaldón'),
(925, 378, 'Santa Apolonia'),
(926, 378, 'El Progreso'),
(927, 378, 'La Ceiba'),
(928, 378, 'Tres de Febrero'),
(929, 379, 'El Dividive'),
(930, 379, 'Agua Santa'),
(931, 379, 'Agua Caliente'),
(932, 379, 'El Cenizo'),
(933, 379, 'Valerita'),
(934, 380, 'Monte Carmelo'),
(935, 380, 'Buena Vista'),
(936, 380, 'Santa María del Horcón'),
(937, 381, 'Motatán'),
(938, 381, 'El Baño'),
(939, 381, 'Jalisco'),
(940, 382, 'Pampán'),
(941, 382, 'Flor de Patria'),
(942, 382, 'La Paz'),
(943, 382, 'Santa Ana'),
(944, 383, 'Pampanito'),
(945, 383, 'La Concepción'),
(946, 383, 'Pampanito II'),
(947, 384, 'Betijoque'),
(948, 384, 'José Gregorio Hernández'),
(949, 384, 'La Pueblita'),
(950, 384, 'Los Cedros'),
(951, 385, 'Carvajal'),
(952, 385, 'Campo Alegre'),
(953, 385, 'Antonio Nicolás Briceño'),
(954, 385, 'José Leonardo Suárez'),
(955, 386, 'Sabana de Mendoza'),
(956, 386, 'Junín'),
(957, 386, 'Valmore Rodríguez'),
(958, 386, 'El Paraíso'),
(959, 387, 'Andrés Linares'),
(960, 387, 'Chiquinquirá'),
(961, 387, 'Cristóbal Mendoza'),
(962, 387, 'Cruz Carrillo'),
(963, 387, 'Matriz'),
(964, 387, 'Monseñor Carrillo'),
(965, 387, 'Tres Esquinas'),
(966, 388, 'Cabimbú'),
(967, 388, 'Jajó'),
(968, 388, 'La Mesa de Esnujaque'),
(969, 388, 'Santiago'),
(970, 388, 'Tuñame'),
(971, 388, 'La Quebrada'),
(972, 389, 'Juan Ignacio Montilla'),
(973, 389, 'La Beatriz'),
(974, 389, 'La Puerta'),
(975, 389, 'Mendoza del Valle de Momboy'),
(976, 389, 'Mercedes Díaz'),
(977, 389, 'San Luis'),
(978, 390, 'Caraballeda'),
(979, 390, 'Carayaca'),
(980, 390, 'Carlos Soublette'),
(981, 390, 'Caruao Chuspa'),
(982, 390, 'Catia La Mar'),
(983, 390, 'El Junko'),
(984, 390, 'La Guaira'),
(985, 390, 'Macuto'),
(986, 390, 'Maiquetía'),
(987, 390, 'Naiguatá'),
(988, 390, 'Urimare'),
(989, 391, 'Arístides Bastidas'),
(990, 392, 'Bolívar'),
(991, 407, 'Chivacoa'),
(992, 407, 'Campo Elías'),
(993, 408, 'Cocorote'),
(994, 409, 'Independencia'),
(995, 410, 'José Antonio Páez'),
(996, 411, 'La Trinidad'),
(997, 412, 'Manuel Monge'),
(998, 413, 'Salóm'),
(999, 413, 'Temerla'),
(1000, 413, 'Nirgua'),
(1001, 414, 'San Andrés'),
(1002, 414, 'Yaritagua'),
(1003, 415, 'San Javier'),
(1004, 415, 'Albarico'),
(1005, 415, 'San Felipe'),
(1006, 416, 'Sucre'),
(1007, 417, 'Urachiche'),
(1008, 418, 'El Guayabo'),
(1009, 418, 'Farriar'),
(1010, 441, 'Isla de Toas'),
(1011, 441, 'Monagas'),
(1012, 442, 'San Timoteo'),
(1013, 442, 'General Urdaneta'),
(1014, 442, 'Libertador'),
(1015, 442, 'Marcelino Briceño'),
(1016, 442, 'Pueblo Nuevo'),
(1017, 442, 'Manuel Guanipa Matos'),
(1018, 443, 'Ambrosio'),
(1019, 443, 'Carmen Herrera'),
(1020, 443, 'La Rosa'),
(1021, 443, 'Germán Ríos Linares'),
(1022, 443, 'San Benito'),
(1023, 443, 'Rómulo Betancourt'),
(1024, 443, 'Jorge Hernández'),
(1025, 443, 'Punta Gorda'),
(1026, 443, 'Arístides Calvani'),
(1027, 444, 'Encontrados'),
(1028, 444, 'Udón Pérez'),
(1029, 445, 'Moralito'),
(1030, 445, 'San Carlos del Zulia'),
(1031, 445, 'Santa Cruz del Zulia'),
(1032, 445, 'Santa Bárbara'),
(1033, 445, 'Urribarrí'),
(1034, 446, 'Carlos Quevedo'),
(1035, 446, 'Francisco Javier Pulgar'),
(1036, 446, 'Simón Rodríguez'),
(1037, 446, 'Guamo-Gavilanes'),
(1038, 448, 'La Concepción'),
(1039, 448, 'San José'),
(1040, 448, 'Mariano Parra León'),
(1041, 448, 'José Ramón Yépez'),
(1042, 449, 'Jesús María Semprún'),
(1043, 449, 'Barí'),
(1044, 450, 'Concepción'),
(1045, 450, 'Andrés Bello'),
(1046, 450, 'Chiquinquirá'),
(1047, 450, 'El Carmelo'),
(1048, 450, 'Potreritos'),
(1049, 451, 'Libertad'),
(1050, 451, 'Alonso de Ojeda'),
(1051, 451, 'Venezuela'),
(1052, 451, 'Eleazar López Contreras'),
(1053, 451, 'Campo Lara'),
(1054, 452, 'Bartolomé de las Casas'),
(1055, 452, 'Libertad'),
(1056, 452, 'Río Negro'),
(1057, 452, 'San José de Perijá'),
(1058, 453, 'San Rafael'),
(1059, 453, 'La Sierrita'),
(1060, 453, 'Las Parcelas'),
(1061, 453, 'Luis de Vicente'),
(1062, 453, 'Monseñor Marcos Sergio Godoy'),
(1063, 453, 'Ricaurte'),
(1064, 453, 'Tamare'),
(1065, 454, 'Antonio Borjas Romero'),
(1066, 454, 'Bolívar'),
(1067, 454, 'Cacique Mara'),
(1068, 454, 'Carracciolo Parra Pérez'),
(1069, 454, 'Cecilio Acosta'),
(1070, 454, 'Cristo de Aranza'),
(1071, 454, 'Coquivacoa'),
(1072, 454, 'Chiquinquirá'),
(1073, 454, 'Francisco Eugenio Bustamante'),
(1074, 454, 'Idelfonzo Vásquez'),
(1075, 454, 'Juana de Ávila'),
(1076, 454, 'Luis Hurtado Higuera'),
(1077, 454, 'Manuel Dagnino'),
(1078, 454, 'Olegario Villalobos'),
(1079, 454, 'Raúl Leoni'),
(1080, 454, 'Santa Lucía'),
(1081, 454, 'Venancio Pulgar'),
(1082, 454, 'San Isidro'),
(1083, 455, 'Altagracia'),
(1084, 455, 'Faría'),
(1085, 455, 'Ana María Campos'),
(1086, 455, 'San Antonio'),
(1087, 455, 'San José'),
(1088, 456, 'Donaldo García'),
(1089, 456, 'El Rosario'),
(1090, 456, 'Sixto Zambrano'),
(1091, 457, 'San Francisco'),
(1092, 457, 'El Bajo'),
(1093, 457, 'Domitila Flores'),
(1094, 457, 'Francisco Ochoa'),
(1095, 457, 'Los Cortijos'),
(1096, 457, 'Marcial Hernández'),
(1097, 458, 'Santa Rita'),
(1098, 458, 'El Mene'),
(1099, 458, 'Pedro Lucas Urribarrí'),
(1100, 458, 'José Cenobio Urribarrí'),
(1101, 459, 'Rafael Maria Baralt'),
(1102, 459, 'Manuel Manrique'),
(1103, 459, 'Rafael Urdaneta'),
(1104, 460, 'Bobures'),
(1105, 460, 'Gibraltar'),
(1106, 460, 'Heras'),
(1107, 460, 'Monseñor Arturo Álvarez'),
(1108, 460, 'Rómulo Gallegos'),
(1109, 460, 'El Batey'),
(1110, 461, 'Rafael Urdaneta'),
(1111, 461, 'La Victoria'),
(1112, 461, 'Raúl Cuenca'),
(1117, 462, 'Altagracia'),
(1118, 462, 'Antímano'),
(1119, 462, 'Caricuao'),
(1120, 462, 'Catedral'),
(1121, 462, 'Coche'),
(1122, 462, 'El Junquito'),
(1123, 462, 'El Paraíso'),
(1124, 462, 'El Recreo'),
(1125, 462, 'El Valle'),
(1126, 462, 'La Candelaria'),
(1127, 462, 'La Pastora'),
(1128, 462, 'La Vega'),
(1129, 462, 'Macarao'),
(1130, 462, 'San Agustín'),
(1131, 462, 'San Bernardino'),
(1132, 462, 'San José'),
(1133, 462, 'San Juan'),
(1134, 462, 'San Pedro'),
(1135, 462, 'Santa Rosalía'),
(1136, 462, 'Santa Teresa'),
(1137, 462, 'Sucre (Catia)'),
(1138, 462, '23 de enero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tpersona`
--

CREATE TABLE `tpersona` (
  `idpersona` int(11) NOT NULL,
  `cedula` varchar(8) NOT NULL,
  `nombre1` varchar(70) NOT NULL,
  `nombre2` varchar(70) DEFAULT NULL,
  `apellido1` varchar(70) NOT NULL,
  `apellido2` varchar(70) DEFAULT NULL,
  `sexo` varchar(9) NOT NULL,
  `fecha_nac` date NOT NULL,
  `lugar_nac` varchar(40) NOT NULL,
  `edad` int(3) NOT NULL,
  `nacionalidad` varchar(30) NOT NULL,
  `lateralidad` varchar(20) NOT NULL,
  `t_habitacion` varchar(20) NOT NULL,
  `t_movil` varchar(20) NOT NULL,
  `t_adicional` varchar(20) DEFAULT NULL,
  `correo` varchar(30) NOT NULL,
  `l_conducir` varchar(2) NOT NULL,
  `f_expedicion` date DEFAULT NULL,
  `pantalon` int(2) NOT NULL,
  `camisa` varchar(2) NOT NULL,
  `zapato` int(2) NOT NULL,
  `nom_conyuge` varchar(70) DEFAULT NULL,
  `naci_conyuge` varchar(15) DEFAULT NULL,
  `fecha_nac_conyuge` date DEFAULT NULL,
  `ocupacion_conyuge` varchar(30) DEFAULT NULL,
  `nom_padre` varchar(70) NOT NULL,
  `naci_padre` varchar(15) NOT NULL,
  `fecha_nac_padre` date NOT NULL,
  `ocupacion_padre` varchar(30) NOT NULL,
  `nom_madre` varchar(70) NOT NULL,
  `naci_madre` varchar(15) NOT NULL,
  `fecha_nac_madre` date NOT NULL,
  `ocupacion_madre` varchar(30) NOT NULL,
  `af_inquiport` varchar(40) DEFAULT NULL COMMENT 'amigos o familiares en inquiport',
  `area_af_inquiport` varchar(40) DEFAULT NULL COMMENT 'area de amigos o familiares en inquiport',
  `conocimiento_empleo` varchar(30) NOT NULL COMMENT 'como se entero del empleo',
  `solicitud_anterior` varchar(2) DEFAULT NULL COMMENT 'ha solicitado antes ',
  `fecha_solicitud_anterior` date DEFAULT NULL COMMENT 'fela solicitud anterior',
  `solicitud_anterior_donde` varchar(40) DEFAULT NULL COMMENT 'donde lo solicito',
  `idioma` varchar(2) DEFAULT NULL,
  `nom_idioma` varchar(15) DEFAULT NULL,
  `habla_idioma` varchar(20) DEFAULT NULL,
  `escribe_idioma` varchar(20) DEFAULT NULL,
  `sueldo_aspirado` decimal(19,4) DEFAULT NULL,
  `fecha_disponible` date NOT NULL,
  `limitacion_geografica` varchar(2) NOT NULL,
  `posee_vehiculo` varchar(2) DEFAULT NULL,
  `idestado_civil` int(11) DEFAULT NULL,
  `idingreso` int(11) NOT NULL,
  `estatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `treferencias`
--

CREATE TABLE `treferencias` (
  `idreferencias` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `nombre_apellido` varchar(70) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `ocupacion` varchar(40) NOT NULL,
  `compañia` varchar(70) NOT NULL,
  `estatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ttabla_prima`
--

CREATE TABLE `ttabla_prima` (
  `idtabla_prima` int(11) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `maternidad` varchar(2) NOT NULL,
  `hasta25` varchar(2) DEFAULT NULL,
  `edad_min` int(3) NOT NULL,
  `edad_max` int(3) NOT NULL,
  `prima_semanal` decimal(19,4) NOT NULL,
  `prima_quincenal` decimal(19,4) NOT NULL,
  `prima_ejecutivo` decimal(19,4) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_final` date NOT NULL,
  `fecha_registro` date NOT NULL,
  `estatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ttabla_prima`
--

INSERT INTO `ttabla_prima` (`idtabla_prima`, `numero`, `sexo`, `maternidad`, `hasta25`, `edad_min`, `edad_max`, `prima_semanal`, `prima_quincenal`, `prima_ejecutivo`, `descripcion`, `fecha_inicio`, `fecha_final`, `fecha_registro`, `estatus`) VALUES
(8, 'F01', 'FEMENINO', 'NO', 'NO', 0, 65, '804.9600', '804.9600', '1105.4800', NULL, '2019-01-01', '2020-01-01', '2018-10-22', 1),
(9, 'F02', 'FEMENINO', 'NO', 'NO', 66, 70, '897.8400', '897.8400', '1233.0300', NULL, '2019-01-01', '2020-01-01', '2018-10-22', 1),
(10, 'F03', 'FEMENINO', 'NO', 'NO', 71, 70, '1015.4900', '1015.4900', '1394.6000', NULL, '2019-01-01', '2020-01-01', '2018-10-22', 1),
(11, 'F04', 'FEMENINO', 'SI', 'NO', 0, 55, '1144.5600', '1144.5600', '1530.6600', NULL, '2019-01-01', '2020-01-01', '2018-10-22', 1),
(12, 'F05', 'FEMENINO', 'NO', 'SI', 0, 25, '464.4000', '464.4000', '637.7800', NULL, '2019-01-01', '2020-01-01', '2018-10-22', 1),
(13, 'F06', 'FEMENINO', 'NO', 'NO', 26, 55, '743.0400', '743.0400', '1020.4400', NULL, '2019-01-01', '2020-01-01', '2018-10-22', 1),
(14, 'F07', 'FEMENINO', 'NO', 'NO', 0, 70, '1102.1800', '1102.1800', '1513.6600', NULL, '2019-01-01', '2020-01-01', '2018-10-22', 1),
(15, 'F08', 'FEMENINO', 'NO', 'NO', 71, 80, '1609.2200', '1609.2200', '2210.9600', NULL, '2019-01-01', '2020-01-01', '2018-10-22', 1),
(16, 'M01', 'MASCULINO', 'NO', 'NO', 0, 65, '619.2000', '619.2000', '850.3700', NULL, '2019-01-01', '2020-01-01', '2018-10-22', 1),
(17, 'M02', 'MASCULINO', 'NO', 'NO', 66, 70, '743.0400', '743.0400', '1020.4400', NULL, '2019-01-01', '2020-01-01', '2018-10-22', 1),
(18, 'M03', 'MASCULINO', 'NO', 'NO', 71, 80, '842.1100', '842.1100', '1156.5000', NULL, '2019-01-01', '2020-01-01', '2018-10-22', 1),
(19, 'M04', 'MASCULINO', 'NO', 'SI', 0, 25, '464.4000', '464.4000', '637.7800', NULL, '2019-01-01', '2020-01-01', '2018-10-22', 1),
(20, 'M05', 'MASCULINO', 'NO', 'NO', 26, 65, '619.2000', '619.2000', '850.3700', NULL, '2019-01-01', '2020-01-01', '2018-10-22', 1),
(21, 'M06', 'MASCULINO', 'NO', 'NO', 0, 70, '1102.1800', '1102.1800', '1513.6600', NULL, '2019-01-01', '2020-01-01', '2018-10-22', 1),
(22, 'M07', 'MASCULINO', 'NO', 'NO', 71, 80, '1609.2200', '1609.2200', '2210.9600', NULL, '2019-01-01', '2020-01-01', '2018-10-22', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ttiponomina`
--

CREATE TABLE `ttiponomina` (
  `idtipo_nomina` int(11) NOT NULL,
  `tipo_nomina` varchar(20) NOT NULL,
  `estatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ttiponomina`
--

INSERT INTO `ttiponomina` (`idtipo_nomina`, `tipo_nomina`, `estatus`) VALUES
(1, 'EJECUTIVO', 1),
(2, 'SEMANAL', 1),
(3, 'QUINCENAL', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuario`
--

CREATE TABLE `tusuario` (
  `idusuario` int(10) NOT NULL,
  `idusuario_clave` int(10) NOT NULL,
  `idusuario_preguntas` int(10) NOT NULL,
  `idusuario_perfil` int(10) NOT NULL,
  `usuario` varchar(15) NOT NULL,
  `inicio_sesion` int(1) NOT NULL,
  `primer_inicio` int(1) NOT NULL,
  `bloqueado` int(1) NOT NULL,
  `intentos_fallidos` int(11) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_final` date NOT NULL,
  `hora_salida` time NOT NULL,
  `fecha_salida` date NOT NULL,
  `estatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tusuario`
--

INSERT INTO `tusuario` (`idusuario`, `idusuario_clave`, `idusuario_preguntas`, `idusuario_perfil`, `usuario`, `inicio_sesion`, `primer_inicio`, `bloqueado`, `intentos_fallidos`, `fecha_creacion`, `fecha_final`, `hora_salida`, `fecha_salida`, `estatus`) VALUES
(1, 0, 0, 1, 'FMARQUEZ', 1, 1, 0, 0, '2018-10-02', '0000-00-00', '01:00:00', '2018-10-02', 1),
(2, 1, 0, 3, 'ABELANDRIA', 1, 1, 0, 0, '2019-01-19', '0000-00-00', '00:00:00', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuario_clave`
--

CREATE TABLE `tusuario_clave` (
  `idusuario_clave` int(11) NOT NULL,
  `clave` varchar(15) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `clave_anterior` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tusuario_clave`
--

INSERT INTO `tusuario_clave` (`idusuario_clave`, `clave`, `fecha_inicio`, `fecha_fin`, `clave_anterior`) VALUES
(0, '1234', '2018-10-02', '0000-00-00', '2222'),
(1, '1234', '2019-01-19', '2019-01-28', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuario_perfil`
--

CREATE TABLE `tusuario_perfil` (
  `idusuario_perfil` int(10) NOT NULL,
  `idperfil_mayor` int(1) NOT NULL,
  `perfiles` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tusuario_perfil`
--

INSERT INTO `tusuario_perfil` (`idusuario_perfil`, `idperfil_mayor`, `perfiles`) VALUES
(1, 0, 'ROOT'),
(2, 1, 'ADMIN'),
(3, 1, 'USER');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuario_preguntas`
--

CREATE TABLE `tusuario_preguntas` (
  `idusuario_preguntas` int(10) NOT NULL,
  `pregunta1` varchar(20) NOT NULL,
  `pregunta2` varchar(20) NOT NULL,
  `respuesta1` varchar(20) NOT NULL,
  `respuesta2` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tusuario_preguntas`
--

INSERT INTO `tusuario_preguntas` (`idusuario_preguntas`, `pregunta1`, `pregunta2`, `respuesta1`, `respuesta2`) VALUES
(0, 'MI NOMBRE', 'MI APELLIDO', 'FRANCISCO', 'MARQUEZ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tvehiculo`
--

CREATE TABLE `tvehiculo` (
  `idvehiculo` int(11) NOT NULL,
  `marca` varchar(40) NOT NULL,
  `modelo` varchar(40) NOT NULL,
  `versiones` varchar(20) DEFAULT NULL,
  `tipo_caja` varchar(15) NOT NULL,
  `cilindros` int(6) DEFAULT NULL,
  `titulo_registro` varchar(2) NOT NULL,
  `ano` int(5) NOT NULL,
  `color` varchar(30) DEFAULT NULL,
  `placa` varchar(10) NOT NULL,
  `serial_motor` varchar(40) DEFAULT NULL,
  `serial_carroceria` varchar(40) DEFAULT NULL,
  `uso` varchar(20) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `estatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tactividad_social`
--
ALTER TABLE `tactividad_social`
  ADD PRIMARY KEY (`idactividad_social`),
  ADD KEY `idpersona` (`idpersona`);

--
-- Indices de la tabla `tafec_opera_lesiones`
--
ALTER TABLE `tafec_opera_lesiones`
  ADD PRIMARY KEY (`idafec_opera_lesiones`),
  ADD KEY `idpersona` (`idpersona`) USING BTREE;

--
-- Indices de la tabla `tarea_interes`
--
ALTER TABLE `tarea_interes`
  ADD PRIMARY KEY (`idarea_interes`),
  ADD KEY `idpersona` (`idpersona`);

--
-- Indices de la tabla `tasegurado`
--
ALTER TABLE `tasegurado`
  ADD PRIMARY KEY (`idasegurado`),
  ADD KEY `idpersona` (`idpersona`),
  ADD KEY `idtipo_nomina` (`idtipo_nomina`),
  ADD KEY `iddepartamento` (`iddepartamento`);

--
-- Indices de la tabla `tconocimiento_ofimatico`
--
ALTER TABLE `tconocimiento_ofimatico`
  ADD PRIMARY KEY (`idconocimiento_ofimatico`),
  ADD KEY `idpersona` (`idpersona`);

--
-- Indices de la tabla `tcordenadas`
--
ALTER TABLE `tcordenadas`
  ADD PRIMARY KEY (`idcordenadas`),
  ADD UNIQUE KEY `n/s` (`n_s`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `tdefecto_fisico`
--
ALTER TABLE `tdefecto_fisico`
  ADD PRIMARY KEY (`iddefecto_fisico`),
  ADD KEY `idpersona` (`idpersona`) USING BTREE;

--
-- Indices de la tabla `tdepartamento`
--
ALTER TABLE `tdepartamento`
  ADD PRIMARY KEY (`iddepartamento`),
  ADD KEY `idgerencia` (`idgerencia`);

--
-- Indices de la tabla `tdependiente`
--
ALTER TABLE `tdependiente`
  ADD PRIMARY KEY (`iddependiente`),
  ADD KEY `idasegurado` (`idasegurado`),
  ADD KEY `idparentesco` (`idparentesco`),
  ADD KEY `idestado_civil` (`idestado_civil`);

--
-- Indices de la tabla `tdireccion`
--
ALTER TABLE `tdireccion`
  ADD PRIMARY KEY (`iddireccion`),
  ADD KEY `idparroquia` (`parroquia`),
  ADD KEY `idpersona` (`idpersona`);

--
-- Indices de la tabla `tdistin_acade_acti_social`
--
ALTER TABLE `tdistin_acade_acti_social`
  ADD PRIMARY KEY (`iddistin_acade_acti_social`),
  ADD KEY `idpersona` (`idpersona`);

--
-- Indices de la tabla `testados`
--
ALTER TABLE `testados`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `testado_civil`
--
ALTER TABLE `testado_civil`
  ADD PRIMARY KEY (`idestado_civil`);

--
-- Indices de la tabla `texperiencia_laboral`
--
ALTER TABLE `texperiencia_laboral`
  ADD KEY `idexperiencia_laboral` (`idexperiencia_laboral`),
  ADD KEY `idpersona` (`idpersona`);

--
-- Indices de la tabla `tgerencia`
--
ALTER TABLE `tgerencia`
  ADD PRIMARY KEY (`idgerencia`);

--
-- Indices de la tabla `tgrado_instruccion`
--
ALTER TABLE `tgrado_instruccion`
  ADD PRIMARY KEY (`idgrado_instruccion`),
  ADD KEY `idpersona` (`idpersona`);

--
-- Indices de la tabla `thijos`
--
ALTER TABLE `thijos`
  ADD PRIMARY KEY (`idhijos`),
  ADD KEY `idpersona` (`idpersona`);

--
-- Indices de la tabla `tingreso`
--
ALTER TABLE `tingreso`
  ADD PRIMARY KEY (`idingreso`);

--
-- Indices de la tabla `tmontos_asegurado`
--
ALTER TABLE `tmontos_asegurado`
  ADD PRIMARY KEY (`idmonto_asegurado`),
  ADD KEY `idasegurado` (`idasegurado`);

--
-- Indices de la tabla `tmontos_dependiente`
--
ALTER TABLE `tmontos_dependiente`
  ADD PRIMARY KEY (`idmonto_dependiente`) USING BTREE,
  ADD KEY `iddependiente` (`iddependiente`);

--
-- Indices de la tabla `tmunicipios`
--
ALTER TABLE `tmunicipios`
  ADD PRIMARY KEY (`id_municipio`),
  ADD KEY `id_estado` (`id_estado`);

--
-- Indices de la tabla `tpaises`
--
ALTER TABLE `tpaises`
  ADD PRIMARY KEY (`idtpaises`);

--
-- Indices de la tabla `tparentesco`
--
ALTER TABLE `tparentesco`
  ADD PRIMARY KEY (`idparentesco`);

--
-- Indices de la tabla `tparroquias`
--
ALTER TABLE `tparroquias`
  ADD PRIMARY KEY (`id_parroquia`),
  ADD KEY `id_municipio` (`id_municipio`);

--
-- Indices de la tabla `tpersona`
--
ALTER TABLE `tpersona`
  ADD PRIMARY KEY (`idpersona`),
  ADD UNIQUE KEY `cedula` (`cedula`),
  ADD KEY `idestado_civil` (`idestado_civil`),
  ADD KEY `tpersona_ibfk_4` (`idingreso`);

--
-- Indices de la tabla `treferencias`
--
ALTER TABLE `treferencias`
  ADD PRIMARY KEY (`idreferencias`),
  ADD KEY `idpersona` (`idpersona`);

--
-- Indices de la tabla `ttabla_prima`
--
ALTER TABLE `ttabla_prima`
  ADD PRIMARY KEY (`idtabla_prima`);

--
-- Indices de la tabla `ttiponomina`
--
ALTER TABLE `ttiponomina`
  ADD PRIMARY KEY (`idtipo_nomina`);

--
-- Indices de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD KEY `idusuario_clave` (`idusuario_clave`),
  ADD KEY `idusuario_preguntas` (`idusuario_preguntas`),
  ADD KEY `idusuario_perfil` (`idusuario_perfil`);

--
-- Indices de la tabla `tusuario_clave`
--
ALTER TABLE `tusuario_clave`
  ADD PRIMARY KEY (`idusuario_clave`);

--
-- Indices de la tabla `tusuario_perfil`
--
ALTER TABLE `tusuario_perfil`
  ADD PRIMARY KEY (`idusuario_perfil`);

--
-- Indices de la tabla `tusuario_preguntas`
--
ALTER TABLE `tusuario_preguntas`
  ADD PRIMARY KEY (`idusuario_preguntas`);

--
-- Indices de la tabla `tvehiculo`
--
ALTER TABLE `tvehiculo`
  ADD PRIMARY KEY (`idvehiculo`),
  ADD KEY `idvehiculo` (`idvehiculo`),
  ADD KEY `idpersona` (`idpersona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tactividad_social`
--
ALTER TABLE `tactividad_social`
  MODIFY `idactividad_social` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tafec_opera_lesiones`
--
ALTER TABLE `tafec_opera_lesiones`
  MODIFY `idafec_opera_lesiones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tarea_interes`
--
ALTER TABLE `tarea_interes`
  MODIFY `idarea_interes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `tasegurado`
--
ALTER TABLE `tasegurado`
  MODIFY `idasegurado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tconocimiento_ofimatico`
--
ALTER TABLE `tconocimiento_ofimatico`
  MODIFY `idconocimiento_ofimatico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `tcordenadas`
--
ALTER TABLE `tcordenadas`
  MODIFY `idcordenadas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tdefecto_fisico`
--
ALTER TABLE `tdefecto_fisico`
  MODIFY `iddefecto_fisico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tdepartamento`
--
ALTER TABLE `tdepartamento`
  MODIFY `iddepartamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `tdependiente`
--
ALTER TABLE `tdependiente`
  MODIFY `iddependiente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tdireccion`
--
ALTER TABLE `tdireccion`
  MODIFY `iddireccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tdistin_acade_acti_social`
--
ALTER TABLE `tdistin_acade_acti_social`
  MODIFY `iddistin_acade_acti_social` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `testado_civil`
--
ALTER TABLE `testado_civil`
  MODIFY `idestado_civil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `texperiencia_laboral`
--
ALTER TABLE `texperiencia_laboral`
  MODIFY `idexperiencia_laboral` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tgerencia`
--
ALTER TABLE `tgerencia`
  MODIFY `idgerencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tgrado_instruccion`
--
ALTER TABLE `tgrado_instruccion`
  MODIFY `idgrado_instruccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `thijos`
--
ALTER TABLE `thijos`
  MODIFY `idhijos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tingreso`
--
ALTER TABLE `tingreso`
  MODIFY `idingreso` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tmontos_asegurado`
--
ALTER TABLE `tmontos_asegurado`
  MODIFY `idmonto_asegurado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tmontos_dependiente`
--
ALTER TABLE `tmontos_dependiente`
  MODIFY `idmonto_dependiente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tpaises`
--
ALTER TABLE `tpaises`
  MODIFY `idtpaises` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;
--
-- AUTO_INCREMENT de la tabla `tparentesco`
--
ALTER TABLE `tparentesco`
  MODIFY `idparentesco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `tpersona`
--
ALTER TABLE `tpersona`
  MODIFY `idpersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `treferencias`
--
ALTER TABLE `treferencias`
  MODIFY `idreferencias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `ttabla_prima`
--
ALTER TABLE `ttabla_prima`
  MODIFY `idtabla_prima` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `ttiponomina`
--
ALTER TABLE `ttiponomina`
  MODIFY `idtipo_nomina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tvehiculo`
--
ALTER TABLE `tvehiculo`
  MODIFY `idvehiculo` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tactividad_social`
--
ALTER TABLE `tactividad_social`
  ADD CONSTRAINT `tactividad_social_ibfk_1` FOREIGN KEY (`idpersona`) REFERENCES `tpersona` (`idpersona`);

--
-- Filtros para la tabla `tafec_opera_lesiones`
--
ALTER TABLE `tafec_opera_lesiones`
  ADD CONSTRAINT `tafec_opera_lesiones_ibfk_1` FOREIGN KEY (`idpersona`) REFERENCES `tpersona` (`idpersona`);

--
-- Filtros para la tabla `tarea_interes`
--
ALTER TABLE `tarea_interes`
  ADD CONSTRAINT `tarea_interes_ibfk_1` FOREIGN KEY (`idpersona`) REFERENCES `tpersona` (`idpersona`);

--
-- Filtros para la tabla `tasegurado`
--
ALTER TABLE `tasegurado`
  ADD CONSTRAINT `tasegurado_ibfk_1` FOREIGN KEY (`idpersona`) REFERENCES `tpersona` (`idpersona`),
  ADD CONSTRAINT `tasegurado_ibfk_2` FOREIGN KEY (`idtipo_nomina`) REFERENCES `ttiponomina` (`idtipo_nomina`),
  ADD CONSTRAINT `tasegurado_ibfk_3` FOREIGN KEY (`iddepartamento`) REFERENCES `tdepartamento` (`iddepartamento`);

--
-- Filtros para la tabla `tconocimiento_ofimatico`
--
ALTER TABLE `tconocimiento_ofimatico`
  ADD CONSTRAINT `tconocimiento_ofimatico_ibfk_1` FOREIGN KEY (`idpersona`) REFERENCES `tpersona` (`idpersona`);

--
-- Filtros para la tabla `tcordenadas`
--
ALTER TABLE `tcordenadas`
  ADD CONSTRAINT `tcordenadas_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `tusuario` (`idusuario`);

--
-- Filtros para la tabla `tdefecto_fisico`
--
ALTER TABLE `tdefecto_fisico`
  ADD CONSTRAINT `tdefecto_fisico_ibfk_1` FOREIGN KEY (`idpersona`) REFERENCES `tpersona` (`idpersona`);

--
-- Filtros para la tabla `tdepartamento`
--
ALTER TABLE `tdepartamento`
  ADD CONSTRAINT `tdepartamento_ibfk_1` FOREIGN KEY (`idgerencia`) REFERENCES `tgerencia` (`idgerencia`);

--
-- Filtros para la tabla `tdependiente`
--
ALTER TABLE `tdependiente`
  ADD CONSTRAINT `tdependiente_ibfk_1` FOREIGN KEY (`idparentesco`) REFERENCES `tparentesco` (`idparentesco`),
  ADD CONSTRAINT `tdependiente_ibfk_2` FOREIGN KEY (`idestado_civil`) REFERENCES `testado_civil` (`idestado_civil`),
  ADD CONSTRAINT `tdependiente_ibfk_3` FOREIGN KEY (`idasegurado`) REFERENCES `tasegurado` (`idasegurado`);

--
-- Filtros para la tabla `tdireccion`
--
ALTER TABLE `tdireccion`
  ADD CONSTRAINT `tdireccion_ibfk_1` FOREIGN KEY (`idpersona`) REFERENCES `tpersona` (`idpersona`),
  ADD CONSTRAINT `tdireccion_ibfk_2` FOREIGN KEY (`parroquia`) REFERENCES `tparroquias` (`id_parroquia`);

--
-- Filtros para la tabla `tdistin_acade_acti_social`
--
ALTER TABLE `tdistin_acade_acti_social`
  ADD CONSTRAINT `tdistin_acade_acti_social_ibfk_1` FOREIGN KEY (`idpersona`) REFERENCES `tpersona` (`idpersona`);

--
-- Filtros para la tabla `tgrado_instruccion`
--
ALTER TABLE `tgrado_instruccion`
  ADD CONSTRAINT `tgrado_instruccion_ibfk_1` FOREIGN KEY (`idpersona`) REFERENCES `tpersona` (`idpersona`);

--
-- Filtros para la tabla `thijos`
--
ALTER TABLE `thijos`
  ADD CONSTRAINT `thijos_ibfk_1` FOREIGN KEY (`idpersona`) REFERENCES `tpersona` (`idpersona`);

--
-- Filtros para la tabla `tmontos_asegurado`
--
ALTER TABLE `tmontos_asegurado`
  ADD CONSTRAINT `tmontos_asegurado_ibfk_1` FOREIGN KEY (`idasegurado`) REFERENCES `tasegurado` (`idasegurado`);

--
-- Filtros para la tabla `tmontos_dependiente`
--
ALTER TABLE `tmontos_dependiente`
  ADD CONSTRAINT `tmontos_dependiente_ibfk_1` FOREIGN KEY (`iddependiente`) REFERENCES `tdependiente` (`iddependiente`);

--
-- Filtros para la tabla `tmunicipios`
--
ALTER TABLE `tmunicipios`
  ADD CONSTRAINT `tmunicipios_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `testados` (`id_estado`);

--
-- Filtros para la tabla `tparroquias`
--
ALTER TABLE `tparroquias`
  ADD CONSTRAINT `tparroquias_ibfk_1` FOREIGN KEY (`id_municipio`) REFERENCES `tmunicipios` (`id_municipio`);

--
-- Filtros para la tabla `tpersona`
--
ALTER TABLE `tpersona`
  ADD CONSTRAINT `tpersona_ibfk_3` FOREIGN KEY (`idestado_civil`) REFERENCES `testado_civil` (`idestado_civil`),
  ADD CONSTRAINT `tpersona_ibfk_4` FOREIGN KEY (`idingreso`) REFERENCES `tingreso` (`idingreso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `treferencias`
--
ALTER TABLE `treferencias`
  ADD CONSTRAINT `treferencias_ibfk_1` FOREIGN KEY (`idpersona`) REFERENCES `tpersona` (`idpersona`);

--
-- Filtros para la tabla `tvehiculo`
--
ALTER TABLE `tvehiculo`
  ADD CONSTRAINT `tvehiculo_ibfk_1` FOREIGN KEY (`idpersona`) REFERENCES `tpersona` (`idpersona`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
