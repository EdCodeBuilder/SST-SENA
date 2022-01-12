-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-01-2022 a las 16:21:20
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de datos: `contex`
--

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`id_cargo`, `descripcion`, `estado`, `fecha_creacion`, `fecha_modificacion`, `id_usuario_creacion`, `id_usuario_modificacion`) VALUES
(1, 'Administrador', '1', '2021-05-08 01:35:00', '2021-05-08 01:35:00', 1, 1),
(2, 'Contador', '1', '2021-05-08 01:35:00', '2021-05-08 01:35:00', 1, 1),
(3, 'Costurer@', '1', '2021-05-08 01:35:00', '2021-05-08 01:35:00', 1, 1),
(4, 'Vendedor', '1', '2021-05-08 01:35:00', '2021-05-08 01:35:00', 1, 1);

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `id_cargo`, `correo_institucional`, `fecha_ingreso`, `arl`, `salud`, `pension`, `id_persona`, `sueldo_basico`, `estado`, `fecha_creacion`, `fecha_modificacion`, `id_usuario_creacion`, `id_usuario_modificacion`) VALUES
(1, 1, 'cargon@contex.coma', '2021-06-01', 'Equidad Seguros', 'Comfamiliar', 'Colpesiones', 1, 22, '1', '2021-05-08 01:35:00', '2021-06-01 21:39:51', 1, 1),
(2, 2, 'yestov@contex.com', '2021-05-08', 'Equidad Seguros', 'Comfamiliar', 'Colpesiones', 2, 1200000, '1', '2021-05-08 01:35:00', '2021-05-08 01:35:00', 1, 1),
(4, 4, 'aletov@context.com', '2021-05-08', 'Equidad Seguros', 'Comfamiliar', 'Colpesiones', 4, 1200000, '1', '2021-05-08 01:35:00', '2021-05-08 01:35:00', 1, 1),
(7, 1, 'hola@mundo.co', '2021-06-01', 'Seguros Bolivar', 'Sanitas', 'Proteccion', 5, 1789, '1', '2021-05-27 13:58:47', '2021-06-01 21:40:36', 1, 1),
(8, 3, 'aletov@contex.com', '2021-06-01', 'Equidad Seguros', 'Comfamiliar', 'Colpesiones', 3, 1200000, '1', '2021-06-01 23:29:33', '2021-06-01 23:29:33', 1, 1),
(9, 1, 'edurado.andres@gmail.com', '2021-06-01', 'Sura', 'Nueva Eps', 'Colpesiones', 11, 3000000, '1', '2021-06-01 23:33:55', '2021-06-01 23:33:55', 1, 1);

--
-- Volcado de datos para la tabla `formulario`
--

INSERT INTO `formulario` (`id_formulario`, `descripcion`, `etiqueta`, `ubicacion`, `estado`, `fecha_creacion`, `fecha_modificacion`, `id_usuario_creacion`, `id_usuario_modificacion`) VALUES
(1, 'Formulario', 'Seguridad', './vista/seguridad/formulario.V.php', '1', '2021-05-10 22:22:00', '2021-05-10 22:22:00', 1, 1),
(2, 'Formularios de rol', 'Seguridad', './vista/seguridad/formularioRol.V.php', '1', '2021-05-10 22:22:00', '2021-05-10 22:22:00', 1, 1),
(3, 'Persona', 'Seguridad', './vista/seguridad/persona.V.php', '1', '2021-05-10 22:22:00', '2021-05-10 22:22:00', 1, 1),
(4, 'Rol', 'Seguridad', './vista/seguridad/rol.V.php', '1', '2021-05-10 22:22:00', '2021-05-10 22:22:00', 1, 1),
(5, 'Usuario', 'Seguridad', './vista/seguridad/usuario.V.php', '1', '2021-05-10 22:22:00', '2021-05-10 22:22:00', 1, 1),
(6, 'Cargo', 'Nomina', './vista/nomina/cargo.V.php', '1', '2021-05-10 22:22:00', '2021-05-10 22:22:00', 1, 1),
(7, 'Empleado', 'Nomina', './vista/nomina/empleado.V.php', '1', '2021-05-10 22:22:00', '2021-05-10 22:22:00', 1, 1),
(15, 'Rol de usuario', 'Seguridad', './vista/seguridad/usuarioRol.V.php', '1', '2021-05-10 22:22:00', '2021-06-01 23:31:39', 1, 1);

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
(20, 1, 16, '1', '2021-06-01 23:32:08', '2021-06-01 23:32:08', 1, 1),
(23, 1, 15, '1', '2022-01-09 21:38:44', '2022-01-09 21:38:44', 1, 1);

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id_persona`, `nombre`, `apellido`, `tipo_documento`, `documento`, `edad`, `genero`, `estado`, `fecha_creacion`, `fecha_modificacion`, `id_usuario_creacion`, `id_usuario_modificacion`) VALUES
(1, 'Yesica', 'Tovar', 'CC', 10101010, 26, 'F', '1', '2021-04-22 00:00:00', '2021-06-07 15:35:35', 1, 1),
(2, 'Carmenza', 'Gonzalez', 'CC', 1075264422, 42, 'F', '1', '2021-04-22 00:00:00', '2021-04-22 00:00:00', 1, 1),
(3, 'Alejandra', 'Tovar', 'CC', 1075264423, 22, 'F', '1', '2021-04-22 00:00:00', '2021-04-22 00:00:00', 1, 1),
(4, 'Costurera', 'Sin Datos', 'CC', 1075264424, 11, 'M', '0', '2021-04-22 00:00:00', '2021-06-07 16:16:42', 1, 1),
(5, 'Cliente#1', 'ACliente#1', 'TI', 1075264425, 17, 'O', '0', '2021-05-10 20:00:00', '2021-06-07 15:51:07', 1, 1),
(6, 'Cliente#2', 'ACliente#2', 'CC', 1075264426, 102, 'F', '1', '2021-05-10 20:00:00', '2021-05-10 20:00:00', 1, 1),
(7, 'Cliente#3', 'ACliente#3', 'TI', 1075264427, 18, 'O', '1', '2021-05-10 20:00:00', '2021-06-07 15:55:47', 1, 1),
(8, 'Cliente#4', 'ACliente#4', 'CC', 1075264428, 104, 'F', '1', '2021-05-10 20:00:00', '2021-05-10 20:00:00', 1, 1),
(9, 'Cliente#5', 'ACliente#5', 'CC', 1075264429, 105, 'M', '1', '2021-05-10 20:00:00', '2021-05-10 20:00:00', 1, 1),
(10, 'Wilmer', 'Vargas Bautista', 'CC', 1075250180, 30, 'M', '1', '2021-06-01 23:30:41', '2021-06-01 23:30:41', 1, 1),
(11, 'Oscar Leonardo', 'Perdomo', 'CC', 1081158586, 26, 'M', '1', '2021-06-01 23:14:56', '2021-06-01 23:14:56', 1, 1),
(12, 'Eduardo Andres', 'Peña Rojas', 'CC', 1075264436, 28, 'M', '1', '2021-06-07 16:35:22', '2021-06-07 16:35:22', 1, 1);

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `descripcion`, `estado`, `fecha_creacion`, `fecha_modificacion`, `id_usuario_creacion`, `id_usuario_modificacion`) VALUES
(1, 'Administrador', '1', '2021-05-10 20:00:00', '2021-05-10 20:00:00', 1, 1),
(2, 'Contador', '1', '2021-05-10 20:00:00', '2021-05-10 20:00:00', 1, 1),
(3, 'Vendedor', '1', '2021-05-10 20:00:00', '2021-05-10 20:00:00', 1, 1);

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `usuario`, `contrasenia`, `fecha_activacion`, `fecha_expiracion`, `id_persona`, `estado`, `fecha_creacion`, `fecha_modificacion`, `id_usuario_creacion`, `id_usuario_modificacion`) VALUES
(1, 'u20152142462@usco.edu.co', '0a5c79b1eaf15445da252ada718857e9', '2021-05-16', '2021-06-02', 1, '1', '2021-05-08 01:35:00', '2021-06-01 21:01:53', 1, 1),
(2, 'carmen@.com', '9f564fef13bb8a7f9faa5f9071e4e045', '2021-05-02', '2021-05-07', 2, '1', '2021-05-11 22:06:54', '2021-06-01 20:21:55', 1, 2),
(3, 'ariel5253@misena.edu.com', '31784d9fc1fa0d25d04eae50ac9bf787', '2021-05-16', '2021-06-02', 5, '1', '2021-05-11 22:11:21', '2021-06-01 20:45:25', 1, 3),
(4, 'olperdomo6@misena.edu.co', '149815eb972b3c370dee3b89d645ae14', '2021-06-01', '2022-01-01', 11, '1', '2021-06-01 23:16:47', '2021-06-01 23:16:47', 1, 1),
(5, 'edurado.andres@gmail.com', '4d186321c1a7f0f354b297e8914ab240', '2021-06-01', '2022-06-01', 12, '1', '2021-06-01 23:32:32', '2021-06-01 23:42:46', 1, 1);

--
-- Volcado de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` (`id_usuario_rol`, `id_usuario`, `id_rol`, `estado`, `fecha_creacion`, `fecha_modificacion`, `id_usuario_creacion`, `id_usuario_modificacion`) VALUES
(1, 1, 1, '1', '2021-05-10 05:00:22', '2021-05-12 05:00:24', 1, 1),
(3, 4, 1, '1', '2021-06-01 23:18:20', '2021-06-01 23:18:20', 1, 1),
(4, 5, 1, '1', '2021-06-01 23:00:00', '2022-06-01 23:00:00', 1, 1);
COMMIT;
