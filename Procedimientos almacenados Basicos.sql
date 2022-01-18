DELIMITER $$
--
-- Procedimientos
--
DROP PROCEDURE IF EXISTS `Agregar_estadisticas`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Agregar_estadisticas` (IN `vinculacion` enum('Planta','Independiente'),
IN `centro_formacion` enum('Despacho Regional Huila','Centro de la Industrial, la Empresa y los Servicios','Centro de Formación Agroindustrial','Centro Agroempresarial y de Desarrollo Pecuario del Huila','Centro de Gestión y Desarrollo Sostenible Sur Colombiano','Centro de Desarrollo Agroempresarial y Turístico del Huila'),
IN `id_persona` int(11),
IN `tipo_accidente` enum('Propios del Trabajo','Deportivos','Tránsito','Violencia'),
IN `fecha_accidente` date,
IN `dia_semana_accidente` enum('Lunes','Martes','Miércoles','Jueves','Viernes','Sábado','Domingo'),
IN `fecha_reporte_arl` date,
IN `fecha_reporte_eps` date,
IN `fecha_reporte_oficina` date,
IN `dias_incapacidad` int(4),
IN `dias_cargados` int(4),
IN `diagnostico` varchar(100),
IN `descripcion_at` varchar(1000),
IN `lugar_accidente` enum('Dentro de la empresa','Fuera de la empresa','Otra empresa'),
IN `sitio_exacto_accidente` enum('Almacén o depósitos','Áreas de producción','Áreas recreativas o deportivas','Escaleras','Parqueaderos o áreas de circulación vehicular','Oficinas','Corredores, Pasillos','Otro'),
IN `riesgo_locativo` enum('locativo','Eléctrico','Vial','Natural','Tecnológico','Otro'),
IN `tipo_lesión` varchar(100),
IN `parte_afectada` varchar(100),
IN `mecanismo_accidente` varchar(100),
IN `agente_accidente` varchar(100),
IN `impacto_accidente` enum('Leve','Grave','Mortal'),
IN `fecha_limite_investigacion` date,
IN `fecha_investigacion_curso` date,
IN `estado_implementacion_acciones` enum('Abierto','Cerrado'),
IN `pruebas_accidente_arl` enum('Si','No'),
IN `calificación_accidente_arl` enum('Si','No','En espera de la calificación'),
IN `estado` enum('0','1'),
IN `id_usuario_creacion` int(11),
IN `id_usuario_modificacion` int(11)) BEGIN 
    INSERT INTO estadisticas(vinculacion
                            ,centro_formacion
                            ,id_persona
                            ,tipo_accidente
                            ,fecha_accidente
                            ,dia_semana_accidente
                            ,fecha_reporte_arl
                            ,fecha_reporte_eps
                            ,fecha_reporte_oficina
                            ,dias_incapacidad
                            ,dias_cargados
                            ,diagnostico
                            ,descripcion_at
                            ,lugar_accidente
                            ,sitio_exacto_accidente
                            ,riesgo_locativo
                            ,tipo_lesión
                            ,parte_afectada
                            ,mecanismo_accidente
                            ,agente_accidente
                            ,impacto_accidente
                            ,fecha_limite_investigacion
                            ,fecha_investigacion_curso
                            ,estado_implementacion_acciones
                            ,pruebas_accidente_arl
                            ,calificación_accidente_arl
                            ,estado
                            ,fecha_creacion
                            ,fecha_modificacion
                            ,id_usuario_creacion
                            ,id_usuario_modificacion) 
    VALUES (vinculacion
            ,centro_formacion
            ,id_persona
            ,tipo_accidente
            ,fecha_accidente
            ,dia_semana_accidente
            ,fecha_reporte_arl
            ,fecha_reporte_eps
            ,fecha_reporte_oficina
            ,dias_incapacidad
            ,dias_cargados
            ,diagnostico
            ,descripcion_at
            ,lugar_accidente
            ,sitio_exacto_accidente
            ,riesgo_locativo
            ,tipo_lesión
            ,parte_afectada
            ,mecanismo_accidente
            ,agente_accidente
            ,impacto_accidente
            ,fecha_limite_investigacion
            ,fecha_investigacion_curso
            ,estado_implementacion_acciones
            ,pruebas_accidente_arl
            ,calificación_accidente_arl
            ,estado
            ,NOW()
            ,NOW()
            ,id_usuario_creacion
            ,id_usuario_modificacion
            );
END$$

DROP PROCEDURE IF EXISTS `Modificar_estadisticas`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Modificar_estadisticas` (IN `vinculacion` enum('Planta','Independiente'),
IN `centro_formacion` enum('Despacho Regional Huila','Centro de la Industrial, la Empresa y los Servicios','Centro de Formación Agroindustrial','Centro Agroempresarial y de Desarrollo Pecuario del Huila','Centro de Gestión y Desarrollo Sostenible Sur Colombiano','Centro de Desarrollo Agroempresarial y Turístico del Huila'),
IN `id_persona` int(11),
IN `tipo_accidente` enum('Propios del Trabajo','Deportivos','Tránsito','Violencia'),
IN `fecha_accidente` date,
IN `dia_semana_accidente` enum('Lunes','Martes','Miércoles','Jueves','Viernes','Sábado','Domingo'),
IN `fecha_reporte_arl` date,
IN `fecha_reporte_eps` date,
IN `fecha_reporte_oficina` date,
IN `dias_incapacidad` int(4),
IN `dias_cargados` int(4),
IN `diagnostico` varchar(100),
IN `descripcion_at` varchar(1000),
IN `lugar_accidente` enum('Dentro de la empresa','Fuera de la empresa','Otra empresa'),
IN `sitio_exacto_accidente` enum('Almacén o depósitos','Áreas de producción','Áreas recreativas o deportivas','Escaleras','Parqueaderos o áreas de circulación vehicular','Oficinas','Corredores, Pasillos','Otro'),
IN `riesgo_locativo` enum('locativo','Eléctrico','Vial','Natural','Tecnológico','Otro'),
IN `tipo_lesión` varchar(100),
IN `parte_afectada` varchar(100),
IN `mecanismo_accidente` varchar(100),
IN `agente_accidente` varchar(100),
IN `impacto_accidente` enum('Leve','Grave','Mortal'),
IN `fecha_limite_investigacion` date,
IN `fecha_investigacion_curso` date,
IN `estado_implementacion_acciones` enum('Abierto','Cerrado'),
IN `pruebas_accidente_arl` enum('Si','No'),
IN `calificación_accidente_arl` enum('Si','No','En espera de la calificación'),
IN `estado` enum('0','1'),
IN `id_usuario_modificacion` int(11),
IN `idEstadisticas` int(11)) BEGIN 
	UPDATE estadisticas 
	SET vinculacion = vinculacion
        ,centro_formacion = centro_formacion
        ,id_persona = id_persona
        ,tipo_accidente = tipo_accidente
        ,fecha_accidente = fecha_accidente
        ,dia_semana_accidente = dia_semana_accidente
        ,fecha_reporte_arl = fecha_reporte_arl
        ,fecha_reporte_eps = fecha_reporte_eps
        ,fecha_reporte_oficina = fecha_reporte_oficina
        ,dias_incapacidad = dias_incapacidad
        ,dias_cargados = dias_cargados
        ,diagnostico = diagnostico
        ,descripcion_at = descripcion_at
        ,lugar_accidente = lugar_accidente
        ,sitio_exacto_accidente = sitio_exacto_accidente
        ,riesgo_locativo = riesgo_locativo
        ,tipo_lesión = tipo_lesión
        ,parte_afectada = parte_afectada
        ,mecanismo_accidente = mecanismo_accidente
        ,agente_accidente = agente_accidente
        ,impacto_accidente = impacto_accidente
        ,fecha_limite_investigacion = fecha_limite_investigacion
        ,fecha_investigacion_curso = fecha_investigacion_curso
        ,estado_implementacion_acciones = estado_implementacion_acciones
        ,pruebas_accidente_arl = pruebas_accidente_arl
        ,calificación_accidente_arl = calificación_accidente_arl
        ,estado = estado
        ,fecha_modificacion = NOW()
        ,id_usuario_modificacion = id_usuario_modificacion
	WHERE id_estadisticas = idEstadisticas;
END$$

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
CREATE DEFINER=`root`@`localhost` PROCEDURE `Agregar_persona` (IN `nombre` VARCHAR(100), IN `apellido` VARCHAR(100), IN `tipoDocumento` SET('CC','TI','CE','PEP'), IN `documento` INT(11), IN `genero` ENUM('M','F','O'), IN `estado` ENUM('0','1'), IN `idUsuarioCreacion` INT(11), IN `idUsuarioModificacion` INT(11))  BEGIN
INSERT INTO persona(nombre
					,apellido
					,tipo_documento
					,documento
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `Modificar_persona` (IN `nombre` VARCHAR(100), IN `apellido` VARCHAR(100), IN `tipoDocumento` SET('CC','TI','CE','PEP'), IN `documento` INT(11), IN `genero` ENUM('M','F','O'), IN `estado` ENUM('0','1'), IN `idUsuarioModificacion` INT(11), IN `idPersona` INT(11))  BEGIN
	UPDATE persona 
	SET nombre = nombre
		,apellido = apellido
		,tipo_documento = tipoDocumento
		,documento = documento
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