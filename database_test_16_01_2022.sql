-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-01-2022 a las 07:40:02
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.1

--
-- Base de datos: `contex`
--
CREATE DATABASE IF NOT EXISTS `contex` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `contex`;

DELIMITER $$
--
-- Procedimientos
--
DROP PROCEDURE IF EXISTS `Agregar_cargo`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Agregar_cargo` (IN `descripcion` VARCHAR(50), IN `estado` ENUM('0','1'), IN `idUsuarioCreacion` INT(11), IN `idUsuarioModificacion` INT(11))  BEGIN
	INSERT INTO cargo(descripcion
					 ,estado
					 ,fecha_creacion
					 ,fecha_modificacion
					 ,id_usuario_creacion
					 ,id_usuario_modificacion
					 )
	VALUES (descripcion
			,estado
			,NOW()
			,NOW()
			,idUsuarioCreacion
			,idUsuarioModificacion
			);
END$$

DROP PROCEDURE IF EXISTS `Agregar_empleado`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Agregar_empleado` (IN `idCargo` INT(11), IN `correoInstitucional` VARCHAR(50), IN `fechaIngreso` DATE, IN `arl` VARCHAR(20), IN `salud` VARCHAR(20), IN `pension` VARCHAR(20), IN `idPersona` INT(11), IN `sueldoBasico` DOUBLE, IN `estado` ENUM('0','1'), IN `idUsuarioCreacion` INT(11), IN `idUsuarioModificacion` INT(11))  BEGIN
	INSERT INTO empleado(id_cargo
						,correo_institucional
						,fecha_ingreso
						,arl
						,salud
						,pension
						,id_persona
						,sueldo_basico
						,estado
						,fecha_creacion
						,fecha_modificacion
						,id_usuario_creacion
						,id_usuario_modificacion
						)
	VALUES(idCargo
			,correoInstitucional
			,fechaIngreso
			,arl
			,salud
			,pension
			,idPersona
			,sueldoBasico
			,estado
			,NOW()
			,NOW()
			,idUsuarioCreacion
			,idUsuarioModificacion
			);
END$$

DROP PROCEDURE IF EXISTS `Agregar_formulario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Agregar_formulario` (IN `descripcion` VARCHAR(50), IN `etiqueta` VARCHAR(30), IN `ubicacion` VARCHAR(100), IN `estado` ENUM('0','1'), IN `idUsuarioCreacion` INT(11), IN `idUsuarioModificacion` INT(11))  BEGIN
	INSERT INTO formulario(descripcion
							,etiqueta
							,ubicacion
							,estado
							,fecha_creacion
							,fecha_modificacion
							,id_usuario_creacion
							,id_usuario_modificacion
							) 
	VALUES (descripcion
			,etiqueta
			,ubicacion
			,estado
			,NOW()
			,NOW()
			,idUsuarioCreacion
			,idUsuarioModificacion
			);
END$$

DROP PROCEDURE IF EXISTS `Agregar_formulario_rol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Agregar_formulario_rol` (IN `idRol` INT(11), IN `idFormulario` INT(11), IN `estado` ENUM('0','1'), IN `idUsuarioCreacion` INT(11), IN `idUsuarioModificacion` INT(11))  BEGIN
	INSERT INTO formulario_rol(id_rol
								,id_formulario
								,estado
								,fecha_creacion
								,fecha_modificacion
								,id_usuario_creacion
								,id_usuario_modificacion
								) 
	VALUES (idRol
			,idFormulario
			,estado
			,NOW()
			,NOW()
			,idUsuarioCreacion
			,idUsuarioModificacion
			);
END$$

DROP PROCEDURE IF EXISTS `Agregar_persona`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Agregar_persona` (IN `nombre` VARCHAR(100), IN `apellido` VARCHAR(100), IN `tipoDocumento` SET('CC','TI','CE','PEP'), IN `documento` INT(11), IN `edad` INT(11), IN `genero` ENUM('M','F','O'), IN `estado` ENUM('0','1'), IN `idUsuarioCreacion` INT(11), IN `idUsuarioModificacion` INT(11))  BEGIN
INSERT INTO persona(nombre
					,apellido
					,tipo_documento
					,documento
					,edad
					,genero
					,estado
					,fecha_creacion
					,fecha_modificacion
					,id_usuario_creacion
					,id_usuario_modificacion
					) 
VALUES (nombre
		,apellido
		,tipoDocumento
		,documento
		,edad
		,genero
		,estado
		,NOW()
		,NOW()
		,idUsuarioCreacion
		,idUsuarioModificacion
		);	
END$$

DROP PROCEDURE IF EXISTS `Agregar_rol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Agregar_rol` (IN `descripcion` VARCHAR(50), IN `estado` ENUM('0','1'), IN `idUsuarioCreacion` INT(11), IN `idUsuarioModificacion` INT(11))  BEGIN
	INSERT INTO rol(descripcion
					,estado
					,fecha_creacion
					,fecha_modificacion
					,id_usuario_creacion
					,id_usuario_modificacion
					) 
	VALUES (descripcion
			,estado
			,NOW()
			,NOW()
			,idUsuarioCreacion
			,idUsuarioModificacion
			);
END$$

DROP PROCEDURE IF EXISTS `Agregar_usuario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Agregar_usuario` (IN `usuario` VARCHAR(50), IN `contrasenia` VARCHAR(50), IN `fechaActivacion` DATE, IN `fechaExpiracion` DATE, IN `idPersona` INT(11), IN `estado` ENUM('0','1'), IN `idUsuarioCreacion` INT(11), IN `idUsuarioModificacion` INT(11))  BEGIN
	INSERT INTO usuario(usuario
						,contrasenia
						,fecha_activacion
						,fecha_expiracion
						,id_persona
						,estado
						,fecha_creacion
						,fecha_modificacion
						,id_usuario_creacion
						,id_usuario_modificacion
						) 
	VALUES (usuario
			,contrasenia
			,fechaActivacion
			,fechaExpiracion
			,idPersona
			,estado
			,NOW()
			,NOW()
			,idUsuarioCreacion
			,idUsuarioModificacion
			);
END$$

DROP PROCEDURE IF EXISTS `Agregar_usuario_rol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Agregar_usuario_rol` (IN `idUsuario` INT(11), IN `idRol` INT(11), IN `estado` ENUM('0','1'), IN `idUsuarioCreacion` INT(11), IN `idUsuarioModificacion` INT(11))  BEGIN
	INSERT INTO usuario_rol(id_usuario
							,id_rol
							,estado
							,fecha_creacion
							,fecha_modificacion
							,id_usuario_creacion
							,id_usuario_modificacion
							) 
	VALUES (idUsuario
			,idRol
			,estado
			,NOW()
			,NOW()
			,idUsuarioCreacion
			,idUsuarioModificacion
			);
END$$

DROP PROCEDURE IF EXISTS `Modificar_cargo`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Modificar_cargo` (IN `descripcion` VARCHAR(50), IN `estado` ENUM('0','1'), IN `idUsuarioModificacion` INT(11), IN `idCargo` INT(11))  BEGIN
	UPDATE cargo 
	SET descripcion = descripcion
		,estado = estado
		,fecha_modificacion = NOW()
		,id_usuario_modificacion = idUsuarioModificacion 
	WHERE id_cargo = idCargo;
END$$

DROP PROCEDURE IF EXISTS `Modificar_empleado`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Modificar_empleado` (IN `idCargo` INT(11), IN `correoInstitucional` VARCHAR(50), IN `fechaIngreso` DATETIME, IN `arl` VARCHAR(20), IN `salud` VARCHAR(20), IN `pension` VARCHAR(20), IN `idPersona` INT(11), IN `sueldoBasico` DOUBLE, IN `estado` ENUM('0','1'), IN `idUsuarioModificacion` INT(11), IN `idEmpleado` INT(11))  BEGIN
	UPDATE empleado 
	SET id_cargo = idCargo
		,correo_institucional = correoInstitucional
		,fecha_ingreso = fechaIngreso
		,arl = arl
		,salud = salud
		,pension = pension
		,id_persona = idPersona
		,sueldo_basico = sueldoBasico
		,estado = estado
		,fecha_modificacion = NOW()
		,id_usuario_modificacion = idUsuarioModificacion 
	WHERE id_empleado = idEmpleado;
END$$

DROP PROCEDURE IF EXISTS `Modificar_formulario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Modificar_formulario` (IN `descripcion` VARCHAR(50), IN `etiqueta` VARCHAR(30), IN `ubicacion` VARCHAR(100), IN `estado` ENUM('0','1'), IN `idUsuarioModificacion` INT(11), IN `idFormulario` INT(11))  BEGIN
	UPDATE formulario 
    SET descripcion = descripcion
		,etiqueta = etiqueta
		,ubicacion = ubicacion
		,estado = estado
		,fecha_modificacion = NOW()
		,id_usuario_modificacion = idUsuarioModificacion 
	WHERE id_formulario = idFormulario;
END$$

DROP PROCEDURE IF EXISTS `Modificar_formulario_rol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Modificar_formulario_rol` (IN `idRol` INT(11), IN `idFormulario` INT(11), IN `estado` ENUM('0','1'), IN `idUsuarioModificacion` INT(11), IN `idFormularioRol` INT(11))  BEGIN
	UPDATE formulario_rol 
    SET id_rol = idRol
		,id_formulario = idFormulario
		,estado = estado
		,fecha_modificacion = NOW()
		,id_usuario_modificacion = idUsuarioModificacion 
	WHERE id_formulario_rol = idFormularioRol;
END$$

DROP PROCEDURE IF EXISTS `Modificar_persona`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Modificar_persona` (IN `nombre` VARCHAR(100), IN `apellido` VARCHAR(100), IN `tipoDocumento` SET('CC','TI','CE','PEP'), IN `documento` INT(11), IN `edad` INT(11), IN `genero` ENUM('M','F','O'), IN `estado` ENUM('0','1'), IN `idUsuarioModificacion` INT(11), IN `idPersona` INT(11))  BEGIN
	UPDATE persona 
	SET nombre = nombre
		,apellido = apellido
		,tipo_documento = tipoDocumento
		,documento = documento
		,edad = edad
		,genero = genero
		,estado = estado
		,fecha_modificacion = NOW()
		,id_usuario_modificacion = idUsuarioModificacion 
	WHERE
		id_persona = idPersona;
END$$

DROP PROCEDURE IF EXISTS `Modificar_rol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Modificar_rol` (IN `descripcion` VARCHAR(50), IN `estado` ENUM('0','1'), IN `idUsuarioModificacion` INT(11), IN `idRol` INT(11))  BEGIN
	UPDATE rol 
	SET	descripcion = descripcion
		,estado = estado
		,fecha_modificacion = NOW()
		,id_usuario_modificacion = idUsuarioModificacion 
	WHERE id_rol = idRol;
END$$

DROP PROCEDURE IF EXISTS `Modificar_usuario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Modificar_usuario` (IN `usuario` VARCHAR(50), IN `contrasenia` VARCHAR(50), IN `fechaActivacion` DATE, IN `fechaExpiracion` DATE, IN `idPersona` INT(11), IN `estado` ENUM('0','1'), IN `idUsuario` INT(11), IN `idUsuarioModificacion` INT(11))  BEGIN
	UPDATE usuario 
	SET usuario = usuario
		,contrasenia = contrasenia
		,fecha_activacion = fechaActivacion
		,fecha_expiracion = fechaExpiracion
		,id_persona = idPersona
		,estado = estado
		,fecha_modificacion = NOW()
		,id_usuario_modificacion = idUsuarioModificacion 
	WHERE id_usuario = idUsuario;
END$$

DROP PROCEDURE IF EXISTS `Modificar_usuario_rol`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Modificar_usuario_rol` (IN `idUsuario` INT(11), IN `idRol` INT(11), IN `estado` ENUM('0','1'), IN `idUsuarioModificacion` INT(11), IN `idUsuarioRol` INT(11))  BEGIN
	UPDATE usuario_rol 
	SET id_usuario = idUsuario
		,id_rol = idRol
		,estado = estado
		,fecha_modificacion = NOW()
		,id_usuario_modificacion = idUsuarioModificacion 
	WHERE id_usuario_rol = idUsuarioRol;
END$$

DROP PROCEDURE IF EXISTS `Obtener_carpeta`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Obtener_carpeta` (IN `id` INT)  BEGIN
	SELECT 
		f.etiqueta AS modulo
		,COUNT(f.etiqueta) AS cantidad_formulario
	FROM 
		formulario AS f
		INNER JOIN formulario_rol AS  fr ON f.id_formulario = fr.id_formulario
		INNER JOIN rol AS r ON fr.id_rol = r.id_rol
		INNER JOIN usuario_rol AS ur ON r.id_rol = ur.id_rol
		INNER JOIN usuario AS u ON ur.id_usuario = u.id_usuario
	WHERE u.id_usuario = id
	GROUP BY etiqueta
	ORDER BY f.descripcion;
END$$

DROP PROCEDURE IF EXISTS `Obtener_login`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Obtener_login` (IN `u_user` VARCHAR(50), `u_password` VARCHAR(100))  BEGIN
	SELECT 
		COUNT(u.usuario) AS autenticado
		,u.id_usuario
		,u.usuario
		,CONCAT(p.nombre,' ',p.apellido) AS nombre
	FROM
		usuario AS u
		INNER JOIN persona AS p ON u.id_persona = p.id_persona
	WHERE u.usuario = u_user AND u.contrasenia = u_password;
END$$

DROP PROCEDURE IF EXISTS `Obtener_menu`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Obtener_menu` (IN `modulo` VARCHAR(50), `id` INT)  BEGIN
	SELECT 
		f.id_formulario
		,f.descripcion
		,CONVERT(CAST(CONVERT(f.ubicacion USING latin1) AS BINARY) USING utf8) AS ubicacion
		,f.etiqueta
	FROM 
		usuario AS u
		INNER JOIN usuario_rol AS ur ON u.id_usuario = ur.id_usuario
		INNER JOIN rol AS r ON ur.id_rol = r.id_rol
		INNER JOIN formulario_rol AS fr ON r.id_rol = fr.id_rol
		INNER JOIN formulario AS f ON fr.id_formulario = f.id_formulario
	WHERE f.etiqueta LIKE modulo AND u.id_usuario = id
	ORDER BY f.descripcion;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--
-- Creación: 16-01-2022 a las 06:36:00
-- Última actualización: 16-01-2022 a las 06:12:34
--

DROP TABLE IF EXISTS `cargo`;
CREATE TABLE `cargo` (
  `id_cargo` int(11) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `estado` enum('0','1') NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  `id_usuario_creacion` int(11) NOT NULL,
  `id_usuario_modificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `cargo`:
--

--
-- Truncar tablas antes de insertar `cargo`
--

TRUNCATE TABLE `cargo`;
--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`id_cargo`, `descripcion`, `estado`, `fecha_creacion`, `fecha_modificacion`, `id_usuario_creacion`, `id_usuario_modificacion`) VALUES
(1, 'Administrador', '1', '2022-01-16 01:01:00', '2022-01-16 01:01:00', 1, 1),
(2, 'Test#1', '1', '2022-01-16 01:12:00', '2022-01-16 01:12:00', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--
-- Creación: 16-01-2022 a las 06:36:00
-- Última actualización: 16-01-2022 a las 06:29:28
--

DROP TABLE IF EXISTS `empleado`;
CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `correo_institucional` varchar(50) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `arl` enum('Equidad Seguros','Seguros Bolivar','Sura') NOT NULL,
  `salud` enum('Comfamiliar','Nueva Eps','Sanitas') NOT NULL,
  `pension` enum('Colpesiones','Porvenir','Proteccion') NOT NULL,
  `id_persona` int(11) NOT NULL,
  `sueldo_basico` double DEFAULT NULL,
  `estado` enum('0','1') NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  `id_usuario_creacion` int(11) NOT NULL,
  `id_usuario_modificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `empleado`:
--   `id_persona`
--       `persona` -> `id_persona`
--   `id_cargo`
--       `cargo` -> `id_cargo`
--

--
-- Truncar tablas antes de insertar `empleado`
--

TRUNCATE TABLE `empleado`;
--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `id_cargo`, `correo_institucional`, `fecha_ingreso`, `arl`, `salud`, `pension`, `id_persona`, `sueldo_basico`, `estado`, `fecha_creacion`, `fecha_modificacion`, `id_usuario_creacion`, `id_usuario_modificacion`) VALUES
(1, 1, 'edurado.andres@gmail.com', '2021-06-01', 'Sura', 'Nueva Eps', 'Colpesiones', 1, 3500000, '1', '2022-01-16 01:02:00', '2022-01-16 01:02:00', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario`
--
-- Creación: 16-01-2022 a las 06:36:00
-- Última actualización: 16-01-2022 a las 06:06:43
--

DROP TABLE IF EXISTS `formulario`;
CREATE TABLE `formulario` (
  `id_formulario` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `etiqueta` varchar(30) NOT NULL,
  `ubicacion` varchar(100) NOT NULL,
  `estado` enum('0','1') NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  `id_usuario_creacion` int(11) NOT NULL,
  `id_usuario_modificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `formulario`:
--

--
-- Truncar tablas antes de insertar `formulario`
--

TRUNCATE TABLE `formulario`;
--
-- Volcado de datos para la tabla `formulario`
--

INSERT INTO `formulario` (`id_formulario`, `descripcion`, `etiqueta`, `ubicacion`, `estado`, `fecha_creacion`, `fecha_modificacion`, `id_usuario_creacion`, `id_usuario_modificacion`) VALUES
(1, 'Formulario', 'Seguridad', './vista/seguridad/formulario.V.php', '1', '2022-01-16 00:55:00', '2022-01-16 00:55:00', 1, 1),
(2, 'Formularios de rol', 'Seguridad', './vista/seguridad/formularioRol.V.php', '1', '2022-01-16 00:55:00', '2022-01-16 00:55:00', 1, 1),
(3, 'Persona', 'Seguridad', './vista/seguridad/persona.V.php', '1', '2022-01-16 00:55:00', '2022-01-16 00:55:00', 1, 1),
(4, 'Rol', 'Seguridad', './vista/seguridad/rol.V.php', '1', '2022-01-16 00:55:00', '2022-01-16 00:55:00', 1, 1),
(5, 'Usuario', 'Seguridad', './vista/seguridad/usuario.V.php', '1', '2022-01-16 00:55:00', '2022-01-16 00:55:00', 1, 1),
(6, 'Cargo', 'Nomina', './vista/nomina/cargo.V.php', '1', '2022-01-16 00:55:00', '2022-01-16 00:55:00', 1, 1),
(7, 'Empleado', 'Nomina', './vista/nomina/empleado.V.php', '1', '2022-01-16 00:55:00', '2022-01-16 00:55:00', 1, 1),
(8, 'Rol de usuario', 'Seguridad', './vista/seguridad/usuarioRol.V.php', '1', '2022-01-16 00:55:00', '2022-01-16 00:55:00', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario_rol`
--
-- Creación: 16-01-2022 a las 06:36:00
-- Última actualización: 16-01-2022 a las 06:30:37
--

DROP TABLE IF EXISTS `formulario_rol`;
CREATE TABLE `formulario_rol` (
  `id_formulario_rol` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_formulario` int(11) NOT NULL,
  `estado` enum('0','1') NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  `id_usuario_creacion` int(11) NOT NULL,
  `id_usuario_modificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `formulario_rol`:
--   `id_rol`
--       `rol` -> `id_rol`
--   `id_formulario`
--       `formulario` -> `id_formulario`
--

--
-- Truncar tablas antes de insertar `formulario_rol`
--

TRUNCATE TABLE `formulario_rol`;
--
-- Volcado de datos para la tabla `formulario_rol`
--

INSERT INTO `formulario_rol` (`id_formulario_rol`, `id_rol`, `id_formulario`, `estado`, `fecha_creacion`, `fecha_modificacion`, `id_usuario_creacion`, `id_usuario_modificacion`) VALUES
(1, 1, 1, '1', '2021-05-10 22:22:00', '2021-05-10 22:22:00', 1, 1),
(2, 1, 2, '1', '2021-05-10 22:22:00', '2021-05-10 22:22:00', 1, 1),
(3, 1, 3, '1', '2021-05-10 22:22:00', '2021-05-10 22:22:00', 1, 1),
(4, 1, 4, '1', '2021-05-10 22:22:00', '2021-05-10 22:22:00', 1, 1),
(5, 1, 5, '1', '2021-05-10 22:22:00', '2021-05-10 22:22:00', 1, 1),
(6, 1, 6, '1', '2021-05-10 22:22:00', '2021-05-10 22:22:00', 1, 1),
(7, 1, 7, '1', '2021-05-10 22:22:00', '2021-05-10 22:22:00', 1, 1),
(8, 1, 8, '1', '2021-05-10 22:22:00', '2021-05-10 22:22:00', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--
-- Creación: 16-01-2022 a las 06:36:00
-- Última actualización: 16-01-2022 a las 06:31:41
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE `persona` (
  `id_persona` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `tipo_documento` set('CC','TI','CE','PEP') NOT NULL DEFAULT '',
  `documento` int(11) NOT NULL,
  `edad` int(11) NOT NULL,
  `genero` enum('M','F','O') NOT NULL,
  `estado` enum('0','1') NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  `id_usuario_creacion` int(11) NOT NULL,
  `id_usuario_modificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `persona`:
--

--
-- Truncar tablas antes de insertar `persona`
--

TRUNCATE TABLE `persona`;
--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id_persona`, `nombre`, `apellido`, `tipo_documento`, `documento`, `edad`, `genero`, `estado`, `fecha_creacion`, `fecha_modificacion`, `id_usuario_creacion`, `id_usuario_modificacion`) VALUES
(1, 'Eduardo Andres', 'Peña Rojas', 'CC', 1075264436, 28, 'M', '1', '2022-01-16 01:00:00', '2022-01-16 01:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--
-- Creación: 16-01-2022 a las 06:36:00
-- Última actualización: 16-01-2022 a las 06:32:15
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `estado` enum('0','1') NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  `id_usuario_creacion` int(11) NOT NULL,
  `id_usuario_modificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `rol`:
--

--
-- Truncar tablas antes de insertar `rol`
--

TRUNCATE TABLE `rol`;
--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `descripcion`, `estado`, `fecha_creacion`, `fecha_modificacion`, `id_usuario_creacion`, `id_usuario_modificacion`) VALUES
(1, 'Administrador', '1', '2021-05-10 20:00:00', '2021-05-10 20:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--
-- Creación: 16-01-2022 a las 06:36:00
-- Última actualización: 16-01-2022 a las 06:33:01
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contrasenia` varchar(50) NOT NULL,
  `fecha_activacion` date NOT NULL,
  `fecha_expiracion` date NOT NULL,
  `id_persona` int(11) NOT NULL,
  `estado` enum('0','1') NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  `id_usuario_creacion` int(11) NOT NULL,
  `id_usuario_modificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `usuario`:
--   `id_persona`
--       `persona` -> `id_persona`
--

--
-- Truncar tablas antes de insertar `usuario`
--

TRUNCATE TABLE `usuario`;
--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `usuario`, `contrasenia`, `fecha_activacion`, `fecha_expiracion`, `id_persona`, `estado`, `fecha_creacion`, `fecha_modificacion`, `id_usuario_creacion`, `id_usuario_modificacion`) VALUES
(1, 'edurado.andres@gmail.com', 'e44985980c9d3c5d70b6a548b14d773a', '2022-01-15', '2024-01-16', 1, '1', '2022-01-16 01:03:00', '2022-01-16 01:03:00', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--
-- Creación: 16-01-2022 a las 06:36:00
-- Última actualización: 16-01-2022 a las 06:27:39
--

DROP TABLE IF EXISTS `usuario_rol`;
CREATE TABLE `usuario_rol` (
  `id_usuario_rol` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `estado` enum('0','1') NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  `id_usuario_creacion` int(11) NOT NULL,
  `id_usuario_modificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `usuario_rol`:
--   `id_usuario`
--       `usuario` -> `id_usuario`
--   `id_rol`
--       `rol` -> `id_rol`
--

--
-- Truncar tablas antes de insertar `usuario_rol`
--

TRUNCATE TABLE `usuario_rol`;
--
-- Volcado de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` (`id_usuario_rol`, `id_usuario`, `id_rol`, `estado`, `fecha_creacion`, `fecha_modificacion`, `id_usuario_creacion`, `id_usuario_modificacion`) VALUES
(1, 1, 1, '1', '2022-01-16 01:11:00', '2022-01-16 01:11:00', 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id_cargo`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`),
  ADD UNIQUE KEY `id_persona` (`id_persona`),
  ADD KEY `id_cargo` (`id_cargo`);

--
-- Indices de la tabla `formulario`
--
ALTER TABLE `formulario`
  ADD PRIMARY KEY (`id_formulario`);

--
-- Indices de la tabla `formulario_rol`
--
ALTER TABLE `formulario_rol`
  ADD PRIMARY KEY (`id_formulario_rol`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_formulario` (`id_formulario`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id_persona`),
  ADD UNIQUE KEY `documento` (`documento`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `id_persona_UNIQUE` (`id_persona`),
  ADD KEY `id_persona` (`id_persona`);

--
-- Indices de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD PRIMARY KEY (`id_usuario_rol`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id_cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `formulario`
--
ALTER TABLE `formulario`
  MODIFY `id_formulario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `formulario_rol`
--
ALTER TABLE `formulario_rol`
  MODIFY `id_formulario_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id_persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  MODIFY `id_usuario_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`),
  ADD CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`id_cargo`) REFERENCES `cargo` (`id_cargo`);

--
-- Filtros para la tabla `formulario_rol`
--
ALTER TABLE `formulario_rol`
  ADD CONSTRAINT `formulario_rol_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`),
  ADD CONSTRAINT `formulario_rol_ibfk_2` FOREIGN KEY (`id_formulario`) REFERENCES `formulario` (`id_formulario`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`);

--
-- Filtros para la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `usuario_rol_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `usuario_rol_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);
COMMIT;
