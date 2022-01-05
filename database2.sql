/*
SQLyog Professional v12.5.1 (64 bit)
MySQL - 10.4.18-MariaDB : Database - SSTSENA
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`SSTSENA` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `SSTSENA`;

/*Table structure for table `estadisticas` */

DROP TABLE IF EXISTS `estadisticas`;

CREATE TABLE `estadisticas` (
  `id_estadisticas` int(11) NOT NULL AUTO_INCREMENT,
  `vinculacion` enum('Planta','Independiente') NOT NULL,
  `centro_formacion` enum('Despacho Regional Huila','Centro de la Industrial, la Empresa y los Servicios','Centro de Formación Agroindustrial','Centro Agroempresarial y de Desarrollo Pecuario del Huila', 'Centro de Gestión y Desarrollo Sostenible Sur Colombiano', 'Centro de Desarrollo Agroempresarial y Turístico del Huila') NOT NULL,
  `id_persona` int(11) NOT NULL,
  `tipo_accidente` enum('Propios del Trabajo','Deportivos','Tránsito','Violencia') NOT NULL,
  `fecha_accidente` date NOT NULL,
  `dia_semana_accidente` enum('Lunes','Martes','Miércoles','Jueves','Viernes','Sábado','Domingo') NOT NULL,
  `fecha_reporte_arl` date NOT NULL,
  `fecha_reporte_eps` date NOT NULL,
  `fecha_reporte_oficina` date,
  `dias_incapacidad` int(4) NOT NULL,
  `dias_cargados` int(4) NOT NULL,
  `diagnostico` varchar(100) NOT NULL,
  `descripcion_at` varchar(1000) NOT NULL,
  `lugar_accidente` enum('Dentro de la empresa','Fuera de la empresa','Otra empresa') NOT NULL,
  `sitio_exacto_accidente` enum('Almacén o depósitos','Áreas de producción','Áreas recreativas o deportivas','Escaleras','Parqueaderos o áreas de circulación vehicular','Oficinas','Corredores, Pasillos','Otro') NOT NULL,
  `riesgo_locativo` enum('locativo','Eléctrico','Vial','Natural','Tecnológico','Otro') NOT NULL,
  `tipo_lesión` varchar(100) NOT NULL,
  `parte_afectada` varchar(100) NOT NULL,
  `mecanismo_accidente` varchar(100) NOT NULL,
  `agente_accidente` varchar(100) NOT NULL,
  `impacto_accidente` enum('Leve','Grave','Mortal') NOT NULL,
  `fecha_limite_investigacion` date NOT NULL,
  `fecha_investigacion_curso` date NOT NULL,
  `estado_implementacion_acciones` enum('Abierto','Cerrado') NOT NULL,
  `pruebas_accidente_arl` enum('Si','No') NOT NULL,
  `calificación_accidente_arl` enum('Si','No','En espera de la calificación') NOT NULL,  
  `estado` enum('0','1') NOT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_modificacion` date NOT NULL,
  `id_usuario_creacion` int(11) NOT NULL,
  `id_usuario_modificacion` int(11) NOT NULL,
  PRIMARY KEY (`id_estadisticas`),
  KEY `id_usuario_creacion` (`id_usuario_creacion`),
  KEY `id_usuario_modificacion` (`id_usuario_modificacion`),
  KEY `id_persona` (`id_persona`),
  CONSTRAINT `estadisticas_ibfk_1` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `estadisticas_ibfk_2` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `estadisticas_ibfk_3` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `cargo` */

DROP TABLE IF EXISTS `cargo`;

CREATE TABLE `cargo` (
  `id_cargo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  `estado` enum('0','1') NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  `id_usuario_creacion` int(11) NOT NULL,
  `id_usuario_modificacion` int(11) NOT NULL,
  PRIMARY KEY (`id_cargo`),
  KEY `id_usuario_creacion` (`id_usuario_creacion`),
  KEY `id_usuario_modificacion` (`id_usuario_modificacion`),
  CONSTRAINT `cargo_ibfk_1` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `cargo_ibfk_2` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `cargo` */

/*insert  into `cargo`(`id_cargo`,`descripcion`,`estado`,`fecha_creacion`,`fecha_modificacion`,`id_usuario_creacion`,`id_usuario_modificacion`) values 
(1,'Administrador','1','2022-01-03 08:00:00','2022-01-03 08:00:00',1,1),
(2,'Tester1','1','2022-01-03 08:01:00','2022-01-03 08:01:00',1,1),
(3,'Tester2','0','2022-01-03 08:02:00','2022-01-03 08:02:00',1,1),
(4,'Tester3','1','2022-01-03 08:03:00','2022-01-03 08:03:00',1,1);*/

/*Table structure for table `empleado` */

DROP TABLE IF EXISTS `empleado`;

CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL AUTO_INCREMENT,
  `id_cargo` int(11) NOT NULL,
  `correo_institucional` varchar(50) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `arl` varchar(20) NOT NULL,
  `salud` varchar(20) NOT NULL,
  `pension` varchar(20) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `sueldo_basico` double DEFAULT NULL,
  `estado` enum('0','1') NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  `id_usuario_creacion` int(11) NOT NULL,
  `id_usuario_modificacion` int(11) NOT NULL,
  PRIMARY KEY (`id_empleado`),
  UNIQUE KEY `id_persona` (`id_persona`),
  KEY `id_cargo` (`id_cargo`),
  KEY `id_usuario_creacion` (`id_usuario_creacion`),
  KEY `id_usuario_modificacion` (`id_usuario_modificacion`),
  CONSTRAINT `empleado_ibfk_3` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `empleado_ibfk_4` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`),
  CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`id_cargo`) REFERENCES `cargo` (`id_cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `empleado` */

/*Table structure for table `formulario` */

DROP TABLE IF EXISTS `formulario`;

CREATE TABLE `formulario` (
  `id_formulario` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  `etiqueta` varchar(30) NOT NULL,
  `ubicacion` varchar(100) NOT NULL,
  `estado` enum('0','1') NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  `id_usuario_creacion` int(11) NOT NULL,
  `id_usuario_modificacion` int(11) NOT NULL,
  PRIMARY KEY (`id_formulario`),
  KEY `id_usuario_creacion` (`id_usuario_creacion`),
  KEY `id_usuario_modificacion` (`id_usuario_modificacion`),
  CONSTRAINT `formulario_ibfk_1` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `formulario_ibfk_2` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

/*Data for the table `formulario` */

/*insert  into `formulario`(`id_formulario`,`descripcion`,`etiqueta`,`ubicacion`,`estado`,`fecha_creacion`,`fecha_modificacion`,`id_usuario_creacion`,`id_usuario_modificacion`) values 
(1,'Formulario','Seguridad','./vista/seguridad/formulario.V.php','1','2021-05-10 22:22:00','2021-05-10 22:22:00',1,1),
(2,'Formularios de rol','Seguridad','./vista/seguridad/formularioRol.V.php','1','2021-05-10 22:22:00','2021-05-10 22:22:00',1,1),
(3,'Persona','Seguridad','./vista/seguridad/persona.V.php','1','2021-05-10 22:22:00','2021-05-10 22:22:00',1,1),
(4,'Rol','Seguridad','./vista/seguridad/rol.V.php','1','2021-05-10 22:22:00','2021-05-10 22:22:00',1,1),
(5,'Usuario','Seguridad','./vista/seguridad/usuario.V.php','1','2021-05-10 22:22:00','2021-05-10 22:22:00',1,1),
(6,'Cargo','Nomina','./vista/nomina/cargo.V.php','1','2021-05-10 22:22:00','2021-05-10 22:22:00',1,1),
(7,'Empleado','Nomina','./vista/nomina/empleado.V.php','1','2021-05-10 22:22:00','2021-05-10 22:22:00',1,1),
(8,'Generar pago','Nomina','./vista/nomina/generarPago.V.php','1','2021-05-10 22:22:00','2021-06-12 20:48:28',1,1),
(9,'Pago del dia','Nomina','./vista/nomina/pagoDia.V.php','1','2021-05-10 22:22:00','2021-05-10 22:22:00',1,1),
(10,'Categoria','Produccion','./vista/produccion/categoria.V.php','1','2021-05-10 22:22:00','2021-05-10 22:22:00',1,1),
(11,'Detalles de orden','Produccion','./vista/produccion/detalleOrden.V.php','1','2021-05-10 22:22:00','2021-05-10 22:22:00',1,1),
(12,'Orden de produccion','Produccion','./vista/produccion/orden.V.php','1','2021-05-10 22:22:00','2021-06-18 13:04:47',1,1),
(13,'Producto','Produccion','./vista/produccion/producto.V.php','1','2021-05-10 22:22:00','2021-05-10 22:22:00',1,1),
(14,'Tarea','Produccion','./vista/produccion/tarea.V.php','1','2021-05-10 22:22:00','2021-05-10 22:22:00',1,1),
(15,'Rol de usuario','Seguridad','./vista/seguridad/usuarioRol.V.php','1','2021-05-10 22:22:00','2021-06-01 23:31:39',1,1),
(17,'Insumo','Produccion','./vista/produccion/insumo.V.php','1','2021-06-11 00:24:18','2021-06-11 00:24:18',1,1);*/

/*Table structure for table `formulario_rol` */

DROP TABLE IF EXISTS `formulario_rol`;

CREATE TABLE `formulario_rol` (
  `id_formulario_rol` int(11) NOT NULL AUTO_INCREMENT,
  `id_rol` int(11) NOT NULL,
  `id_formulario` int(11) NOT NULL,
  `estado` enum('0','1') NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  `id_usuario_creacion` int(11) NOT NULL,
  `id_usuario_modificacion` int(11) NOT NULL,
  PRIMARY KEY (`id_formulario_rol`),
  KEY `id_rol` (`id_rol`),
  KEY `id_formulario` (`id_formulario`),
  KEY `id_usuario_creacion` (`id_usuario_creacion`),
  KEY `id_usuario_modificacion` (`id_usuario_modificacion`),
  CONSTRAINT `formulario_rol_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`),
  CONSTRAINT `formulario_rol_ibfk_2` FOREIGN KEY (`id_formulario`) REFERENCES `formulario` (`id_formulario`),
  CONSTRAINT `formulario_rol_ibfk_3` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `formulario_rol_ibfk_4` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

/*Data for the table `formulario_rol` */

/*insert  into `formulario_rol`(`id_formulario_rol`,`id_rol`,`id_formulario`,`estado`,`fecha_creacion`,`fecha_modificacion`,`id_usuario_creacion`,`id_usuario_modificacion`) values 
(1,1,1,'1','2021-05-10 22:22:00','2021-05-10 22:22:00',1,1),
(2,1,2,'1','2021-05-10 22:22:00','2021-05-10 22:22:00',1,1),
(3,1,3,'1','2021-05-10 22:22:00','2021-05-10 22:22:00',1,1),
(4,1,4,'1','2021-05-10 22:22:00','2021-05-10 22:22:00',1,1),
(5,1,5,'1','2021-05-10 22:22:00','2021-05-10 22:22:00',1,1),
(6,1,6,'1','2021-05-10 22:22:00','2021-05-10 22:22:00',1,1),
(7,1,7,'1','2021-05-10 22:22:00','2021-05-10 22:22:00',1,1),
(8,1,8,'1','2021-05-10 22:22:00','2021-05-10 22:22:00',1,1),
(9,1,9,'1','2021-05-10 22:22:00','2021-05-10 22:22:00',1,1),
(10,1,10,'1','2021-05-10 22:22:00','2021-05-10 22:22:00',1,1),
(11,1,11,'1','2021-05-10 22:22:00','2021-05-10 22:22:00',1,1),
(12,1,12,'1','2021-05-10 22:22:00','2021-05-10 22:22:00',1,1),
(13,1,13,'1','2021-05-10 22:22:00','2021-05-10 22:22:00',1,1),
(14,1,14,'1','2021-05-10 22:22:00','2021-05-10 22:22:00',1,1),
(15,1,15,'1','2021-05-10 22:22:00','2021-05-10 22:22:00',1,1),
(20,1,16,'1','2021-06-01 23:32:08','2021-06-01 23:32:08',1,1),
(21,1,17,'1','2021-06-11 00:25:07','2021-06-11 00:25:07',1,1);*/

/*Table structure for table `persona` */

DROP TABLE IF EXISTS `persona`;

CREATE TABLE `persona` (
  `id_persona` int(11) NOT NULL AUTO_INCREMENT,
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
  `id_usuario_modificacion` int(11) NOT NULL,
  PRIMARY KEY (`id_persona`),
  UNIQUE KEY `documento` (`documento`),
  KEY `id_usuario_creacion` (`id_usuario_creacion`),
  KEY `id_usuario_modificacion` (`id_usuario_modificacion`),
  CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `persona_ibfk_2` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/*Data for the table `persona` */

insert  into `persona`(`id_persona`,`nombre`,`apellido`,`tipo_documento`,`documento`,`edad`,`genero`,`estado`,`fecha_creacion`,`fecha_modificacion`,`id_usuario_creacion`,`id_usuario_modificacion`) values 
(1,'Eduardo Andres','Peña Rojas','CC',1075264436,29,'M','1','2022-01-03 09:01:00','2022-01-03 09:01:00',1,1);/*
(2,'Carmenza','Gonzalez','CC',1075264422,42,'F','1','2021-04-22 00:00:00','2021-04-22 00:00:00',1,1),
(3,'Alejandra','Tovar','CC',1075264423,22,'F','1','2021-04-22 00:00:00','2021-04-22 00:00:00',1,1),
(4,'Costurera','Sin Datos','CC',1075264424,11,'M','0','2021-04-22 00:00:00','2021-06-07 16:16:42',1,1),
(5,'Cliente#1','ACliente#1','TI',1075264425,17,'O','0','2021-05-10 20:00:00','2021-06-07 15:51:07',1,1),
(6,'Cliente#2','ACliente#2','CC',1075264426,102,'F','1','2021-05-10 20:00:00','2021-05-10 20:00:00',1,1),
(7,'Cliente#3','ACliente#3','TI',1075264427,18,'O','1','2021-05-10 20:00:00','2021-06-07 15:55:47',1,1),
(8,'Cliente#4','ACliente#4','CC',1075264428,104,'F','1','2021-05-10 20:00:00','2021-05-10 20:00:00',1,1),
(9,'Cliente#5','ACliente#5','CC',1075264429,105,'M','1','2021-05-10 20:00:00','2021-05-10 20:00:00',1,1),
(10,'Wilmer','Vargas Bautista','CC',1075250180,30,'M','1','2021-06-01 23:30:41','2021-06-01 23:30:41',1,1),
(11,'Oscar Leonardo','Perdomo','CC',1081158586,26,'M','1','2021-06-01 23:14:56','2021-06-01 23:14:56',1,1),
(12,'Eduardo Andres','Peña Rojas','CC',1075264436,28,'M','1','2021-06-07 16:35:22','2021-06-07 16:35:22',1,1);*/

/*Table structure for table `rol` */

DROP TABLE IF EXISTS `rol`;

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  `estado` enum('0','1') NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  `id_usuario_creacion` int(11) NOT NULL,
  `id_usuario_modificacion` int(11) NOT NULL,
  PRIMARY KEY (`id_rol`),
  KEY `id_usuario_creacion` (`id_usuario_creacion`),
  KEY `id_usuario_modificacion` (`id_usuario_modificacion`),
  CONSTRAINT `rol_ibfk_1` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `rol_ibfk_2` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `rol` */

/*insert  into `rol`(`id_rol`,`descripcion`,`estado`,`fecha_creacion`,`fecha_modificacion`,`id_usuario_creacion`,`id_usuario_modificacion`) values 
(1,'Administrador','1','2022-01-03 09:06:00','2022-01-03 09:06:00',1,1),
(2,'Tester','1','2022-01-03 09:07:00','2022-01-03 09:07:00',1,1),
(3,'Vendedor','1','2021-05-10 20:00:00','2021-05-10 20:00:00',1,1);*/

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `contrasenia` varchar(50) NOT NULL,
  `fecha_activacion` date NOT NULL,
  `fecha_expiracion` date NOT NULL,
  `id_persona` int(11) NOT NULL,
  `estado` enum('0','1') NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  `id_usuario_creacion` int(11) NOT NULL,
  `id_usuario_modificacion` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `id_persona_UNIQUE` (`id_persona`),
  KEY `id_persona` (`id_persona`),
  KEY `id_usuario_creacion` (`id_usuario_creacion`),
  KEY `id_usuario_modificacion` (`id_usuario_modificacion`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`),
  CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `usuario` */

insert  into `usuario`(`id_usuario`,`usuario`,`contrasenia`,`fecha_activacion`,`fecha_expiracion`,`id_persona`,`estado`,`fecha_creacion`,`fecha_modificacion`,`id_usuario_creacion`,`id_usuario_modificacion`) values 
(1,'eduardo.andres@sstsenahuila.com','eduardo','2022-01-03','2022-12-30',1,'1','2022-01-03 09:00:00','2022-01-03 09:00:00',1,1);/*
(2,'carmen@.com','9f564fef13bb8a7f9faa5f9071e4e045','2021-05-02','2021-05-07',2,'1','2021-05-11 22:06:54','2021-06-01 20:21:55',1,2),
(3,'ariel5253@misena.edu.com','31784d9fc1fa0d25d04eae50ac9bf787','2021-05-16','2021-06-02',5,'1','2021-05-11 22:11:21','2021-06-01 20:45:25',1,3),
(4,'olperdomo6@misena.edu.co','149815eb972b3c370dee3b89d645ae14','2021-06-01','2022-01-01',11,'1','2021-06-01 23:16:47','2021-06-01 23:16:47',1,1),
(5,'edurado.andres@gmail.com','e44985980c9d3c5d70b6a548b14d773a','2021-06-01','2022-06-01',12,'1','2021-06-01 23:32:32','2021-06-01 23:42:46',1,1);*/

/*Table structure for table `usuario_rol` */

DROP TABLE IF EXISTS `usuario_rol`;

CREATE TABLE `usuario_rol` (
  `id_usuario_rol` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `estado` enum('0','1') NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  `id_usuario_creacion` int(11) NOT NULL,
  `id_usuario_modificacion` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario_rol`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_rol` (`id_rol`),
  KEY `id_usuario_creacion` (`id_usuario_creacion`),
  KEY `id_usuario_modificacion` (`id_usuario_modificacion`),
  CONSTRAINT `usuario_rol_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `usuario_rol_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`),
  CONSTRAINT `usuario_rol_ibfk_3` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `usuario_rol_ibfk_4` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `usuario_rol` */

/*insert  into `usuario_rol`(`id_usuario_rol`,`id_usuario`,`id_rol`,`estado`,`fecha_creacion`,`fecha_modificacion`,`id_usuario_creacion`,`id_usuario_modificacion`) values 
(1,1,1,'1','2022-01-03 09:08:00','2022-01-03 09:08:00',1,1),
(3,4,1,'1','2021-06-01 23:18:20','2021-06-01 23:18:20',1,1),
(4,5,1,'1','2021-06-01 23:00:00','2022-06-01 23:00:00',1,1);*/
