-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-09-2021 a las 06:45:00
-- Versión del servidor: 10.5.10-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `megasport`
--
use megasport

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id_ciudad` int(4) NOT NULL,
  `id_pais` int(4) NOT NULL,
  `nombre_ciudad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id_ciudad`, `id_pais`, `nombre_ciudad`) VALUES
(1, 57, 'BOGOTA'),
(2, 57, 'CALI'),
(3, 57, 'MONTERIA'),
(4, 57, 'MEDELLIN'),
(5, 57, 'BARRANQUILLA'),
(6, 57, 'VALLEDUPAR'),
(7, 57, 'BUCARAMANGA'),
(8, 57, 'MANIZALES'),
(9, 57, 'NARInO'),
(10, 57, 'CUCUTA'),
(11, 57, 'CARTAGENA'),
(12, 57, 'SANANDRES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `Id_Cliente` int(10) NOT NULL COMMENT 'Id Cliente',
  `DocIdentidad` varchar(15) NOT NULL COMMENT 'Documento de identidad',
  `TipoDocumento` varchar(1) NOT NULL COMMENT 'T=TARJETA IDENTIDAD; C=CEDULA; P=PASAPORTE; E=C.EXTRANJERIA, N=NIT',
  `Nombres` varchar(50) NOT NULL COMMENT 'Nombre de Cliente',
  `Apellidos` varchar(50) NOT NULL COMMENT 'Apellidos de Cliente',
  `Direccion` varchar(60) NOT NULL COMMENT 'Direccion Cliente',
  `Telefono` varchar(15) NOT NULL COMMENT 'Telefono Cliente',
  `Id_Codigo_Postal` int(10) NOT NULL COMMENT 'Id Codigo Postal',
  `correo` varchar(50) NOT NULL COMMENT 'Correo Electronico'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`Id_Cliente`, `DocIdentidad`, `TipoDocumento`, `Nombres`, `Apellidos`, `Direccion`, `Telefono`, `Id_Codigo_Postal`, `correo`) VALUES
(1, '19256281', 'C', 'CESAR ENRIQUE', 'NUNEZ MALAVER', 'CL 22 1A 97 CASA 1 CHIA', '3138334546', 1, 'cesar_en@gmail.com'),
(2, '30298936', 'C', 'LUCIA DEL PILAR', 'RIVERA GIRALDO', 'CRA 1E # 92 A 64', '3138334547', 2, 'lucia_de@gmail.com'),
(3, '35507958', 'C', 'Natalia', 'De Brigard Merchan', 'CRA 1E # 92 A G4', '3138334548', 3, 'natalia_@gmail.com'),
(4, '51663874', 'C', 'SANDRA LILIANA ', 'RUBIANO ZALAMEA', 'CRA 1E # 92 A 64', '3138334549', 4, 'sandra_l@gmail.com'),
(5, '51787205', 'C', 'CLAUDIA MARIA', 'CUBILLOS REYES', 'CALLE 83 NO 19-83 PISO 7', '3138334550', 5, 'claudia_@gmail.com'),
(6, '51858563', 'C', 'MARTHA LEONOR', 'SANDOVAL BOTACHE', 'CALLE 83 NO 19-83 PISO 5', '3138334551', 1, 'martha_l@gmail.com'),
(7, '52868004', 'C', 'CATALINA', 'AYALA CORREDOR', 'CALLE 98#21-11 APARTAMENTO 503', '3138334552', 2, 'catalina@gmail.com'),
(8, '52995792', 'C', 'ALINA ', 'URIBE-HOLGUIN ZARATE', 'CALLE 68 # 20 -41', '3138334553', 3, 'alina_ur@gmail.com'),
(9, '860013779', 'C', 'ASOCIACIoN PROFAMILIA', 'ASOCIACIoN PROFAMILIA', 'CALLE 83 NO 19-83 PISO 4', '3138334554', 4, 'asociaci@gmail.com'),
(10, '900001672', 'C', 'fundacion para la proteccion y habilitacion', ' a personas con o sin discapacidad FUNPROHABILITAR', 'CALLE 83 # 16A 44 CONSULTORIO303', '3138334555', 5, 'fundacio@gmail.com'),
(11, '900096797', 'C', 'Centro de Dermatologia y Cirugia Dermatologica', 'del Country CDCD LTDA', 'TV 80 213-20 MORA VERDE 1 CASA 45', '3138334556', 1, 'centro_d@gmail.com'),
(12, '900149596', 'C', 'ASISFARMA S.A.S', 'ASISFARMA S.A.S', 'CALLE 34 N 14-52 TEUSAQUILLO', '3138334557', 2, 'asisfarm@gmail.com'),
(13, '900171614', 'C', 'TERAPIAS BOGOTA S.A.S', 'TERAPIAS BOGOTA S.A.S', 'AC 13 65 21 LOCAL 28.', '3138334558', 3, 'terapias@gmail.com'),
(14, '900171615', 'C', 'TERAPIAS BOGOTA S.A.S', 'TERAPIAS BOGOTA S.A.S', 'CARRERA 11A # 114-37', '3138334559', 4, 'terapias@gmail.com'),
(15, '900319481', 'C', 'FISIOPLUS SAS', 'FISIOPLUS SAS', 'CARRERA 68H 79-30', '3138334560', 5, 'fisioplu@gmail.com'),
(16, '900767027', 'C', 'ASMED SALUD SAS', 'ASMED SALUD SAS', 'CL 1 NO 9-85', '3138334561', 1, 'asmed_sa@gmail.com'),
(17, '900807698', 'C', 'CRC LUMEDICA SAS', 'CRC LUMEDICA SAS', 'AV CALLE 127 # 20-78 CS 412', '3138334562', 2, 'crc_lume@gmail.com'),
(18, '900838988', 'C', 'AIR LIQUIDE COLOMBIA SAS', 'AIR LIQUIDE COLOMBIA SAS', 'CRA 16 # 106-21 CS 404', '3138334563', 3, 'air_liqu@gmail.com'),
(19, '901057565', 'C', 'FABLE UN MUNDO HECHO COLOR IPS SAS', 'FABLE UN MUNDO HECHO COLOR IPS SAS', 'CRA 14A # 127B - 37', '3138334564', 4, 'fable_un@gmail.com'),
(20, '901282541', 'C', 'CARDIOIB S.A.S', 'CARDIOIB S.A.S', 'CRA 7 # 68 70', '3138334565', 5, 'cardioib@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigopostal`
--

CREATE TABLE `codigopostal` (
  `id_postal` int(10) NOT NULL,
  `id_ciudad` int(4) NOT NULL,
  `id_pais` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `codigopostal`
--

INSERT INTO `codigopostal` (`id_postal`, `id_ciudad`, `id_pais`) VALUES
(1, 1, 57),
(2, 2, 57),
(3, 3, 57),
(4, 4, 57),
(5, 5, 57),
(6, 6, 57),
(7, 7, 57),
(8, 8, 57),
(9, 9, 57),
(10, 10, 57),
(11, 11, 57),
(12, 12, 57);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dashboardxusr`
--

CREATE TABLE `dashboardxusr` (
  `id_dashboard` int(4) NOT NULL COMMENT 'id de dash board',
  `Descripcion_Dashboard` varchar(40) NOT NULL,
  `id_estado` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dashboardxusr`
--

INSERT INTO `dashboardxusr` (`id_dashboard`, `Descripcion_Dashboard`, `id_estado`) VALUES
(1, 'DASHBOARD DE ADMINISTRADOR', 1),
(2, 'DASHBOARD DE VENTAS', 2),
(3, 'DASHBOARD DE INVENTARIOS', 1),
(4, 'DASHBOARD DE CLIENTES', 1),
(5, 'DASHBOARD DE ADMINISTRADOR', 1),
(6, 'DASHBOARD DE VENTAS', 2),
(7, 'DASHBOARD DE INVENTARIOS', 1),
(8, 'DASHBOARD DE CLIENTES', 1),
(9, 'DASHBOARD DE ADMINISTRADOR', 1),
(10, 'DASHBOARD DE VENTAS', 2),
(11, 'DASHBOARD DE INVENTARIOS', 1),
(12, 'DASHBOARD DE CLIENTES', 1),
(13, 'DASHBOARD DE ADMINISTRADOR', 1),
(14, 'DASHBOARD DE VENTAS', 2),
(15, 'DASHBOARD DE INVENTARIOS', 1),
(16, 'DASHBOARD DE CLIENTES', 1),
(17, 'DASHBOARD DE ADMINISTRADOR', 1),
(18, 'DASHBOARD DE VENTAS', 2),
(19, 'DASHBOARD DE INVENTARIOS', 1),
(20, 'DASHBOARD DE CLIENTES', 1),
(21, 'DASHBOARD DE ADMINISTRADOR', 1),
(22, 'DASHBOARD DE VENTAS', 2),
(23, 'DASHBOARD DE INVENTARIOS', 1),
(24, 'DASHBOARD DE CLIENTES', 1),
(25, 'DASHBOARD DE ADMINISTRADOR', 1),
(26, 'DASHBOARD DE VENTAS', 2),
(27, 'DASHBOARD DE INVENTARIOS', 1),
(28, 'DASHBOARD DE CLIENTES', 1),
(29, 'DASHBOARD DE ADMINISTRADOR', 1),
(30, 'DASHBOARD DE VENTAS', 2),
(31, 'DASHBOARD DE INVENTARIOS', 1),
(32, 'DASHBOARD DE CLIENTES', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallepedxcli`
--

CREATE TABLE `detallepedxcli` (
  `Id_Detalle_Pedido` int(10) NOT NULL COMMENT 'Id detalle de pedido Autonumerico (10)',
  `Id_Pedido` int(10) NOT NULL COMMENT 'Id pedid\r\n\r\n\r\nId Pedido',
  `Id_Producto` int(10) NOT NULL COMMENT 'Id Producto',
  `Cantidad` int(10) NOT NULL COMMENT 'Cantidad de Producto',
  `Precio` double NOT NULL COMMENT 'Precio de producto',
  `Descuento` double NOT NULL COMMENT 'Descuento en el producto',
  `id_Estado_DetPed` int(3) NOT NULL COMMENT 'Id estado detalle pedido'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Entidad detalle de pedidos por cliente';

--
-- Volcado de datos para la tabla `detallepedxcli`
--

INSERT INTO `detallepedxcli` (`Id_Detalle_Pedido`, `Id_Pedido`, `Id_Producto`, `Cantidad`, `Precio`, `Descuento`, `id_Estado_DetPed`) VALUES
(1, 1, 1, 1, 35000, 1500, 1),
(2, 1, 2, 2, 27000, 0, 1),
(3, 1, 3, 3, 45000, 2000, 1),
(4, 2, 4, 4, 57000, 0, 1),
(5, 2, 3, 3, 45000, 0, 1),
(6, 2, 2, 1, 27000, 0, 1),
(7, 2, 1, 5, 35000, 4000, 1),
(8, 3, 5, 6, 43000, 5000, 1),
(9, 4, 6, 7, 52000, 6000, 1),
(10, 4, 7, 8, 38000, 5000, 1),
(11, 5, 9, 1, 74000, 0, 1),
(12, 5, 2, 2, 27000, 0, 1),
(13, 5, 10, 3, 33000, 2000, 1),
(14, 5, 10, 4, 41000, 3000, 1),
(15, 5, 3, 3, 45000, 0, 1),
(16, 5, 1, 1, 35000, 0, 1),
(17, 6, 10, 5, 49000, 2500, 1),
(18, 6, 3, 6, 69000, 0, 1),
(19, 6, 4, 7, 57000, 4000, 1),
(20, 7, 4, 8, 21000, 1000, 1),
(21, 8, 5, 1, 22000, 0, 1),
(22, 8, 6, 2, 23000, 0, 1),
(23, 9, 1, 3, 35000, 0, 1),
(24, 9, 2, 4, 27000, 0, 1),
(25, 9, 4, 3, 57000, 0, 1),
(26, 10, 5, 1, 43000, 0, 1),
(27, 10, 6, 5, 52000, 3000, 1),
(28, 11, 7, 6, 38000, 4000, 1),
(29, 11, 9, 7, 74000, 5000, 1),
(30, 11, 2, 8, 27000, 6000, 1),
(31, 12, 10, 1, 33000, 0, 1),
(32, 12, 1, 2, 41000, 0, 1),
(33, 12, 3, 3, 45000, 0, 1),
(34, 12, 1, 4, 35000, 0, 1),
(35, 13, 2, 3, 49000, 0, 1),
(36, 13, 3, 1, 69000, 0, 1),
(37, 13, 4, 5, 57000, 0, 1),
(38, 14, 10, 6, 21000, 0, 1),
(39, 15, 5, 7, 22000, 4500, 1),
(40, 16, 6, 8, 23000, 3000, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallepedxcomp`
--

CREATE TABLE `detallepedxcomp` (
  `id_detalle_ped_comp` int(10) NOT NULL COMMENT 'id detalle pedido por compra',
  `id_pedido_compra` int(10) NOT NULL,
  `id_producto` int(10) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `costo_unitario` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detallepedxcomp`
--

INSERT INTO `detallepedxcomp` (`id_detalle_ped_comp`, `id_pedido_compra`, `id_producto`, `cantidad`, `costo_unitario`) VALUES
(1, 1, 1, 10, 25000),
(2, 2, 2, 12, 35000),
(3, 3, 3, 6, 45000),
(4, 4, 1, 10, 25000),
(5, 5, 2, 20, 35000),
(6, 6, 3, 10, 45000),
(7, 1, 1, 10, 25000),
(8, 2, 2, 12, 35000),
(9, 3, 3, 6, 45000),
(10, 4, 1, 10, 25000),
(11, 5, 2, 20, 35000),
(12, 6, 3, 10, 45000),
(13, 1, 1, 10, 55000),
(14, 2, 2, 12, 35000),
(15, 3, 3, 6, 45000),
(16, 4, 1, 10, 55000),
(17, 5, 2, 20, 65000),
(18, 6, 3, 10, 70000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entidad`
--

CREATE TABLE `entidad` (
  `id_entidad` int(3) NOT NULL COMMENT 'id de entidad',
  `Nombre_Entidad` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `entidad`
--

INSERT INTO `entidad` (`id_entidad`, `Nombre_Entidad`) VALUES
(1, 'PEDIDOSxCLIENTE'),
(2, 'DETALLEPEDXCLI'),
(3, 'CLIENTE'),
(4, 'FACTURA'),
(5, 'TRANSACCIONDEINV'),
(6, 'TIPOTRANSACCION'),
(7, 'PEDIDOSDECOMPRA'),
(8, 'DETALLEPEDXCOMP'),
(9, 'estado'),
(10, 'ENTIDAD'),
(11, 'DASHBOARDXUSR'),
(12, 'PerfilRol'),
(13, 'PRODUCTO'),
(14, 'proveedor'),
(15, 'CODIGOPOSTAL'),
(16, 'CIUDAD'),
(17, 'pais'),
(18, 'usuario'),
(19, 'PEDIDOSxCLIENTE'),
(20, 'DETALLEPEDXCLI'),
(21, 'CLIENTE'),
(22, 'FACTURA'),
(23, 'TRANSACCIONDEINV'),
(24, 'TIPOTRANSACCION'),
(25, 'PEDIDOSDECOMPRA'),
(26, 'DETALLEPEDXCOMP'),
(27, 'estado'),
(28, 'ENTIDAD'),
(29, 'DASHBOARDXUSR'),
(30, 'PerfilRol'),
(31, 'PRODUCTO'),
(32, 'proveedor'),
(33, 'CODIGOPOSTAL'),
(34, 'CIUDAD'),
(35, 'pais'),
(36, 'usuario'),
(37, 'PEDIDOSxCLIENTE'),
(38, 'DETALLEPEDXCLI'),
(39, 'CLIENTE'),
(40, 'FACTURA'),
(41, 'TRANSACCIONDEINV'),
(42, 'TIPOTRANSACCION'),
(43, 'PEDIDOSDECOMPRA'),
(44, 'DETALLEPEDXCOMP'),
(45, 'estado'),
(46, 'ENTIDAD'),
(47, 'DASHBOARDXUSR'),
(48, 'PerfilRol'),
(49, 'PRODUCTO'),
(50, 'proveedor'),
(51, 'CODIGOPOSTAL'),
(52, 'CIUDAD'),
(53, 'pais'),
(54, 'usuario'),
(55, 'PEDIDOSxCLIENTE'),
(56, 'DETALLEPEDXCLI'),
(57, 'CLIENTE'),
(58, 'FACTURA'),
(59, 'TRANSACCIONDEINV'),
(60, 'TIPOTRANSACCION'),
(61, 'PEDIDOSDECOMPRA'),
(62, 'DETALLEPEDXCOMP'),
(63, 'estado'),
(64, 'ENTIDAD'),
(65, 'DASHBOARDXUSR'),
(66, 'PerfilRol'),
(67, 'PRODUCTO'),
(68, 'proveedor'),
(69, 'CODIGOPOSTAL'),
(70, 'CIUDAD'),
(71, 'pais'),
(72, 'usuario'),
(73, 'PEDIDOSxCLIENTE'),
(74, 'DETALLEPEDXCLI'),
(75, 'CLIENTE'),
(76, 'FACTURA'),
(77, 'TRANSACCIONDEINV'),
(78, 'TIPOTRANSACCION'),
(79, 'PEDIDOSDECOMPRA'),
(80, 'DETALLEPEDXCOMP'),
(81, 'estado'),
(82, 'ENTIDAD'),
(83, 'DASHBOARDXUSR'),
(84, 'PerfilRol'),
(85, 'PRODUCTO'),
(86, 'proveedor'),
(87, 'CODIGOPOSTAL'),
(88, 'CIUDAD'),
(89, 'pais'),
(90, 'usuario'),
(91, 'PEDIDOSxCLIENTE'),
(92, 'DETALLEPEDXCLI'),
(93, 'CLIENTE'),
(94, 'FACTURA'),
(95, 'TRANSACCIONDEINV'),
(96, 'TIPOTRANSACCION'),
(97, 'PEDIDOSDECOMPRA'),
(98, 'DETALLEPEDXCOMP'),
(99, 'estado'),
(100, 'ENTIDAD'),
(101, 'DASHBOARDXUSR'),
(102, 'PerfilRol'),
(103, 'PRODUCTO'),
(104, 'proveedor'),
(105, 'CODIGOPOSTAL'),
(106, 'CIUDAD'),
(107, 'pais'),
(108, 'usuario'),
(109, 'PEDIDOSxCLIENTE'),
(110, 'DETALLEPEDXCLI'),
(111, 'CLIENTE'),
(112, 'FACTURA'),
(113, 'TRANSACCIONDEINV'),
(114, 'TIPOTRANSACCION'),
(115, 'PEDIDOSDECOMPRA'),
(116, 'DETALLEPEDXCOMP'),
(117, 'estado'),
(118, 'ENTIDAD'),
(119, 'DASHBOARDXUSR'),
(120, 'PerfilRol'),
(121, 'PRODUCTO'),
(122, 'proveedor'),
(123, 'CODIGOPOSTAL'),
(124, 'CIUDAD'),
(125, 'pais'),
(126, 'usuario'),
(127, 'PEDIDOSxCLIENTE'),
(128, 'DETALLEPEDXCLI'),
(129, 'CLIENTE'),
(130, 'FACTURA'),
(131, 'TRANSACCIONDEINV'),
(132, 'TIPOTRANSACCION'),
(133, 'PEDIDOSDECOMPRA'),
(134, 'DETALLEPEDXCOMP'),
(135, 'estado'),
(136, 'ENTIDAD'),
(137, 'DASHBOARDXUSR'),
(138, 'PerfilRol'),
(139, 'PRODUCTO'),
(140, 'proveedor'),
(141, 'CODIGOPOSTAL'),
(142, 'CIUDAD'),
(143, 'pais'),
(144, 'usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id_estado` int(3) NOT NULL COMMENT 'Id de estado',
  `Descripcion_Estado` varchar(40) NOT NULL,
  `id_entidad` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id_estado`, `Descripcion_Estado`, `id_entidad`) VALUES
(1, 'ACTIVO', 1),
(2, 'ACTIVO', 2),
(3, 'ACTIVO', 3),
(4, 'ACTIVO', 4),
(5, 'ACTIVO', 5),
(6, 'ACTIVO', 6),
(7, 'ACTIVO', 7),
(8, 'ACTIVO', 8),
(9, 'ACTIVO', 9),
(10, 'ACTIVO', 10),
(11, 'ACTIVO', 11),
(12, 'ACTIVO', 12),
(13, 'ACTIVO', 13),
(14, 'ACTIVO', 14),
(15, 'ACTIVO', 15),
(16, 'ACTIVO', 16),
(17, 'ACTIVO', 17),
(18, 'ACTIVO', 18),
(19, 'DESACTIVO', 1),
(20, 'DESACTIVO', 2),
(21, 'DESACTIVO', 3),
(22, 'DESACTIVO', 4),
(23, 'DESACTIVO', 5),
(24, 'DESACTIVO', 6),
(25, 'DESACTIVO', 7),
(26, 'DESACTIVO', 8),
(27, 'DESACTIVO', 9),
(28, 'DESACTIVO', 10),
(29, 'DESACTIVO', 11),
(30, 'DESACTIVO', 12),
(31, 'DESACTIVO', 13),
(32, 'DESACTIVO', 14),
(33, 'DESACTIVO', 15),
(34, 'DESACTIVO', 16),
(35, 'DESACTIVO', 17),
(36, 'DESACTIVO', 18),
(37, 'ACTIVO', 1),
(38, 'ACTIVO', 2),
(39, 'ACTIVO', 3),
(40, 'ACTIVO', 4),
(41, 'ACTIVO', 5),
(42, 'ACTIVO', 6),
(43, 'ACTIVO', 7),
(44, 'ACTIVO', 8),
(45, 'ACTIVO', 9),
(46, 'ACTIVO', 10),
(47, 'ACTIVO', 11),
(48, 'ACTIVO', 12),
(49, 'ACTIVO', 13),
(50, 'ACTIVO', 14),
(51, 'ACTIVO', 15),
(52, 'ACTIVO', 16),
(53, 'ACTIVO', 17),
(54, 'ACTIVO', 18),
(55, 'DESACTIVO', 1),
(56, 'DESACTIVO', 2),
(57, 'DESACTIVO', 3),
(58, 'DESACTIVO', 4),
(59, 'DESACTIVO', 5),
(60, 'DESACTIVO', 6),
(61, 'DESACTIVO', 7),
(62, 'DESACTIVO', 8),
(63, 'DESACTIVO', 9),
(64, 'DESACTIVO', 10),
(65, 'DESACTIVO', 11),
(66, 'DESACTIVO', 12),
(67, 'DESACTIVO', 13),
(68, 'DESACTIVO', 14),
(69, 'DESACTIVO', 15),
(70, 'DESACTIVO', 16),
(71, 'DESACTIVO', 17),
(72, 'DESACTIVO', 18),
(73, 'ACTIVO', 1),
(74, 'ACTIVO', 2),
(75, 'ACTIVO', 3),
(76, 'ACTIVO', 4),
(77, 'ACTIVO', 5),
(78, 'ACTIVO', 6),
(79, 'ACTIVO', 7),
(80, 'ACTIVO', 8),
(81, 'ACTIVO', 9),
(82, 'ACTIVO', 10),
(83, 'ACTIVO', 11),
(84, 'ACTIVO', 12),
(85, 'ACTIVO', 13),
(86, 'ACTIVO', 14),
(87, 'ACTIVO', 15),
(88, 'ACTIVO', 16),
(89, 'ACTIVO', 17),
(90, 'ACTIVO', 18),
(91, 'DESACTIVO', 1),
(92, 'DESACTIVO', 2),
(93, 'DESACTIVO', 3),
(94, 'DESACTIVO', 4),
(95, 'DESACTIVO', 5),
(96, 'DESACTIVO', 6),
(97, 'DESACTIVO', 7),
(98, 'DESACTIVO', 8),
(99, 'DESACTIVO', 9),
(100, 'DESACTIVO', 10),
(101, 'DESACTIVO', 11),
(102, 'DESACTIVO', 12),
(103, 'DESACTIVO', 13),
(104, 'DESACTIVO', 14),
(105, 'DESACTIVO', 15),
(106, 'DESACTIVO', 16),
(107, 'DESACTIVO', 17),
(108, 'DESACTIVO', 18),
(109, 'ACTIVO', 1),
(110, 'ACTIVO', 2),
(111, 'ACTIVO', 3),
(112, 'ACTIVO', 4),
(113, 'ACTIVO', 5),
(114, 'ACTIVO', 6),
(115, 'ACTIVO', 7),
(116, 'ACTIVO', 8),
(117, 'ACTIVO', 9),
(118, 'ACTIVO', 10),
(119, 'ACTIVO', 11),
(120, 'ACTIVO', 12),
(121, 'ACTIVO', 13),
(122, 'ACTIVO', 14),
(123, 'ACTIVO', 15),
(124, 'ACTIVO', 16),
(125, 'ACTIVO', 17),
(126, 'ACTIVO', 18),
(127, 'DESACTIVO', 1),
(128, 'DESACTIVO', 2),
(129, 'DESACTIVO', 3),
(130, 'DESACTIVO', 4),
(131, 'DESACTIVO', 5),
(132, 'DESACTIVO', 6),
(133, 'DESACTIVO', 7),
(134, 'DESACTIVO', 8),
(135, 'DESACTIVO', 9),
(136, 'DESACTIVO', 10),
(137, 'DESACTIVO', 11),
(138, 'DESACTIVO', 12),
(139, 'DESACTIVO', 13),
(140, 'DESACTIVO', 14),
(141, 'DESACTIVO', 15),
(142, 'DESACTIVO', 16),
(143, 'DESACTIVO', 17),
(144, 'DESACTIVO', 18),
(145, 'ACTIVO', 1),
(146, 'ACTIVO', 2),
(147, 'ACTIVO', 3),
(148, 'ACTIVO', 4),
(149, 'ACTIVO', 5),
(150, 'ACTIVO', 6),
(151, 'ACTIVO', 7),
(152, 'ACTIVO', 8),
(153, 'ACTIVO', 9),
(154, 'ACTIVO', 10),
(155, 'ACTIVO', 11),
(156, 'ACTIVO', 12),
(157, 'ACTIVO', 13),
(158, 'ACTIVO', 14),
(159, 'ACTIVO', 15),
(160, 'ACTIVO', 16),
(161, 'ACTIVO', 17),
(162, 'ACTIVO', 18),
(163, 'DESACTIVO', 1),
(164, 'DESACTIVO', 2),
(165, 'DESACTIVO', 3),
(166, 'DESACTIVO', 4),
(167, 'DESACTIVO', 5),
(168, 'DESACTIVO', 6),
(169, 'DESACTIVO', 7),
(170, 'DESACTIVO', 8),
(171, 'DESACTIVO', 9),
(172, 'DESACTIVO', 10),
(173, 'DESACTIVO', 11),
(174, 'DESACTIVO', 12),
(175, 'DESACTIVO', 13),
(176, 'DESACTIVO', 14),
(177, 'DESACTIVO', 15),
(178, 'DESACTIVO', 16),
(179, 'DESACTIVO', 17),
(180, 'DESACTIVO', 18),
(181, 'ACTIVO', 1),
(182, 'ACTIVO', 2),
(183, 'ACTIVO', 3),
(184, 'ACTIVO', 4),
(185, 'ACTIVO', 5),
(186, 'ACTIVO', 6),
(187, 'ACTIVO', 7),
(188, 'ACTIVO', 8),
(189, 'ACTIVO', 9),
(190, 'ACTIVO', 10),
(191, 'ACTIVO', 11),
(192, 'ACTIVO', 12),
(193, 'ACTIVO', 13),
(194, 'ACTIVO', 14),
(195, 'ACTIVO', 15),
(196, 'ACTIVO', 16),
(197, 'ACTIVO', 17),
(198, 'ACTIVO', 18),
(199, 'DESACTIVO', 1),
(200, 'DESACTIVO', 2),
(201, 'DESACTIVO', 3),
(202, 'DESACTIVO', 4),
(203, 'DESACTIVO', 5),
(204, 'DESACTIVO', 6),
(205, 'DESACTIVO', 7),
(206, 'DESACTIVO', 8),
(207, 'DESACTIVO', 9),
(208, 'DESACTIVO', 10),
(209, 'DESACTIVO', 11),
(210, 'DESACTIVO', 12),
(211, 'DESACTIVO', 13),
(212, 'DESACTIVO', 14),
(213, 'DESACTIVO', 15),
(214, 'DESACTIVO', 16),
(215, 'DESACTIVO', 17),
(216, 'DESACTIVO', 18),
(217, 'ACTIVO', 1),
(218, 'ACTIVO', 2),
(219, 'ACTIVO', 3),
(220, 'ACTIVO', 4),
(221, 'ACTIVO', 5),
(222, 'ACTIVO', 6),
(223, 'ACTIVO', 7),
(224, 'ACTIVO', 8),
(225, 'ACTIVO', 9),
(226, 'ACTIVO', 10),
(227, 'ACTIVO', 11),
(228, 'ACTIVO', 12),
(229, 'ACTIVO', 13),
(230, 'ACTIVO', 14),
(231, 'ACTIVO', 15),
(232, 'ACTIVO', 16),
(233, 'ACTIVO', 17),
(234, 'ACTIVO', 18),
(235, 'DESACTIVO', 1),
(236, 'DESACTIVO', 2),
(237, 'DESACTIVO', 3),
(238, 'DESACTIVO', 4),
(239, 'DESACTIVO', 5),
(240, 'DESACTIVO', 6),
(241, 'DESACTIVO', 7),
(242, 'DESACTIVO', 8),
(243, 'DESACTIVO', 9),
(244, 'DESACTIVO', 10),
(245, 'DESACTIVO', 11),
(246, 'DESACTIVO', 12),
(247, 'DESACTIVO', 13),
(248, 'DESACTIVO', 14),
(249, 'DESACTIVO', 15),
(250, 'DESACTIVO', 16),
(251, 'DESACTIVO', 17),
(252, 'DESACTIVO', 18),
(253, 'ACTIVO', 1),
(254, 'ACTIVO', 2),
(255, 'ACTIVO', 3),
(256, 'ACTIVO', 4),
(257, 'ACTIVO', 5),
(258, 'ACTIVO', 6),
(259, 'ACTIVO', 7),
(260, 'ACTIVO', 8),
(261, 'ACTIVO', 9),
(262, 'ACTIVO', 10),
(263, 'ACTIVO', 11),
(264, 'ACTIVO', 12),
(265, 'ACTIVO', 13),
(266, 'ACTIVO', 14),
(267, 'ACTIVO', 15),
(268, 'ACTIVO', 16),
(269, 'ACTIVO', 17),
(270, 'ACTIVO', 18),
(271, 'DESACTIVO', 1),
(272, 'DESACTIVO', 2),
(273, 'DESACTIVO', 3),
(274, 'DESACTIVO', 4),
(275, 'DESACTIVO', 5),
(276, 'DESACTIVO', 6),
(277, 'DESACTIVO', 7),
(278, 'DESACTIVO', 8),
(279, 'DESACTIVO', 9),
(280, 'DESACTIVO', 10),
(281, 'DESACTIVO', 11),
(282, 'DESACTIVO', 12),
(283, 'DESACTIVO', 13),
(284, 'DESACTIVO', 14),
(285, 'DESACTIVO', 15),
(286, 'DESACTIVO', 16),
(287, 'DESACTIVO', 17),
(288, 'DESACTIVO', 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `Id_Factura` int(10) NOT NULL COMMENT 'Id Factura',
  `Id_Pedido` int(10) NOT NULL COMMENT 'Id Pedido',
  `Fecha_Factura` date NOT NULL COMMENT 'Fecha de Factura',
  `Fecha_Vencimiento` date NOT NULL COMMENT 'Fecha de Vencimiento',
  `Valor_Envio` double NOT NULL COMMENT 'Valor de envio',
  `Valor_Total` double NOT NULL COMMENT 'Valor Total',
  `Id_EstadodeFactura` int(3) NOT NULL COMMENT 'Id Estado de Factura'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`Id_Factura`, `Id_Pedido`, `Fecha_Factura`, `Fecha_Vencimiento`, `Valor_Envio`, `Valor_Total`, `Id_EstadodeFactura`) VALUES
(1, 1, '2021-06-15', '2021-06-30', 2500, 29500, 1),
(2, 1, '2021-06-15', '2021-06-30', 2500, 29500, 1),
(3, 1, '2021-06-15', '2021-06-30', 2500, 29500, 1),
(4, 2, '2021-06-15', '2021-06-30', 2500, 29500, 1),
(5, 2, '2021-06-15', '2021-06-30', 2500, 29500, 1),
(6, 2, '2021-06-15', '2021-06-30', 2500, 29500, 1),
(7, 2, '2021-06-15', '2021-06-30', 2500, 29500, 1),
(8, 3, '2021-06-15', '2021-06-30', 2500, 29500, 1),
(9, 4, '2021-06-15', '2021-06-30', 2500, 29500, 1),
(10, 4, '2021-06-15', '2021-06-30', 2500, 29500, 1),
(11, 5, '2021-06-15', '2021-06-30', 2500, 29500, 1),
(12, 5, '2021-06-15', '2021-06-30', 2500, 29500, 1),
(13, 5, '2021-06-16', '2021-06-30', 2500, 29500, 1),
(14, 5, '2021-06-16', '2021-06-30', 2500, 29500, 1),
(15, 5, '2021-06-16', '2021-06-30', 2500, 29500, 1),
(16, 5, '2021-06-16', '2021-06-30', 2500, 29500, 1),
(17, 6, '2021-06-16', '2021-06-30', 2500, 29500, 1),
(18, 6, '2021-06-16', '2021-06-30', 2500, 29500, 1),
(19, 6, '2021-06-16', '2021-06-30', 2500, 29500, 1),
(20, 7, '2021-06-16', '2021-06-30', 2500, 29500, 1),
(21, 8, '2021-06-16', '2021-06-30', 2500, 29500, 1),
(22, 8, '2021-06-16', '2021-06-30', 2500, 29500, 1),
(23, 9, '2021-06-16', '2021-06-30', 2500, 29500, 1),
(24, 9, '2021-06-17', '2021-06-30', 2500, 29500, 1),
(25, 9, '2021-06-17', '2021-06-30', 2500, 29500, 1),
(26, 10, '2021-06-17', '2021-06-30', 2500, 57500, 1),
(27, 10, '2021-06-17', '2021-06-30', 2500, 57500, 1),
(28, 11, '2021-06-17', '2021-06-30', 2500, 57500, 1),
(29, 11, '2021-06-17', '2021-06-30', 2500, 57500, 1),
(30, 11, '2021-06-17', '2021-06-30', 2500, 57500, 1),
(31, 12, '2021-06-17', '2021-06-30', 2500, 57500, 1),
(32, 12, '2021-06-17', '2021-06-30', 2500, 57500, 1),
(33, 12, '2021-06-17', '2021-06-30', 2500, 57500, 1),
(34, 12, '2021-06-17', '2021-06-30', 2500, 57500, 1),
(35, 13, '2021-06-17', '2021-06-30', 2500, 57500, 1),
(36, 13, '2021-06-18', '2021-06-30', 2500, 57500, 1),
(37, 13, '2021-06-18', '2021-06-30', 2500, 57500, 1),
(38, 14, '2021-06-18', '2021-06-30', 2500, 57500, 1),
(39, 15, '2021-06-18', '2021-06-30', 2500, 57500, 1),
(40, 16, '2021-06-18', '2021-06-30', 2500, 57500, 1),
(41, 1, '2021-06-18', '2021-06-30', 2500, 57500, 1),
(42, 1, '2021-06-18', '2021-06-30', 2500, 57500, 1),
(43, 1, '2021-06-18', '2021-06-30', 2500, 57500, 1),
(44, 2, '2021-06-18', '2021-06-30', 2500, 57500, 1),
(45, 2, '2021-06-18', '2021-06-30', 2500, 57500, 1),
(46, 2, '2021-06-18', '2021-06-30', 2500, 57500, 1),
(47, 2, '2021-06-18', '2021-06-30', 2500, 57500, 1),
(48, 3, '2021-06-18', '2021-06-30', 2500, 57500, 1),
(49, 4, '2021-06-19', '2021-06-30', 2500, 57500, 1),
(50, 4, '2021-06-19', '2021-06-30', 2500, 57500, 1),
(51, 5, '2021-06-19', '2021-06-30', 2500, 57500, 1),
(52, 5, '2021-06-19', '2021-06-30', 2500, 57500, 1),
(53, 5, '2021-06-19', '2021-06-30', 2500, 57500, 1),
(54, 5, '2021-06-19', '2021-06-30', 2500, 57500, 1),
(55, 5, '2021-06-19', '2021-06-30', 2500, 57500, 1),
(56, 5, '2021-06-19', '2021-06-30', 2500, 57500, 1),
(57, 6, '2021-06-19', '2021-06-30', 2500, 57500, 1),
(58, 6, '2021-06-19', '2021-06-30', 2500, 57500, 1),
(59, 6, '2021-06-19', '2021-06-30', 2500, 57500, 1),
(60, 7, '2021-06-19', '2021-06-30', 2500, 57500, 1),
(61, 8, '2021-06-19', '2021-06-30', 2500, 57500, 1),
(62, 8, '2021-06-19', '2021-06-30', 2500, 57500, 1),
(63, 9, '2021-06-20', '2021-06-30', 2500, 57500, 1),
(64, 9, '2021-06-20', '2021-06-30', 2500, 57500, 1),
(65, 9, '2021-06-20', '2021-06-30', 2500, 57500, 1),
(66, 10, '2021-06-20', '2021-06-30', 2500, 57500, 1),
(67, 10, '2021-06-20', '2021-06-30', 2500, 57500, 1),
(68, 11, '2021-06-20', '2021-06-30', 2500, 57500, 1),
(69, 11, '2021-06-20', '2021-06-30', 2500, 57500, 1),
(70, 11, '2021-06-20', '2021-06-30', 2500, 57500, 1),
(71, 12, '2021-06-20', '2021-06-30', 2500, 57500, 1),
(72, 12, '2021-06-20', '2021-06-30', 2500, 57500, 1),
(73, 12, '2021-06-20', '2021-06-30', 2500, 57500, 1),
(74, 12, '2021-06-20', '2021-06-30', 2500, 57500, 1),
(75, 13, '2021-06-20', '2021-06-30', 2500, 57500, 1),
(76, 13, '2021-06-21', '2021-07-15', 2500, 57500, 1),
(77, 13, '2021-06-21', '2021-07-15', 2500, 57500, 1),
(78, 14, '2021-06-21', '2021-07-15', 2500, 57500, 1),
(79, 15, '2021-06-21', '2021-07-15', 2500, 57500, 1),
(80, 16, '2021-06-21', '2021-07-15', 2500, 57500, 1),
(81, 1, '2021-06-21', '2021-07-15', 2500, 57500, 1),
(82, 1, '2021-06-21', '2021-07-15', 2500, 57500, 1),
(83, 1, '2021-06-21', '2021-07-15', 2500, 57500, 1),
(84, 2, '2021-06-21', '2021-07-15', 2500, 57500, 1),
(85, 2, '2021-06-21', '2021-07-15', 2500, 57500, 1),
(86, 2, '2021-06-21', '2021-07-15', 2500, 57500, 1),
(87, 2, '2021-06-21', '2021-07-15', 2500, 57500, 1),
(88, 3, '2021-06-21', '2021-07-15', 2500, 57500, 1),
(89, 4, '2021-06-21', '2021-07-15', 2500, 57500, 1),
(90, 4, '2021-06-21', '2021-07-15', 2500, 57500, 1),
(91, 5, '2021-06-21', '2021-07-15', 2500, 57500, 1),
(92, 5, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(93, 5, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(94, 5, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(95, 5, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(96, 5, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(97, 6, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(98, 6, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(99, 6, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(100, 7, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(101, 8, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(102, 8, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(103, 9, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(104, 9, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(105, 9, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(106, 10, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(107, 10, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(108, 11, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(109, 11, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(110, 11, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(111, 12, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(112, 12, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(113, 12, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(114, 12, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(115, 13, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(116, 13, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(117, 13, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(118, 14, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(119, 15, '2021-06-22', '2021-07-15', 2500, 57500, 1),
(120, 16, '2021-06-22', '2021-07-15', 2500, 57500, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id_pais` int(4) NOT NULL COMMENT 'id pais',
  `nombre_pais` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id_pais`, `nombre_pais`) VALUES
(57, 'COLOMBIA'),
(58, 'VENEZUELA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidosdecompra`
--

CREATE TABLE `pedidosdecompra` (
  `id_pedido_compra` int(10) NOT NULL COMMENT 'Id Pedido de Compra',
  `id_proveedor` varchar(10) NOT NULL,
  `id_usuario` int(10) NOT NULL,
  `fecha_pedido` date NOT NULL,
  `fecha_recibido` date NOT NULL,
  `Valor_total_compra` double NOT NULL,
  `id_estado` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedidosdecompra`
--

INSERT INTO `pedidosdecompra` (`id_pedido_compra`, `id_proveedor`, `id_usuario`, `fecha_pedido`, `fecha_recibido`, `Valor_total_compra`, `id_estado`) VALUES
(1, '800017218', 1, '2021-06-15', '2021-06-20', 75000, 1),
(2, '2', 2, '2021-06-15', '2021-06-21', 86000, 1),
(3, '3', 3, '2021-06-15', '2021-06-22', 93000, 1),
(4, '4', 1, '2021-06-16', '2021-06-23', 75000, 1),
(5, '5', 2, '2021-06-16', '2021-06-24', 86000, 1),
(6, '6', 3, '2021-06-16', '2021-06-25', 93000, 1),
(7, '1', 1, '2021-06-15', '2021-06-20', 75000, 1),
(8, '2', 2, '2021-06-15', '2021-06-21', 86000, 1),
(9, '3', 3, '2021-06-15', '2021-06-22', 93000, 1),
(10, '4', 1, '2021-06-16', '2021-06-23', 75000, 1),
(11, '5', 2, '2021-06-16', '2021-06-24', 86000, 1),
(12, '6', 3, '2021-06-16', '2021-06-25', 93000, 1),
(13, '1', 1, '2021-06-15', '2021-06-20', 75000, 1),
(14, '2', 2, '2021-06-15', '2021-06-21', 86000, 1),
(15, '3', 3, '2021-06-15', '2021-06-22', 93000, 1),
(16, '4', 1, '2021-06-16', '2021-06-23', 75000, 1),
(17, '5', 2, '2021-06-16', '2021-06-24', 86000, 1),
(18, '6', 3, '2021-06-16', '2021-06-25', 93000, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidosxcliente`
--

CREATE TABLE `pedidosxcliente` (
  `Id_Pedido` int(10) NOT NULL COMMENT 'Id Pedido Autonumerico (10)',
  `Id_Usuario` int(10) NOT NULL COMMENT 'Id Usuario (10)',
  `Id_Cliente` int(10) NOT NULL COMMENT 'Id Cliente (10)',
  `Fecha_Pedido` date NOT NULL COMMENT 'Fecha de Pedido',
  `Fecha_Envio` date NOT NULL COMMENT 'Fecha de Envio',
  `Id_Estado_Pedido` int(3) NOT NULL COMMENT 'Id Estado de Pedido'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Entidad de pedidos de cliente';

--
-- Volcado de datos para la tabla `pedidosxcliente`
--

INSERT INTO `pedidosxcliente` (`Id_Pedido`, `Id_Usuario`, `Id_Cliente`, `Fecha_Pedido`, `Fecha_Envio`, `Id_Estado_Pedido`) VALUES
(1, 1, 1, '2021-06-15', '2021-06-20', 1),
(2, 2, 2, '2021-06-15', '2021-06-21', 1),
(3, 3, 3, '2021-06-15', '2021-06-22', 1),
(4, 4, 1, '2021-06-16', '2021-06-23', 1),
(5, 3, 2, '2021-06-16', '2021-06-24', 1),
(6, 4, 3, '2021-06-16', '2021-06-25', 1),
(7, 1, 1, '2021-06-15', '2021-06-20', 1),
(8, 2, 2, '2021-06-15', '2021-06-21', 1),
(9, 3, 3, '2021-06-15', '2021-06-22', 1),
(10, 4, 1, '2021-06-16', '2021-06-23', 1),
(11, 3, 2, '2021-06-16', '2021-06-24', 1),
(12, 4, 3, '2021-06-16', '2021-06-25', 1),
(13, 1, 1, '2021-06-15', '2021-06-20', 1),
(14, 2, 2, '2021-06-15', '2021-06-21', 1),
(15, 3, 3, '2021-06-15', '2021-06-22', 1),
(16, 4, 1, '2021-06-16', '2021-06-23', 1),
(17, 3, 2, '2021-06-16', '2021-06-24', 1),
(18, 4, 3, '2021-06-16', '2021-06-25', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfilrol`
--

CREATE TABLE `perfilrol` (
  `id_perfil` int(10) NOT NULL,
  `Descripcion_Perfil` varchar(40) NOT NULL,
  `id_Dashboard` int(4) NOT NULL,
  `Estado_perfil` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `perfilrol`
--

INSERT INTO `perfilrol` (`id_perfil`, `Descripcion_Perfil`, `id_Dashboard`, `Estado_perfil`) VALUES
(1, 'ADMINISTRADOR', 1, 1),
(2, 'VENDEDOR', 2, 1),
(3, 'INVENTARIOS', 3, 1),
(4, 'CLIENTE', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(10) NOT NULL,
  `codigo_producto` varchar(50) NOT NULL,
  `nombre_producto` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `img` varchar(200) NOT NULL,
  `precio_compra` double NOT NULL,
  `precio_venta` double NOT NULL,
  `porcentaje_utilidad` float NOT NULL,
  `saldo_cantidad` int(10) NOT NULL,
  `id_estadoproducto` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `codigo_producto`, `nombre_producto`, `descripcion`, `categoria`, `img`, `precio_compra`, `precio_venta`, `porcentaje_utilidad`, `saldo_cantidad`, `id_estadoproducto`) VALUES
(1,"101","Uniforme","Uniforme Italia","hombre","../img/uniformes/uniforme-italia.jpg",45000.0,50000.0,0.111111,5,1),
(2,"102","Sudadera","Sudadera Barcelona","hombre","../img/sudaderas/equipos/sudadera-barcelona.jpeg",27000.0,32000.0,0.185185,6,1),
(3,"203","Camiseta","Camiseta Abercrombie","hombre","../img/camisetas/camiseta-abercrombie.jpg",55000.0,60000.0,0.0909091,7,1),
(4,"204","Pantaloneta","Pantaloneta Calvin Klein","hombre","../img/pantalonetas/pantalonetas-ck.jpg",36000.0,41000.0,0.138889,8,1),
(5,"305","Jogger","Jogger Reebok","hombre","../img/joggers/jogger-reebok.jpg",25000.0,30000.0,0.2,9,1),
(6,"306","Uniforme","Uniforme Brasil","hombre","../img/uniformes/uniforme-brasil.jpg",18000.0,23000.0,0.277778,4,1),
(7,"307","Sudadera","Sudadera Nike Dama","mujer","../img/sudaderas/NoEquipos/sudadera-nike-dama.jpg",49000.0,54000.0,0.102041,3,1),
(8,"408","Sudadera","Sudadera Chanel Dama","mujer","../img/sudaderas/NoEquipos/sudadera-chanel-dama.jpg",53000.0,58000.0,0.0943396,6,1),
(9,"409","Sudadera","Sudadera Borussia Dortmund","hombre","../img/sudaderas/equipos/sudadera-bd.jpg",51000.0,56000.0,0.0980392,6,1),
(10,"410","Sudadera","Sudadera Roma","hombre","../img/sudaderas/equipos/sudadera-roma.jpg",51500.0,58000.0,0.0990392,6,1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_provCedula` varchar(10) NOT NULL COMMENT 'id proveedor cedula o nit',
  `dig_verificacionp` varchar(1) NOT NULL,
  `nombre_proveedor` varchar(60) NOT NULL,
  `razon_social` varchar(60) NOT NULL,
  `email_proveedor` varchar(40) NOT NULL,
  `direccion_prov` varchar(60) NOT NULL,
  `tel_proveedor` varchar(15) NOT NULL,
  `Fecha_inicio` date NOT NULL,
  `id_codigo_postal` int(10) NOT NULL,
  `paginaweb` varchar(60) NOT NULL,
  `id_estadoprov` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_provCedula`, `dig_verificacionp`, `nombre_proveedor`, `razon_social`, `email_proveedor`, `direccion_prov`, `tel_proveedor`, `Fecha_inicio`, `id_codigo_postal`, `paginaweb`, `id_estadoprov`) VALUES
('1', '2', 'MAPFRE', 'MAPFRE', 'info@mapfre.com', 'CALLE 81 SUR #8-20', '3108332319', '2021-01-15', 2, 'www.mapfre.com', 1),
('2', '2', 'MAPFRE', 'MAPFRE', 'info@mapfre.com', 'CALLE 81 SUR #8-20', '3108332319', '2021-01-15', 2, 'www.mapfre.com', 1),
('3', '2', 'MAPFRE', 'MAPFRE', 'info@mapfre.com', 'CALLE 81 SUR #8-20', '3108332319', '2021-01-15', 2, 'www.mapfre.com', 1),
('4', '2', 'MAPFRE', 'MAPFRE', 'info@mapfre.com', 'CALLE 81 SUR #8-20', '3108332319', '2021-01-15', 2, 'www.mapfre.com', 1),
('5', '2', 'MAPFRE', 'MAPFRE', 'info@mapfre.com', 'CALLE 81 SUR #8-20', '3108332319', '2021-01-15', 2, 'www.mapfre.com', 1),
('6', '2', 'MAPFRE', 'MAPFRE', 'info@mapfre.com', 'CALLE 81 SUR #8-20', '3108332319', '2021-01-15', 2, 'www.mapfre.com', 1),
('800017218', '1', 'RTA. ', 'RTA. ', 'info@rta. com', 'CALLE 81 SUR #8-20', '3138332319', '2021-01-15', 1, 'www.rta. com', 1),
('800021891', '2', 'MAPFRE', 'MAPFRE', 'info@mapfre.com', 'CALLE 81 SUR #8-20', '3108332319', '2021-01-15', 2, 'www.mapfre.com', 1),
('800098835', '3', 'HDI', 'HDI', 'info@hdi.com', 'AV.19 # 120-71 EDIF.TORRE BANCO FALABELLA OF.101', '3008332319', '2021-01-15', 3, 'www.hdi.com', 1),
('800223206', '4', 'LIBERTY', 'LIBERTY', 'info@liberty.com', 'CARRERA 21#23-22 SUR', '3138332319', '2021-02-01', 4, 'www.liberty.com', 1),
('830044563', '5', 'SBS', 'SBS', 'info@sbs.com', 'AV.19 # 120-71 EDIF.TORRE BANCO FALABELLA OF.102', '3108332319', '2021-02-01', 5, 'www.sbs.com', 1),
('830061421', '6', 'MUNDIAL', 'MUNDIAL', 'info@mundial.com', 'CALLE 50 # 8-36 5to.PISO EDIF.ESPECIALIDADES MARLY', '3008332319', '2021-02-01', 6, 'www.mundial.com', 1),
('830113849', '7', 'ESTADO', 'ESTADO', 'info@estado.com', 'CALLE 50 # 7-36 5to.PISO EDIF.ESPECIALIDADES MARLY', '3138332319', '2021-02-01', 7, 'www.estado.com', 1),
('830120157', '8', 'JMALUCELLI', 'JMALUCELLI', 'info@jmalucelli.com', 'CALLE 50 # 6-36 5to.PISO EDIF.ESPECIALIDADES MARLY', '3108332319', '2021-03-01', 8, 'www.jmalucelli.com', 1),
('830126960', '8', 'EQUIDAD', 'EQUIDAD', 'info@equidad.com', 'KR 14 NO. 98-95 CONS 313', '3008332319', '2021-03-01', 9, 'www.equidad.com', 1),
('830506618', '2', 'PREVISORA', 'PREVISORA', 'info@previsora.com', 'KR 14 NO. 98-95 CONS 313', '3108332319', '2021-03-01', 11, 'www.previsora.com', 1),
('830507718', '9', 'NACIONAL DE SEGUROS', 'NACIONAL DE SEGUROS', 'info@nacionaldeseguros.com', 'CRA 16 A 86 A 64 APTO 203', '3138332319', '2021-03-01', 10, 'www.nacionaldeseguros.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipotransaccion`
--

CREATE TABLE `tipotransaccion` (
  `Id_Tipo_Transaccion` int(10) NOT NULL COMMENT 'Id Tipo Transaccion',
  `Descripcion_Transaccion` varchar(50) NOT NULL COMMENT 'Descripcion de Transaccion',
  `Operador` varchar(1) NOT NULL COMMENT '+=Suma -=Resta',
  `Id_EstadoTransaccion` int(3) NOT NULL COMMENT 'Id Estado de Transaccion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipotransaccion`
--

INSERT INTO `tipotransaccion` (`Id_Tipo_Transaccion`, `Descripcion_Transaccion`, `Operador`, `Id_EstadoTransaccion`) VALUES
(1, 'INGRESO', '+', 1),
(2, 'SALIDA', '-', 1),
(3, 'DEVOLUCION', '-', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transacciondeinv`
--

CREATE TABLE `transacciondeinv` (
  `Id_Transaccion` int(10) NOT NULL COMMENT 'Id Transaccion',
  `Id_Tipo_Transaccion` int(2) NOT NULL COMMENT 'Id Tipo Transaccion',
  `Fecha_Creacion` date NOT NULL COMMENT 'Fecha de Creacion',
  `Fecha_Modificacion` date NOT NULL COMMENT 'Fecha de Modificacion',
  `Id_Producto` int(10) NOT NULL COMMENT 'Id Producto',
  `Cantidad` int(10) NOT NULL COMMENT 'Cantidad de producto',
  `Id_Usuario` int(10) NOT NULL COMMENT 'Id Usuario '
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `transacciondeinv`
--

INSERT INTO `transacciondeinv` (`Id_Transaccion`, `Id_Tipo_Transaccion`, `Fecha_Creacion`, `Fecha_Modificacion`, `Id_Producto`, `Cantidad`, `Id_Usuario`) VALUES
(1, 1, '2021-06-15', '2021-06-20', 1, 10, 2),
(2, 1, '2021-06-15', '2021-06-20', 2, 5, 2),
(3, 1, '2021-06-15', '2021-06-22', 3, 12, 2),
(4, 1, '2021-06-16', '2021-06-23', 4, 12, 2),
(5, 2, '2021-06-16', '2021-06-24', 5, 2, 2),
(6, 2, '2021-06-16', '2021-06-25', 6, 1, 2),
(7, 3, '2021-06-15', '2021-06-20', 7, 1, 2),
(8, 2, '2021-06-15', '2021-06-21', 8, 4, 2),
(9, 1, '2021-06-15', '2021-06-22', 9, 20, 2),
(10, 1, '2021-06-16', '2021-06-23', 1, 12, 2),
(11, 2, '2021-06-16', '2021-06-24', 2, 3, 2),
(12, 3, '2021-06-16', '2021-06-25', 3, 1, 2),
(13, 2, '2021-06-15', '2021-06-20', 4, 4, 2),
(14, 1, '2021-06-15', '2021-06-21', 5, 6, 2),
(15, 1, '2021-06-15', '2021-06-22', 6, 12, 2),
(16, 1, '2021-06-16', '2021-06-23', 7, 10, 2),
(17, 2, '2021-06-16', '2021-06-24', 8, 2, 2),
(18, 2, '2021-06-16', '2021-06-25', 9, 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(10) NOT NULL COMMENT 'id Usuario',
  `email_usuario` varchar(100) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `clave_usuario` varchar(120) NOT NULL,
  `id_perfilusr` int(10) NOT NULL,
  `bloqueo_usuario` tinyint(1) NOT NULL,
  `estado_usuario` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `email_usuario`, `nombre_usuario`, `clave_usuario`, `id_perfilusr`, `bloqueo_usuario`, `estado_usuario`) VALUES
(1, 'administrador@megasport.com.co', 'ADMINISTRADOR', '827ccb0eea8a706c4c34a16891f84e7b', 1, 0, 1),
(2, 'ventas@megasport.com.co', 'VENTAS', '827ccb0eea8a706c4c34a16891f84e7b', 2, 0, 1),
(3, 'inventarios@megasport.com.co', 'INVENTARIOS', '827ccb0eea8a706c4c34a16891f84e7b', 3, 0, 1),
(4, 'cliente1@megasport.com.co', 'CLIENTE 1', '827ccb0eea8a706c4c34a16891f84e7b', 4, 0, 1),
(5, 'cliente5@megasport.com.co', 'CLIENTE 5', '827ccb0eea8a706c4c34a16891f84e7b', 4, 0, 1),
(6, 'cliente6@megasport.com.co', 'CLIENTE 6', '827ccb0eea8a706c4c34a16891f84e7b', 4, 0, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id_ciudad`),
  ADD KEY `id_pais` (`id_pais`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Id_Cliente`),
  ADD KEY `Id_Codigo_Postal` (`Id_Codigo_Postal`);

--
-- Indices de la tabla `codigopostal`
--
ALTER TABLE `codigopostal`
  ADD PRIMARY KEY (`id_postal`),
  ADD KEY `id_ciudad` (`id_ciudad`,`id_pais`),
  ADD KEY `id_pais` (`id_pais`);

--
-- Indices de la tabla `dashboardxusr`
--
ALTER TABLE `dashboardxusr`
  ADD PRIMARY KEY (`id_dashboard`),
  ADD KEY `id_estado` (`id_estado`);

--
-- Indices de la tabla `detallepedxcli`
--
ALTER TABLE `detallepedxcli`
  ADD PRIMARY KEY (`Id_Detalle_Pedido`),
  ADD KEY `Id_Pedido` (`Id_Pedido`,`Id_Producto`,`id_Estado_DetPed`),
  ADD KEY `Id_Producto` (`Id_Producto`),
  ADD KEY `id_Estado_DetPed` (`id_Estado_DetPed`);

--
-- Indices de la tabla `detallepedxcomp`
--
ALTER TABLE `detallepedxcomp`
  ADD PRIMARY KEY (`id_detalle_ped_comp`),
  ADD KEY `id_pedido_compra` (`id_pedido_compra`,`id_producto`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `entidad`
--
ALTER TABLE `entidad`
  ADD PRIMARY KEY (`id_entidad`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id_estado`),
  ADD KEY `id_entidad` (`id_entidad`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`Id_Factura`),
  ADD KEY `Id_Pedido` (`Id_Pedido`,`Id_EstadodeFactura`),
  ADD KEY `Id_EstadodeFactura` (`Id_EstadodeFactura`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id_pais`);

--
-- Indices de la tabla `pedidosdecompra`
--
ALTER TABLE `pedidosdecompra`
  ADD PRIMARY KEY (`id_pedido_compra`),
  ADD KEY `id_proveedor` (`id_proveedor`,`id_usuario`,`id_estado`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_estado` (`id_estado`);

--
-- Indices de la tabla `pedidosxcliente`
--
ALTER TABLE `pedidosxcliente`
  ADD PRIMARY KEY (`Id_Pedido`),
  ADD KEY `Id_Usuario` (`Id_Usuario`,`Id_Cliente`,`Id_Estado_Pedido`),
  ADD KEY `Id_Cliente` (`Id_Cliente`),
  ADD KEY `Id_Estado_Pedido` (`Id_Estado_Pedido`);

--
-- Indices de la tabla `perfilrol`
--
ALTER TABLE `perfilrol`
  ADD PRIMARY KEY (`id_perfil`),
  ADD KEY `Estado_perfil` (`Estado_perfil`),
  ADD KEY `id_Dashboard` (`id_Dashboard`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_estadoproducto` (`id_estadoproducto`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_provCedula`),
  ADD KEY `id_codigo_postal` (`id_codigo_postal`,`id_estadoprov`),
  ADD KEY `id_estadoprov` (`id_estadoprov`);

--
-- Indices de la tabla `tipotransaccion`
--
ALTER TABLE `tipotransaccion`
  ADD PRIMARY KEY (`Id_Tipo_Transaccion`),
  ADD KEY `Id_EstadoTransaccion` (`Id_EstadoTransaccion`),
  ADD KEY `Id_EstadoTransaccion_2` (`Id_EstadoTransaccion`);

--
-- Indices de la tabla `transacciondeinv`
--
ALTER TABLE `transacciondeinv`
  ADD PRIMARY KEY (`Id_Transaccion`),
  ADD KEY `Id_Tipo_Transaccion` (`Id_Tipo_Transaccion`,`Id_Producto`,`Id_Usuario`),
  ADD KEY `Id_Producto` (`Id_Producto`),
  ADD KEY `Id_Usuario` (`Id_Usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_perfilusr` (`id_perfilusr`),
  ADD KEY `estado_usuario` (`estado_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id_ciudad` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `Id_Cliente` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Id Cliente', AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `dashboardxusr`
--
ALTER TABLE `dashboardxusr`
  MODIFY `id_dashboard` int(4) NOT NULL AUTO_INCREMENT COMMENT 'id de dash board', AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `detallepedxcli`
--
ALTER TABLE `detallepedxcli`
  MODIFY `Id_Detalle_Pedido` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Id detalle de pedido Autonumerico (10)', AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `detallepedxcomp`
--
ALTER TABLE `detallepedxcomp`
  MODIFY `id_detalle_ped_comp` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id detalle pedido por compra', AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `entidad`
--
ALTER TABLE `entidad`
  MODIFY `id_entidad` int(3) NOT NULL AUTO_INCREMENT COMMENT 'id de entidad', AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id_estado` int(3) NOT NULL AUTO_INCREMENT COMMENT 'Id de estado', AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `Id_Factura` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Id Factura', AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de la tabla `pedidosdecompra`
--
ALTER TABLE `pedidosdecompra`
  MODIFY `id_pedido_compra` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Id Pedido de Compra', AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `pedidosxcliente`
--
ALTER TABLE `pedidosxcliente`
  MODIFY `Id_Pedido` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Id Pedido Autonumerico (10)', AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `tipotransaccion`
--
ALTER TABLE `tipotransaccion`
  MODIFY `Id_Tipo_Transaccion` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Id Tipo Transaccion', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `transacciondeinv`
--
ALTER TABLE `transacciondeinv`
  MODIFY `Id_Transaccion` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Id Transaccion', AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id Usuario', AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`Id_Codigo_Postal`) REFERENCES `codigopostal` (`id_postal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `codigopostal`
--
ALTER TABLE `codigopostal`
  ADD CONSTRAINT `codigopostal_ibfk_1` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id_ciudad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `codigopostal_ibfk_2` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `dashboardxusr`
--
ALTER TABLE `dashboardxusr`
  ADD CONSTRAINT `dashboardxusr_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detallepedxcli`
--
ALTER TABLE `detallepedxcli`
  ADD CONSTRAINT `detallepedxcli_ibfk_1` FOREIGN KEY (`Id_Pedido`) REFERENCES `pedidosxcliente` (`Id_Pedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detallepedxcli_ibfk_2` FOREIGN KEY (`Id_Producto`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detallepedxcli_ibfk_3` FOREIGN KEY (`id_Estado_DetPed`) REFERENCES `estado` (`id_estado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detallepedxcomp`
--
ALTER TABLE `detallepedxcomp`
  ADD CONSTRAINT `detallepedxcomp_ibfk_1` FOREIGN KEY (`id_pedido_compra`) REFERENCES `pedidosdecompra` (`id_pedido_compra`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detallepedxcomp_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estado`
--
ALTER TABLE `estado`
  ADD CONSTRAINT `estado_ibfk_1` FOREIGN KEY (`id_entidad`) REFERENCES `entidad` (`id_entidad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`Id_Pedido`) REFERENCES `pedidosxcliente` (`Id_Pedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`Id_EstadodeFactura`) REFERENCES `estado` (`id_estado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedidosdecompra`
--
ALTER TABLE `pedidosdecompra`
  ADD CONSTRAINT `pedidosdecompra_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedidosdecompra_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_provCedula`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedidosdecompra_ibfk_3` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedidosxcliente`
--
ALTER TABLE `pedidosxcliente`
  ADD CONSTRAINT `pedidosxcliente_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedidosxcliente_ibfk_2` FOREIGN KEY (`Id_Cliente`) REFERENCES `cliente` (`Id_Cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedidosxcliente_ibfk_3` FOREIGN KEY (`Id_Estado_Pedido`) REFERENCES `estado` (`id_estado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `perfilrol`
--
ALTER TABLE `perfilrol`
  ADD CONSTRAINT `perfilrol_ibfk_1` FOREIGN KEY (`id_Dashboard`) REFERENCES `dashboardxusr` (`id_dashboard`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `perfilrol_ibfk_2` FOREIGN KEY (`Estado_perfil`) REFERENCES `estado` (`id_estado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_estadoproducto`) REFERENCES `estado` (`id_estado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `proveedor_ibfk_1` FOREIGN KEY (`id_codigo_postal`) REFERENCES `codigopostal` (`id_postal`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `proveedor_ibfk_2` FOREIGN KEY (`id_estadoprov`) REFERENCES `estado` (`id_estado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tipotransaccion`
--
ALTER TABLE `tipotransaccion`
  ADD CONSTRAINT `tipotransaccion_ibfk_1` FOREIGN KEY (`Id_EstadoTransaccion`) REFERENCES `estado` (`id_estado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `transacciondeinv`
--
ALTER TABLE `transacciondeinv`
  ADD CONSTRAINT `transacciondeinv_ibfk_1` FOREIGN KEY (`Id_Tipo_Transaccion`) REFERENCES `tipotransaccion` (`Id_Tipo_Transaccion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transacciondeinv_ibfk_2` FOREIGN KEY (`Id_Producto`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transacciondeinv_ibfk_3` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_perfilusr`) REFERENCES `perfilrol` (`id_perfil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`estado_usuario`) REFERENCES `estado` (`id_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
