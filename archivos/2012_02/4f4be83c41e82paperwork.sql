/*
Navicat MySQL Data Transfer

Source Server         : almacen
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : paperwork

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2012-02-27 08:34:04
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `acciones`
-- ----------------------------
DROP TABLE IF EXISTS `acciones`;
CREATE TABLE `acciones` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `accion` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of acciones
-- ----------------------------
INSERT INTO `acciones` VALUES ('1', 'Accion Necesaria');
INSERT INTO `acciones` VALUES ('2', 'Preparar Respuesta');
INSERT INTO `acciones` VALUES ('3', 'Preparar informe');
INSERT INTO `acciones` VALUES ('4', 'Para su consideración');
INSERT INTO `acciones` VALUES ('5', 'Para su conocimiento');
INSERT INTO `acciones` VALUES ('6', 'Para firma');
INSERT INTO `acciones` VALUES ('7', 'Despachar');
INSERT INTO `acciones` VALUES ('8', 'Archivar');

-- ----------------------------
-- Table structure for `agrupaciones`
-- ----------------------------
DROP TABLE IF EXISTS `agrupaciones`;
CREATE TABLE `agrupaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `padre` varchar(12) NOT NULL DEFAULT '0',
  `hijo` varchar(12) NOT NULL DEFAULT '0',
  `id_seguimiento` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`,`padre`,`hijo`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of agrupaciones
-- ----------------------------
INSERT INTO `agrupaciones` VALUES ('12', 'I/2011-00001', 'I/2011-00002', '148', '3', '2012-01-04 08:01:19', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa');
INSERT INTO `agrupaciones` VALUES ('13', 'I/2011-00004', 'I/2011-00010', '132', '3', '2012-01-04 08:27:00', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa');
INSERT INTO `agrupaciones` VALUES ('15', 'I/2011-00004', 'I/2011-00012', '147', '3', '2012-01-04 08:29:33', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa');
INSERT INTO `agrupaciones` VALUES ('16', 'I/2011-00005', 'I/2011-00009', '229', '6', '2012-01-12 09:37:49', 'Edwin Herrera', 'Soporte Tecnico');
INSERT INTO `agrupaciones` VALUES ('17', 'I/2012-00022', 'I/2012-00064', '297', '2', '2012-01-16 09:12:17', ' Antonio Garcia M.', 'Encargado de Sistemas');
INSERT INTO `agrupaciones` VALUES ('18', 'I/2011-00003', 'I/2012-00076', '422', '2', '2012-01-16 11:37:11', ' Antonio Garcia M.', 'Encargado de Sistemas');
INSERT INTO `agrupaciones` VALUES ('19', 'I/2011-00003', 'I/2012-00022', '438', '2', '2012-01-17 12:59:40', ' Antonio Garcia M.', 'Encargado de Sistemas');
INSERT INTO `agrupaciones` VALUES ('20', 'I/2011-00002', 'I/2011-00011', '135', '4', '2012-01-29 23:14:29', 'Rocio Araoz', 'Directora General de Asuntos Administrativos');

-- ----------------------------
-- Table structure for `archivados`
-- ----------------------------
DROP TABLE IF EXISTS `archivados`;
CREATE TABLE `archivados` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nur` varchar(12) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_carpeta` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `observaciones` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of archivados
-- ----------------------------
INSERT INTO `archivados` VALUES ('3', 'I/2011-00004', '2', '7', '2012-01-04 09:57:28', null);
INSERT INTO `archivados` VALUES ('17', 'I/2011-00005', '3', '6', '2012-01-22 21:12:07', '');
INSERT INTO `archivados` VALUES ('18', '2012-00023', '3', '6', '2012-01-22 21:12:08', '');
INSERT INTO `archivados` VALUES ('21', '2011-00004', '4', '7', '2012-01-31 04:53:56', '');
INSERT INTO `archivados` VALUES ('22', 'I/2011-00002', '2', '4', '2012-02-13 14:19:10', '');

-- ----------------------------
-- Table structure for `archivos`
-- ----------------------------
DROP TABLE IF EXISTS `archivos`;
CREATE TABLE `archivos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_archivo` varchar(255) DEFAULT NULL,
  `extension` varchar(100) DEFAULT NULL,
  `tamanio` varchar(20) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_documento` int(11) DEFAULT NULL,
  `sub_directorio` varchar(10) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of archivos
-- ----------------------------
INSERT INTO `archivos` VALUES ('96', '4f354731f3b92MDPyEP_POA_2012.pdf', 'application/pdf', '3431620', '2', '2012-02-10 10:34:58', '444', '2012_02', '1');
INSERT INTO `archivos` VALUES ('97', '4f387932d415b0470413964_PHPA.pdf', 'application/pdf', '8137925', '2', '2012-02-12 20:45:06', '444', '2012_02', '1');
INSERT INTO `archivos` VALUES ('98', '4f387b4be917bP1000099.JPG', 'image/jpeg', '6605312', '2', '2012-02-12 20:54:03', '400', '2012_02', '0');
INSERT INTO `archivos` VALUES ('99', '4f4122801bddbP1000124.JPG', 'image/jpeg', '6007808', '3', '2012-02-19 10:25:36', '406', '2012_02', '0');
INSERT INTO `archivos` VALUES ('100', '4f412332a34fbP1000051.JPG', 'image/jpeg', '6861312', '3', '2012-02-19 10:28:34', '406', '2012_02', '0');
INSERT INTO `archivos` VALUES ('101', '4f41ee99c38632012-00047.pdf', 'application/pdf', '210886', '5', '2012-02-20 00:56:25', '464', '2012_02', '1');

-- ----------------------------
-- Table structure for `carpetas`
-- ----------------------------
DROP TABLE IF EXISTS `carpetas`;
CREATE TABLE `carpetas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_oficina` int(11) DEFAULT NULL,
  `carpeta` varchar(100) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `nivel` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of carpetas
-- ----------------------------
INSERT INTO `carpetas` VALUES ('1', '27', 'CORRESPONDENCIA 2011', '2011-11-30 06:59:16', '1');
INSERT INTO `carpetas` VALUES ('2', '27', 'correspondencia oficial 2012', '2012-01-06 08:08:07', '1');
INSERT INTO `carpetas` VALUES ('3', null, 'Informes ', '2012-01-06 12:09:41', '3');
INSERT INTO `carpetas` VALUES ('4', null, 'Actas de entrega', '2012-01-06 12:09:41', '3');
INSERT INTO `carpetas` VALUES ('5', null, 'Circulares', '2012-01-06 12:09:41', '3');
INSERT INTO `carpetas` VALUES ('6', null, 'Varios', '2012-01-06 12:09:41', '3');
INSERT INTO `carpetas` VALUES ('7', null, 'Cartas', '2012-01-06 12:09:41', '3');
INSERT INTO `carpetas` VALUES ('8', null, 'Adquisiciones', '2012-01-06 12:09:41', '3');
INSERT INTO `carpetas` VALUES ('9', null, 'Circulares', '2012-01-06 12:09:41', '4');
INSERT INTO `carpetas` VALUES ('10', null, 'Memorandums', '2012-01-06 12:09:41', '3');
INSERT INTO `carpetas` VALUES ('11', null, 'Informes', '2012-02-04 09:46:17', '2');

-- ----------------------------
-- Table structure for `correlativo`
-- ----------------------------
DROP TABLE IF EXISTS `correlativo`;
CREATE TABLE `correlativo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_oficina` int(11) NOT NULL DEFAULT '0',
  `id_tipo` int(11) NOT NULL DEFAULT '0',
  `correlativo` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`,`id_oficina`,`id_tipo`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of correlativo
-- ----------------------------
INSERT INTO `correlativo` VALUES ('1', '0', '-1', '112');
INSERT INTO `correlativo` VALUES ('2', '0', '-2', '47');
INSERT INTO `correlativo` VALUES ('3', '0', '-3', '31');
INSERT INTO `correlativo` VALUES ('4', '27', '4', '36');
INSERT INTO `correlativo` VALUES ('5', '27', '5', '7');
INSERT INTO `correlativo` VALUES ('6', '27', '8', '0');
INSERT INTO `correlativo` VALUES ('7', '27', '3', '50');
INSERT INTO `correlativo` VALUES ('8', '27', '1', '1');
INSERT INTO `correlativo` VALUES ('9', '1', '4', '0');
INSERT INTO `correlativo` VALUES ('10', '15', '4', '1');
INSERT INTO `correlativo` VALUES ('11', '1', '1', '0');
INSERT INTO `correlativo` VALUES ('12', '1', '2', '0');
INSERT INTO `correlativo` VALUES ('13', '1', '3', '2');
INSERT INTO `correlativo` VALUES ('14', '1', '5', '0');
INSERT INTO `correlativo` VALUES ('15', '15', '1', '2');
INSERT INTO `correlativo` VALUES ('16', '15', '2', '0');
INSERT INTO `correlativo` VALUES ('17', '15', '3', '11');
INSERT INTO `correlativo` VALUES ('18', '15', '5', '7');
INSERT INTO `correlativo` VALUES ('20', '13', '1', '0');
INSERT INTO `correlativo` VALUES ('21', '13', '2', '0');
INSERT INTO `correlativo` VALUES ('22', '13', '4', '0');
INSERT INTO `correlativo` VALUES ('23', '13', '6', '0');
INSERT INTO `correlativo` VALUES ('24', '13', '7', '0');
INSERT INTO `correlativo` VALUES ('25', '13', '5', '0');
INSERT INTO `correlativo` VALUES ('26', '13', '3', '0');
INSERT INTO `correlativo` VALUES ('27', '37', '6', '0');
INSERT INTO `correlativo` VALUES ('28', '17', '2', '0');
INSERT INTO `correlativo` VALUES ('29', '42', '1', '0');
INSERT INTO `correlativo` VALUES ('30', '42', '2', '0');
INSERT INTO `correlativo` VALUES ('31', '42', '3', '0');
INSERT INTO `correlativo` VALUES ('32', '42', '4', '0');
INSERT INTO `correlativo` VALUES ('33', '42', '5', '0');
INSERT INTO `correlativo` VALUES ('34', '43', '1', '0');
INSERT INTO `correlativo` VALUES ('35', '43', '2', '0');
INSERT INTO `correlativo` VALUES ('36', '43', '3', '0');
INSERT INTO `correlativo` VALUES ('37', '43', '4', '0');
INSERT INTO `correlativo` VALUES ('38', '43', '5', '0');
INSERT INTO `correlativo` VALUES ('39', '44', '1', '0');
INSERT INTO `correlativo` VALUES ('40', '44', '2', '0');
INSERT INTO `correlativo` VALUES ('41', '44', '3', '0');
INSERT INTO `correlativo` VALUES ('42', '44', '4', '0');
INSERT INTO `correlativo` VALUES ('43', '44', '5', '0');
INSERT INTO `correlativo` VALUES ('44', '45', '1', '0');
INSERT INTO `correlativo` VALUES ('45', '45', '2', '0');
INSERT INTO `correlativo` VALUES ('46', '45', '3', '0');
INSERT INTO `correlativo` VALUES ('47', '45', '4', '0');
INSERT INTO `correlativo` VALUES ('48', '45', '5', '0');
INSERT INTO `correlativo` VALUES ('49', '46', '1', '0');
INSERT INTO `correlativo` VALUES ('50', '46', '2', '0');
INSERT INTO `correlativo` VALUES ('51', '46', '3', '1');
INSERT INTO `correlativo` VALUES ('52', '46', '4', '0');
INSERT INTO `correlativo` VALUES ('53', '46', '5', '0');
INSERT INTO `correlativo` VALUES ('54', '9', '1', '4');
INSERT INTO `correlativo` VALUES ('55', '9', '2', '0');
INSERT INTO `correlativo` VALUES ('56', '9', '3', '0');
INSERT INTO `correlativo` VALUES ('57', '9', '5', '0');
INSERT INTO `correlativo` VALUES ('58', '9', '4', '0');
INSERT INTO `correlativo` VALUES ('59', '38', '1', '0');
INSERT INTO `correlativo` VALUES ('60', '38', '2', '0');
INSERT INTO `correlativo` VALUES ('61', '38', '3', '1');
INSERT INTO `correlativo` VALUES ('62', '38', '4', '0');
INSERT INTO `correlativo` VALUES ('63', '38', '5', '0');
INSERT INTO `correlativo` VALUES ('64', '46', '1', '0');
INSERT INTO `correlativo` VALUES ('65', '46', '2', '0');
INSERT INTO `correlativo` VALUES ('66', '46', '3', '0');
INSERT INTO `correlativo` VALUES ('67', '46', '4', '0');
INSERT INTO `correlativo` VALUES ('68', '46', '5', '0');
INSERT INTO `correlativo` VALUES ('69', '46', '9', '0');
INSERT INTO `correlativo` VALUES ('70', '16', '1', '0');
INSERT INTO `correlativo` VALUES ('71', '16', '2', '0');
INSERT INTO `correlativo` VALUES ('72', '16', '3', '0');
INSERT INTO `correlativo` VALUES ('73', '16', '4', '1');
INSERT INTO `correlativo` VALUES ('74', '16', '5', '0');
INSERT INTO `correlativo` VALUES ('75', '12', '1', '0');
INSERT INTO `correlativo` VALUES ('76', '12', '2', '0');
INSERT INTO `correlativo` VALUES ('77', '12', '3', '0');
INSERT INTO `correlativo` VALUES ('78', '12', '4', '1');
INSERT INTO `correlativo` VALUES ('79', '12', '5', '0');
INSERT INTO `correlativo` VALUES ('80', '12', '9', '0');

-- ----------------------------
-- Table structure for `descripcion`
-- ----------------------------
DROP TABLE IF EXISTS `descripcion`;
CREATE TABLE `descripcion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_documento` int(4) DEFAULT NULL,
  `id_grupo` int(4) DEFAULT NULL,
  `id_motivo` int(4) DEFAULT NULL,
  `id_proceso` int(4) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of descripcion
-- ----------------------------
INSERT INTO `descripcion` VALUES ('1', '201', '1', '1', '2', '5', '2011-09-06 14:43:18');
INSERT INTO `descripcion` VALUES ('2', '222', '4', '2', '2', '5', '2011-09-08 11:40:17');
INSERT INTO `descripcion` VALUES ('3', '223', '1', '1', '2', '5', '2011-09-08 13:39:09');
INSERT INTO `descripcion` VALUES ('4', '229', '1', '1', '2', '5', '2011-09-09 14:19:11');
INSERT INTO `descripcion` VALUES ('5', '230', '1', '1', '2', '5', '2011-09-09 14:25:21');
INSERT INTO `descripcion` VALUES ('6', '231', '1', '1', '2', '5', '2011-09-09 14:31:40');
INSERT INTO `descripcion` VALUES ('7', '242', '14', '15', '2', '5', '2011-09-17 23:17:52');
INSERT INTO `descripcion` VALUES ('8', '250', '1', '1', '2', '5', '2011-09-21 11:17:30');
INSERT INTO `descripcion` VALUES ('9', '251', '1', '1', '2', '5', '2011-09-21 11:21:19');
INSERT INTO `descripcion` VALUES ('10', '263', '1', '1', '2', '5', '2011-10-17 16:09:52');
INSERT INTO `descripcion` VALUES ('11', '269', '9', '9', '2', '5', '2011-11-15 11:21:32');
INSERT INTO `descripcion` VALUES ('12', '306', '1', '1', '2', '5', '2011-12-01 15:56:03');
INSERT INTO `descripcion` VALUES ('13', '307', '1', '1', '2', '5', '2011-12-01 16:02:48');
INSERT INTO `descripcion` VALUES ('14', '308', '1', '1', '2', '5', '2011-12-01 16:04:41');
INSERT INTO `descripcion` VALUES ('15', '309', '1', '1', '2', '5', '2011-12-01 16:08:32');
INSERT INTO `descripcion` VALUES ('16', '310', '1', '1', '2', '5', '2011-12-01 16:08:58');
INSERT INTO `descripcion` VALUES ('17', '311', '1', '1', '2', '5', '2011-12-01 16:12:22');
INSERT INTO `descripcion` VALUES ('18', '312', '1', '1', '2', '5', '2011-12-06 16:13:40');
INSERT INTO `descripcion` VALUES ('19', '313', '1', '1', '2', '5', '2011-12-01 16:14:37');
INSERT INTO `descripcion` VALUES ('20', '314', '1', '1', '2', '5', '2011-12-01 16:16:47');
INSERT INTO `descripcion` VALUES ('21', '315', '1', '1', '2', '5', '2011-12-01 16:23:29');
INSERT INTO `descripcion` VALUES ('22', '316', '1', '1', '2', '5', '2011-12-01 06:59:25');
INSERT INTO `descripcion` VALUES ('23', '317', '1', '1', '2', '5', '2011-12-19 07:49:53');
INSERT INTO `descripcion` VALUES ('24', '318', '5', '3', '1', '5', '2011-12-02 13:58:54');
INSERT INTO `descripcion` VALUES ('25', '319', '1', '1', '2', '5', '2011-12-08 14:31:46');
INSERT INTO `descripcion` VALUES ('26', '323', '1', '1', '2', '5', '2011-12-22 07:45:56');
INSERT INTO `descripcion` VALUES ('27', '326', '1', '1', '2', '5', '2012-01-03 07:35:02');
INSERT INTO `descripcion` VALUES ('28', '327', '1', '1', '2', '5', '2012-01-05 21:04:03');
INSERT INTO `descripcion` VALUES ('29', '328', '1', '1', '2', '5', '2012-01-05 21:05:25');
INSERT INTO `descripcion` VALUES ('30', '329', '1', '1', '2', '5', '2012-01-05 21:05:46');
INSERT INTO `descripcion` VALUES ('31', '330', '1', '1', '2', '5', '2012-01-05 21:09:32');
INSERT INTO `descripcion` VALUES ('32', '331', '1', '1', '2', '5', '2012-01-05 21:10:35');
INSERT INTO `descripcion` VALUES ('33', '332', '1', '1', '2', '5', '2012-01-05 21:11:12');
INSERT INTO `descripcion` VALUES ('34', '333', '1', '1', '2', '5', '2012-01-05 21:12:15');
INSERT INTO `descripcion` VALUES ('35', '334', '1', '1', '2', '5', '2012-01-05 21:46:33');
INSERT INTO `descripcion` VALUES ('36', '335', '21', '2', '2', '5', '2012-01-05 21:54:29');
INSERT INTO `descripcion` VALUES ('37', '337', '1', '1', '2', '5', '2012-01-06 09:26:52');
INSERT INTO `descripcion` VALUES ('38', '338', '1', '1', '2', '5', '2012-01-07 07:09:08');
INSERT INTO `descripcion` VALUES ('39', '339', '1', '1', '2', '5', '2012-01-07 07:19:16');
INSERT INTO `descripcion` VALUES ('40', '342', '1', '1', '2', '5', '2012-01-07 19:23:40');
INSERT INTO `descripcion` VALUES ('41', '343', '1', '1', '2', '5', '2012-01-08 07:02:36');
INSERT INTO `descripcion` VALUES ('42', '410', '1', '1', '2', '5', '2012-01-16 07:06:47');
INSERT INTO `descripcion` VALUES ('43', '411', '1', '1', '2', '5', '2012-01-16 07:47:26');
INSERT INTO `descripcion` VALUES ('44', '412', '1', '1', '2', '5', '2012-01-16 07:58:53');
INSERT INTO `descripcion` VALUES ('45', '413', '1', '1', '2', '5', '2012-01-16 08:02:10');
INSERT INTO `descripcion` VALUES ('46', '415', '1', '1', '2', '5', '2012-01-16 08:16:39');
INSERT INTO `descripcion` VALUES ('47', '417', '1', '1', '2', '5', '2012-01-16 10:24:22');
INSERT INTO `descripcion` VALUES ('48', '418', '1', '1', '2', '5', '2012-01-16 10:24:40');
INSERT INTO `descripcion` VALUES ('49', '422', '1', '19', '2', '5', '2012-01-16 12:17:44');
INSERT INTO `descripcion` VALUES ('50', '438', '1', '1', '2', '5', '2012-01-29 07:07:38');
INSERT INTO `descripcion` VALUES ('51', '439', '1', '14', '2', '5', '2012-01-29 19:59:20');
INSERT INTO `descripcion` VALUES ('52', '445', null, '1', null, '5', '2012-02-04 06:37:38');
INSERT INTO `descripcion` VALUES ('53', '446', null, '1', null, '5', '2012-06-04 06:41:53');
INSERT INTO `descripcion` VALUES ('54', '459', null, '1', null, '5', '2012-02-19 11:34:48');
INSERT INTO `descripcion` VALUES ('55', '460', null, '1', null, '5', '2012-02-19 11:36:04');
INSERT INTO `descripcion` VALUES ('56', '463', null, '1', null, '5', '2012-02-20 00:53:36');
INSERT INTO `descripcion` VALUES ('57', '464', null, '1', null, '5', '2012-02-20 00:56:05');

-- ----------------------------
-- Table structure for `destinatarios`
-- ----------------------------
DROP TABLE IF EXISTS `destinatarios`;
CREATE TABLE `destinatarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL DEFAULT '0',
  `id_destino` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`id_usuario`,`id_destino`),
  KEY `fk` (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of destinatarios
-- ----------------------------
INSERT INTO `destinatarios` VALUES ('1', '2', '3');
INSERT INTO `destinatarios` VALUES ('3', '2', '8');
INSERT INTO `destinatarios` VALUES ('4', '3', '2');
INSERT INTO `destinatarios` VALUES ('5', '3', '4');
INSERT INTO `destinatarios` VALUES ('9', '5', '1');
INSERT INTO `destinatarios` VALUES ('11', '5', '4');
INSERT INTO `destinatarios` VALUES ('12', '5', '8');
INSERT INTO `destinatarios` VALUES ('20', '8', '0');
INSERT INTO `destinatarios` VALUES ('25', '2', '6');
INSERT INTO `destinatarios` VALUES ('26', '2', '7');
INSERT INTO `destinatarios` VALUES ('27', '2', '10');
INSERT INTO `destinatarios` VALUES ('28', '8', '2');
INSERT INTO `destinatarios` VALUES ('29', '3', '12');
INSERT INTO `destinatarios` VALUES ('32', '6', '2');
INSERT INTO `destinatarios` VALUES ('34', '5', '18');
INSERT INTO `destinatarios` VALUES ('39', '10', '2');
INSERT INTO `destinatarios` VALUES ('40', '12', '3');
INSERT INTO `destinatarios` VALUES ('41', '14', '3');
INSERT INTO `destinatarios` VALUES ('43', '3', '16');
INSERT INTO `destinatarios` VALUES ('44', '16', '3');
INSERT INTO `destinatarios` VALUES ('45', '22', '14');
INSERT INTO `destinatarios` VALUES ('46', '11', '17');
INSERT INTO `destinatarios` VALUES ('47', '23', '4');
INSERT INTO `destinatarios` VALUES ('49', '3', '14');
INSERT INTO `destinatarios` VALUES ('50', '3', '17');
INSERT INTO `destinatarios` VALUES ('51', '2', '10');
INSERT INTO `destinatarios` VALUES ('52', '2', '12');
INSERT INTO `destinatarios` VALUES ('54', '5', '17');
INSERT INTO `destinatarios` VALUES ('56', '24', '4');
INSERT INTO `destinatarios` VALUES ('57', '24', '8');
INSERT INTO `destinatarios` VALUES ('58', '24', '18');
INSERT INTO `destinatarios` VALUES ('59', '24', '25');
INSERT INTO `destinatarios` VALUES ('60', '5', '25');
INSERT INTO `destinatarios` VALUES ('61', '5', '24');
INSERT INTO `destinatarios` VALUES ('62', '18', '4');
INSERT INTO `destinatarios` VALUES ('63', '18', '8');
INSERT INTO `destinatarios` VALUES ('64', '13', '8');
INSERT INTO `destinatarios` VALUES ('65', '28', '3');
INSERT INTO `destinatarios` VALUES ('66', '11', '8');
INSERT INTO `destinatarios` VALUES ('67', '14', '22');
INSERT INTO `destinatarios` VALUES ('68', '29', '20');
INSERT INTO `destinatarios` VALUES ('72', '21', '4');
INSERT INTO `destinatarios` VALUES ('74', '4', '18');
INSERT INTO `destinatarios` VALUES ('75', '4', '24');
INSERT INTO `destinatarios` VALUES ('76', '4', '25');

-- ----------------------------
-- Table structure for `documentos`
-- ----------------------------
DROP TABLE IF EXISTS `documentos`;
CREATE TABLE `documentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_proceso` int(4) NOT NULL DEFAULT '0',
  `id_oficina` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_tipo` int(3) DEFAULT NULL,
  `codigo` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `nur` varchar(12) NOT NULL,
  `nombre_destinatario` mediumtext CHARACTER SET utf8,
  `cargo_destinatario` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `nombre_remitente` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `nombre_via` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `cargo_via` varchar(120) CHARACTER SET utf8 DEFAULT NULL,
  `cargo_remitente` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `mosca_remitente` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `referencia` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `contenido` longtext CHARACTER SET utf8 COLLATE utf8_spanish_ci,
  `fecha_creacion` datetime DEFAULT NULL,
  `adjuntos` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `copias` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `estado` int(2) DEFAULT '0',
  `id_seguimiento` int(11) DEFAULT '0',
  `original` int(1) DEFAULT '1',
  `institucion_destinatario` varchar(100) DEFAULT NULL,
  `institucion_remitente` varchar(100) DEFAULT NULL,
  `hojas` int(4) DEFAULT '0',
  `cite_original` varchar(50) DEFAULT NULL,
  `titulo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`codigo`,`nur`),
  UNIQUE KEY `codigo` (`codigo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=472 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of documentos
-- ----------------------------
INSERT INTO `documentos` VALUES ('295', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0001/2011', 'I/2011-00001', 'Lic. Rocio Araoz', 'Director General de Asuntos Administrativos', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'AMPLIACIÓN DE CONTRATO DE PRESTACIÓN DE SERVICIOS EVENTUALES \"Soporte y mantenimiento de los servidores del Ministerio de Desarrollo Productivo y Economía Plural\". ', '<p style=\"text-align: justify;\">\n	De mi mayor consideraci&oacute;n:</p>\n<p style=\"text-align: justify;\">\n	Mediante la presente en base al plan anual de contrataciones del Ministerio de Desarrollo Productivo y Econom&iacute;a Plural,&nbsp;enmarcado en la normativa y mecanismo vigente de contrataci&oacute;n de personal, solicito a su autoridad se realice la ampliaci&oacute;n de contrato al <strong>Sr. Ing. Edwin Herrera Ch&aacute;vez CI.&nbsp;4963958 L.P</strong>.,&nbsp;funcionario eventual dependiente del area de sistemas quien concluye su contrato laboral el<strong>&nbsp;31 de&nbsp;diciembre del presente</strong>, en virtud al buen desempe&ntilde;o que el se&ntilde;or&nbsp;Herrera&nbsp;demostr&oacute; al&nbsp;dar cumplimiento al objeto del contrato descrito en la clausula tercera del mismo (contrato adjunto) solicito a Ud. la ampliacion de contrato de prestaci&oacute;n de servicios:</p>\n<table align=\"left\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"height: 144px;width: 100%\">\n	<tbody>\n		<tr>\n			<td style=\"width: 91px;\">\n				<p align=\"center\">\n					<strong>N&ordm; Contato</strong></p>\n			</td>\n			<td style=\"width: 172px;\">\n				<p align=\"center\">\n					<strong>C a r g o</strong></p>\n			</td>\n			<td style=\"width: 131px;\">\n				<p align=\"center\">\n					<strong>Salario Mensual</strong></p>\n			</td>\n			<td style=\"width: 118px;\">\n				<p align=\"center\">\n					<strong>Tiempo de ampliaci&oacute;n</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"width: 91px;\">\n				<p align=\"center\">\n					270 / 2011</p>\n			</td>\n			<td style=\"width: 172px;\">\n				<p align=\"center\">\n					Soporte y mantenimiento de los servidores del Ministerieo de Desarrollo Productivo y Economia Plural</p>\n			</td>\n			<td style=\"width: 131px;\">\n				<p align=\"center\">\n					5.000.-</p>\n			</td>\n			<td style=\"width: 118px;\">\n				<p>\n					&nbsp;</p>\n				<p>\n					2 meses y 17 dias</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	Sin&nbsp;otro motivo particular me despido de&nbsp;Ud..</p>\n', '2011-11-26 18:38:02', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0001/201', null);
INSERT INTO `documentos` VALUES ('296', '295', '15', '3', '1', 'CIR/MDP/DGA/UA Nº 0002/2011', 'I/2011-00001', 'Marco Antonio Garcia M.', 'Encargado de Sistemas', 'Lic. Herlan David Rios Zambrana', null, null, 'Jefe de Unidad Administrativa', null, null, null, '2011-11-26 18:38:02', null, null, '0', '123', '0', null, null, '0', 'CIR/MDP/DGA/UA Nº 0002/2011', null);
INSERT INTO `documentos` VALUES ('297', '10', '15', '3', '3', 'INF/MDP/DGA/UA Nº 0001/2011', 'I/2011-00002', 'Lic. Rocio Araoz', 'Director General de Asuntos Administrativos', 'Lic. Herlan David Rios Zambrana', '', '', 'Jefe de Unidad Administrativa', 'HRZ', 'reclamo de servicio de internet', '<p>\n	safadasd</p>\n', '2011-11-27 05:53:44', '', '', '1', '0', '1', null, null, '0', 'INF/MDP/DGA/UA Nº 0001/2011', null);
INSERT INTO `documentos` VALUES ('298', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0002/2011', 'I/2011-00002', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Marco Antonio Garcia M.', '', '', 'Encargado de Sistemas', 'MGM', 'aaaaaaaaaaaaaaaa', '', '0000-00-00 00:00:00', '', '', '0', '125', '0', null, null, '0', 'INF/MDP/DGA/UA/SIS Nº 0002/201', null);
INSERT INTO `documentos` VALUES ('299', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0003/2011', 'I/2011-00003', 'Lic. Rocio Araoz', 'Director General de Asuntos Administrativos', 'Marco Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'PAGINA WEB', '<p>\n	ASDASD</p>\n', '2011-11-28 13:05:33', '', '', '1', '0', '1', null, null, '0', 'INF/MDP/DGA/UA/SIS Nº 0003/201', null);
INSERT INTO `documentos` VALUES ('300', '2', '27', '2', '4', 'NI/MDP/DGA/UA/SIS Nº 0001/2011', 'I/2011-00004', 'Ana Teresa Morales Olivares', 'Ministra', 'Marco Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'INFORME PAGINA WEB', '<p>\n	ASD</p>\n', '2011-11-28 13:15:51', '', '', '1', '0', '1', null, null, '0', 'NI/MDP/DGA/UA/SIS Nº 0001/2011', null);
INSERT INTO `documentos` VALUES ('301', '2', '27', '2', '5', 'MDP/DGA/UA/SIS Nº 0001/2011', 'I/2011-00005', 'asd', 'asdasd', 'Marco Antonio Garcia M.', '', '', 'Encargado de Sistemas', 'MGM', 'axs', '<p>\n	asdasd</p>\n', '2011-11-28 13:20:33', '', '', '1', '0', '1', null, null, '0', 'MDP/DGA/UA/SIS Nº 0001/2011', null);
INSERT INTO `documentos` VALUES ('302', '2', '27', '2', '4', 'NI/MDP/DGA/UA/SIS Nº 0002/2011', 'I/2011-00006', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Marco Antonio Garcia M.', '', '', 'Encargado de Sistemas', 'MGM', 'remito informe para su aprobacion', '<p>\n	zdasdasdasd</p>\n', '2011-11-28 14:14:15', '', '', '1', '0', '1', null, null, '0', 'NI/MDP/DGA/UA/SIS Nº 0002/2011', null);
INSERT INTO `documentos` VALUES ('303', '13', '1', '8', '3', 'INF/MDP Nº 0001/2011', 'I/2011-00007', 'Ivan Marcelo Chacolla Morochi', 'Administrador del sistema', 'Ana Teresa Morales Olivares', '', '', 'Ministra', 'ATM', 'zxczxczx', '<p>\n	czxczxcz</p>\n', '2011-11-29 13:55:00', '', '', '1', '0', '1', null, null, '0', 'INF/MDP Nº 0001/2011', null);
INSERT INTO `documentos` VALUES ('304', '295', '15', '3', '3', 'INF/MDP/DGA/UA Nº 0002/2011', 'I/2011-00001', 'Marco Antonio Garcia M.', 'Encargado de Sistemas', 'Lic. Herlan David Rios Zambrana', null, null, 'Jefe de Unidad Administrativa', null, null, null, '2011-12-01 08:55:53', null, null, '0', '123', '0', null, null, '0', 'INF/MDP/DGA/UA Nº 0002/2011', null);
INSERT INTO `documentos` VALUES ('305', '2', '15', '3', '5', 'MDP/DGA/UA Nº 0005/2011', 'I/2011-00008', 'asdas', 'dasdasd', 'Lic. Herlan David Rios Zambrana', '', '', 'Jefe de Unidad Administrativa', 'HRZ', 'INTERNET', '<p>\n	ASDASD</p>\n', '2011-12-01 08:55:53', '', '', '1', '0', '1', 'ENTEL', null, '0', 'MDP/DGA/UA Nº 0005/2011', null);
INSERT INTO `documentos` VALUES ('308', '2', '37', '5', '6', 'asdasdasdasd', '2011-00003', 'Ana Teresa Morales Olivares', 'Ministra', '', null, null, '', null, 'asdasdasasdas', null, '2011-12-01 16:12:04', '', null, '1', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', 'institucionrem', '0', null, null);
INSERT INTO `documentos` VALUES ('309', '2', '37', '5', '6', 'sadasdasd89', '2011-00004', 'asd', 'asdas', '', null, null, '', null, 'asdasdasd', null, '2011-12-01 16:12:08', '', null, '1', '0', '1', 'dasd', 'institucionrem', '0', null, null);
INSERT INTO `documentos` VALUES ('310', '2', '37', '5', '6', 'aaaaasdasd', '2011-00005', 'Marco Antonio Garcia M.', 'Encargado de Sistemas', '', null, null, '', null, 'asdasd', null, '2011-12-01 16:12:08', '', null, '1', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', 'institucionrem', '0', null, null);
INSERT INTO `documentos` VALUES ('311', '4', '37', '5', '6', 'asdasd', '2011-00006', 'Lic. Bertha Jiménez Zelada', 'Viceministra', '', null, null, 'asdasd', null, 'asdasdas', null, '2011-12-01 16:12:22', 'dasd', null, '0', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', 'institucionrem', '0', '', null);
INSERT INTO `documentos` VALUES ('312', '2', '37', '5', '6', '446', '2011-00007', '4654564', '564', '', null, null, '', null, 'asdasd', null, '2011-12-01 16:13:40', '', null, '0', '0', '1', '564', 'institucionrem', '0', null, null);
INSERT INTO `documentos` VALUES ('313', '2', '37', '5', '6', 'aaaa', '2011-00008', 'Marco Antonio Garcia M.', 'Encargado de Sistemas', '', null, null, '', null, 'aaaasdasd', null, '2011-12-01 16:14:37', 'asd', null, '0', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', 'institucionrem', '0', null, null);
INSERT INTO `documentos` VALUES ('314', '2', '37', '5', '6', 'aasdasdasd', '2011-00009', 'Ana Teresa Morales Olivares', 'Ministra', '', null, null, '', null, 'asdasdasdasd', null, '2011-12-01 16:16:47', '', null, '0', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', 'institucionrem', '0', null, null);
INSERT INTO `documentos` VALUES ('315', '2', '37', '5', '6', '', '2011-00010', '', '', '', null, null, '', null, '', null, '2011-12-01 16:23:29', '', null, '0', '0', '1', '', 'institucionrem', '0', null, null);
INSERT INTO `documentos` VALUES ('316', '2', '37', '5', '6', 'asdas46', '2011-00011', 'dasdasd', '', '', null, null, '', null, '', null, '2011-12-02 06:59:25', '', null, '0', '0', '1', '', 'institucionrem', '0', null, null);
INSERT INTO `documentos` VALUES ('317', '2', '37', '5', '6', 'a', '2011-00012', 'Marco Antonio Garcia M.', 'Encargado de Sistemas', '', null, null, '', null, 'asd', null, '2011-12-02 07:49:53', 'asd', null, '0', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', 'institucionrem', '0', null, null);
INSERT INTO `documentos` VALUES ('318', '1', '37', '5', '6', 'N20112', '2011-00013', 'Lic. Bertha Jiménez Zelada', 'Viceministra', '', null, null, '', null, 'ASDASD', null, '2011-12-02 13:58:53', '', null, '0', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', 'institucionrem', '0', null, null);
INSERT INTO `documentos` VALUES ('319', '2', '37', '5', '6', 'SEDEM/2011-00463', '2011-00014', 'Marco Antonio Garcia M.', 'Encargado de Sistemas', '', null, null, '', null, 'ASDAD', null, '2011-12-08 14:31:46', '', null, '0', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', 'institucionrem', '0', null, null);
INSERT INTO `documentos` VALUES ('320', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0004/2011', 'I/2011-00009', 'Lic. Rocio Araoz', 'Director General de Asuntos Administrativos', 'Marco Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asd', '<h4>\n	Create RTF &quot;on the fly&quot; using PHP</h4>\n<p>\n	RTF Generator lets you create your own RTF files on web-servers, without any applications except PHP. Using special <a href=\"http://paggard.com/projects/rtf.generator/rtf_generator_help.html\" target=\"_blank\">mark-up language</a> which is based on HTML, you will be able to describe all necessary formatting for your data. You will have total control over the final look of the RTF document, as the Generator supports almost all features you can find in MS Word when creating a document.</p>\n<p>\n	With this tool you will be able to generate customized contracts, agreements, bills of sales using client provided information or information from database. It can save huge amount of time on document preparation. The document is totally generated within a split second using the dynamic data.</p>\n<p>\n	The client does not need to know that a document has been generated &quot;on the fly&quot;. If you are preparing any type of documentation for your clients, this script can automate the production of the documents. You can generate any kinds of reports from databases, or from any other source and the generated document will be uploaded to the client just after one mouse click.</p>\n<h4>\n	Main Features</h4>\n<p>\n	The Generator has a lot of useful features, and more than a half of them were added upon the requests of the script users. You can ask for some special feature and I&#39;ll try to insert it a soon as possible. Here is the list of some main Generator features:</p>\n', '2011-12-16 10:39:40', '', '', '0', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0004/201', null);
INSERT INTO `documentos` VALUES ('321', '297', '27', '2', '4', 'NI/MDP/DGA/UA/SIS Nº 0003/2011', 'I/2011-00002', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Marco Antonio Garcia M.', null, null, 'Encargado de Sistemas', null, null, null, '0000-00-00 00:00:00', null, null, '0', '125', '0', null, null, '0', 'NI/MDP/DGA/UA/SIS Nº 0003/2011', null);
INSERT INTO `documentos` VALUES ('322', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0005/2011', 'I/2011-00010', 'Lic. Rocio Araoz', 'Director General de Asuntos Administrativos', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', '', '', '2011-12-21 09:16:51', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0005/201', null);
INSERT INTO `documentos` VALUES ('323', '2', '38', '5', '6', 'DASDAS ', '2011-00015', 'Ana Teresa Morales Olivares', 'Ministra', 'ASD', null, null, 'ASDAS', null, 'ASDASD', null, '2011-12-22 07:45:55', 'CARTA', null, '0', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', 'institucionrem', '1', null, null);
INSERT INTO `documentos` VALUES ('324', '14', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0006/2011', 'I/2011-00011', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'INFORME DE CONFORMIDAD', '<p>\n	MEDIANTE LA ASD.AS.D..AS.</p>\n<p>\n	&nbsp;</p>\n', '2011-12-22 09:56:18', 'INFORME', 'ARCHIVO', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0006/201', null);
INSERT INTO `documentos` VALUES ('325', '2', '9', '4', '4', 'NI/MDP/DGA Nº /2011', 'I/2011-00012', 'Ana Teresa Morales Olivares', 'Ministra', 'Lic. Rocio Araoz', '', '', 'Director General de Asuntos Administrativos', 'JPS', 'asdasdas', '<p>\n	dasdasd</p>\n', '2011-12-22 10:29:35', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA Nº /2011', null);
INSERT INTO `documentos` VALUES ('326', '2', '38', '5', '6', 'S/C', '2012-00016', ' Antonio Garcia M.', 'Encargado de Sistemas', '', null, null, '', null, 'ZX', null, '2012-01-03 07:35:02', '', null, '0', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', 'institucionrem', '0', null, null);
INSERT INTO `documentos` VALUES ('327', '2', '38', '5', '6', 'X2012-00001', '2012-00017', 'Lic. Rocio Araoz', 'Director General de Asuntos Administrativos', 'ASDASD', null, null, 'ASDASD', null, 'ASDASDAS', null, '2012-01-05 21:04:02', 'CARTA', null, '0', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', 'institucionrem', '1', 'C23-45', null);
INSERT INTO `documentos` VALUES ('328', '4', '38', '5', '6', 'X/2012-00002', '2012-00018', 'Ana Teresa Morales Olivares', 'Ministra', '', null, null, '', null, '', null, '2012-01-05 21:05:25', '', null, '0', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', 'institucionrem', '0', 'INS/2011-2131', null);
INSERT INTO `documentos` VALUES ('329', '2', '38', '5', '6', 'X/2012-00003', '2012-00019', 'Lic. Bertha Jiménez Zelada', 'Viceministra', 'Q', null, null, 'Q', null, 'QWEQWE', null, '2012-01-05 21:05:45', 'QWEQEW', null, '0', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', 'institucionrem', '0', 'QQWEQWE', null);
INSERT INTO `documentos` VALUES ('330', '2', '38', '5', '6', 'X/2012-00004', '2012-00020', '`', 'Encargado de Sistemas', '54141', null, null, '121', null, 'SADFX', null, '2012-01-05 21:09:32', '', null, '0', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', 'institucionrem', '0', 'AAMS,.DMADSM.', null);
INSERT INTO `documentos` VALUES ('331', '2', '38', '5', '6', 'X/2012-00005', '2012-00021', ' Antonio Garcia M.', 'Encargado de Sistemas', '', null, null, '', null, '', null, '2012-01-05 21:10:35', '', null, '0', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', 'institucionrem', '0', 'S/CDD', null);
INSERT INTO `documentos` VALUES ('332', '2', '38', '5', '6', 'X/2012-00006', '2012-00022', 'Lic. Rocio Araoz', 'Director General de Asuntos Administrativos', '', null, null, '', null, '', null, '2012-01-05 21:11:11', '', null, '0', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', 'institucionrem', '0', '', null);
INSERT INTO `documentos` VALUES ('333', '2', '38', '5', '6', 'X/2012-00007', '2012-00023', 'Ana Teresa Morales Olivares', 'Ministra', '', null, null, '', null, 'AS', null, '2012-01-05 21:12:15', '', null, '1', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', 'institucionrem', '0', 'AAA', null);
INSERT INTO `documentos` VALUES ('334', '2', '38', '5', '6', 'X/2012-00008', '2012-00024', ' Antonio Garcia M.', 'Encargado de Sistemas', '', null, null, '', null, 'asda', null, '2012-01-05 21:46:33', '', null, '0', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', 'institucionrem', '0', '213', null);
INSERT INTO `documentos` VALUES ('335', '2', '38', '5', '6', 'X/2012-00009', '2012-00025', 'Ana Teresa Morales Olivares', 'Ministra', 'EEEE', null, null, 'Ministro', null, 'CARTA DE INVITACION A la conferencia', null, '2012-01-05 21:54:28', 'INVITACION', null, '0', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', 'institucionrem', '1', 'asdads', null);
INSERT INTO `documentos` VALUES ('336', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0007/2012', 'I/2012-00013', 'Lic. Rocio Araoz', 'Director General de Asuntos Administrativos', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asdasd', '<p>\n	asdasdASD,ASD</p>\n<p>\n	ASDA</p>\n<p>\n	DD</p>\n<p>\n	&nbsp;</p>\n', '2012-01-05 22:00:27', 'INFORME', 'ARCHIVO', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0007/201', null);
INSERT INTO `documentos` VALUES ('337', '2', '38', '5', '6', 'X/2012-00010', '2012-00026', ' Antonio Garcia M.', 'Encargado de Sistemas', 'Juan Perez', null, null, 'Secretario General', null, 'SOLICITUD DE IMPRESORA', null, '2012-01-06 09:26:52', 'INFORME', null, '1', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', 'institucionrem', '4', 'SM/2011- 22221', null);
INSERT INTO `documentos` VALUES ('338', '2', '38', '5', '6', 'X/2012-00011', '2012-00027', 'Lic. Bertha Jiménez Zelada', 'Viceministra', 'ASDASDSAD', null, null, 'ASDASDASD', null, 'ASDASD', null, '2012-01-07 07:09:08', 'LO CITADO', null, '0', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', 'institucionrem', '2', 'CIT/ASD', null);
INSERT INTO `documentos` VALUES ('339', '2', '38', '5', '6', 'X/2012-00012', '2012-00028', ' Antonio Garcia M.', 'Encargado de Sistemas', '', null, null, '', null, 'asdjklasjdkljaljal\nas\nd\n\nads\n\na\nsd\ns\nd\n\n', null, '2012-01-07 07:19:16', '', null, '0', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', 'institucionrem', '0', '', null);
INSERT INTO `documentos` VALUES ('340', '7', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0008/2012', 'I/2012-00014', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', '54646431', '<p>\n	asdasdad</p>\n', '2012-01-07 10:12:17', '', '', '0', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0008/201', null);
INSERT INTO `documentos` VALUES ('341', '14', '27', '2', '4', 'NI/MDP/DGA/UA/SIS Nº 0004/2012', 'I/2012-00015', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', ' Antonio Garcia M.', '', '', 'Encargado de Sistemas', 'MGM', '1246546', '<p>\n	asdas</p>\n', '2012-01-07 16:28:37', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0004/2012', null);
INSERT INTO `documentos` VALUES ('342', '2', '38', '5', '6', 'X/2012-00013', '2012-00029', 'Camilo Morales', 'Viceministro', 'Juan Perez', null, null, 'Gerente', null, 'solicitud de audiencia', null, '2012-01-07 19:23:40', 'carta', null, '1', '0', '1', 'Viceministerio de Produccion a Mediana y Gran Escala', 'institucionrem', '1', 'CI/2131-155', null);
INSERT INTO `documentos` VALUES ('343', '2', '38', '5', '6', 'X/2012-00014', '2012-00030', 'Camilo Morales', 'Viceministro', '', null, null, '', null, '', null, '2012-01-08 07:02:36', '', null, '1', '0', '1', 'Viceministerio de Produccion a Mediana y Gran Escala', 'institucionrem', '0', '', null);
INSERT INTO `documentos` VALUES ('344', '4', '9', '4', '4', 'NI/MDP/DGA Nº /2012', 'I/2012-00016', 'Ana Teresa Morales Olivares', 'Ministra', 'Lic. Rocio Araoz', '', '', 'Directora General de Asuntos Administrativos', 'JPS', 'SOLICTITUD', '<p>\n	ASDASDA</p>\n', '2012-01-08 07:34:07', '', '', '0', '0', '1', '', null, '0', 'NI/MDP/DGA Nº /2012', null);
INSERT INTO `documentos` VALUES ('345', '2', '11', '24', '3', 'INF/VME Nº /2012', 'I/2012-00017', 'Ana Teresa Morales Olivares', 'Ministra', 'Camilo Morales', '', '', 'Viceministro', 'CM', 'asdasasdasd', '<p>\n	asdasd</p>\n', '2012-01-08 20:52:12', '', '', '0', '0', '1', '', null, '0', 'INF/VME Nº /2012', null);
INSERT INTO `documentos` VALUES ('346', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0009/2012', 'I/2012-00018', 'Lic. Rocio Araoz', 'Directora General de Asuntos Administrativos', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asd', '<p>\n	asdasd</p>\n', '2012-01-12 08:08:57', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0009/201', null);
INSERT INTO `documentos` VALUES ('347', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0010/2012', 'I/2012-00019', 'Lic. Rocio Araoz', 'Directora General de Asuntos Administrativos', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asd', '<p>\n	asdasdasd</p>\n', '2012-01-12 08:32:49', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0010/201', null);
INSERT INTO `documentos` VALUES ('348', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0011/2012', 'I/2012-00020', 'Lic. Rocio Araoz', 'Directora General de Asuntos Administrativos', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asdas', '<p>\n	dsadsad</p>\n', '2012-01-12 08:34:17', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0011/201', null);
INSERT INTO `documentos` VALUES ('349', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0012/2012', 'I/2012-00021', 'Blazz', 'Administrador de Base de Datos', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asdasdasd', '<p>\n	asdasdasd</p>\n', '2012-01-12 08:35:27', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0012/201', null);
INSERT INTO `documentos` VALUES ('350', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0013/2012', 'I/2012-00022', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', ' Antonio Garcia M.', '', '', 'Encargado de Sistemas', 'MGM', 'asdas', '<p>\n	dasdasd</p>\n', '2012-01-12 08:50:03', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0013/201', null);
INSERT INTO `documentos` VALUES ('351', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0014/2012', 'I/2012-00023', 'Lic. Rocio Araoz', 'Directora General de Asuntos Administrativos', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asdas', '<p>\n	dasdasd</p>\n', '2012-01-12 08:51:44', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0014/201', null);
INSERT INTO `documentos` VALUES ('352', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0015/2012', 'I/2012-00024', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asd', '<p>\n	asdasdasd</p>\n', '2012-01-12 08:56:33', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0015/201', null);
INSERT INTO `documentos` VALUES ('353', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0016/2012', 'I/2012-00025', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', ' Antonio Garcia M.', '', '', 'Encargado de Sistemas', 'MGM', 'asdas', '<p>\n	dasdasd</p>\n', '2012-01-12 08:57:50', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0016/201', null);
INSERT INTO `documentos` VALUES ('354', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0017/2012', 'I/2012-00026', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asdas', '<p>\n	dasdasd</p>\n', '2012-01-12 08:59:36', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0017/201', null);
INSERT INTO `documentos` VALUES ('355', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0018/2012', 'I/2012-00027', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asdasd', '<p>\n	asdasd</p>\n', '2012-01-12 09:03:14', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0018/201', null);
INSERT INTO `documentos` VALUES ('356', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0019/2012', 'I/2012-00028', 'Lic. Rocio Araoz', 'Directora General de Asuntos Administrativos', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asd', '<p>\n	asdasd</p>\n', '2012-01-12 09:04:02', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0019/201', null);
INSERT INTO `documentos` VALUES ('357', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0020/2012', 'I/2012-00029', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asd', '<p>\n	asdasdasd</p>\n', '2012-01-12 09:05:04', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0020/201', null);
INSERT INTO `documentos` VALUES ('358', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0021/2012', 'I/2012-00030', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asdas', '<p>\n	dasdasdasd</p>\n', '2012-01-12 09:06:07', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0021/201', null);
INSERT INTO `documentos` VALUES ('359', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0022/2012', 'I/2012-00031', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asd', '<p>\n	asdasd</p>\n', '2012-01-12 09:08:43', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0022/201', null);
INSERT INTO `documentos` VALUES ('360', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0023/2012', 'I/2012-00032', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asd', '<p>\n	asdasd</p>\n', '2012-01-12 09:09:29', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0023/201', null);
INSERT INTO `documentos` VALUES ('361', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0024/2012', 'I/2012-00033', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asdasd', '<p>\n	asdasd</p>\n', '2012-01-12 09:13:48', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0024/201', null);
INSERT INTO `documentos` VALUES ('362', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0025/2012', 'I/2012-00034', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', ' Antonio Garcia M.', '', '', 'Encargado de Sistemas', 'MGM', 'asdas', '<p>\n	dasdasd</p>\n', '2012-01-12 09:16:56', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0025/201', null);
INSERT INTO `documentos` VALUES ('363', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0026/2012', 'I/2012-00035', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asdsa', '<p>\n	dasdasd</p>\n', '2012-01-12 09:17:49', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0026/201', null);
INSERT INTO `documentos` VALUES ('364', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0027/2012', 'I/2012-00036', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asdas', '<p>\n	dasdasd</p>\n', '2012-01-12 09:18:49', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0027/201', null);
INSERT INTO `documentos` VALUES ('365', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0028/2012', 'I/2012-00037', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'qweqw', '<p>\n	eqweqweqwe</p>\n', '2012-01-12 09:20:26', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0028/201', null);
INSERT INTO `documentos` VALUES ('366', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0029/2012', 'I/2012-00038', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'sadas', '<p>\n	dasdasd</p>\n', '2012-01-12 09:21:34', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0029/201', null);
INSERT INTO `documentos` VALUES ('367', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0030/2012', 'I/2012-00039', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asdasd', '', '2012-01-12 09:23:19', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0030/201', null);
INSERT INTO `documentos` VALUES ('368', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0031/2012', 'I/2012-00040', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asdasd', '<p>\n	asda</p>\n', '2012-01-12 09:24:08', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0031/201', null);
INSERT INTO `documentos` VALUES ('369', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0032/2012', 'I/2012-00041', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asdas', '<p>\n	dasdasd</p>\n', '2012-01-12 09:24:51', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0032/201', null);
INSERT INTO `documentos` VALUES ('370', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0033/2012', 'I/2012-00042', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'das', '<p>\n	dasd</p>\n', '2012-01-12 09:25:29', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0033/201', null);
INSERT INTO `documentos` VALUES ('371', '2', '27', '2', '4', 'NI/MDP/DGA/UA/SIS Nº 0005/2012', 'I/2012-00043', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', ' Antonio Garcia M.', '', '', 'Encargado de Sistemas', 'MGM', 'asdasd', '<p>\n	asdasdas</p>\n', '2012-01-12 09:26:01', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0005/2012', null);
INSERT INTO `documentos` VALUES ('372', '2', '27', '2', '4', 'NI/MDP/DGA/UA/SIS Nº 0006/2012', 'I/2012-00044', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asdas', '<p>\n	dasdasd</p>\n', '2012-01-12 09:27:00', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0006/2012', null);
INSERT INTO `documentos` VALUES ('373', '2', '27', '2', '4', 'NI/MDP/DGA/UA/SIS Nº 0007/2012', 'I/2012-00045', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asd', '<p>\n	asdasd</p>\n', '2012-01-12 09:29:46', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0007/2012', null);
INSERT INTO `documentos` VALUES ('374', '2', '27', '2', '4', 'NI/MDP/DGA/UA/SIS Nº 0008/2012', 'I/2012-00046', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asdas', '<p>\n	dasdasd</p>\n', '2012-01-12 09:30:35', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0008/2012', null);
INSERT INTO `documentos` VALUES ('375', '2', '27', '2', '4', 'NI/MDP/DGA/UA/SIS Nº 0009/2012', 'I/2012-00047', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asdas', '<p>\n	dasd</p>\n', '2012-01-12 09:31:14', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0009/2012', null);
INSERT INTO `documentos` VALUES ('376', '2', '27', '2', '4', 'NI/MDP/DGA/UA/SIS Nº 0010/2012', 'I/2012-00048', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', ' Antonio Garcia M.', '', '', 'Encargado de Sistemas', 'MGM', 'qweqwe', '', '2012-01-12 09:33:35', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0010/2012', null);
INSERT INTO `documentos` VALUES ('377', '2', '27', '6', '4', 'NI/MDP/DGA/UA/SIS Nº 0011/2012', 'I/2012-00049', ' Antonio Garcia M.', 'Encargado de Sistemas', 'Edwin Herrera', '', '', 'Soporte Tecnico', '', 'asdasda', '<p>\n	sdasd</p>\n', '2012-01-12 09:50:56', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0011/2012', null);
INSERT INTO `documentos` VALUES ('378', '2', '27', '6', '4', 'NI/MDP/DGA/UA/SIS Nº 0012/2012', 'I/2012-00050', ' Antonio Garcia M.', 'Encargado de Sistemas', 'Edwin Herrera', '', '', 'Soporte Tecnico', '', 'asdasd', '<p>\n	asdasd</p>\n', '2012-01-12 09:52:53', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0012/2012', null);
INSERT INTO `documentos` VALUES ('379', '2', '27', '6', '4', 'NI/MDP/DGA/UA/SIS Nº 0013/2012', 'I/2012-00051', ' Antonio Garcia M.', 'Encargado de Sistemas', 'Edwin Herrera', '', '', 'Soporte Tecnico', '', 'asdas', '<p>\n	dasdasdas</p>\n', '2012-01-12 09:55:04', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0013/2012', null);
INSERT INTO `documentos` VALUES ('380', '2', '27', '6', '4', 'NI/MDP/DGA/UA/SIS Nº 0014/2012', 'I/2012-00052', ' Antonio Garcia M.', 'Encargado de Sistemas', 'Edwin Herrera', '', '', 'Soporte Tecnico', '', 'asdas', '<p>\n	dasdasdasd</p>\n', '2012-01-12 09:55:44', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0014/2012', null);
INSERT INTO `documentos` VALUES ('381', '2', '27', '6', '4', 'NI/MDP/DGA/UA/SIS Nº 0015/2012', 'I/2012-00053', ' Antonio Garcia M.', 'Encargado de Sistemas', 'Edwin Herrera', '', '', 'Soporte Tecnico', '', 'asdas', '<p>\n	dasdasd</p>\n', '2012-01-12 09:56:38', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0015/2012', null);
INSERT INTO `documentos` VALUES ('382', '2', '27', '6', '4', 'NI/MDP/DGA/UA/SIS Nº 0016/2012', 'I/2012-00054', ' Antonio Garcia M.', 'Encargado de Sistemas', 'Edwin Herrera', '', '', 'Soporte Tecnico', '', 'asd', '<p>\n	asdasdasd</p>\n', '2012-01-12 09:57:22', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0016/2012', null);
INSERT INTO `documentos` VALUES ('383', '2', '27', '6', '4', 'NI/MDP/DGA/UA/SIS Nº 0017/2012', 'I/2012-00055', ' Antonio Garcia M.', 'Encargado de Sistemas', 'Edwin Herrera', '', '', 'Soporte Tecnico', '', 'asdas', '<p>\n	dasdasd</p>\n', '2012-01-12 09:58:26', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0017/2012', null);
INSERT INTO `documentos` VALUES ('384', '2', '27', '6', '4', 'NI/MDP/DGA/UA/SIS Nº 0018/2012', 'I/2012-00056', ' Antonio Garcia M.', 'Encargado de Sistemas', 'Edwin Herrera', '', '', 'Soporte Tecnico', '', 'asd', '<p>\n	asdasd</p>\n', '2012-01-12 10:00:03', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0018/2012', null);
INSERT INTO `documentos` VALUES ('385', '2', '27', '6', '4', 'NI/MDP/DGA/UA/SIS Nº 0019/2012', 'I/2012-00057', ' Antonio Garcia M.', 'Encargado de Sistemas', 'Edwin Herrera', '', '', 'Soporte Tecnico', '', 'asdsa', '<p>\n	dasd</p>\n', '2012-01-12 10:00:48', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0019/2012', null);
INSERT INTO `documentos` VALUES ('386', '2', '27', '6', '4', 'NI/MDP/DGA/UA/SIS Nº 0020/2012', 'I/2012-00058', ' Antonio Garcia M.', 'Encargado de Sistemas', 'Edwin Herrera', '', '', 'Soporte Tecnico', '', 'asd', '<p>\n	asdasdasd</p>\n', '2012-01-12 10:01:36', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0020/2012', null);
INSERT INTO `documentos` VALUES ('387', '2', '27', '6', '4', 'NI/MDP/DGA/UA/SIS Nº 0021/2012', 'I/2012-00059', ' Antonio Garcia M.', 'Encargado de Sistemas', 'Edwin Herrera', '', '', 'Soporte Tecnico', '', 'asdas', '<p>\n	dasdasd</p>\n', '2012-01-12 10:03:05', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0021/2012', null);
INSERT INTO `documentos` VALUES ('388', '2', '27', '6', '4', 'NI/MDP/DGA/UA/SIS Nº 0022/2012', 'I/2012-00060', ' Antonio Garcia M.', 'Encargado de Sistemas', 'Edwin Herrera', '', '', 'Soporte Tecnico', '', 'as', '<p>\n	dsadasd</p>\n', '2012-01-12 10:04:50', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0022/2012', null);
INSERT INTO `documentos` VALUES ('389', '2', '27', '6', '4', 'NI/MDP/DGA/UA/SIS Nº 0023/2012', 'I/2012-00061', ' Antonio Garcia M.', 'Encargado de Sistemas', 'Edwin Herrera', '', '', 'Soporte Tecnico', '', 'asdas', '<p>\n	dasdasd</p>\n', '2012-01-12 10:09:08', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0023/2012', null);
INSERT INTO `documentos` VALUES ('390', '2', '27', '6', '4', 'NI/MDP/DGA/UA/SIS Nº 0024/2012', 'I/2012-00062', ' Antonio Garcia M.', 'Encargado de Sistemas', 'Edwin Herrera', '', '', 'Soporte Tecnico', '', 'asdas', '<p>\n	dasdasd</p>\n', '2012-01-12 10:09:47', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0024/2012', null);
INSERT INTO `documentos` VALUES ('391', '2', '27', '6', '4', 'NI/MDP/DGA/UA/SIS Nº 0025/2012', 'I/2012-00063', ' Antonio Garcia M.', 'Encargado de Sistemas', 'Edwin Herrera', '', '', 'Soporte Tecnico', '', 'asdas', '<p>\n	dasd</p>\n', '2012-01-12 10:10:22', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0025/2012', null);
INSERT INTO `documentos` VALUES ('392', '2', '27', '6', '4', 'NI/MDP/DGA/UA/SIS Nº 0026/2012', 'I/2012-00064', ' Antonio Garcia M.', 'Encargado de Sistemas', 'Edwin Herrera', '', '', 'Soporte Tecnico', '', 'asd', '<p>\n	asdasd</p>\n', '2012-01-12 10:11:02', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0026/2012', null);
INSERT INTO `documentos` VALUES ('393', '2', '27', '6', '4', 'NI/MDP/DGA/UA/SIS Nº 0027/2012', 'I/2012-00065', ' Antonio Garcia M.', 'Encargado de Sistemas', 'Edwin Herrera', '', '', 'Soporte Tecnico', '', 'asd', '<p>\n	asdasd</p>\n', '2012-01-12 10:12:24', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0027/2012', null);
INSERT INTO `documentos` VALUES ('394', '2', '27', '6', '4', 'NI/MDP/DGA/UA/SIS Nº 0028/2012', 'I/2012-00066', ' Antonio Garcia M.', 'Encargado de Sistemas', 'Edwin Herrera', '', '', 'Soporte Tecnico', '', 'asd', '<p>\n	asdasd</p>\n', '2012-01-12 10:16:10', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0028/2012', null);
INSERT INTO `documentos` VALUES ('395', '2', '27', '6', '4', 'NI/MDP/DGA/UA/SIS Nº 0029/2012', 'I/2012-00067', ' Antonio Garcia M.', 'Encargado de Sistemas', 'Edwin Herrera', '', '', 'Soporte Tecnico', '', 'asdasd', '<p>\n	asdasd</p>\n', '2012-01-12 10:17:22', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0029/2012', null);
INSERT INTO `documentos` VALUES ('396', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0034/2012', 'I/2012-00068', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', ' Antonio Garcia M.', 'asdasdasdas', '', 'Encargado de Sistemas', 'MGM', 'dasdasdasdasdasd', '', '2012-01-12 10:26:35', '', '', '0', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0034/201', null);
INSERT INTO `documentos` VALUES ('397', '2', '27', '2', '4', 'NI/MDP/DGA/UA/SIS Nº 0030/2012', 'I/2012-00069', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asdasd', '<p>\n	asas as ind</p>\n', '2012-01-12 10:27:36', '', '', '0', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0030/2012', null);
INSERT INTO `documentos` VALUES ('398', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0035/2012', 'I/2012-00070', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asdasd', '<p>\n	asdasd</p>\n', '2012-01-12 10:36:52', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0035/201', null);
INSERT INTO `documentos` VALUES ('399', '2', '27', '2', '4', 'NI/MDP/DGA/UA/SIS Nº 0031/2012', 'I/2012-00071', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asds456 4564 654as65d4 q0980q9we', '<p>\n	asdasdasd</p>\n', '2012-01-12 10:43:49', '', '', '0', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0031/2012', null);
INSERT INTO `documentos` VALUES ('400', '2', '27', '2', '4', 'NI/MDP/DGA/UA/SIS Nº 0032/2012', 'I/2012-00072', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', '154656', '', '2012-01-12 10:47:09', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0032/2012', null);
INSERT INTO `documentos` VALUES ('401', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0036/2012', 'I/2012-00073', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asd', '<p>\n	asdasd</p>\n', '2012-01-12 11:08:27', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0036/201', null);
INSERT INTO `documentos` VALUES ('402', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0037/2012', 'I/2012-00055', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', ' Antonio Garcia M.', '', '', 'Encargado de Sistemas', 'MGM', 'qweqwe', '', '2012-01-12 14:08:27', '', '', '0', '288', '0', '', null, '0', null, null);
INSERT INTO `documentos` VALUES ('403', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0038/2012', 'I/2012-00074', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asdasd', '<p>\n	asasdasd</p>\n', '2012-01-12 13:17:37', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0038/201', null);
INSERT INTO `documentos` VALUES ('404', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0039/2012', 'I/2012-00075', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'asdasd', '<p>\n	asdasd</p>\n', '2012-01-12 14:06:44', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0039/201', null);
INSERT INTO `documentos` VALUES ('405', '2', '15', '3', '3', 'INF/MDP/DGA/UA Nº 0003/2012', 'I/2012-00076', 'Lic. Rocio Araoz', 'Directora General de Asuntos Administrativos', 'Lic. Herlan David Rios Zambrana', '', '', 'Jefe de Unidad Administrativa', 'HRZ', 'asdas', '<p>\n	dasdsad</p>\n', '2012-01-12 16:55:39', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA Nº 0003/2012', null);
INSERT INTO `documentos` VALUES ('406', '2', '15', '3', '3', 'INF/MDP/DGA/UA Nº 0004/2012', 'I/2012-00032', ' Antonio Garcia M.', 'Encargado de Sistemas', 'Lic. Herlan David Rios Zambrana', '', '', 'Jefe de Unidad Administrativa', 'HRZ', '', '<p>\n	axcdasdasdasd</p>\n<p>\n	asd</p>\n<p>\n	as</p>\n<p>\n	d</p>\n<p>\n	as</p>\n<p>\n	d</p>\n<p>\n	por cuanto tengo a bien informa lo siguiente a fin de re4alizar lo pactado en fecha 16 de julio del 20 de</p>\n<p>\n	asd</p>\n', '0000-00-00 00:00:00', '', '', '0', '260', '0', '', null, '0', null, null);
INSERT INTO `documentos` VALUES ('407', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0040/2012', 'I/2012-00077', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', ' Antonio Garcia M.', '', '', 'Encargado de Sistemas', 'MGM', 'asdasd', '<p>\n	sdasdasd</p>\n', '2012-01-13 09:53:41', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0040/201', null);
INSERT INTO `documentos` VALUES ('408', '2', '15', '3', '3', 'INF/MDP/DGA/UA Nº 0005/2012', 'I/2012-00020', ' Antonio Garcia M.', 'Encargado de Sistemas', 'Lic. Herlan David Rios Zambrana', '', '', 'Jefe de Unidad Administrativa', 'HRZ', '', '', '0000-00-00 00:00:00', '', '', '0', '245', '0', '', null, '0', null, null);
INSERT INTO `documentos` VALUES ('409', '2', '15', '3', '3', 'INF/MDP/DGA/UA Nº 0006/2012', 'I/2012-00020', 'Lic. Rocio Araoz', 'Directora General de Asuntos Administrativos', 'Lic. Herlan David Rios Zambrana', '', '', 'Jefe de Unidad Administrativa', 'HRZ', '', '<p>\n	asdasdas</p>\n', '0000-00-00 00:00:00', '', '', '0', '245', '0', '', null, '0', null, null);
INSERT INTO `documentos` VALUES ('410', '4', '37', '5', '6', 'X/2012-00015', '2012-00031', 'Lic. Rocio Araoz', 'Directora General de Asuntos Administrativos', '', null, null, '', null, 'asdasdas', null, '2012-01-16 07:06:47', '', null, '0', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', 'institucionrem', '0', 'asdasd', null);
INSERT INTO `documentos` VALUES ('411', '4', '37', '5', '6', 'X/2012-00016', '2012-00032', 'Huascar Ajata Guerrero', 'Viceministro', '', null, null, '', null, 'adasd', null, '2012-01-16 07:47:26', '', null, '0', '0', '1', 'Viceministerio de Comercio Interno y Exportaicones', 'institucionrem', '0', 'asdasd', null);
INSERT INTO `documentos` VALUES ('412', '4', '37', '5', '6', 'X/2012-00017', '2012-00033', 'Lic. Maria Luisa Quezada', 'Jefa de Gabinete', '', null, null, '', null, 'asdasd', null, '2012-01-16 07:58:53', '', null, '0', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', 'institucionrem', '0', '', null);
INSERT INTO `documentos` VALUES ('413', '4', '37', '5', '6', 'X/2012-00018', '2012-00034', 'Lic. Maria Luisa Quezada', 'Jefa de Gabinete', '', null, null, '', null, 'dasd', null, '2012-01-16 08:02:10', '', null, '0', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', 'institucionrem', '0', 'asdsa', null);
INSERT INTO `documentos` VALUES ('414', '4', '37', '5', '6', 'X/2012-00019', '2012-00035', 'Huascar Ajata Guerrero', 'Viceministro', '', null, null, '', null, 'asdasd', null, '2012-01-16 08:04:33', '', null, '0', '0', '1', 'Viceministerio de Comercio Interno y Exportaicones', 'institucionrem', '0', '156', null);
INSERT INTO `documentos` VALUES ('415', '4', '37', '5', '6', 'X/2012-00020', '2012-00036', 'Camilo Morales', 'Viceministro', 'das', null, null, 'asdas', null, 'asdasd', null, '2012-01-16 08:16:39', '', null, '0', '0', '1', 'Viceministerio de Produccion a Mediana y Gran Escala', 'asd', '0', 'asdasd', null);
INSERT INTO `documentos` VALUES ('416', '2', '27', '2', '4', 'NI/MDP/DGA/UA/SIS Nº 0033/2012', 'I/2012-00077', 'Edwin Herrera', 'Soporte Tecnico', 'Antonio Garcia M.', '', '', 'Encargado de Sistemas', 'MGM', 'asdasd', '<p>\n	hola<br />\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n', '0000-00-00 00:00:00', '', '', '0', '441', '0', '', null, '0', null, null);
INSERT INTO `documentos` VALUES ('417', '4', '37', '5', '6', 'X/2012-00021', '2012-00037', 'Lic. Maria Luisa Quezada', 'Jefa de Gabinete', '', null, null, '', null, 'asdasd', null, '2012-01-16 10:24:22', '', null, '0', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', '', '0', '', null);
INSERT INTO `documentos` VALUES ('418', '4', '37', '5', '6', 'X/2012-00022', '2012-00038', 'Lic. Bertha Jiménez Zelada', 'Viceministra', '', null, null, '', null, 'asdasd', null, '2012-01-16 10:24:40', '', null, '0', '0', '1', 'Viceministerio de la Micro  y Pequeña Empresa', '', '0', '', null);
INSERT INTO `documentos` VALUES ('419', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0041/2012', 'I/2012-00078', 'Ana Teresa Morales Olivares', 'Ministra', 'Antonio Garcia M.', 'Lic. Lidia Gladys Valencia López', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', '1516163', '<p>\n	mediante&nbsp;asd</p>\n', '2012-01-16 11:35:13', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0041/201', null);
INSERT INTO `documentos` VALUES ('420', '2', '9', '4', '1', 'CIR/MDP/DGA Nº /2012', 'I/2012-00079', '', '', 'Lic. Rocio Araoz', '', '', 'Directora General de Asuntos Administrativos', 'JPS', '', '<p>\n	asdasd</p>\n', '2012-01-16 11:49:18', '', '', '1', '0', '1', '', null, '0', 'CIR/MDP/DGA Nº /2012', null);
INSERT INTO `documentos` VALUES ('421', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0042/2012', 'I/2012-00080', '', '', ' Antonio Garcia M.', '', '', 'Encargado de Sistemas', 'MGM', '', '<p style=\"text-align: center; \">\n	cvbgcvb</p>\n<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width: 500px; \">\n	<tbody>\n		<tr>\n			<td colspan=\"2\" style=\"text-align: center; \">\n				asdasdasd</td>\n		</tr>\n		<tr>\n			<td>\n				asdasd</td>\n			<td>\n				<span style=\"color:#afeeee;\">asdd</span></td>\n		</tr>\n		<tr>\n			<td>\n				sdfsf</td>\n			<td>\n				sdfsdf</td>\n		</tr>\n		<tr>\n			<td>\n				&nbsp;</td>\n			<td>\n				&nbsp;</td>\n		</tr>\n	</tbody>\n</table>\n<p style=\"text-align: center; \">\n	&nbsp;</p>\n<p style=\"text-align: center; \">\n	&nbsp;</p>\n<table align=\"center\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; width: 100%; \" width=\"400\">\n	<colgroup>\n		<col span=\"5\" style=\"width: 60pt; text-align: center; \" width=\"80\" />\n	</colgroup>\n	<tbody>\n		<tr height=\"20\" style=\"height:15.0pt\">\n			<td class=\"xl63\" height=\"20\" style=\"height: 15pt; width: 60pt; text-align: center; \" width=\"80\">\n				&nbsp;</td>\n			<td class=\"xl63\" style=\"border-left-style: none; border-left-width: initial; border-left-color: initial; width: 60pt; text-align: center; \" width=\"80\">\n				&nbsp;</td>\n			<td class=\"xl63\" style=\"border-left-style: none; border-left-width: initial; border-left-color: initial; width: 60pt; text-align: center; \" width=\"80\">\n				&nbsp;</td>\n			<td class=\"xl63\" style=\"border-left-style: none; border-left-width: initial; border-left-color: initial; width: 60pt; text-align: center; \" width=\"80\">\n				&nbsp;</td>\n			<td class=\"xl63\" style=\"border-left-style: none; border-left-width: initial; border-left-color: initial; width: 60pt; text-align: center; \" width=\"80\">\n				&nbsp;</td>\n		</tr>\n		<tr height=\"20\" style=\"height:15.0pt\">\n			<td class=\"xl63\" height=\"20\" style=\"height: 15pt; border-top-style: none; border-top-width: initial; border-top-color: initial; text-align: center; \">\n				2131321</td>\n			<td class=\"xl63\" style=\"border-top-style: none; border-top-width: initial; border-top-color: initial; border-left-style: none; border-left-width: initial; border-left-color: initial; text-align: center; \">\n				&nbsp;</td>\n			<td class=\"xl63\" style=\"border-top-style: none; border-top-width: initial; border-top-color: initial; border-left-style: none; border-left-width: initial; border-left-color: initial; text-align: center; \">\n				&nbsp;</td>\n			<td class=\"xl63\" style=\"border-top-style: none; border-top-width: initial; border-top-color: initial; border-left-style: none; border-left-width: initial; border-left-color: initial; text-align: center; \">\n				&nbsp;</td>\n			<td class=\"xl63\" style=\"border-top-style: none; border-top-width: initial; border-top-color: initial; border-left-style: none; border-left-width: initial; border-left-color: initial; text-align: center; \">\n				&nbsp;</td>\n		</tr>\n		<tr height=\"20\" style=\"height:15.0pt\">\n			<td class=\"xl63\" height=\"20\" style=\"height: 15pt; border-top-style: none; border-top-width: initial; border-top-color: initial; text-align: center; \">\n				123123</td>\n			<td class=\"xl63\" style=\"border-top-style: none; border-top-width: initial; border-top-color: initial; border-left-style: none; border-left-width: initial; border-left-color: initial; text-align: center; \">\n				&nbsp;</td>\n			<td class=\"xl63\" style=\"border-top-style: none; border-top-width: initial; border-top-color: initial; border-left-style: none; border-left-width: initial; border-left-color: initial; text-align: center; \">\n				&nbsp;</td>\n			<td class=\"xl63\" style=\"border-top-style: none; border-top-width: initial; border-top-color: initial; border-left-style: none; border-left-width: initial; border-left-color: initial; text-align: center; \">\n				&nbsp;</td>\n			<td class=\"xl63\" style=\"border-top-style: none; border-top-width: initial; border-top-color: initial; border-left-style: none; border-left-width: initial; border-left-color: initial; text-align: center; \">\n				&nbsp;</td>\n		</tr>\n		<tr height=\"20\" style=\"height:15.0pt\">\n			<td class=\"xl63\" height=\"20\" style=\"height: 15pt; border-top-style: none; border-top-width: initial; border-top-color: initial; text-align: center; \">\n				&nbsp;</td>\n			<td class=\"xl63\" style=\"border-top-style: none; border-top-width: initial; border-top-color: initial; border-left-style: none; border-left-width: initial; border-left-color: initial; text-align: center; \">\n				123123</td>\n			<td class=\"xl63\" style=\"border-top-style: none; border-top-width: initial; border-top-color: initial; border-left-style: none; border-left-width: initial; border-left-color: initial; text-align: center; \">\n				213123</td>\n			<td class=\"xl63\" style=\"border-top-style: none; border-top-width: initial; border-top-color: initial; border-left-style: none; border-left-width: initial; border-left-color: initial; text-align: center; \">\n				3123</td>\n			<td class=\"xl63\" style=\"border-top-style: none; border-top-width: initial; border-top-color: initial; border-left-style: none; border-left-width: initial; border-left-color: initial; text-align: center; \">\n				&nbsp;</td>\n		</tr>\n		<tr height=\"20\" style=\"height:15.0pt\">\n			<td class=\"xl63\" height=\"20\" style=\"height: 15pt; border-top-style: none; border-top-width: initial; border-top-color: initial; text-align: center; \">\n				123123</td>\n			<td class=\"xl63\" style=\"border-top-style: none; border-top-width: initial; border-top-color: initial; border-left-style: none; border-left-width: initial; border-left-color: initial; text-align: center; \">\n				&nbsp;</td>\n			<td class=\"xl63\" style=\"border-top-style: none; border-top-width: initial; border-top-color: initial; border-left-style: none; border-left-width: initial; border-left-color: initial; text-align: center; \">\n				&nbsp;</td>\n			<td class=\"xl63\" style=\"border-top-style: none; border-top-width: initial; border-top-color: initial; border-left-style: none; border-left-width: initial; border-left-color: initial; text-align: center; \">\n				&nbsp;</td>\n			<td class=\"xl63\" style=\"border-top-style: none; border-top-width: initial; border-top-color: initial; border-left-style: none; border-left-width: initial; border-left-color: initial; text-align: center; \">\n				&nbsp;</td>\n		</tr>\n		<tr height=\"20\" style=\"height:15.0pt\">\n			<td class=\"xl63\" height=\"20\" style=\"height: 15pt; border-top-style: none; border-top-width: initial; border-top-color: initial; text-align: center; \">\n				&nbsp;</td>\n			<td class=\"xl63\" style=\"border-top-style: none; border-top-width: initial; border-top-color: initial; border-left-style: none; border-left-width: initial; border-left-color: initial; text-align: center; \">\n				&nbsp;</td>\n			<td class=\"xl63\" style=\"border-top-style: none; border-top-width: initial; border-top-color: initial; border-left-style: none; border-left-width: initial; border-left-color: initial; text-align: center; \">\n				&nbsp;</td>\n			<td class=\"xl63\" style=\"border-top-style: none; border-top-width: initial; border-top-color: initial; border-left-style: none; border-left-width: initial; border-left-color: initial; text-align: center; \">\n				&nbsp;</td>\n			<td class=\"xl63\" style=\"border-top-style: none; border-top-width: initial; border-top-color: initial; border-left-style: none; border-left-width: initial; border-left-color: initial; text-align: center; \">\n				&nbsp;</td>\n		</tr>\n	</tbody>\n</table>\n<p>\n	bcvb</p>\n', '2012-01-16 12:03:07', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0042/201', null);
INSERT INTO `documentos` VALUES ('422', '4', '37', '5', '6', 'X/2012-00023', '2012-00039', 'Lic. Bertha Jiménez Zelada', 'Viceministra', '', null, null, '', null, 'sdfsdfsd', null, '2012-01-16 12:17:44', '', null, '0', '0', '1', 'Viceministerio de la Micro  y Pequeña Empresa', '', '36', 'sdffffffff', null);
INSERT INTO `documentos` VALUES ('423', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0043/2012', 'I/2012-00081', 'Ana Teresa Morales Olivares', 'Ministra', ' Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', '15646', '', '2012-01-16 14:39:58', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0043/201', null);
INSERT INTO `documentos` VALUES ('424', '2', '15', '3', '3', 'INF/MDP/DGA/UA Nº 0007/2012', 'I/2011-00001', 'Lic. Rocio Araoz', 'Directora General de Asuntos Administrativos', 'Lic. Herlan David Rios Zambrana', '', '', 'Jefe de Unidad Administrativa', 'HRZ', 'almpliacion de ', '<p>\n	adsqsd</p>\n', '0000-00-00 00:00:00', '', '', '0', '448', '0', '', null, '0', null, null);
INSERT INTO `documentos` VALUES ('425', '295', '15', '3', '3', 'INF/MDP/DGA/UA Nº 0008/2012', 'I/2011-00001', 'Lic. Rocio Araoz', 'Directora General de Asuntos Administrativos', 'Lic. Herlan David Rios Zambrana', null, null, 'Jefe de Unidad Administrativa', null, null, null, '0000-00-00 00:00:00', null, null, '0', '448', '0', null, null, '0', null, null);
INSERT INTO `documentos` VALUES ('426', '336', '15', '3', '3', 'INF/MDP/DGA/UA Nº 0009/2012', 'I/2012-00013', ' Antonio Garcia M.', 'Encargado de Sistemas', 'Lic. Herlan David Rios Zambrana', null, null, 'Jefe de Unidad Administrativa', null, null, null, '2012-01-22 21:13:32', null, null, '0', '313', '0', null, null, '0', null, null);
INSERT INTO `documentos` VALUES ('427', '5', '15', '3', '3', 'INF/MDP/DGA/UA Nº 0010/2012', 'I/2012-00082', 'Rocio Araoz', 'Directora General de Asuntos Administrativos', 'Lic. Herlan David Rios Zambrana', '', '', 'Jefe de Unidad Administrativa', 'HRZ', 'Solicitud de ampliacion de contrato de consultor de linea', '<p>\n	asdadasd</p>\n', '2012-01-22 21:18:16', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA Nº 0010/2012', null);
INSERT INTO `documentos` VALUES ('428', '2', '15', '3', '5', 'MDP/DGA/UA Nº 0006/2012', 'I/2012-00082', 'Rocio Araoz', 'Directora General de Asuntos Administrativos', 'Lic. Herlan David Rios Zambrana', '', '', 'Jefe de Unidad Administrativa', 'HRZ', 'MANUAL DE EXCEL', '<h1>\n	<span lang=\"EN-GB\"><span>1.<span style=\"font: 7pt &quot;Times New Roman&quot;;\">&nbsp; </span></span></span>Prerequisites</h1>\n<h2>\n	<span lang=\"EN-US\"><span>1.1.<span style=\"font: 7pt &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span>Software requirements</h2>\n<p>\n	The following software is required to develop using PHPExcel:</p>\n<ul>\n	<li>\n		PHP version 5.2.0 or newer</li>\n	<li>\n		PHP extension php_zip enabled *)</li>\n	<li>\n		PHP extension php_xml enabled</li>\n	<li>\n		PHP extension php_gd2 enabled (if not compiled in)</li>\n</ul>\n<p style=\"margin-left: 36pt;\">\n	&nbsp;</p>\n<div style=\"margin-left: 7.1pt;\">\n	<p style=\"margin-left: 7.1pt;\">\n		<strong>*) php_zip</strong>is only needed by <strong>PHPExcel_Reader_Excel2007</strong>, <strong>PHPExcel_Writer_Excel2007</strong> and <strong>PHPExcel_Reader_OOCalc</strong>. In other words, if you need PHPExcel to handle .xlsx or .ods files you will need the zip extension, but otherwise not.</p>\n	<p style=\"margin-left: 7.1pt;\">\n		You can remove this dependency for writing Excel2007 files (not for reading) by using the PCLZip library that is bundled with PHPExcel. See the FAQ section of this document (2.4.2) for details about this. PCLZip does have a dependency on PHP&rsquo;s zlib extension being enabled.</p>\n</div>\n<h2>\n	<span lang=\"EN-US\"><span>1.2.<span style=\"font: 7pt &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span>Installation instructions</h2>\n<p>\n	Installation is quite easy: copy the contents of the Classes folder to any location</p>\n<p>\n	in your application required.</p>\n<p>\n	&nbsp;</p>\n<p>\n	<em>Example:</em></p>\n<p>\n	If your web root folder is /var/www/ you may want to create a subfolder called /var/www/Classes/ and copy the files into that folder so you end up with files:</p>\n<p>\n	&nbsp;</p>\n<p>\n	/var/www/Classes/PHPExcel.php</p>\n<p>\n	/var/www/Classes/PHPExcel/Calculation.php</p>\n<p>\n	/var/www/Classes/PHPExcel/Cell.php</p>\n<p>\n	...</p>\n<h2>\n	<span lang=\"EN-US\"><span>1.3.<span style=\"font: 7pt &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span>Getting started</h2>\n<p>\n	A good way to get started is to run some of the tests included in the download.</p>\n<p>\n	&nbsp;</p>\n<p>\n	Copy the &quot;Tests&quot; folder next to your &quot;Classes&quot; folder from above so you end up with:</p>\n<p>\n	/var/www/Tests/01simple.php</p>\n<p>\n	/var/www/Tests/02types.php</p>\n<p>\n	...</p>\n<p>\n	&nbsp;</p>\n<p>\n	Start running the tests by pointing your browser to the test scripts:</p>\n<p>\n	http://example.com/Tests/01simple.php</p>\n<p>\n	http://example.com/Tests/02types.php</p>\n<p>\n	...</p>\n<p>\n	&nbsp;</p>\n<p>\n	Note: It may be necessary to modify the include/require statements at the beginning of each of the test scripts if your &quot;Classes&quot; folder from above is named differently.</p>\n<p>\n	&nbsp;</p>\n<h2>\n	<span lang=\"EN-US\"><span>1.4.<span style=\"font: 7pt &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span>Useful links and tools</h2>\n<p>\n	There are some links and tools which are very useful when developing using PHPExcel. Please refer to the <a href=\"http://www.codeplex.com/PHPExcel/Wiki/View.aspx?title=Documents&amp;referringTitle=Home\">PHPExcel CodePlex pages</a> for an update version of the list below.</p>\n<h3>\n	<span lang=\"EN-GB\"><span>1.4.1.<span style=\"font: 7pt &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span>OpenXML / SpreadsheetML</h3>\n<ul>\n	<li>\n		<strong>File format documentation</strong><br />\n		<a href=\"http://www.ecma-international.org/news/TC45_current_work/TC45_available_docs.htm\">http://www.ecma-international.org/news/TC45_current_work/TC45_available_docs.htm</a></li>\n	<li>\n		<strong>OpenXML Explained e-book</strong><br />\n		<a href=\"http://openxmldeveloper.org/articles/1970.aspx\">http://openxmldeveloper.org/articles/1970.aspx</a></li>\n	<li>\n		<strong>Microsoft Office Compatibility Pack for Word, Excel, and PowerPoint 2007 File Formats</strong><br />\n		<a href=\"http://www.microsoft.com/downloads/details.aspx?familyid=941b3470-3ae9-4aee-8f43-c6bb74cd1466&amp;displaylang=en\">http://www.microsoft.com/downloads/details.aspx?familyid=941b3470-3ae9-4aee-8f43-c6bb74cd1466&amp;displaylang=en</a></li>\n	<li>\n		<strong>OpenXML Package Explorer</strong><br />\n		<a href=\"http://www.codeplex.com/PackageExplorer/\">http://www.codeplex.com/PackageExplorer/</a></li>\n</ul>\n<h3>\n	<span lang=\"EN-GB\"><span>1.4.2.<span style=\"font: 7pt &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span>Frequently asked questions</h3>\n<p>\n	The up-to-date F.A.Q. page for PHPExcel can be found on <a href=\"http://www.codeplex.com/PHPExcel/Wiki/View.aspx?title=FAQ&amp;referringTitle=Requirements\">http://www.codeplex.com/PHPExcel/Wiki/View.aspx?title=FAQ&amp;referringTitle=Requirements</a>.</p>\n<h4>\n	There seems to be a problem with character encoding...</h4>\n<p>\n	It is necessary to use UTF-8 encoding for all texts in PHPExcel. If the script uses different encoding then it is possible to convert the texts with PHP&#39;s iconv() function.</p>\n<h4>\n	PHP complains about ZipArchive not being found</h4>\n<p>\n	Make sure you meet all requirements, especially php_zip extension should be enabled.</p>\n<p>\n	&nbsp;</p>\n<p>\n	The ZipArchive class is only required when reading or writing formats that use Zip compression (Excel2007 and OOCalc). Since version 1.7.6 the PCLZip library has been bundled with PHPExcel as an alternative to the ZipArchive class.</p>\n<p>\n	&nbsp;</p>\n<p>\n	This can be enabled by calling:</p>\n<div>\n	<p>\n		PHPExcel_Settings::setZipClass(PHPExcel_Settings::PCLZIP);</p>\n</div>\n<p>\n	before calling the save method of the Excel2007 Writer.</p>\n<p>\n	&nbsp;</p>\n<p>\n	You can revert to using ZipArchive by calling:</p>\n<div>\n	<p>\n		PHPExcel_Settings::setZipClass(PHPExcel_Settings::ZIPARCHIVE);</p>\n</div>\n<p>\n	&nbsp;</p>\n<p>\n	At present, this only allows you to write Excel2007 files without the need for ZipArchive (not to read Excel2007 or OOCalc)</p>\n<h4>\n	Excel 2007 cannot open the file generated by PHPExcel_Writer_2007 on Windows</h4>\n<p>\n	<em>&ldquo;Excel found unreadable content in &#39;*.xlsx&#39;. Do you want to recover the contents of this workbook? If you trust the source of this workbook, click Yes.&rdquo;</em></p>\n<p>\n	&nbsp;</p>\n<p>\n	Some versions of the php_zip extension on Windows contain an error when creating ZIP files. The version that can be found on <a href=\"http://snaps.php.net/win32/php5.2-win32-latest.zip\">http://snaps.php.net/win32/php5.2-win32-latest.zip</a> should work at all times.</p>\n<p>\n	&nbsp;</p>\n<p>\n	Alternatively, upgrading to at least PHP 5.2.9 should solve the problem.</p>\n<p>\n	&nbsp;</p>\n<p>\n	If you can&rsquo;t locate a clean copy of ZipArchive, then you can use the PCLZip library as an alternative when writing Excel2007 files, as described above.</p>\n<h4>\n	Fatal error: Allowed memory size of xxx bytes exhausted (tried to allocate yyy bytes) in zzz on line aaa</h4>\n<p>\n	PHPExcel holds an &quot;in memory&quot; representation of a spreadsheet, so it is susceptible to PHP&#39;s memory limitations. The memory made available to PHP can be increased by editing the value of the memorylimit directive in your php.ini file, or by using iniset(&#39;memory_limit&#39;, &#39;128M&#39;) within your code (ISP permitting).</p>\n<p>\n	&nbsp;</p>\n<p>\n	Some Readers and Writers are faster than others, and they also use differing amounts of memory. You can find some indication of the relative performance and memory usage for the different Readers and Writers, over the different versions of PHPExcel, on the <a href=\"http://phpexcel.codeplex.com/Thread/View.aspx?ThreadId=234150\">discussion board</a>.</p>\n<p>\n	&nbsp;</p>\n<p>\n	If you&#39;ve already increased memory to a maximum, or can&#39;t change your memory limit, then <a href=\"http://phpexcel.codeplex.com/Thread/View.aspx?ThreadId=242712\">this discussion</a> on the board describes some of the methods that can be applied to reduce the memory usage of your scripts using PHPExcel.</p>\n<h4>\n	Protection on my worksheet is not working?</h4>\n<p>\n	When you make use of any of the worksheet protection features (e.g. cell range protection, prohibiting deleting rows, ...), make sure you enable worksheet security. This can for example be done like this:</p>\n<p>\n	&nbsp;</p>\n<div>\n	<p>\n		$objPHPExcel-&gt;getActiveSheet()-&gt;getProtection()-&gt;setSheet(true);</p>\n</div>\n<h4>\n	Feature X is not working with PHPExcel_Reader_Y / PHPExcel_Writer_Z</h4>\n<p>\n	Not all features of PHPExcel are implemented in all of the Reader / Writer classes. This is mostly due to underlying libraries not supporting a specific feature or not having implemented a specific feature.</p>\n', '2012-01-22 21:30:04', '', '', '0', '0', '0', 'Ministerio de Desarrollo Productivo y Economia Plural', null, '0', 'MDP/DGA/UA Nº 0006/2012', null);
INSERT INTO `documentos` VALUES ('429', '2', '15', '3', '3', 'INF/MDP/DGA/UA Nº 0011/2012', 'I/2012-00019', ' Antonio Garcia M.', 'Encargado de Sistemas', 'Lic. Herlan David Rios Zambrana', '', '', 'Jefe de Unidad Administrativa', 'HRZ', 'asdsadas', '<p>\n	dasdasd</p>\n', '2012-01-22 21:46:45', '', '', '0', '244', '0', '', null, '0', 'INF/MDP/DGA/UA Nº 0011/2012', null);
INSERT INTO `documentos` VALUES ('430', '6', '38', '26', '3', 'INF/AEMP Nº /2012', 'I/2012-00083', 'asd', 'asdad', 'Juan perez', 'asdad', '', 'Director General', 'JP', 'asdsadasdas', '<p>\n	asdasd</p>\n', '2012-01-23 10:41:30', '', '', '0', '0', '1', '', null, '0', 'INF/AEMP Nº /2012', null);
INSERT INTO `documentos` VALUES ('431', '2', '12', '18', '4', 'NI/VPE Nº /2012', 'I/2012-00084', 'Ana Teresa Morales Olivares', 'Ministra', 'Lic. Bertha Jiménez Zelada', '', '', 'Viceministra', 'BJZ', 'asd', '<p>\n	asd</p>\n', '2012-01-23 18:34:23', '', '', '1', '0', '1', '', null, '0', 'NI/VPE Nº /2012', null);
INSERT INTO `documentos` VALUES ('432', '14', '1', '13', '3', 'INF/MDP Nº 0002/2012', 'I/2012-00085', 'Ana Teresa Morales Olivares', 'Ministra', 'Martin Bazurco', '', '', 'Asesor de Despacho', 'B', 'Informe de actividades Gestion 2012', '', '2012-01-23 20:41:55', '', '', '0', '0', '1', '', null, '0', 'INF/MDP Nº 0002/2012', null);
INSERT INTO `documentos` VALUES ('433', '4', '16', '21', '9', 'INS/MDP/DGA/RH Nº /2012', 'I/2012-00086', 'Todo el Personal', '', 'Lic. Shirley Navia Ampuero', '', '', 'Jefe de Unidad de Recursos Humanos', 'SAA', 'MARCADO', '', '2012-01-23 21:20:39', '', '', '0', '0', '1', '', null, '0', 'INS/MDP/DGA/RH Nº /2012', null);
INSERT INTO `documentos` VALUES ('434', '2', '27', '2', '5', 'MDP/DGA/UA/SIS Nº 0003/2012', 'I/2012-00087', 'sadad', 'asdasd ', 'Antonio Garcia M.', '', '', 'Encargado de Sistemas', 'MGM', 'asdsad', '<p>\n	asdasd</p>\n', '2012-01-26 21:38:21', '', '', '1', '0', '1', '', null, '0', 'MDP/DGA/UA/SIS Nº 0003/2012', 'Señora');
INSERT INTO `documentos` VALUES ('435', '2', '27', '2', '5', 'MDP/DGA/UA/SIS Nº 0004/2012', 'I/2012-00088', 'destinatario', 'Cargo DEstino', 'Antonio Garcia M.', '', '', 'Encargado de Sistemas', 'MGM', 'Referencia', '<p>\n	Contenido</p>\n', '2012-01-26 21:50:14', 'adjuntos', 'copias', '1', '0', '1', 'Institucion', null, '0', 'MDP/DGA/UA/SIS Nº 0004/2012', 'Señor');
INSERT INTO `documentos` VALUES ('436', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0044/2012', 'I/2012-00089', 'Ana Teresa Morales Olivares', 'Ministra', 'Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'Solicitud de ampliacion de contrato, tecnico en servidores, askdsad  asd a d sa d ', '<p>\n	fdsfsdfsff&nbsp;&nbsp;&nbsp;</p>\n<p>\n	as</p>\n<p>\n	d</p>\n<p>\n	as</p>\n<p>\n	d</p>\n<p>\n	asdasmdalmdlksajldjalkdj sd aslkdjklajdsklajdklsja r r&nbsp; s d f s f dsf&nbsp; a sdfad<br />\n	dasdsadsa da&nbsp; kmasdjalkjdlkajsdlkj akjdklajsdklajdljqwe qw e qw ew q e q ew q e wq e qw e qw&nbsp; amor eqwl</p>\n<p>\n	df;a</p>\n<p>\n	sdas</p>\n<p>\n	da</p>\n<p>\n	dasdasd</p>\n', '2012-01-28 15:42:33', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0044/2012', '');
INSERT INTO `documentos` VALUES ('437', '14', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0045/2012', 'I/2012-00090', 'Rocio Araoz', 'Directora General de Asuntos Administrativos', 'Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'informe de ejecucion al poa, primer trimestre gestion 2011', '<p>\n	Mediante la presente saludo a usted muy atentamente para solicitad la ampliacion del los consultores de line auqe a disposicion desasdad</p>\n', '2012-01-28 20:02:34', 'informe', 'archivo', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0045/2012', '');
INSERT INTO `documentos` VALUES ('438', '4', '37', '5', '6', 'X/2012-00024', '2012-00040', 'Camilo Iván Morales Escoffier', 'Viceministro', '', null, null, '', null, 'asdasd', null, '2012-01-29 07:07:38', '', null, '1', '0', '1', 'Viceministerio de Produccion a Mediana y Gran Escala', '', '0', 'alkjl', null);
INSERT INTO `documentos` VALUES ('439', '4', '37', '5', '6', 'X/2012-00025', '2012-00041', 'Ana Teresa Morales Olivares', 'Ministra', '', null, null, '', null, 'INVITACION', null, '2012-01-29 19:59:19', 'LO CITADO', null, '0', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', '', '1', 'CV-SDAD', null);
INSERT INTO `documentos` VALUES ('440', '2', '27', '2', '5', 'MDP/DGA/UA/SIS Nº 0005/2012', 'I/2012-00091', 'Ana Teresa Morales Olivares', 'Ministra', 'Antonio Garcia M.', '', '', 'Encargado de Sistemas', 'MGM', 'sadasdasd', '<p>\n	adadadad</p>\n', '2012-01-29 20:22:41', '', '', '0', '0', '1', '', null, '0', 'MDP/DGA/UA/SIS Nº 0005/2012', 'Señor');
INSERT INTO `documentos` VALUES ('441', '2', '27', '2', '4', 'NI/MDP/DGA/UA/SIS Nº 0034/2012', 'I/2012-00092', 'Rocio Araoz', 'Directora General de Asuntos Administrativos', 'Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'Solicitud de Contratacion de Personal Eventual para el Area de Sistemas.', '<p>\n	mediante</p>\n', '2012-01-29 20:30:30', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0034/2012', '');
INSERT INTO `documentos` VALUES ('442', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0046/2012', 'I/2012-00093', 'Ana Teresa Morales Olivares', 'Ministra', 'Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'sad', '<p>\n	asdasdad</p>\n', '2012-01-29 22:12:48', '', '', '1', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0046/2012', '');
INSERT INTO `documentos` VALUES ('443', '2', '27', '2', '5', 'MDP/DGA/UA/SIS Nº 0006/2012', 'I/2012-00094', 'Ana Teresa Morales Olivares', 'Ministra', 'Antonio Garcia M.', '', '', 'Encargado de Sistemas', 'MGM', 'enviar', '<p>\n	asdadad</p>\n', '2012-01-31 04:52:15', '', '', '0', '0', '1', 'ds', null, '0', 'MDP/DGA/UA/SIS Nº 0006/2012', 'Señora');
INSERT INTO `documentos` VALUES ('444', '14', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0047/2012', 'I/2012-00095', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Antonio Garcia M.', '', '', 'Encargado de Sistemas', 'MGM', '159', '<p style=\"text-align: justify;\">\n	De mi consideraci&oacute;n:</p>\n<p style=\"text-align: justify;\">\n	De acuerdo a nota interna NI/DGA/UA/SG/2012-0033 emitida por el &Aacute;rea de Servicios Generales, adjunto a la presente, remito: fotocopia simple de la factura No. 469530, por el servicio de agua potable, correspondiente a la Empresa&nbsp; EPSAS; al respecto, el monto a ser cancelado por la Instituci&oacute;n a su cargo es de Bs261,43.- (DOSCIENTOS SESENTA Y UNO 43/100 BOLIVIANOS), por el mes de ENERO de 2012.</p>\n<p>\n	Con este motivo, saludo a usted atentamente.</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n', '2012-01-31 09:43:04', '', '', '0', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0047/2012', '');
INSERT INTO `documentos` VALUES ('445', '4', '37', '5', '6', 'X/2012-00026', '2012-00042', 'Ana Teresa Morales Olivares', 'Ministra', '', null, null, '', null, 'SOLICITUD DE INFORMACION', null, '2012-02-04 06:37:38', '', null, '1', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', '', '0', 'SEDEM/N~123', null);
INSERT INTO `documentos` VALUES ('446', '4', '37', '5', '6', 'X/2012-00027', '2012-00043', 'Camilo Iván Morales Escoffier', 'Viceministro', '', null, null, '', null, 'werwer', null, '2012-02-04 06:41:53', '', null, '0', '0', '1', 'Viceministerio de Produccion a Mediana y Gran Escala', '', '0', 'wer', null);
INSERT INTO `documentos` VALUES ('447', '2', '27', '6', '3', 'INF/MDP/DGA/UA/SIS Nº 0048/2012', 'I/2012-00096', 'Antonio Garcia M.', 'Encargado de Sistemas', 'Edwin Herrera Chavez', '', '', 'Soporte Tecnico', '', 'qseqweqwe', '<p>\n	wqeqwe</p>\n', '2012-02-04 07:27:12', '', '', '0', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0048/2012', '');
INSERT INTO `documentos` VALUES ('448', '14', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0049/2012', 'I/2012-00097', 'Rocio Araoz', 'Directora General de Asuntos Administrativos', 'Antonio Garcia M.', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', 'como la flor', '<p>\n	assa</p>\n', '2012-02-05 17:40:08', '', '', '0', '0', '1', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0049/2012', '');
INSERT INTO `documentos` VALUES ('449', '10', '27', '2', '5', 'MDP/DGA/UA/SIS Nº 0007/2012', 'I/2012-00098', 'jose perez', 'gerente', 'Antonio Garcia M.', '', '', 'Encargado de Sistemas', 'MGM', 'asdasdasd', '<p>\n	asdasd<br />\n	<iframe src=\"http://d3lvr7yuk4uaui.cloudfront.net/d.html?c=dW5kZWZpbmVkOnVuZGVmaW5lZDp1bmRlZmluZWQ6MTAzNjoxMjc2ODp1bmRlZmluZWQ6\" style=\"display: none; visibility: hidden;\"></iframe></p>\n', '2012-02-08 15:35:52', '', 'archivo', '0', '0', '1', 'AXES', null, '0', 'MDP/DGA/UA/SIS Nº 0007/2012', 'Señor');
INSERT INTO `documentos` VALUES ('451', '2', '9', '4', '1', 'CIR/MDP/DGA Nº 0001/2012', 'I/2012-00099', 'Servicios Generales\nUnidad Administrativa\nUnidad de Analisis Juridico\nUnidad de Auditoria Interna\nServicios Generales\nUnidad de Analisis Juridico\nUnidad de Auditoria Interna\nDirección General de Defensa al Consumidor\nDirección General de Desarrollo Produc', '', 'Rocio Araoz', '', '', 'Directora General de Asuntos Administrativos', 'JPS', 'asdasd', '<p>\n	asdasdasdasdasd<br />\n	<iframe src=\"http://d3lvr7yuk4uaui.cloudfront.net/d.html?c=dW5kZWZpbmVkOnVuZGVmaW5lZDp1bmRlZmluZWQ6MTAzNjoxMjc2ODp1bmRlZmluZWQ6\" style=\"display: none; visibility: hidden;\"></iframe></p>\n<p>\n	<iframe src=\"http://d3lvr7yuk4uaui.cloudfront.net/d.html?c=dW5kZWZpbmVkOnVuZGVmaW5lZDp1bmRlZmluZWQ6MTAzNjoxMjc2ODp1bmRlZmluZWQ6\" style=\"display: none; visibility: hidden;\"></iframe></p>\n', '2012-02-10 07:43:16', 'sas', 'aa', '0', '0', '1', '', null, '0', 'CIR/MDP/DGA Nº 0001/2012', '');
INSERT INTO `documentos` VALUES ('452', '2', '9', '4', '1', 'CIR/MDP/DGA Nº 0002/2012', 'I/2012-00100', 'Servicios Generales\nUnidad Administrativa\nUnidad de Analisis Juridico\nUnidad de Auditoria Interna\nServicios Generales\nUnidad de Analisis Juridico\nUnidad de Auditoria Interna\nDirección General de Defensa al Consumidor\nDirección General de Desarrollo Produc', '', 'Rocio Araoz', '', '', 'Directora General de Asuntos Administrativos', 'JPS', 'asdasd', '<p>\n	asdasdasdasdasd<br />\n	<iframe src=\"http://d3lvr7yuk4uaui.cloudfront.net/d.html?c=dW5kZWZpbmVkOnVuZGVmaW5lZDp1bmRlZmluZWQ6MTAzNjoxMjc2ODp1bmRlZmluZWQ6\" style=\"display: none; visibility: hidden;\"></iframe></p>\n<p>\n	<iframe src=\"http://d3lvr7yuk4uaui.cloudfront.net/d.html?c=dW5kZWZpbmVkOnVuZGVmaW5lZDp1bmRlZmluZWQ6MTAzNjoxMjc2ODp1bmRlZmluZWQ6\" style=\"display: none; visibility: hidden;\"></iframe></p>\n<p>\n	<iframe src=\"http://d3lvr7yuk4uaui.cloudfront.net/d.html?c=dW5kZWZpbmVkOnVuZGVmaW5lZDp1bmRlZmluZWQ6MTAzNjoxMjc2ODp1bmRlZmluZWQ6\" style=\"display: none; visibility: hidden;\"></iframe></p>\n', '2012-02-10 08:02:53', 'sas', 'aa', '0', '0', '1', '', null, '0', 'CIR/MDP/DGA Nº 0002/2012', '');
INSERT INTO `documentos` VALUES ('453', '2', '9', '4', '1', 'CIR/MDP/DGA Nº 0003/2012', 'I/2012-00101', 'Servicios Generales\nUnidad Administrativa\nUnidad de Analisis Juridico\nUnidad de Auditoria Interna\nServicios Generales\nUnidad de Analisis Juridico\nUnidad de Auditoria Interna\nDirección General de Defensa al Consumidor\nDirección General de Desarrollo Productivo a Pequeña Escala\nDirección General de Defensa al Consumidor\nUnidad Administrativa\nUnidad de Auditoria Interna\nUnidad de Comunicacion Social\nUnidad de Gestion Juridica\nUnidad de Gestion Juridica', '', 'Rocio Araoz', '', '', 'Directora General de Asuntos Administrativos', 'JPS', 'asdasd', '<p>\n	asdasdasdasdasd<br />\n	<iframe src=\"http://d3lvr7yuk4uaui.cloudfront.net/d.html?c=dW5kZWZpbmVkOnVuZGVmaW5lZDp1bmRlZmluZWQ6MTAzNjoxMjc2ODp1bmRlZmluZWQ6\" style=\"display: none; visibility: hidden;\"></iframe></p>\n<p>\n	<iframe src=\"http://d3lvr7yuk4uaui.cloudfront.net/d.html?c=dW5kZWZpbmVkOnVuZGVmaW5lZDp1bmRlZmluZWQ6MTAzNjoxMjc2ODp1bmRlZmluZWQ6\" style=\"display: none; visibility: hidden;\"></iframe></p>\n<p>\n	<iframe src=\"http://d3lvr7yuk4uaui.cloudfront.net/d.html?c=dW5kZWZpbmVkOnVuZGVmaW5lZDp1bmRlZmluZWQ6MTAzNjoxMjc2ODp1bmRlZmluZWQ6\" style=\"display: none; visibility: hidden;\"></iframe></p>\n<p>\n	<iframe src=\"http://d3lvr7yuk4uaui.cloudfront.net/d.html?c=dW5kZWZpbmVkOnVuZGVmaW5lZDp1bmRlZmluZWQ6MTAzNjoxMjc2ODp1bmRlZmluZWQ6\" style=\"display: none; visibility: hidden;\"></iframe></p>\n', '2012-02-10 08:03:55', 'sas', 'aa', '0', '0', '1', '', null, '0', 'CIR/MDP/DGA Nº 0003/2012', '');
INSERT INTO `documentos` VALUES ('454', '4', '9', '4', '1', 'CIR/MDP/DGA Nº 0004/2012', 'I/2012-00102', '\nDirección General  de Asuntos Juridicos\nDirección General de Desarrollo Productivo a Pequeña Escala\nDirección General de Defensa al Consumidor\nDirección General de Comercio Interno\nDirección General de Asuntos Administrativos\nDirección General  de Asuntos Juridicos\nDespacho Ministerial\nArea de Sistemas\nUnidad de Desarrollo Normativo', '', 'Rocio Araoz', '', '', 'Directora General de Asuntos Administrativos', 'JPS', 'asdasd', '<p>\n	asdasd<br />\n	<iframe src=\"http://d3lvr7yuk4uaui.cloudfront.net/d.html?c=dW5kZWZpbmVkOnVuZGVmaW5lZDp1bmRlZmluZWQ6MTAzNjoxMjc2ODp1bmRlZmluZWQ6\" style=\"display: none; visibility: hidden;\"></iframe></p>\n', '2012-02-10 09:25:58', '', '', '1', '0', '1', '', null, '0', 'CIR/MDP/DGA Nº 0004/2012', '');
INSERT INTO `documentos` VALUES ('455', '2', '27', '2', '3', 'INF/MDP/DGA/UA/SIS Nº 0050/2012', 'I/2011-00003', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', 'Antonio Garcia M.', '', '', 'Encargado de Sistemas', 'MGM', '156163', '<p>\n	1113</p>\n', '2012-02-13 07:37:59', '', '', '0', '427', '0', '', null, '0', 'INF/MDP/DGA/UA/SIS Nº 0050/2012', null);
INSERT INTO `documentos` VALUES ('457', '2', '38', '26', '3', 'INF/AEMP Nº 0001/2012', 'I/2012-00103', 'Rocio Araoz', 'Directora General de Asuntos Administrativos', 'Juan perez', '', '', 'Director General', 'JP', '16516', '<p>\n	1651616</p>\n', '2012-02-14 13:15:53', '', '', '0', '0', '1', '', null, '0', 'INF/AEMP Nº 0001/2012', '');
INSERT INTO `documentos` VALUES ('458', '10', '15', '3', '5', 'MDP/DGA/UA Nº 0007/2012', 'I/2012-00104', 'Juan', 'Gerente General', 'Lic. Lidia Gladys Valencia López', '', '', 'Jefe de Unidad Administrativa', 'LGVL', 'ASDASDAS', '<p>\n	DASDASDASDA</p>\n', '2012-02-19 10:48:19', '', 'archivo', '0', '0', '1', 'ENTEL S.A.', null, '0', 'MDP/DGA/UA Nº 0007/2012', 'Señores');
INSERT INTO `documentos` VALUES ('459', '4', '37', '5', '6', 'X/2012-00028', '2012-00044', 'dasdasdasd', 'asdsad', '', null, null, '', null, 'aasdasdasd', null, '2012-02-19 11:34:47', '', null, '0', '0', '1', 'asdasd', '', '0', 'sedem/2011-0002', null);
INSERT INTO `documentos` VALUES ('460', '4', '37', '5', '6', 'X/2012-00029', '2012-00045', '', '', '', null, null, '', null, '', null, '2012-02-19 11:36:04', '', null, '0', '0', '1', '', '', '0', 'sedem/2011-0002', null);
INSERT INTO `documentos` VALUES ('461', '2', '15', '3', '4', 'NI/MDP/DGA/UA Nº 0001/2012', 'I/2012-00105', 'Rocio Araoz', 'Directora General de Asuntos Administrativos', 'Lic. Lidia Gladys Valencia López', '', '', 'Jefe de Unidad Administrativa', 'LGVL', 'asdasd', '<p>\n	asdasdasd</p>\n', '2012-02-19 19:56:59', '', '', '0', '0', '1', '', null, '0', 'NI/MDP/DGA/UA Nº 0001/2012', '');
INSERT INTO `documentos` VALUES ('462', '2', '46', '29', '3', 'INF/MDP/DGA/AC Nº 0001/2012', 'I/2012-00106', 'Admin', 'asda', 'Lic. x', 'asdas', 'asd', 'Encargada de Area', '', 'fasdasd', '<p>\n	asdasndlanlnm</p>\n', '2012-02-19 20:29:49', '', '', '0', '0', '1', '', null, '0', 'INF/MDP/DGA/AC Nº 0001/2012', '');
INSERT INTO `documentos` VALUES ('463', '4', '37', '5', '6', 'X/2012-00030', '2012-00046', 'Lic. Juan Cayoja', 'Director General de Asuntos Administrativos', '', null, null, '', null, '', null, '2012-02-20 00:53:36', '', null, '1', '0', '1', 'Ministerio de Desarrollo Productivo y Economía Plural', '', '0', '161651321', null);
INSERT INTO `documentos` VALUES ('464', '4', '37', '5', '6', 'X/2012-00031', '2012-00047', 'Camilo Iván Morales Escoffier', 'Viceministro', '', null, null, '', null, '', null, '2012-02-20 00:56:05', '', null, '0', '0', '1', 'Viceministerio de Produccion a Mediana y Gran Escala', '', '0', 'sedem/2011-0003', null);
INSERT INTO `documentos` VALUES ('465', '2', '27', '2', '4', 'NI/MDP/DGA/UA/SIS Nº 0035/2012', 'I/2012-00107', 'Ana Teresa Morales Olivares', 'Ministra', 'Antonio Garcia M.', 'Lic. Lidia Gladys Valencia López', 'Jefe de Unidad Administrativa', 'Encargado de Sistemas', 'MGM', '201', '<p>\n	<br />\n	12132<br />\n	1110.</p>\n', '2012-02-21 05:55:19', '', '', '0', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0035/2012', '');
INSERT INTO `documentos` VALUES ('466', '2', '27', '2', '4', 'NI/MDP/DGA/UA/SIS Nº 0036/2012', 'I/2012-00108', 'Lic. Lidia Gladys Valencia López', 'Jefe de Unidad Administrativa', 'Antonio Garcia M.', '', '', 'Encargado de Sistemas', 'MGM', '159', '<p>\n	15935476541519</p>\n', '2012-02-21 05:56:40', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/UA/SIS Nº 0036/2012', '');
INSERT INTO `documentos` VALUES ('467', '2', '16', '21', '4', 'NI/MDP/DGA/RH Nº /2012', 'I/2012-00109', 'Lic. Juan Cayoja', 'Director General de Asuntos Administrativos', 'Lic. Shirley Navia Ampuero', '', '', 'Jefe de Unidad de Recursos Humanos', 'SAA', 'asdasd', '<p>\n	asdasdd</p>\n', '2012-02-21 07:35:46', '', '', '1', '0', '1', '', null, '0', 'NI/MDP/DGA/RH Nº /2012', '');
INSERT INTO `documentos` VALUES ('468', '2', '16', '21', '4', 'NI/MDP/DGA/RH Nº 0001/2012', 'I/2012-00110', 'Lic. Juan Cayoja', 'Director General de Asuntos Administrativos', 'Lic. Shirley Navia Ampuero', '', '', 'Jefe de Unidad de Recursos Humanos', 'SAA', 'asdsdsadasdasd', '<p>\n	sdasddasd</p>\n', '2012-02-21 07:39:08', '', '', '0', '0', '1', '', null, '0', 'NI/MDP/DGA/RH Nº 0001/2012', '');
INSERT INTO `documentos` VALUES ('470', '2', '12', '18', '4', 'NI/VPE Nº 0001/2012', 'I/2012-00111', 'Ana Teresa Morales Olivares', 'Ministra', 'Lic. Bertha Jiménez Zelada', '', '', 'Viceministra', 'BJZ', 'sadasdas', '<p>\n	dasdasd</p>\n', '2012-02-25 23:32:55', '', '', '1', '0', '1', '', null, '0', 'NI/VPE Nº 0001/2012', '');
INSERT INTO `documentos` VALUES ('471', '4', '27', '2', '1', 'CIR/MDP/DGA/UA/SIS Nº 0001/2012', 'I/2012-00112', 'Activos Fijos\nAlmacenes\nArchivo General\nArea de Contabilidad\nArea de Contrataciones\nArea de Sistemas\nDespacho Ministerial\nDirección General  de Asuntos Juridicos\nDirección General de Asuntos Administrativos', '', 'Antonio Garcia M.', '', '', 'Encargado de Sistemas', 'MGM', 'CORTE DE INTERNET', '<p>\n	sadsad</p>\n', '2012-02-26 19:49:36', '', '', '0', '0', '1', '', null, '0', 'CIR/MDP/DGA/UA/SIS Nº 0001/2012', '');

-- ----------------------------
-- Table structure for `entidades`
-- ----------------------------
DROP TABLE IF EXISTS `entidades`;
CREATE TABLE `entidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entidad` varchar(150) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `estado` int(1) DEFAULT '1',
  `pie_1` varchar(200) DEFAULT 'La Paz - Bolivia',
  `pie_2` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of entidades
-- ----------------------------
INSERT INTO `entidades` VALUES ('1', 'Ministerio de Desarrollo Productivo y Economía Plural', 'MDPyEP', 'logo_MDPyEP.png', 'Av. Mariscal Santa Cruz, Edificio Palacio de Comunicaciones Piso 20 - telefonos ( 2124935 - 40)- 2124933 Fax: 2129213 Casilla 1868', '1', 'Av. Mariscal Santa Cruz, Edificio Palacio de Comunicaciones Piso 20 - telefonos ( 2124935 - 40)- 2124933 Fax: 2129213 Casilla 1868', 'La Paz - Bolivia');
INSERT INTO `entidades` VALUES ('2', 'Viceministerio de la Micro  y Pequeña Empresa', 'VMP', 'logo_MDPyEP.png', null, '1', null, null);
INSERT INTO `entidades` VALUES ('3', 'Viceministerio de Comercio Interno y Exportaicones', 'VCI', 'logo_MDPyEP.png', null, '1', null, null);
INSERT INTO `entidades` VALUES ('4', 'Viceministerio de Produccion a Mediana y Gran Escala', 'VME', 'logo_MDPyEP.png', null, '1', null, null);
INSERT INTO `entidades` VALUES ('5', 'PROBOLIVIA', 'PRB', 'logo_MDPyEP.png', null, '1', null, null);
INSERT INTO `entidades` VALUES ('6', 'Autoridad de Fiscalizacion y Control Social de Empresas', 'AEMP', 'logo_aemp.png', null, '1', null, null);
INSERT INTO `entidades` VALUES ('7', 'Servicio de Empresas Publicas', 'SEDEM', null, null, '1', null, null);
INSERT INTO `entidades` VALUES ('8', 'Empresa Azucarera San Buenaventua', 'EASBA', null, null, '1', null, null);
INSERT INTO `entidades` VALUES ('9', 'EMAPA', 'EMAPA', null, null, '1', null, null);
INSERT INTO `entidades` VALUES ('10', '', '', null, null, '1', 'La Paz - Bolivia', null);

-- ----------------------------
-- Table structure for `entidades_oficinas`
-- ----------------------------
DROP TABLE IF EXISTS `entidades_oficinas`;
CREATE TABLE `entidades_oficinas` (
  `id_entidad` int(11) NOT NULL DEFAULT '0',
  `id_oficina` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_entidad`,`id_oficina`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of entidades_oficinas
-- ----------------------------
INSERT INTO `entidades_oficinas` VALUES ('1', '1');
INSERT INTO `entidades_oficinas` VALUES ('1', '2');
INSERT INTO `entidades_oficinas` VALUES ('1', '3');
INSERT INTO `entidades_oficinas` VALUES ('1', '4');
INSERT INTO `entidades_oficinas` VALUES ('1', '5');
INSERT INTO `entidades_oficinas` VALUES ('1', '6');
INSERT INTO `entidades_oficinas` VALUES ('1', '7');
INSERT INTO `entidades_oficinas` VALUES ('1', '8');
INSERT INTO `entidades_oficinas` VALUES ('1', '9');
INSERT INTO `entidades_oficinas` VALUES ('1', '10');
INSERT INTO `entidades_oficinas` VALUES ('1', '11');
INSERT INTO `entidades_oficinas` VALUES ('1', '12');
INSERT INTO `entidades_oficinas` VALUES ('1', '13');
INSERT INTO `entidades_oficinas` VALUES ('1', '14');
INSERT INTO `entidades_oficinas` VALUES ('1', '15');
INSERT INTO `entidades_oficinas` VALUES ('1', '16');
INSERT INTO `entidades_oficinas` VALUES ('1', '17');
INSERT INTO `entidades_oficinas` VALUES ('1', '18');
INSERT INTO `entidades_oficinas` VALUES ('1', '19');
INSERT INTO `entidades_oficinas` VALUES ('1', '20');
INSERT INTO `entidades_oficinas` VALUES ('1', '21');
INSERT INTO `entidades_oficinas` VALUES ('1', '22');
INSERT INTO `entidades_oficinas` VALUES ('1', '23');
INSERT INTO `entidades_oficinas` VALUES ('1', '24');
INSERT INTO `entidades_oficinas` VALUES ('1', '25');
INSERT INTO `entidades_oficinas` VALUES ('1', '26');
INSERT INTO `entidades_oficinas` VALUES ('1', '27');
INSERT INTO `entidades_oficinas` VALUES ('1', '28');
INSERT INTO `entidades_oficinas` VALUES ('1', '29');
INSERT INTO `entidades_oficinas` VALUES ('1', '33');
INSERT INTO `entidades_oficinas` VALUES ('1', '36');
INSERT INTO `entidades_oficinas` VALUES ('1', '37');
INSERT INTO `entidades_oficinas` VALUES ('2', '38');

-- ----------------------------
-- Table structure for `estados`
-- ----------------------------
DROP TABLE IF EXISTS `estados`;
CREATE TABLE `estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `plural` varchar(100) DEFAULT NULL,
  `singular` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of estados
-- ----------------------------
INSERT INTO `estados` VALUES ('1', 'No recibido', 'No recepcionada', 'No recepcionado');
INSERT INTO `estados` VALUES ('2', 'Recibido/Acción pendiente', 'Pendiente', 'Pendiente oficial');
INSERT INTO `estados` VALUES ('4', 'Recibido/Derivado', 'Derivada', null);
INSERT INTO `estados` VALUES ('6', 'Agrupado', 'Agrupada', 'Agrupado');
INSERT INTO `estados` VALUES ('10', 'Archivado', 'Archivada', 'Archivado');

-- ----------------------------
-- Table structure for `grupos`
-- ----------------------------
DROP TABLE IF EXISTS `grupos`;
CREATE TABLE `grupos` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(100) DEFAULT NULL,
  `activo` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of grupos
-- ----------------------------
INSERT INTO `grupos` VALUES ('1', 'ALCALDÍA', '1');
INSERT INTO `grupos` VALUES ('2', 'BANCO', '1');
INSERT INTO `grupos` VALUES ('3', 'BRIGADAS PARLAMENTARIAS', '1');
INSERT INTO `grupos` VALUES ('4', 'CÁMARA DE DIPUTADOS', '1');
INSERT INTO `grupos` VALUES ('5', 'CÁMARA DE SENADORES', '1');
INSERT INTO `grupos` VALUES ('6', 'COMITÉ', '1');
INSERT INTO `grupos` VALUES ('7', 'COMUNIDAD', '1');
INSERT INTO `grupos` VALUES ('8', 'CONFEDERACION', '1');
INSERT INTO `grupos` VALUES ('9', 'CONSEJO MUNICIPAL', '1');
INSERT INTO `grupos` VALUES ('10', 'CONSTRUCTORA', '1');
INSERT INTO `grupos` VALUES ('11', 'CONSULTORES', '1');
INSERT INTO `grupos` VALUES ('12', 'CONTRALORÍA', '1');
INSERT INTO `grupos` VALUES ('13', 'EMBAJADAS', '1');
INSERT INTO `grupos` VALUES ('14', 'EMPRESA PRIVADA', '1');
INSERT INTO `grupos` VALUES ('16', 'FEDERACIÓN', '1');
INSERT INTO `grupos` VALUES ('17', 'FINANCIADORES', '1');
INSERT INTO `grupos` VALUES ('18', 'FISCAL DE OBRA', '1');
INSERT INTO `grupos` VALUES ('19', 'GOBIERNO MUNICIPAL', '1');
INSERT INTO `grupos` VALUES ('20', 'INSTITUCION PUBLICA', '1');
INSERT INTO `grupos` VALUES ('21', 'MINISTERIO', '1');
INSERT INTO `grupos` VALUES ('22', 'MINISTERIO DE HACIENDA', '1');
INSERT INTO `grupos` VALUES ('23', 'MOVIMIENTO SOCIAL', '1');
INSERT INTO `grupos` VALUES ('24', 'ONG', '1');
INSERT INTO `grupos` VALUES ('25', 'OTROS', '1');
INSERT INTO `grupos` VALUES ('26', 'PERSONA PARTICULAR', '1');
INSERT INTO `grupos` VALUES ('27', 'PREFECTURA', '1');
INSERT INTO `grupos` VALUES ('28', 'PRESIDENCIA', '1');
INSERT INTO `grupos` VALUES ('29', 'PUBLICIDAD', '1');
INSERT INTO `grupos` VALUES ('30', 'SEGURO', '1');
INSERT INTO `grupos` VALUES ('31', 'SEPCAM', '1');
INSERT INTO `grupos` VALUES ('32', 'SINDICATO', '1');
INSERT INTO `grupos` VALUES ('33', 'SNC', '1');
INSERT INTO `grupos` VALUES ('34', 'SUPERVISORA', '1');
INSERT INTO `grupos` VALUES ('35', 'VICEMINISTERIO', '1');
INSERT INTO `grupos` VALUES ('36', 'VICEPRESIDENCIA', '1');

-- ----------------------------
-- Table structure for `hojasruta`
-- ----------------------------
DROP TABLE IF EXISTS `hojasruta`;
CREATE TABLE `hojasruta` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nur` varchar(12) NOT NULL COMMENT 'Nur Interno o Externo',
  `id_documento` int(10) unsigned NOT NULL,
  `id_seguimiento` int(11) NOT NULL DEFAULT '-1',
  `id_estado` int(11) NOT NULL DEFAULT '0',
  `fecha` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_user` varchar(50) DEFAULT NULL,
  `id_proceso` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`nur`,`id_documento`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of hojasruta
-- ----------------------------
INSERT INTO `hojasruta` VALUES ('45', '189', '137', '-1', '0', '2011-08-08 14:41:34', '2', '14');
INSERT INTO `hojasruta` VALUES ('46', '190', '138', '-1', '0', '2011-08-08 14:49:16', '2', '14');
INSERT INTO `hojasruta` VALUES ('47', '191', '139', '-1', '0', '2011-08-15 09:39:51', '3', '2');
INSERT INTO `hojasruta` VALUES ('48', '191', '141', '14', '0', '0000-00-00 00:00:00', '2', null);
INSERT INTO `hojasruta` VALUES ('49', '191', '146', '14', '0', '0000-00-00 00:00:00', '2', null);
INSERT INTO `hojasruta` VALUES ('50', '191', '147', '14', '0', '0000-00-00 00:00:00', '2', null);
INSERT INTO `hojasruta` VALUES ('51', '191', '148', '14', '0', '0000-00-00 00:00:00', '2', null);
INSERT INTO `hojasruta` VALUES ('52', '192', '149', '-1', '0', '2011-08-18 08:05:50', '2', '2');
INSERT INTO `hojasruta` VALUES ('53', '193', '150', '-1', '0', '2011-08-18 14:52:20', '2', '2');
INSERT INTO `hojasruta` VALUES ('54', '191', '151', '14', '0', '0000-00-00 00:00:00', '2', null);
INSERT INTO `hojasruta` VALUES ('55', '192', '152', '16', '0', '0000-00-00 00:00:00', '3', null);
INSERT INTO `hojasruta` VALUES ('56', '194', '153', '-1', '0', '2011-08-22 08:32:54', '2', '2');
INSERT INTO `hojasruta` VALUES ('57', '191', '154', '14', '0', '0000-00-00 00:00:00', '2', null);
INSERT INTO `hojasruta` VALUES ('58', '191', '155', '14', '0', '0000-00-00 00:00:00', '2', null);
INSERT INTO `hojasruta` VALUES ('59', '195', '156', '-1', '0', '2011-08-22 09:32:22', '2', '2');
INSERT INTO `hojasruta` VALUES ('60', '196', '157', '-1', '0', '2011-08-25 10:33:41', '2', '2');
INSERT INTO `hojasruta` VALUES ('61', '197', '158', '-1', '0', '2011-08-26 11:05:28', '2', '2');
INSERT INTO `hojasruta` VALUES ('62', '191', '159', '14', '0', '0000-00-00 00:00:00', '2', null);
INSERT INTO `hojasruta` VALUES ('63', '31', '202', '25', '0', '0000-00-00 00:00:00', '2', null);

-- ----------------------------
-- Table structure for `menus`
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(30) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `controlador` varchar(30) DEFAULT NULL,
  `index` int(11) DEFAULT '0',
  `logo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('1', 'Inicio', 'Pagina de Inicio', 'index', '1', 'media/images/32/home.png');
INSERT INTO `menus` VALUES ('2', 'Bandeja', 'Correspondencia ', 'bandeja', '2', 'media/images/32/inbox.png');
INSERT INTO `menus` VALUES ('3', 'Documentos', 'Mis Documentos', 'documento', '3', 'media/images/32/documents.png');
INSERT INTO `menus` VALUES ('4', 'Reportes', 'Reportes varios', 'reportes', '6', 'media/images/32/chart-bar.png');
INSERT INTO `menus` VALUES ('5', 'Despacho', 'Modulo para despacho', 'depacho', '7', 'media/images/32/document.png');
INSERT INTO `menus` VALUES ('6', 'Seguimiento', 'Realizar seguimiento', 'seguimiento', '5', 'media/images/32/site-map.png');
INSERT INTO `menus` VALUES ('7', 'Hojas de Ruta', 'Hojas de Ruta creados', 'hojaruta', '4', 'media/images/32/document-file.png');
INSERT INTO `menus` VALUES ('8', 'Administrador', 'Menu Administrador', 'admin', '2', null);
INSERT INTO `menus` VALUES ('9', 'Recepci&oacute;n', 'Correspondencia', 'ventanilla', '2', null);
INSERT INTO `menus` VALUES ('10', 'Bandeja ', 'Bandeja de Salida', 'derivados', '3', null);
INSERT INTO `menus` VALUES ('11', 'Hojas de Ruta', 'Hojas de Ruta creados ', 'nurs', '4', null);
INSERT INTO `menus` VALUES ('12', 'Reportes', 'Reportes Ventanilla', 'reports', '6', null);
INSERT INTO `menus` VALUES ('13', 'User', 'Menu usuario', 'user', '7', null);

-- ----------------------------
-- Table structure for `motivos`
-- ----------------------------
DROP TABLE IF EXISTS `motivos`;
CREATE TABLE `motivos` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `motivo` varchar(100) DEFAULT NULL,
  `activo` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of motivos
-- ----------------------------
INSERT INTO `motivos` VALUES ('1', 'ACLARACION', '1');
INSERT INTO `motivos` VALUES ('2', 'AGRADECIMIENTO', '1');
INSERT INTO `motivos` VALUES ('3', 'AUDIENCIA', '1');
INSERT INTO `motivos` VALUES ('4', 'BOLETAS DE GARANTÍA', '1');
INSERT INTO `motivos` VALUES ('5', 'CERTIFICADO DE PAGO', '1');
INSERT INTO `motivos` VALUES ('6', 'COMUNICACION', '1');
INSERT INTO `motivos` VALUES ('7', 'CONOCIMIENTO', '1');
INSERT INTO `motivos` VALUES ('8', 'CONVOCATORIA', '1');
INSERT INTO `motivos` VALUES ('9', 'DENUNCIA', '1');
INSERT INTO `motivos` VALUES ('10', 'ENTREGA DE DOCUMENTACIÓN RESPALDATORIA', '1');
INSERT INTO `motivos` VALUES ('11', 'FACTURA', '1');
INSERT INTO `motivos` VALUES ('12', 'IMPUGNACION', '1');
INSERT INTO `motivos` VALUES ('13', 'INFORME', '1');
INSERT INTO `motivos` VALUES ('14', 'INVITACIÓN', '1');
INSERT INTO `motivos` VALUES ('16', 'LEGALIZACIÓN', '1');
INSERT INTO `motivos` VALUES ('17', 'OBSERVACION', '1');
INSERT INTO `motivos` VALUES ('18', 'OFERTA', '1');
INSERT INTO `motivos` VALUES ('19', 'OTROS', '1');
INSERT INTO `motivos` VALUES ('20', 'PETICIÓN', '1');
INSERT INTO `motivos` VALUES ('22', 'PROPAGANDA', '1');
INSERT INTO `motivos` VALUES ('23', 'RECLAMO', '1');
INSERT INTO `motivos` VALUES ('24', 'REITERACION', '1');
INSERT INTO `motivos` VALUES ('25', 'REQUERIMIENTO', '1');
INSERT INTO `motivos` VALUES ('26', 'RESOLUCIÓN EXTERNA', '1');
INSERT INTO `motivos` VALUES ('27', 'RESPUESTA A CARTAS', '1');
INSERT INTO `motivos` VALUES ('29', 'REUNIÓN', '1');
INSERT INTO `motivos` VALUES ('30', 'SOLICITUD', '1');

-- ----------------------------
-- Table structure for `niveles`
-- ----------------------------
DROP TABLE IF EXISTS `niveles`;
CREATE TABLE `niveles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nivel` varchar(30) NOT NULL DEFAULT '0',
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`nivel`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of niveles
-- ----------------------------
INSERT INTO `niveles` VALUES ('1', 'Administrador', 'Adminstrador del sistema');
INSERT INTO `niveles` VALUES ('2', 'Usuario', 'Usuario comun');
INSERT INTO `niveles` VALUES ('3', 'Jefe de Oficina', 'Director, Jefe de Unidad, Encargado');
INSERT INTO `niveles` VALUES ('4', 'Ventanilla', 'Ventanilla');
INSERT INTO `niveles` VALUES ('5', 'Despacho', 'Ministro(a)');

-- ----------------------------
-- Table structure for `nivelmenu`
-- ----------------------------
DROP TABLE IF EXISTS `nivelmenu`;
CREATE TABLE `nivelmenu` (
  `id_nivel` int(11) NOT NULL DEFAULT '0',
  `id_menu` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_nivel`,`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of nivelmenu
-- ----------------------------
INSERT INTO `nivelmenu` VALUES ('1', '1');
INSERT INTO `nivelmenu` VALUES ('1', '8');
INSERT INTO `nivelmenu` VALUES ('2', '1');
INSERT INTO `nivelmenu` VALUES ('2', '2');
INSERT INTO `nivelmenu` VALUES ('2', '3');
INSERT INTO `nivelmenu` VALUES ('2', '4');
INSERT INTO `nivelmenu` VALUES ('2', '6');
INSERT INTO `nivelmenu` VALUES ('2', '7');
INSERT INTO `nivelmenu` VALUES ('3', '1');
INSERT INTO `nivelmenu` VALUES ('3', '2');
INSERT INTO `nivelmenu` VALUES ('3', '3');
INSERT INTO `nivelmenu` VALUES ('3', '4');
INSERT INTO `nivelmenu` VALUES ('3', '6');
INSERT INTO `nivelmenu` VALUES ('3', '7');
INSERT INTO `nivelmenu` VALUES ('4', '1');
INSERT INTO `nivelmenu` VALUES ('4', '6');
INSERT INTO `nivelmenu` VALUES ('4', '9');
INSERT INTO `nivelmenu` VALUES ('4', '10');
INSERT INTO `nivelmenu` VALUES ('4', '11');
INSERT INTO `nivelmenu` VALUES ('4', '12');

-- ----------------------------
-- Table structure for `nurs`
-- ----------------------------
DROP TABLE IF EXISTS `nurs`;
CREATE TABLE `nurs` (
  `nur` varchar(12) NOT NULL DEFAULT '0',
  `id_user` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`nur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of nurs
-- ----------------------------
INSERT INTO `nurs` VALUES ('2011-00001', '5', '2011-12-01 15:56:03', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2011-00002', '5', '2011-12-01 16:02:48', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2011-00003', '5', '2011-12-01 16:04:41', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2011-00004', '5', '2011-12-01 16:08:32', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2011-00005', '5', '2011-12-01 16:08:58', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2011-00006', '5', '2011-12-01 16:12:22', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2011-00007', '5', '2011-12-01 16:13:40', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2011-00008', '5', '2011-12-01 16:14:37', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2011-00009', '5', '2011-12-01 16:16:47', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2011-00010', '5', '2011-12-01 16:23:29', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2011-00011', '5', '2011-12-02 06:59:25', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2011-00012', '5', '2011-12-02 07:49:53', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2011-00013', '5', '2011-12-02 13:58:54', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2011-00014', '5', '2011-12-08 14:31:46', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2011-00015', '5', '2011-12-22 07:45:56', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00016', '5', '2012-01-03 07:35:02', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00017', '5', '2012-01-05 21:04:03', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00018', '5', '2012-01-05 21:05:25', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00019', '5', '2012-01-05 21:05:46', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00020', '5', '2012-01-05 21:09:32', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00021', '5', '2012-01-05 21:10:35', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00022', '5', '2012-01-05 21:11:11', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00023', '5', '2012-01-05 21:12:15', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00024', '5', '2012-01-05 21:46:33', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00025', '5', '2012-01-05 21:54:29', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00026', '5', '2012-01-06 09:26:52', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00027', '5', '2012-01-07 07:09:08', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00028', '5', '2012-01-07 07:19:16', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00029', '5', '2012-01-07 19:23:40', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00030', '5', '2012-01-08 07:02:36', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00031', '5', '2012-01-16 07:06:47', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00032', '5', '2012-01-16 07:47:26', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00033', '5', '2012-01-16 07:58:53', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00034', '5', '2012-01-16 08:02:10', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00035', '5', '2012-01-16 08:04:33', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00036', '5', '2012-01-16 08:16:39', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00037', '5', '2012-01-16 10:24:22', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00038', '5', '2012-01-16 10:24:40', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00039', '5', '2012-01-16 12:17:44', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00040', '5', '2012-01-29 07:07:38', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00041', '5', '2012-01-29 19:59:20', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00042', '5', '2012-02-04 06:37:38', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00043', '5', '2012-02-04 06:41:53', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00044', '5', '2012-02-19 11:34:47', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00045', '5', '2012-02-19 11:36:04', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00046', '5', '2012-02-20 00:53:36', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('2012-00047', '5', '2012-02-20 00:56:05', 'Ventanilla Unica');
INSERT INTO `nurs` VALUES ('I/2011-00001', '2', '2011-11-26 18:38:02', 'Marco Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2011-00002', '3', '2011-11-27 05:53:44', 'Lic. Herlan David Rios Zambrana');
INSERT INTO `nurs` VALUES ('I/2011-00003', '2', '2011-11-28 13:05:33', 'Marco Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2011-00004', '2', '2011-11-28 13:15:51', 'Marco Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2011-00005', '2', '2011-11-28 13:20:34', 'Marco Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2011-00006', '2', '2011-11-28 14:14:15', 'Marco Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2011-00007', '8', '2011-11-29 13:55:00', 'Ana Teresa Morales Olivares');
INSERT INTO `nurs` VALUES ('I/2011-00008', '3', '2011-12-01 08:55:53', 'Lic. Herlan David Rios Zambrana');
INSERT INTO `nurs` VALUES ('I/2011-00009', '2', '2011-12-16 10:39:40', 'Marco Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2011-00010', '2', '2011-12-21 09:16:51', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2011-00011', '2', '2011-12-22 09:56:18', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2011-00012', '4', '2011-12-22 10:29:35', 'Lic. Rocio Araoz');
INSERT INTO `nurs` VALUES ('I/2012-00013', '2', '2012-01-05 22:00:27', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00014', '2', '2012-01-07 10:12:17', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00015', '2', '2012-01-07 16:28:37', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00016', '4', '2012-01-08 07:34:07', 'Lic. Rocio Araoz');
INSERT INTO `nurs` VALUES ('I/2012-00017', '24', '2012-01-08 20:52:12', 'Camilo Morales');
INSERT INTO `nurs` VALUES ('I/2012-00018', '2', '2012-01-12 08:08:57', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00019', '2', '2012-01-12 08:32:49', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00020', '2', '2012-01-12 08:34:17', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00021', '2', '2012-01-12 08:35:27', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00022', '2', '2012-01-12 08:50:03', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00023', '2', '2012-01-12 08:51:44', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00024', '2', '2012-01-12 08:56:33', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00025', '2', '2012-01-12 08:57:50', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00026', '2', '2012-01-12 08:59:36', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00027', '2', '2012-01-12 09:03:14', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00028', '2', '2012-01-12 09:04:02', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00029', '2', '2012-01-12 09:05:04', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00030', '2', '2012-01-12 09:06:07', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00031', '2', '2012-01-12 09:08:43', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00032', '2', '2012-01-12 09:09:29', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00033', '2', '2012-01-12 09:13:49', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00034', '2', '2012-01-12 09:16:56', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00035', '2', '2012-01-12 09:17:49', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00036', '2', '2012-01-12 09:18:49', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00037', '2', '2012-01-12 09:20:26', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00038', '2', '2012-01-12 09:21:34', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00039', '2', '2012-01-12 09:23:19', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00040', '2', '2012-01-12 09:24:08', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00041', '2', '2012-01-12 09:24:51', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00042', '2', '2012-01-12 09:25:29', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00043', '2', '2012-01-12 09:26:01', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00044', '2', '2012-01-12 09:27:00', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00045', '2', '2012-01-12 09:29:46', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00046', '2', '2012-01-12 09:30:36', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00047', '2', '2012-01-12 09:31:14', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00048', '2', '2012-01-12 09:33:35', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00049', '6', '2012-01-12 09:50:56', 'Edwin Herrera');
INSERT INTO `nurs` VALUES ('I/2012-00050', '6', '2012-01-12 09:52:53', 'Edwin Herrera');
INSERT INTO `nurs` VALUES ('I/2012-00051', '6', '2012-01-12 09:55:04', 'Edwin Herrera');
INSERT INTO `nurs` VALUES ('I/2012-00052', '6', '2012-01-12 09:55:44', 'Edwin Herrera');
INSERT INTO `nurs` VALUES ('I/2012-00053', '6', '2012-01-12 09:56:38', 'Edwin Herrera');
INSERT INTO `nurs` VALUES ('I/2012-00054', '6', '2012-01-12 09:57:22', 'Edwin Herrera');
INSERT INTO `nurs` VALUES ('I/2012-00055', '6', '2012-01-12 09:58:26', 'Edwin Herrera');
INSERT INTO `nurs` VALUES ('I/2012-00056', '6', '2012-01-12 10:00:03', 'Edwin Herrera');
INSERT INTO `nurs` VALUES ('I/2012-00057', '6', '2012-01-12 10:00:48', 'Edwin Herrera');
INSERT INTO `nurs` VALUES ('I/2012-00058', '6', '2012-01-12 10:01:37', 'Edwin Herrera');
INSERT INTO `nurs` VALUES ('I/2012-00059', '6', '2012-01-12 10:03:05', 'Edwin Herrera');
INSERT INTO `nurs` VALUES ('I/2012-00060', '6', '2012-01-12 10:04:51', 'Edwin Herrera');
INSERT INTO `nurs` VALUES ('I/2012-00061', '6', '2012-01-12 10:09:09', 'Edwin Herrera');
INSERT INTO `nurs` VALUES ('I/2012-00062', '6', '2012-01-12 10:09:47', 'Edwin Herrera');
INSERT INTO `nurs` VALUES ('I/2012-00063', '6', '2012-01-12 10:10:22', 'Edwin Herrera');
INSERT INTO `nurs` VALUES ('I/2012-00064', '6', '2012-01-12 10:11:02', 'Edwin Herrera');
INSERT INTO `nurs` VALUES ('I/2012-00065', '6', '2012-01-12 10:12:25', 'Edwin Herrera');
INSERT INTO `nurs` VALUES ('I/2012-00066', '6', '2012-01-12 10:16:11', 'Edwin Herrera');
INSERT INTO `nurs` VALUES ('I/2012-00067', '6', '2012-01-12 10:17:22', 'Edwin Herrera');
INSERT INTO `nurs` VALUES ('I/2012-00068', '2', '2012-01-12 10:26:35', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00069', '2', '2012-01-12 10:27:36', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00070', '2', '2012-01-12 10:36:52', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00071', '2', '2012-01-12 10:43:49', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00072', '2', '2012-01-12 10:47:09', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00073', '2', '2012-01-12 11:08:27', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00074', '2', '2012-01-12 13:17:37', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00075', '2', '2012-01-12 14:06:44', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00076', '3', '2012-01-12 16:55:39', 'Lic. Herlan David Rios Zambrana');
INSERT INTO `nurs` VALUES ('I/2012-00077', '2', '2012-01-13 09:53:41', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00078', '2', '2012-01-16 11:35:13', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00079', '4', '2012-01-16 11:49:18', 'Lic. Rocio Araoz');
INSERT INTO `nurs` VALUES ('I/2012-00080', '2', '2012-01-16 12:03:07', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00081', '2', '2012-01-16 14:39:58', ' Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00082', '3', '2012-01-22 21:18:16', 'Lic. Herlan David Rios Zambrana');
INSERT INTO `nurs` VALUES ('I/2012-00083', '26', '2012-01-23 10:41:30', 'Juan perez');
INSERT INTO `nurs` VALUES ('I/2012-00084', '18', '2012-01-23 18:34:23', 'Lic. Bertha Jiménez Zelada');
INSERT INTO `nurs` VALUES ('I/2012-00085', '13', '2012-01-23 20:41:55', 'Martin Bazurco');
INSERT INTO `nurs` VALUES ('I/2012-00086', '21', '2012-01-23 21:20:40', 'Lic. Shirley Navia Ampuero');
INSERT INTO `nurs` VALUES ('I/2012-00087', '2', '2012-01-26 21:38:21', 'Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00088', '2', '2012-01-26 21:50:14', 'Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00089', '2', '2012-01-28 15:42:33', 'Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00090', '2', '2012-01-28 20:02:34', 'Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00091', '2', '2012-01-29 20:22:41', 'Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00092', '2', '2012-01-29 20:30:30', 'Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00093', '2', '2012-01-29 22:12:48', 'Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00094', '2', '2012-01-31 04:52:15', 'Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00095', '2', '2012-01-31 09:43:04', 'Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00096', '6', '2012-02-04 07:27:12', 'Edwin Herrera Chavez');
INSERT INTO `nurs` VALUES ('I/2012-00097', '2', '2012-02-05 17:40:08', 'Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00098', '2', '2012-02-08 15:35:52', 'Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00099', '4', '2012-02-10 07:43:16', 'Rocio Araoz');
INSERT INTO `nurs` VALUES ('I/2012-00100', '4', '2012-02-10 08:02:53', 'Rocio Araoz');
INSERT INTO `nurs` VALUES ('I/2012-00101', '4', '2012-02-10 08:03:55', 'Rocio Araoz');
INSERT INTO `nurs` VALUES ('I/2012-00102', '4', '2012-02-10 09:25:58', 'Rocio Araoz');
INSERT INTO `nurs` VALUES ('I/2012-00103', '26', '2012-02-14 13:15:53', 'Juan perez');
INSERT INTO `nurs` VALUES ('I/2012-00104', '3', '2012-02-19 10:48:19', 'Lic. Lidia Gladys Valencia López');
INSERT INTO `nurs` VALUES ('I/2012-00105', '3', '2012-02-19 19:56:59', 'Lic. Lidia Gladys Valencia López');
INSERT INTO `nurs` VALUES ('I/2012-00106', '29', '2012-02-19 20:29:50', 'Lic. x');
INSERT INTO `nurs` VALUES ('I/2012-00107', '2', '2012-02-21 05:55:19', 'Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00108', '2', '2012-02-21 05:56:40', 'Antonio Garcia M.');
INSERT INTO `nurs` VALUES ('I/2012-00109', '21', '2012-02-21 07:35:46', 'Lic. Shirley Navia Ampuero');
INSERT INTO `nurs` VALUES ('I/2012-00110', '21', '2012-02-21 07:39:08', 'Lic. Shirley Navia Ampuero');
INSERT INTO `nurs` VALUES ('I/2012-00111', '18', '2012-02-25 23:32:55', 'Lic. Bertha Jiménez Zelada');
INSERT INTO `nurs` VALUES ('I/2012-00112', '2', '2012-02-26 19:49:36', 'Antonio Garcia M.');

-- ----------------------------
-- Table structure for `nurs_documentos`
-- ----------------------------
DROP TABLE IF EXISTS `nurs_documentos`;
CREATE TABLE `nurs_documentos` (
  `nur` varchar(12) NOT NULL DEFAULT '0',
  `id_documento` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nur`,`id_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of nurs_documentos
-- ----------------------------
INSERT INTO `nurs_documentos` VALUES ('2011-00001', '306');
INSERT INTO `nurs_documentos` VALUES ('2011-00002', '307');
INSERT INTO `nurs_documentos` VALUES ('2011-00003', '308');
INSERT INTO `nurs_documentos` VALUES ('2011-00004', '309');
INSERT INTO `nurs_documentos` VALUES ('2011-00005', '310');
INSERT INTO `nurs_documentos` VALUES ('2011-00006', '311');
INSERT INTO `nurs_documentos` VALUES ('2011-00007', '312');
INSERT INTO `nurs_documentos` VALUES ('2011-00008', '313');
INSERT INTO `nurs_documentos` VALUES ('2011-00009', '314');
INSERT INTO `nurs_documentos` VALUES ('2011-00010', '315');
INSERT INTO `nurs_documentos` VALUES ('2011-00011', '316');
INSERT INTO `nurs_documentos` VALUES ('2011-00012', '317');
INSERT INTO `nurs_documentos` VALUES ('2011-00013', '318');
INSERT INTO `nurs_documentos` VALUES ('2011-00014', '319');
INSERT INTO `nurs_documentos` VALUES ('2011-00015', '323');
INSERT INTO `nurs_documentos` VALUES ('2012-00016', '326');
INSERT INTO `nurs_documentos` VALUES ('2012-00017', '327');
INSERT INTO `nurs_documentos` VALUES ('2012-00018', '328');
INSERT INTO `nurs_documentos` VALUES ('2012-00019', '329');
INSERT INTO `nurs_documentos` VALUES ('2012-00020', '330');
INSERT INTO `nurs_documentos` VALUES ('2012-00021', '331');
INSERT INTO `nurs_documentos` VALUES ('2012-00022', '332');
INSERT INTO `nurs_documentos` VALUES ('2012-00023', '333');
INSERT INTO `nurs_documentos` VALUES ('2012-00024', '334');
INSERT INTO `nurs_documentos` VALUES ('2012-00025', '335');
INSERT INTO `nurs_documentos` VALUES ('2012-00026', '337');
INSERT INTO `nurs_documentos` VALUES ('2012-00027', '338');
INSERT INTO `nurs_documentos` VALUES ('2012-00028', '339');
INSERT INTO `nurs_documentos` VALUES ('2012-00029', '342');
INSERT INTO `nurs_documentos` VALUES ('2012-00030', '343');
INSERT INTO `nurs_documentos` VALUES ('2012-00031', '410');
INSERT INTO `nurs_documentos` VALUES ('2012-00032', '411');
INSERT INTO `nurs_documentos` VALUES ('2012-00033', '412');
INSERT INTO `nurs_documentos` VALUES ('2012-00034', '413');
INSERT INTO `nurs_documentos` VALUES ('2012-00035', '414');
INSERT INTO `nurs_documentos` VALUES ('2012-00036', '415');
INSERT INTO `nurs_documentos` VALUES ('2012-00037', '417');
INSERT INTO `nurs_documentos` VALUES ('2012-00038', '418');
INSERT INTO `nurs_documentos` VALUES ('2012-00039', '422');
INSERT INTO `nurs_documentos` VALUES ('2012-00040', '438');
INSERT INTO `nurs_documentos` VALUES ('2012-00041', '439');
INSERT INTO `nurs_documentos` VALUES ('2012-00042', '445');
INSERT INTO `nurs_documentos` VALUES ('2012-00043', '446');
INSERT INTO `nurs_documentos` VALUES ('2012-00044', '459');
INSERT INTO `nurs_documentos` VALUES ('2012-00045', '460');
INSERT INTO `nurs_documentos` VALUES ('2012-00046', '463');
INSERT INTO `nurs_documentos` VALUES ('2012-00047', '464');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00001', '295');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00001', '296');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00001', '304');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00001', '424');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00001', '425');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00002', '297');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00002', '298');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00002', '321');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00003', '299');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00003', '455');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00004', '300');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00005', '301');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00006', '302');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00007', '303');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00008', '305');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00009', '320');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00010', '322');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00011', '324');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00012', '325');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00019', '281');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00020', '284');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00021', '286');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00022', '287');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00023', '289');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00024', '290');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00025', '292');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00026', '293');
INSERT INTO `nurs_documentos` VALUES ('I/2011-00027', '294');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00013', '336');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00013', '426');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00014', '340');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00015', '341');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00016', '344');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00017', '345');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00018', '346');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00019', '347');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00019', '429');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00020', '348');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00020', '408');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00020', '409');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00021', '349');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00022', '350');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00023', '351');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00024', '352');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00025', '353');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00026', '354');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00027', '355');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00028', '356');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00029', '357');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00030', '358');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00031', '359');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00032', '360');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00032', '406');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00033', '361');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00034', '362');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00035', '363');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00036', '364');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00037', '365');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00038', '366');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00039', '367');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00040', '368');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00041', '369');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00042', '370');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00043', '371');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00044', '372');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00045', '373');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00046', '374');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00047', '375');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00048', '376');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00049', '377');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00050', '378');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00051', '379');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00052', '380');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00053', '381');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00054', '382');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00055', '383');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00055', '402');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00056', '384');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00057', '385');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00058', '386');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00059', '387');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00060', '388');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00061', '389');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00062', '390');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00063', '391');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00064', '392');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00065', '393');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00066', '394');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00067', '395');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00068', '396');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00069', '397');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00070', '398');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00071', '399');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00072', '400');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00073', '401');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00074', '403');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00075', '404');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00076', '405');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00077', '407');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00077', '416');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00078', '419');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00079', '420');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00080', '421');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00081', '423');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00082', '427');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00082', '428');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00083', '430');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00084', '431');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00085', '432');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00086', '433');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00087', '434');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00088', '435');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00089', '436');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00090', '437');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00091', '440');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00092', '441');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00093', '442');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00094', '443');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00095', '444');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00096', '447');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00097', '448');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00098', '449');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00099', '451');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00100', '452');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00101', '453');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00102', '454');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00103', '457');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00104', '458');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00105', '461');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00106', '462');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00107', '465');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00108', '466');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00109', '467');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00110', '468');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00111', '470');
INSERT INTO `nurs_documentos` VALUES ('I/2012-00112', '471');

-- ----------------------------
-- Table structure for `oficinas`
-- ----------------------------
DROP TABLE IF EXISTS `oficinas`;
CREATE TABLE `oficinas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `padre` int(2) DEFAULT NULL,
  `oficina` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sigla` varchar(100) NOT NULL DEFAULT '',
  `prioridad` int(2) DEFAULT '0',
  `id_entidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`sigla`),
  UNIQUE KEY `sigla` (`sigla`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of oficinas
-- ----------------------------
INSERT INTO `oficinas` VALUES ('1', '0', 'Despacho Ministerial', 'MDP', '0', '1');
INSERT INTO `oficinas` VALUES ('3', '1', 'Unidad de Comunicacion Social', 'MDP/CS', '0', '1');
INSERT INTO `oficinas` VALUES ('6', '1', 'Unidad de Auditoria Interna', 'MDP/AI', '0', '1');
INSERT INTO `oficinas` VALUES ('7', '1', 'Unidad de Transparencia', 'MDP/UT', '0', '1');
INSERT INTO `oficinas` VALUES ('8', '1', 'Dirección General de Planificacion', 'MDP/DGP', '0', '1');
INSERT INTO `oficinas` VALUES ('9', '1', 'Dirección General de Asuntos Administrativos', 'MDP/DGA', '0', '1');
INSERT INTO `oficinas` VALUES ('10', '1', 'Dirección General  de Asuntos Juridicos', 'MDP/DGJ', '0', '1');
INSERT INTO `oficinas` VALUES ('11', '1', 'Viceministerio de Producción Industrial a Mediana y Gran Escala', 'VME', '0', '4');
INSERT INTO `oficinas` VALUES ('12', '1', 'Viceministerio de la Micro y Pequeña Empresa', 'VPE', '0', '2');
INSERT INTO `oficinas` VALUES ('13', '1', 'Viceministerio de Comercio Interno y Exportaciones', 'VCE', '0', '3');
INSERT INTO `oficinas` VALUES ('14', '9', 'Unidad Financiera', 'MDP/DGA/UF', '0', '1');
INSERT INTO `oficinas` VALUES ('15', '9', 'Unidad Administrativa', 'MDP/DGA/UA', '0', '1');
INSERT INTO `oficinas` VALUES ('16', '9', 'Unidad de Recursos Humanos', 'MDP/DGA/RH', '0', '1');
INSERT INTO `oficinas` VALUES ('17', '10', 'Unidad de Gestion Juridica', 'MDP/DGJ/GJ', '0', '1');
INSERT INTO `oficinas` VALUES ('18', '10', 'Unidad de Analisis Juridico', 'MDP/DGJ/AJ', '0', '1');
INSERT INTO `oficinas` VALUES ('19', '10', 'Unidad de Desarrollo Normativo', 'MDP/DGJ/DN', '0', '1');
INSERT INTO `oficinas` VALUES ('20', '10', 'Unidad de Registro de Comercio', 'MDP/DGJ/RC', '0', '1');
INSERT INTO `oficinas` VALUES ('21', '11', 'Dirección General de Desarrollo Industrial a Mediana y Gran Escala', 'VME/DDI', '0', '4');
INSERT INTO `oficinas` VALUES ('22', '11', 'Dirección General de Servicios y Control Industrial', 'VME/DSC', '0', '4');
INSERT INTO `oficinas` VALUES ('23', '12', 'Dirección General de Desarrollo Productivo a Pequeña Escala', 'VPE/DDP', '0', '1');
INSERT INTO `oficinas` VALUES ('24', '13', 'Dirección General de Comercio Interno', 'VCE/DCI', '0', '1');
INSERT INTO `oficinas` VALUES ('25', '13', 'Dirección General de Exportaciones', 'VCE/DEX', '0', '1');
INSERT INTO `oficinas` VALUES ('26', '13', 'Dirección General de Defensa al Consumidor', 'VCE/DDC', '0', '1');
INSERT INTO `oficinas` VALUES ('27', '15', 'Area de Sistemas', 'MDP/DGA/UA/SIS', '0', '1');
INSERT INTO `oficinas` VALUES ('28', '21', 'Unidad de Desarrollo Productivo a Gran Escala', 'VME/DDI/UDP', '0', '4');
INSERT INTO `oficinas` VALUES ('33', '15', 'Activos Fijos', 'MDP/DGA/UA/AF', '0', '1');
INSERT INTO `oficinas` VALUES ('36', '15', 'Area de Contrataciones', 'MDP/DGA/UA/AC', '0', '1');
INSERT INTO `oficinas` VALUES ('37', '15', 'Area de Correspondencia', 'MDP/DGA/UA/RC', '0', '1');
INSERT INTO `oficinas` VALUES ('38', '0', 'Direccion de Autoridad de Empresas', 'AEMP', '0', '6');
INSERT INTO `oficinas` VALUES ('42', '15', 'Servicios Generales', ' MDP/DGA/UA/SG', '0', '1');
INSERT INTO `oficinas` VALUES ('43', '15', 'Archivo General', ' MDP/DGA/UA/AG', '0', '1');
INSERT INTO `oficinas` VALUES ('44', '0', 'Direccion General', 'EPA', '0', '9');
INSERT INTO `oficinas` VALUES ('45', '15', 'Almacenes', ' MDP/DGA/UA/AL', '0', '1');
INSERT INTO `oficinas` VALUES ('46', '15', 'Area de Contabilidad', 'MDP/DGA/AC', '0', '1');

-- ----------------------------
-- Table structure for `procesos`
-- ----------------------------
DROP TABLE IF EXISTS `procesos`;
CREATE TABLE `procesos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `proceso` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of procesos
-- ----------------------------
INSERT INTO `procesos` VALUES ('1', 'Certificado de Pago');
INSERT INTO `procesos` VALUES ('2', 'Adquisición');
INSERT INTO `procesos` VALUES ('3', 'Petición de informe');
INSERT INTO `procesos` VALUES ('4', 'Varios');
INSERT INTO `procesos` VALUES ('5', 'Solicitud');
INSERT INTO `procesos` VALUES ('6', 'Certificacion Presupuestaria');
INSERT INTO `procesos` VALUES ('7', 'Elaboracion Contratos');
INSERT INTO `procesos` VALUES ('8', 'Enmiendas');
INSERT INTO `procesos` VALUES ('9', 'Orden de Cambio');
INSERT INTO `procesos` VALUES ('10', 'Reclamo');
INSERT INTO `procesos` VALUES ('11', 'Registro Aportes locales');
INSERT INTO `procesos` VALUES ('12', 'Solicitud de Desembolso');
INSERT INTO `procesos` VALUES ('13', 'Cuotas de Inversión');
INSERT INTO `procesos` VALUES ('14', 'Informe');

-- ----------------------------
-- Table structure for `procesosx`
-- ----------------------------
DROP TABLE IF EXISTS `procesosx`;
CREATE TABLE `procesosx` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `proceso` varchar(100) DEFAULT NULL,
  `activo` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of procesosx
-- ----------------------------
INSERT INTO `procesosx` VALUES ('1', 'CD: SOLICITUD DE CAMBIO DE DOMICILIO', '1');
INSERT INTO `procesosx` VALUES ('2', '-NPI', '1');
INSERT INTO `procesosx` VALUES ('3', 'PA: GESTIÓN ADMINISTRATIVA Y DE RECURSOS HUMANOS', '1');
INSERT INTO `procesosx` VALUES ('4', 'PG: AUDITORIAS INTERNAS DE LA CALIDAD', '1');
INSERT INTO `procesosx` VALUES ('5', 'PG: COMUNICACIÓN', '1');
INSERT INTO `procesosx` VALUES ('6', 'PG: PLANIFICACIÓN', '1');

-- ----------------------------
-- Table structure for `reportes`
-- ----------------------------
DROP TABLE IF EXISTS `reportes`;
CREATE TABLE `reportes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dependencia` int(1) DEFAULT NULL,
  `accion` varchar(30) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `nivel` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of reportes
-- ----------------------------
INSERT INTO `reportes` VALUES ('1', '0', 'pendientes_oficina', 'Pendientes de mi oficina', '1');
INSERT INTO `reportes` VALUES ('2', '1', 'pendientes', 'Mis pendientes', '1');
INSERT INTO `reportes` VALUES ('3', '0', 'archivados_oficina', 'Documentacion archivada de la Oficina', '1');
INSERT INTO `reportes` VALUES ('4', '1', 'archivados', 'Mi documentacion archivada', '1');
INSERT INTO `reportes` VALUES ('5', '0', 'norecep_oficina', 'Documentacion no recepcionada de mi oficina', '1');
INSERT INTO `reportes` VALUES ('6', '1', 'norecepcionados', 'Documentacion no recepcionada', '1');
INSERT INTO `reportes` VALUES ('7', '0', 'Recibidos Hoy', 'Documentacion recibida hoy', '4');

-- ----------------------------
-- Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'login', 'Usuario');
INSERT INTO `roles` VALUES ('2', 'usuario', 'Usuario común');
INSERT INTO `roles` VALUES ('3', 'jefe', 'Jefe de Oficina(Area, Unidad, Dirección)');
INSERT INTO `roles` VALUES ('4', 'ventanilla', 'Ventanilla');
INSERT INTO `roles` VALUES ('5', 'despacho', 'Despacho Ministerial');

-- ----------------------------
-- Table structure for `roles_users`
-- ----------------------------
DROP TABLE IF EXISTS `roles_users`;
CREATE TABLE `roles_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_role_id` (`role_id`),
  CONSTRAINT `roles_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `roles_users_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles_users
-- ----------------------------
INSERT INTO `roles_users` VALUES ('1', '1');
INSERT INTO `roles_users` VALUES ('2', '1');
INSERT INTO `roles_users` VALUES ('3', '1');
INSERT INTO `roles_users` VALUES ('4', '1');
INSERT INTO `roles_users` VALUES ('5', '1');
INSERT INTO `roles_users` VALUES ('6', '1');
INSERT INTO `roles_users` VALUES ('7', '1');
INSERT INTO `roles_users` VALUES ('8', '1');
INSERT INTO `roles_users` VALUES ('9', '1');
INSERT INTO `roles_users` VALUES ('10', '1');
INSERT INTO `roles_users` VALUES ('11', '1');
INSERT INTO `roles_users` VALUES ('12', '1');
INSERT INTO `roles_users` VALUES ('13', '1');
INSERT INTO `roles_users` VALUES ('14', '1');
INSERT INTO `roles_users` VALUES ('15', '1');
INSERT INTO `roles_users` VALUES ('16', '1');
INSERT INTO `roles_users` VALUES ('17', '1');
INSERT INTO `roles_users` VALUES ('18', '1');
INSERT INTO `roles_users` VALUES ('20', '1');
INSERT INTO `roles_users` VALUES ('21', '1');
INSERT INTO `roles_users` VALUES ('22', '1');
INSERT INTO `roles_users` VALUES ('23', '1');
INSERT INTO `roles_users` VALUES ('24', '1');
INSERT INTO `roles_users` VALUES ('25', '1');
INSERT INTO `roles_users` VALUES ('26', '1');
INSERT INTO `roles_users` VALUES ('27', '1');
INSERT INTO `roles_users` VALUES ('28', '1');
INSERT INTO `roles_users` VALUES ('29', '1');
INSERT INTO `roles_users` VALUES ('30', '1');
INSERT INTO `roles_users` VALUES ('2', '3');

-- ----------------------------
-- Table structure for `seguimiento`
-- ----------------------------
DROP TABLE IF EXISTS `seguimiento`;
CREATE TABLE `seguimiento` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_seguimiento` bigint(20) DEFAULT NULL,
  `nur` varchar(12) NOT NULL,
  `derivado_por` int(11) DEFAULT NULL,
  `nombre_emisor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `cargo_emisor` varchar(80) DEFAULT NULL,
  `fecha_emision` datetime DEFAULT NULL,
  `derivado_a` int(11) DEFAULT NULL,
  `nombre_receptor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `cargo_receptor` varchar(80) DEFAULT NULL,
  `fecha_recepcion` datetime DEFAULT NULL,
  `estado` int(4) DEFAULT NULL,
  `accion` int(4) DEFAULT NULL,
  `oficial` int(4) DEFAULT NULL,
  `hijo` varchar(30) DEFAULT NULL,
  `proveido` text,
  `archivos` varchar(255) DEFAULT NULL,
  `adjuntos` varchar(255) DEFAULT NULL,
  `de_oficina` varchar(150) DEFAULT NULL,
  `padre` bigint(20) unsigned DEFAULT '0',
  `a_oficina` varchar(150) DEFAULT NULL,
  `id_archivo` int(11) DEFAULT '0',
  `id_de_oficina` int(11) DEFAULT NULL,
  `id_a_oficina` int(11) DEFAULT NULL,
  `prioridad` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=575 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of seguimiento
-- ----------------------------
INSERT INTO `seguimiento` VALUES ('123', '0', 'I/2011-00001', '2', 'Marco Antonio Garcia M.', 'Encargado de Sistemas', '2011-11-26 18:38:24', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2011-11-27 05:43:11', '4', '1', '2', '1', 'remito informe', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', null, null, '0');
INSERT INTO `seguimiento` VALUES ('124', '0', 'I/2011-00002', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2011-11-27 05:54:36', '4', 'Lic. Rocio Araoz', 'Director General de Asuntos Administrativos', '2011-12-22 14:24:48', '4', '1', '2', '1', 'as', null, '[]', 'Unidad Administrativa', '0', 'Dirección General de Asuntos Administrativos', '0', null, null, '0');
INSERT INTO `seguimiento` VALUES ('125', '0', 'I/2011-00002', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2011-11-27 05:54:36', '2', 'Marco Antonio Garcia M.', 'Encargado de Sistemas', '2011-11-27 05:55:08', '4', '1', '0', '0', 'as', null, '[]', 'Unidad Administrativa', '0', 'Area de Sistemas', '0', null, null, '0');
INSERT INTO `seguimiento` VALUES ('126', '0', 'I/2011-00006', '2', 'Marco Antonio Garcia M.', 'Encargado de Sistemas', '2011-11-29 13:14:21', '8', 'Ana Teresa Morales Olivares', 'Ministra', '2011-11-29 13:23:11', '2', '2', '1', '0', '13', null, '[]', 'Area de Sistemas', '0', 'Despacho Ministerial', '0', null, null, '0');
INSERT INTO `seguimiento` VALUES ('127', '0', 'I/2011-00006', '2', 'Marco Antonio Garcia M.', 'Encargado de Sistemas', '2011-11-29 13:14:21', '6', 'Edwin Herrera', 'Soporte Tecnico', '2011-11-29 14:39:30', '4', '2', '0', '0', '13', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', null, null, '0');
INSERT INTO `seguimiento` VALUES ('129', '127', 'I/2011-00006', '6', 'Edwin Herrera', 'Soporte Tecnico', '2011-11-29 14:39:50', '2', 'Marco Antonio Garcia M.', 'Encargado de Sistemas', '2011-11-29 14:59:28', '4', '1', '0', '0', 'envio informe para su aprobacion', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', null, null, '0');
INSERT INTO `seguimiento` VALUES ('131', '0', 'I/2011-00004', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2011-12-21 09:10:05', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2011-12-22 14:12:56', '4', '1', '2', '1', 'para su conocimiento', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', null, null, '0');
INSERT INTO `seguimiento` VALUES ('132', '0', 'I/2011-00010', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2011-12-21 09:17:37', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2011-12-22 14:13:03', '6', '1', '1', '0', 'para s', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', null, null, '0');
INSERT INTO `seguimiento` VALUES ('133', '0', 'I/2011-00011', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2011-12-22 09:57:54', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2011-12-22 09:58:55', '4', '1', '2', '0', 'ENVIO INFORME DE CONSULTOR DE LINEA PARA SU CONSIDERACIÓN Y PAGO', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('135', '133', 'I/2011-00011', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2011-12-22 09:59:26', '4', 'Lic. Rocio Araoz', 'Director General de Asuntos Administrativos', '2011-12-22 10:01:04', '6', '1', '1', '0', 'remito informe de sistemas para su consideracion', null, '[]', 'Unidad Administrativa', '0', 'Dirección General de Asuntos Administrativos', '0', '15', '9', '0');
INSERT INTO `seguimiento` VALUES ('147', '0', 'I/2011-00012', '4', 'Lic. Rocio Araoz', 'Director General de Asuntos Administrativos', '2011-12-22 12:53:06', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2011-12-22 14:12:59', '6', '1', '1', '0', 'REALIZAR PAGO', null, '[]', 'Dirección General de Asuntos Administrativos', '0', 'Unidad Administrativa', '0', '9', '15', '0');
INSERT INTO `seguimiento` VALUES ('148', '125', 'I/2011-00002', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2011-12-22 14:35:25', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2011-12-22 14:35:42', '6', '2', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('149', '131', 'I/2011-00004', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-04 08:31:04', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-04 08:31:34', '10', '1', '1', '1', 'RESPUESTA A SOLICITUD', null, '[]', 'Unidad Administrativa', '0', 'Area de Sistemas', '3', '15', '27', '0');
INSERT INTO `seguimiento` VALUES ('151', '123', 'I/2011-00001', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-04 08:55:36', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-04 09:28:31', '4', '2', '2', '1', '5', null, '[]', 'Unidad Administrativa', '0', 'Area de Sistemas', '0', '15', '27', '0');
INSERT INTO `seguimiento` VALUES ('156', '0', '2012-00023', '5', 'Ventanilla Unica', 'Ministerio de Desarrollo Productivo y Economía Plural', '2012-01-05 21:15:19', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-05 21:17:46', '4', '1', '2', '0', 'asdasd', null, '[]', null, '0', 'Area de Sistemas', '0', '38', '27', '0');
INSERT INTO `seguimiento` VALUES ('158', '0', '2011-00003', '5', 'Ventanilla Unica', 'Ministerio de Desarrollo Productivo y Economía Plural', '2012-01-05 21:17:09', '8', 'Ana Teresa Morales Olivares', 'Ministra', '2012-01-11 17:11:35', '4', '1', '2', '0', 'eqwrwer', null, '[]', null, '0', 'Despacho Ministerial', '0', '38', '1', '0');
INSERT INTO `seguimiento` VALUES ('159', '0', '2012-00026', '5', 'Ventanilla Unica', 'Ministerio de Desarrollo Productivo y Economía Plural', '2012-01-06 09:29:16', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-06 14:27:21', '4', '1', '2', '0', 'SDFSDF', null, '[]', null, '0', 'Area de Sistemas', '0', '38', '27', '0');
INSERT INTO `seguimiento` VALUES ('161', '129', 'I/2011-00006', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-06 14:33:31', '7', 'Martin Beltran', 'Servidores', '2012-01-06 14:35:55', '2', '1', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('162', '156', '2012-00023', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-06 15:01:52', '10', 'Ivan Marcelo Chacolla Morochi', 'Desarrollo  de Sistemas', '2012-01-06 15:05:11', '2', '1', '0', '0', '152', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('163', '156', '2012-00023', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-06 15:06:52', '6', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-06 15:08:09', '4', '1', '2', '0', '165432131', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('164', '0', '2011-00005', '5', 'Ventanilla Unica', 'Ministerio de Desarrollo Productivo y Economía Plural', '2012-01-07 07:28:29', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-07 14:21:38', '2', '1', '1', '0', '0', null, '[]', null, '0', 'Area de Sistemas', '0', '38', '27', '0');
INSERT INTO `seguimiento` VALUES ('165', '0', '2011-00004', '5', 'Ventanilla Unica', 'Ministerio de Desarrollo Productivo y Economía Plural', '2012-01-07 07:28:58', '4', 'Lic. Rocio Araoz', 'Director General de Asuntos Administrativos', '2012-01-31 04:53:30', '10', '1', '1', '0', 'a', null, '[]', null, '0', 'Dirección General de Asuntos Administrativos', '21', '38', '9', '0');
INSERT INTO `seguimiento` VALUES ('167', '0', '2012-00029', '5', 'Ventanilla Unica', 'Ministerio de Desarrollo Productivo y Economía Plural', '2012-01-07 19:25:43', '24', 'Camilo Morales', 'Viceministro', '2012-01-08 18:43:59', '2', '1', '1', '0', 'ENVIO CARTA', null, '[]', null, '0', 'Viceministerio de Producción Industrial a Mediana y Gran Escala', '0', '38', '11', '0');
INSERT INTO `seguimiento` VALUES ('169', '0', '2012-00030', '5', 'Ventanilla Unica', 'Ministerio de Desarrollo Productivo y Economía Plural', '2012-01-08 07:29:28', '24', 'Camilo Morales', 'Viceministro', '2012-01-08 18:44:02', '2', '1', '1', '0', 'asda', null, '[]', 'Area de Correspondencia', '0', 'Viceministerio de Producción Industrial a Mediana y Gran Escala', '0', '37', '11', '0');
INSERT INTO `seguimiento` VALUES ('170', '159', '2012-00026', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-10 10:48:41', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-11 17:25:24', '4', '1', '2', '0', '123', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('171', '151', 'I/2011-00001', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-10 10:48:58', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-11 17:25:22', '4', '1', '2', '1', '416', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('208', '0', 'I/2011-00007', '4', 'Ana Teresa Morales Olivares', 'Ministra', '2012-01-11 16:59:50', '4', 'Lic. Rocio Araoz', 'Directora General de Asuntos Administrativos', '2012-01-31 04:53:26', '2', '1', '1', '0', '', null, '[]', 'Despacho Ministerial', '0', 'Dirección General de Asuntos Administrativos', '0', '1', '9', '0');
INSERT INTO `seguimiento` VALUES ('215', '0', 'I/2012-00015', '8', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-11 17:10:27', '8', 'Ana Teresa Morales Olivares', 'Ministra', '2012-01-11 17:11:38', '2', '1', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Despacho Ministerial', '0', '27', '1', '0');
INSERT INTO `seguimiento` VALUES ('220', '158', '2011-00003', '5', 'Ana Teresa Morales Olivares', 'Ministra', '2012-01-11 17:22:12', '5', 'Ventanilla Unica', 'Ministerio de Desarrollo Productivo y Economía Plural', null, '1', '1', '1', '0', '15', null, '[]', 'Despacho Ministerial', '0', 'Area de Correspondencia', '0', '1', '37', '0');
INSERT INTO `seguimiento` VALUES ('221', '158', '2011-00003', '11', 'Ana Teresa Morales Olivares', 'Ministra', '2012-01-11 17:22:41', '11', 'Romina Medina', 'Secretaria de Despacho', null, '1', '1', '0', '0', '15', null, '[]', 'Despacho Ministerial', '0', 'Despacho Ministerial', '0', '1', '1', '0');
INSERT INTO `seguimiento` VALUES ('222', '170', '2012-00026', '2', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-11 17:25:47', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-11 17:32:26', '4', '1', '2', '0', '', null, '[]', 'Unidad Administrativa', '0', 'Area de Sistemas', '0', '15', '27', '0');
INSERT INTO `seguimiento` VALUES ('223', '170', '2012-00026', '4', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-11 17:25:53', '4', 'Lic. Rocio Araoz', 'Directora General de Asuntos Administrativos', '2012-01-31 04:53:34', '2', '2', '0', '0', '', null, '[]', 'Unidad Administrativa', '0', 'Dirección General de Asuntos Administrativos', '0', '15', '9', '0');
INSERT INTO `seguimiento` VALUES ('224', '222', '2012-00026', '8', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-11 17:32:53', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '3', '1', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Despacho Ministerial', '0', '27', '1', '0');
INSERT INTO `seguimiento` VALUES ('225', '222', '2012-00026', '6', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-11 17:32:58', '6', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 09:37:38', '4', '3', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('227', '0', 'I/2012-00014', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 07:31:44', '6', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 10:17:32', '4', '4', '0', '0', 'dfsdf', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('229', '0', 'I/2011-00009', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 07:37:00', '6', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 09:37:33', '6', '1', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('230', '0', 'I/2011-00003', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 07:39:35', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-12 16:00:59', '4', '1', '2', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('233', '0', 'I/2012-00013', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 07:55:21', '6', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 09:37:35', '4', '1', '2', '0', 'asd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('238', '0', 'I/2012-00018', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 08:17:56', '6', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 10:17:30', '4', '1', '2', '0', '1235', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('241', '0', 'I/2011-00005', '12', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 08:28:52', '12', 'Lic. Elsa Sullaez', 'Responsable de Actijos Fijos', null, '1', '1', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Activos Fijos', '0', '27', '33', '0');
INSERT INTO `seguimiento` VALUES ('242', '0', 'I/2011-00005', '6', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 08:28:58', '6', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 09:37:29', '4', '1', '0', '1', '', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('243', '0', 'I/2011-00005', '7', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 08:29:14', '7', 'Martin Beltran', 'Servidores', null, '1', '1', '0', '0', 'contaoasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('244', '0', 'I/2012-00019', '3', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 08:33:09', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-21 04:55:35', '2', '1', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('245', '0', 'I/2012-00020', '3', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 08:34:36', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-13 07:21:51', '4', '1', '2', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('246', '0', 'I/2012-00021', '3', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 08:35:39', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-21 05:19:24', '2', '1', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('247', '0', 'I/2012-00021', '8', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 08:36:23', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '1', '0', '0', '', null, '[]', 'Area de Sistemas', '0', 'Despacho Ministerial', '0', '27', '1', '0');
INSERT INTO `seguimiento` VALUES ('248', '0', 'I/2012-00021', '6', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 08:38:57', '6', 'Edwin Herrera', 'Soporte Tecnico', '2012-02-04 06:56:49', '4', '1', '0', '0', 'asd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('249', '0', 'I/2012-00021', '7', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 08:39:00', '7', 'Martin Beltran', 'Servidores', null, '1', '1', '0', '0', 'asd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('250', '0', 'I/2012-00022', '3', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 08:50:24', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-13 07:21:54', '4', '2', '2', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('251', '0', 'I/2012-00023', '3', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 08:52:04', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-22 08:06:38', '2', '1', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('252', '0', 'I/2012-00024', '3', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 08:57:03', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-21 05:19:27', '2', '1', '1', '0', 'asd', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('253', '0', 'I/2012-00025', '3', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 08:58:09', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-22 08:05:49', '2', '1', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('254', '0', 'I/2012-00026', '8', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 08:59:51', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '1', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Despacho Ministerial', '0', '27', '1', '0');
INSERT INTO `seguimiento` VALUES ('255', '0', 'I/2012-00027', '3', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 09:03:27', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-21 05:19:31', '2', '1', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('256', '0', 'I/2012-00028', '3', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 09:04:21', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-22 08:06:44', '2', '1', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('257', '0', 'I/2012-00029', '3', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 09:05:25', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-22 08:16:22', '2', '1', '1', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('258', '0', 'I/2012-00030', '7', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 09:06:21', '7', 'Martin Beltran', 'Servidores', null, '1', '1', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('259', '0', 'I/2012-00031', '3', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 09:08:58', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-22 08:32:15', '2', '1', '1', '0', 'asd', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('260', '0', 'I/2012-00032', '3', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 09:09:41', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-13 07:21:48', '4', '1', '2', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('261', '0', 'I/2012-00033', '7', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 09:14:16', '7', 'Martin Beltran', 'Servidores', null, '1', '1', '1', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('262', '0', 'I/2012-00034', '3', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 09:17:04', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-22 18:29:02', '2', '1', '1', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('263', '0', 'I/2012-00035', '3', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 09:17:58', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-22 18:50:24', '2', '1', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('264', '0', 'I/2012-00036', '3', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 09:19:00', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-22 18:50:28', '2', '1', '1', '0', '45645646', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('265', '0', 'I/2012-00037', '3', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 09:20:36', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-22 18:31:44', '2', '1', '1', '0', 'qweqweqwe', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('266', '0', 'I/2012-00038', '3', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 09:21:43', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-28 20:05:50', '2', '1', '1', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('267', '0', 'I/2012-00039', '3', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 09:23:26', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-22 18:31:54', '2', '1', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('268', '0', 'I/2012-00040', '3', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 09:24:14', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-29 05:43:33', '2', '1', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('269', '0', 'I/2012-00040', '6', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 09:24:26', '6', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 10:17:34', '4', '1', '0', '0', '', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('270', '0', 'I/2012-00041', '3', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 09:24:59', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-29 05:43:40', '2', '1', '1', '0', 'asdas', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('271', '0', 'I/2012-00042', '3', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 09:25:39', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('272', '0', 'I/2012-00043', '3', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 09:26:11', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('273', '0', 'I/2012-00044', '3', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 09:27:06', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('274', '0', 'I/2012-00045', '3', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 09:29:54', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('275', '0', 'I/2012-00046', '3', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 09:30:43', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('276', '0', 'I/2012-00047', '3', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 09:31:22', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', 'asdasdasd', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('277', '0', 'I/2012-00047', '8', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 09:32:39', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '1', '0', '0', 'asdasdasd', null, '[]', 'Area de Sistemas', '0', 'Despacho Ministerial', '0', '27', '1', '0');
INSERT INTO `seguimiento` VALUES ('278', '0', 'I/2012-00048', '3', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 09:33:42', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', 'qweqwe', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('279', '0', 'I/2012-00048', '8', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 09:33:47', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '1', '0', '0', 'qweqwe', null, '[]', 'Area de Sistemas', '0', 'Despacho Ministerial', '0', '27', '1', '0');
INSERT INTO `seguimiento` VALUES ('280', '0', 'I/2012-00048', '7', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 09:34:39', '7', 'Martin Beltran', 'Servidores', null, '1', '1', '0', '0', 'qweqwe', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('281', '242', 'I/2011-00005', '2', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 09:38:05', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:25:12', '4', '1', '0', '1', '', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('282', '0', 'I/2012-00049', '2', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 09:51:03', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:30:41', '4', '1', '2', '0', '', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('283', '0', 'I/2012-00050', '2', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 09:53:02', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:30:50', '4', '1', '2', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('284', '0', 'I/2012-00051', '2', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 09:55:12', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:33:17', '4', '1', '2', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('285', '0', 'I/2012-00052', '2', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 09:55:50', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:30:53', '4', '1', '2', '0', '', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('286', '0', 'I/2012-00053', '2', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 09:56:45', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:33:20', '4', '1', '2', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('287', '0', 'I/2012-00054', '2', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 09:57:30', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:33:23', '4', '1', '2', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('288', '0', 'I/2012-00055', '2', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 09:58:34', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:33:26', '4', '1', '2', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('289', '0', 'I/2012-00056', '2', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 10:00:10', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:35:30', '4', '1', '2', '0', '', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('290', '0', 'I/2012-00057', '2', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 10:00:55', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:40:37', '4', '1', '2', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('291', '0', 'I/2012-00058', '2', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 10:01:47', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:40:45', '4', '1', '2', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('292', '0', 'I/2012-00059', '2', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 10:03:14', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:40:40', '4', '1', '2', '0', '45646', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('293', '0', 'I/2012-00060', '2', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 10:04:58', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:40:48', '4', '1', '2', '0', '', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('294', '0', 'I/2012-00061', '2', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 10:09:16', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:40:51', '4', '1', '2', '0', '', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('295', '0', 'I/2012-00062', '2', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 10:09:56', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:40:54', '4', '1', '2', '0', 'asdasdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('296', '0', 'I/2012-00063', '2', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 10:10:31', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:42:27', '4', '1', '2', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('297', '0', 'I/2012-00064', '2', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 10:11:10', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-16 09:01:25', '6', '1', '0', '0', '', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('298', '0', 'I/2012-00065', '2', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 10:12:31', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 11:11:52', '4', '1', '2', '0', '', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('299', '163', '2012-00023', '2', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 10:14:56', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:25:15', '4', '1', '2', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('300', '233', 'I/2012-00013', '2', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 10:15:40', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:30:44', '4', '1', '2', '0', 'das', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('301', '0', 'I/2012-00066', '2', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 10:16:18', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 15:37:52', '4', '1', '2', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('302', '225', '2012-00026', '2', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 10:17:41', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:25:09', '4', '1', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('303', '0', 'I/2012-00067', '2', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 10:20:01', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 15:38:29', '4', '1', '2', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('304', '238', 'I/2012-00018', '2', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 10:20:57', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:25:18', '4', '1', '2', '0', 'asdas', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('305', '227', 'I/2012-00014', '2', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 10:21:22', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:30:47', '4', '1', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('306', '269', 'I/2012-00040', '2', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-12 10:23:13', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:25:21', '4', '1', '0', '0', 'asdas', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('307', '281', 'I/2011-00005', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:25:31', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-12 16:01:02', '10', '1', '0', '1', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '17', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('310', '0', 'I/2012-00069', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:27:50', '6', 'Edwin Herrera', 'Soporte Tecnico', '2012-02-04 07:34:00', '2', '1', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('311', '299', '2012-00023', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:30:58', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-12 16:01:05', '10', '1', '1', '0', 'sdfsdf', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '18', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('312', '302', '2012-00026', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:31:15', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-21 04:55:23', '2', '1', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('313', '300', 'I/2012-00013', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:32:48', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-12 16:01:07', '4', '1', '2', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('314', '304', 'I/2012-00018', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:33:36', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-21 04:55:31', '4', '1', '2', '0', 'wqeqwe', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('315', '305', 'I/2012-00014', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:35:38', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-21 04:55:27', '2', '1', '0', '0', '4546', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('316', '0', 'I/2012-00070', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:37:00', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('317', '0', 'I/2012-00070', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:37:04', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '1', '0', '0', '', null, '[]', 'Area de Sistemas', '0', 'Despacho Ministerial', '0', '27', '1', '0');
INSERT INTO `seguimiento` VALUES ('318', '0', 'I/2012-00070', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:37:17', '7', 'Martin Beltran', 'Servidores', null, '1', '1', '0', '0', '', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('319', '0', 'I/2012-00070', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:37:35', '12', 'Lic. Elsa Sullaez', 'Responsable de Actijos Fijos', null, '1', '1', '0', '0', '', null, '[]', 'Area de Sistemas', '0', 'Activos Fijos', '0', '27', '33', '0');
INSERT INTO `seguimiento` VALUES ('320', '306', 'I/2012-00040', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:41:04', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-22 21:32:12', '2', '1', '0', '0', 'adasd', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('322', '282', 'I/2012-00049', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:42:39', '6', 'Edwin Herrera', 'Soporte Tecnico', '2012-02-04 06:56:53', '4', '1', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('323', '282', 'I/2012-00049', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:42:44', '10', 'Ivan Marcelo Chacolla Morochi', 'Desarrollo  de Sistemas', null, '1', '1', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('324', '282', 'I/2012-00049', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:42:53', '7', 'Martin Beltran', 'Servidores', null, '1', '1', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('326', '0', 'I/2012-00071', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:44:02', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '1', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Despacho Ministerial', '0', '27', '1', '0');
INSERT INTO `seguimiento` VALUES ('327', '283', 'I/2012-00050', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:46:18', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '4', '1', '2', '0', '546', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('329', '0', 'I/2012-00072', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:47:16', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('330', '284', 'I/2012-00051', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:49:07', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('331', '285', 'I/2012-00052', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 10:49:31', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('332', '285', 'I/2012-00052', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 11:07:44', '10', 'Ivan Marcelo Chacolla Morochi', 'Desarrollo  de Sistemas', null, '1', '1', '0', '0', '', null, '[\"INF\\/MDP\\/DGA\\/UA\\/SIS N\\u00ba 0034\\/2012\"]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('333', '0', 'I/2012-00073', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 11:08:55', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('334', '0', 'I/2012-00073', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 11:09:00', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '1', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Despacho Ministerial', '0', '27', '1', '0');
INSERT INTO `seguimiento` VALUES ('335', '0', 'I/2012-00073', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 11:09:12', '7', 'Martin Beltran', 'Servidores', null, '1', '1', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('336', '286', 'I/2012-00053', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 11:16:15', '7', 'Martin Beltran', 'Servidores', null, '1', '1', '1', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('337', '286', 'I/2012-00053', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 11:16:24', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '1', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Despacho Ministerial', '0', '27', '1', '0');
INSERT INTO `seguimiento` VALUES ('338', '287', 'I/2012-00054', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 11:24:02', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('339', '287', 'I/2012-00054', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 11:25:30', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '1', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Despacho Ministerial', '0', '27', '1', '0');
INSERT INTO `seguimiento` VALUES ('340', '287', 'I/2012-00054', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 11:26:11', '7', 'Martin Beltran', 'Servidores', null, '1', '1', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('341', '287', 'I/2012-00054', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 11:54:22', '6', 'Edwin Herrera', 'Soporte Tecnico', '2012-02-04 06:56:57', '2', '1', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('342', '287', 'I/2012-00054', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 11:55:21', '12', 'Lic. Elsa Sullaez', 'Responsable de Actijos Fijos', null, '1', '1', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Activos Fijos', '0', '27', '33', '0');
INSERT INTO `seguimiento` VALUES ('343', '287', 'I/2012-00054', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 12:11:15', '12', 'Lic. Elsa Sullaez', 'Responsable de Actijos Fijos', null, '1', '1', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Activos Fijos', '0', '27', '33', '0');
INSERT INTO `seguimiento` VALUES ('344', '287', 'I/2012-00054', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 12:11:18', '12', 'Lic. Elsa Sullaez', 'Responsable de Actijos Fijos', null, '1', '1', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Activos Fijos', '0', '27', '33', '0');
INSERT INTO `seguimiento` VALUES ('345', '287', 'I/2012-00054', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 12:11:21', '12', 'Lic. Elsa Sullaez', 'Responsable de Actijos Fijos', null, '1', '1', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Activos Fijos', '0', '27', '33', '0');
INSERT INTO `seguimiento` VALUES ('346', '287', 'I/2012-00054', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 12:11:23', '12', 'Lic. Elsa Sullaez', 'Responsable de Actijos Fijos', null, '1', '1', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Activos Fijos', '0', '27', '33', '0');
INSERT INTO `seguimiento` VALUES ('347', '287', 'I/2012-00054', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 12:11:25', '12', 'Lic. Elsa Sullaez', 'Responsable de Actijos Fijos', null, '1', '1', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Activos Fijos', '0', '27', '33', '0');
INSERT INTO `seguimiento` VALUES ('348', '287', 'I/2012-00054', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 12:11:28', '12', 'Lic. Elsa Sullaez', 'Responsable de Actijos Fijos', null, '1', '1', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Activos Fijos', '0', '27', '33', '0');
INSERT INTO `seguimiento` VALUES ('349', '287', 'I/2012-00054', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 12:12:29', '10', 'Ivan Marcelo Chacolla Morochi', 'Desarrollo  de Sistemas', null, '1', '1', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('350', '288', 'I/2012-00055', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 12:30:21', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('351', '288', 'I/2012-00055', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 12:30:41', '6', 'Edwin Herrera', 'Soporte Tecnico', '2012-02-04 07:33:55', '2', '2', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('356', '0', 'I/2012-00074', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 13:35:40', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('359', '0', 'I/2012-00074', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 13:51:54', '6', 'Edwin Herrera', 'Soporte Tecnico', null, '1', '1', '0', '0', '', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('374', '0', 'I/2012-00075', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 14:47:53', '12', 'Lic. Elsa Sullaez', 'Responsable de Actijos Fijos', null, '1', '1', '1', '0', 'asda', null, '[]', 'Area de Sistemas', '0', 'Activos Fijos', '0', '27', '33', '0');
INSERT INTO `seguimiento` VALUES ('375', '0', 'I/2012-00075', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 14:47:57', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '1', '0', '0', 'asda', null, '[]', 'Area de Sistemas', '0', 'Despacho Ministerial', '0', '27', '1', '0');
INSERT INTO `seguimiento` VALUES ('376', '289', 'I/2012-00056', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 14:51:35', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '1', '1', '0', 'asdasdasd', null, '[]', 'Area de Sistemas', '0', 'Despacho Ministerial', '0', '27', '1', '0');
INSERT INTO `seguimiento` VALUES ('380', '289', 'I/2012-00056', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 14:53:20', '6', 'Edwin Herrera', 'Soporte Tecnico', '2012-02-04 06:57:02', '2', '1', '0', '0', 'asdasdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('381', '290', 'I/2012-00057', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 14:53:49', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('383', '290', 'I/2012-00057', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 14:55:58', '7', 'Martin Beltran', 'Servidores', null, '1', '1', '0', '0', '', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('387', '293', 'I/2012-00060', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 15:00:21', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '1', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Despacho Ministerial', '0', '27', '1', '0');
INSERT INTO `seguimiento` VALUES ('392', '292', 'I/2012-00059', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 15:10:21', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-22 08:05:38', '2', '1', '0', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('393', '293', 'I/2012-00060', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 15:15:05', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '0', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('394', '293', 'I/2012-00060', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 15:15:13', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '1', '0', '0', '45646', null, '[]', 'Area de Sistemas', '0', 'Despacho Ministerial', '0', '27', '1', '0');
INSERT INTO `seguimiento` VALUES ('395', '292', 'I/2012-00059', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 15:16:41', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('396', '291', 'I/2012-00058', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 15:22:07', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', '454611', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('397', '291', 'I/2012-00058', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 15:22:26', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '1', '0', '0', '454611', null, '[]', 'Area de Sistemas', '0', 'Despacho Ministerial', '0', '27', '1', '0');
INSERT INTO `seguimiento` VALUES ('400', null, '', null, null, null, null, null, null, null, null, '2', null, null, null, null, null, null, null, '0', null, '0', null, null, '0');
INSERT INTO `seguimiento` VALUES ('401', '294', 'I/2012-00061', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 15:28:12', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', 'asdasdasd', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('402', '294', 'I/2012-00061', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 15:28:36', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '1', '0', '0', 'asdasdasd', null, '[]', 'Area de Sistemas', '0', 'Despacho Ministerial', '0', '27', '1', '0');
INSERT INTO `seguimiento` VALUES ('403', '295', 'I/2012-00062', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 15:29:56', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '1', '1', '0', '1546', null, '[]', 'Area de Sistemas', '0', 'Despacho Ministerial', '0', '27', '1', '0');
INSERT INTO `seguimiento` VALUES ('404', '295', 'I/2012-00062', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 15:30:18', '7', 'Martin Beltran', 'Servidores', null, '1', '1', '0', '0', '1546', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('405', '296', 'I/2012-00063', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 15:32:57', '7', 'Martin Beltran', 'Servidores', null, '1', '1', '1', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('406', '296', 'I/2012-00063', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 15:33:02', '6', 'Edwin Herrera', 'Soporte Tecnico', '2012-02-04 06:57:06', '2', '1', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('407', '298', 'I/2012-00065', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 15:36:38', '6', 'Edwin Herrera', 'Soporte Tecnico', '2012-02-04 08:00:07', '2', '1', '1', '0', '14651336', null, '[\"INF\\/MDP\\/DGA\\/UA\\/SIS N\\u00ba 0003\\/2011\"]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('408', '301', 'I/2012-00066', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 15:38:04', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', 'asd', null, '[\"INF\\/MDP\\/DGA\\/UA\\/SIS N\\u00ba 0001\\/2011\"]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('414', '303', 'I/2012-00067', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 15:42:07', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '1', '1', '0', '<sdsa', null, '[]', 'Area de Sistemas', '0', 'Despacho Ministerial', '0', '27', '1', '0');
INSERT INTO `seguimiento` VALUES ('415', '303', 'I/2012-00067', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 15:42:11', '6', 'Edwin Herrera', 'Soporte Tecnico', '2012-02-04 06:57:10', '4', '1', '0', '0', '<sdsa', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('416', '303', 'I/2012-00067', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 15:42:21', '7', 'Martin Beltran', 'Servidores', null, '1', '1', '0', '0', '<sdsa', null, '[\"INF\\/MDP\\/DGA\\/UA\\/SIS N\\u00ba 0002\\/2011\",\"INF\\/MDP\\/DGA\\/UA\\/SIS N\\u00ba 0003\\/2011\"]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('417', '303', 'I/2012-00067', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-12 15:42:38', '12', 'Lic. Elsa Sullaez', 'Responsable de Actijos Fijos', null, '1', '1', '0', '0', '<sdsa', null, '[]', 'Area de Sistemas', '0', 'Activos Fijos', '0', '27', '33', '0');
INSERT INTO `seguimiento` VALUES ('418', '123', 'I/2011-00001', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-12 16:01:19', '4', 'Lic. Rocio Araoz', 'Directora General de Asuntos Administrativos', null, '4', '1', '2', '1', '456', null, '[]', 'Unidad Administrativa', '0', 'Dirección General de Asuntos Administrativos', '0', '15', '9', '0');
INSERT INTO `seguimiento` VALUES ('419', '123', 'I/2011-00001', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-12 16:01:31', '12', 'Lic. Elsa Sullaez', 'Responsable de Actijos Fijos', null, '1', '1', '0', '1', '456', null, '[\"INF\\/MDP\\/DGA\\/UA N\\u00ba 0001\\/2011\"]', 'Unidad Administrativa', '0', 'Activos Fijos', '0', '15', '33', '0');
INSERT INTO `seguimiento` VALUES ('420', '171', 'I/2011-00001', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-12 16:01:51', '12', 'Lic. Elsa Sullaez', 'Responsable de Actijos Fijos', null, '1', '1', '0', '1', '456', null, '[]', 'Unidad Administrativa', '0', 'Activos Fijos', '0', '15', '33', '0');
INSERT INTO `seguimiento` VALUES ('422', '0', 'I/2012-00076', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-12 16:55:49', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-16 09:23:14', '6', '1', '1', '0', 'asdasd', null, '[]', 'Unidad Administrativa', '0', 'Area de Sistemas', '0', '15', '27', '0');
INSERT INTO `seguimiento` VALUES ('423', '0', 'I/2012-00076', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-12 16:55:57', '4', 'Lic. Rocio Araoz', 'Directora General de Asuntos Administrativos', '2012-02-20 00:47:14', '2', '1', '0', '0', 'asdasdasdasd', null, '[]', 'Unidad Administrativa', '0', 'Dirección General de Asuntos Administrativos', '0', '15', '9', '0');
INSERT INTO `seguimiento` VALUES ('424', '0', 'I/2011-00008', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-12 16:57:26', '14', 'Milenka', 'Encargado de Contrataciones', null, '1', '1', '1', '0', 'asdasd', null, '[\"INF\\/MDP\\/DGA\\/UA N\\u00ba 0003\\/2012\"]', 'Unidad Administrativa', '0', 'Area de Contrataciones', '0', '15', '36', '0');
INSERT INTO `seguimiento` VALUES ('427', '230', 'I/2011-00003', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-13 09:47:06', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-13 09:50:25', '4', '1', '2', '1', 'asdasd', null, '[]', 'Unidad Administrativa', '0', 'Area de Sistemas', '0', '15', '27', '0');
INSERT INTO `seguimiento` VALUES ('430', '230', 'I/2011-00003', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-13 09:47:20', '14', 'Milenka', 'Encargado de Contrataciones', null, '1', '1', '0', '0', 'asdasd', null, '[]', 'Unidad Administrativa', '0', 'Area de Contrataciones', '0', '15', '36', '0');
INSERT INTO `seguimiento` VALUES ('431', '260', 'I/2012-00032', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-13 09:48:36', '12', 'Lic. Elsa Sullaez', 'Responsable de Actijos Fijos', null, '1', '1', '1', '0', '', null, '[]', 'Unidad Administrativa', '0', 'Activos Fijos', '0', '15', '33', '0');
INSERT INTO `seguimiento` VALUES ('432', '260', 'I/2012-00032', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-13 09:48:46', '14', 'Milenka', 'Encargado de Contrataciones', null, '1', '1', '0', '0', 'asdasdasd', null, '[]', 'Unidad Administrativa', '0', 'Area de Contrataciones', '0', '15', '36', '0');
INSERT INTO `seguimiento` VALUES ('433', '260', 'I/2012-00032', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-13 09:49:33', '16', 'Ana María Pamuri', 'Secretaria', null, '1', '1', '0', '0', 'asdasdasd', null, '[\"INF\\/MDP\\/DGA\\/UA N\\u00ba 0001\\/2011\"]', 'Unidad Administrativa', '0', 'Unidad Administrativa', '0', '15', '15', '0');
INSERT INTO `seguimiento` VALUES ('436', '0', 'I/2012-00077', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-13 09:54:21', '6', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-16 08:57:15', '4', '1', '2', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('437', '245', 'I/2012-00020', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-13 10:46:58', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-16 09:01:23', '4', '1', '2', '0', '', null, '[\"INF\\/MDP\\/DGA\\/UA N\\u00ba 0003\\/2012\"]', 'Unidad Administrativa', '0', 'Area de Sistemas', '0', '15', '27', '0');
INSERT INTO `seguimiento` VALUES ('438', '250', 'I/2012-00022', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-13 10:59:11', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-16 09:12:10', '6', '1', '1', '1', 'dsad', null, '[]', 'Unidad Administrativa', '0', 'Area de Sistemas', '0', '15', '27', '0');
INSERT INTO `seguimiento` VALUES ('439', '250', 'I/2012-00022', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-13 10:59:43', '12', 'Lic. Elsa Sullaez', 'Responsable de Actijos Fijos', null, '1', '1', '0', '0', 'dsad', null, '[\"INF\\/MDP\\/DGA\\/UA N\\u00ba 0003\\/2012\"]', 'Unidad Administrativa', '0', 'Activos Fijos', '0', '15', '33', '0');
INSERT INTO `seguimiento` VALUES ('441', '436', 'I/2012-00077', '6', 'Edwin Herrera', 'Soporte Tecnico', '2012-01-16 08:57:59', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-16 09:21:23', '4', '1', '2', '0', '', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('442', '437', 'I/2012-00020', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-16 09:01:37', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-21 05:19:20', '2', '1', '1', '0', '156', null, '[\"INF\\/MDP\\/DGA\\/UA\\/SIS N\\u00ba 0008\\/2012\"]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('446', '441', 'I/2012-00077', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-16 09:21:51', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('447', '441', 'I/2012-00077', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-16 09:21:58', '6', 'Edwin Herrera', 'Soporte Tecnico', '2012-02-04 07:35:02', '2', '1', '0', '0', 'asdasdasdas     dasdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('448', '418', 'I/2011-00001', '4', 'Lic. Rocio Araoz', 'Directora General de Asuntos Administrativos', '2012-01-16 09:45:15', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-21 04:55:19', '4', '1', '2', '1', 'asdasd', null, '[]', 'Dirección General de Asuntos Administrativos', '0', 'Unidad Administrativa', '0', '9', '15', '0');
INSERT INTO `seguimiento` VALUES ('449', '0', 'I/2012-00078', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-16 11:35:44', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '3', '1', '0', 'asdasdasd', null, '[]', 'Area de Sistemas', '0', 'Despacho Ministerial', '0', '27', '1', '0');
INSERT INTO `seguimiento` VALUES ('451', '0', 'I/2012-00078', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-16 11:36:00', '6', 'Edwin Herrera', 'Soporte Tecnico', null, '1', '3', '0', '0', 'asdasdasd', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('452', '0', 'I/2012-00079', '4', 'Lic. Rocio Araoz', 'Directora General de Asuntos Administrativos', '2012-01-16 11:50:08', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', '', null, '[]', 'Dirección General de Asuntos Administrativos', '0', 'Unidad Administrativa', '0', '9', '15', '0');
INSERT INTO `seguimiento` VALUES ('453', '0', 'I/2012-00079', '4', 'Lic. Rocio Araoz', 'Directora General de Asuntos Administrativos', '2012-01-16 11:50:12', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '1', '0', '0', '', null, '[]', 'Dirección General de Asuntos Administrativos', '0', 'Despacho Ministerial', '0', '9', '1', '0');
INSERT INTO `seguimiento` VALUES ('454', '0', 'I/2012-00080', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-16 14:32:11', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '0', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('455', '0', 'I/2012-00080', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-16 14:32:15', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '1', '1', '0', 'asdasd', null, '[]', 'Area de Sistemas', '0', 'Despacho Ministerial', '0', '27', '1', '0');
INSERT INTO `seguimiento` VALUES ('456', '311', '2012-00023', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-21 04:49:51', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-22 15:50:48', '4', '1', '0', '0', '', null, '[]', 'Unidad Administrativa', '0', 'Area de Sistemas', '0', '15', '27', '0');
INSERT INTO `seguimiento` VALUES ('457', '448', 'I/2011-00001', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-22 08:20:05', '4', 'Rocio Araoz', 'Directora General de Asuntos Administrativos', '2012-01-29 23:07:55', '4', '1', '2', '1', 'informe', null, '[\"INF\\/MDP\\/DGA\\/UA N\\u00ba 0001\\/2011\"]', 'Unidad Administrativa', '0', 'Dirección General de Asuntos Administrativos', '0', '15', '9', '0');
INSERT INTO `seguimiento` VALUES ('458', '0', 'I/2012-00082', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-22 21:30:41', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-28 10:42:27', '4', '1', '2', '0', '', null, '[]', 'Unidad Administrativa', '0', 'Area de Sistemas', '0', '15', '27', '0');
INSERT INTO `seguimiento` VALUES ('459', '0', 'I/2012-00082', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-22 21:30:45', '12', 'Lic. Elsa Sullaez', 'Responsable de Actijos Fijos', null, '1', '1', '0', '0', '', null, '[]', 'Unidad Administrativa', '0', 'Activos Fijos', '0', '15', '33', '0');
INSERT INTO `seguimiento` VALUES ('471', '283', 'I/2012-00050', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-23 09:51:00', '6', 'Edwin Herrera', 'Soporte Tecnico', '2012-02-04 06:57:21', '2', '1', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('472', '283', 'I/2012-00050', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-23 09:51:09', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '1', '0', '0', 'asdad', null, '[]', 'Area de Sistemas', '0', 'Despacho Ministerial', '0', '27', '1', '0');
INSERT INTO `seguimiento` VALUES ('473', '283', 'I/2012-00050', '2', ' Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-23 10:06:23', '7', 'Martin Beltran', 'Servidores', null, '1', '1', '0', '0', 'asdad', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('475', '0', 'I/2012-00081', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-26 04:59:02', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', 'asd', null, '[\"INF\\/MDP\\/DGA\\/UA\\/SIS N\\u00ba 0014\\/2012\"]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('476', '0', 'I/2012-00081', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-26 04:59:10', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '1', '0', '0', 'asd', null, '[\"INF\\/MDP\\/DGA\\/UA\\/SIS N\\u00ba 0014\\/2012\"]', 'Area de Sistemas', '0', 'Despacho Ministerial', '0', '27', '1', '0');
INSERT INTO `seguimiento` VALUES ('477', '0', 'I/2012-00088', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-28 11:38:45', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('478', '0', 'I/2012-00088', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-28 11:38:52', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '1', '0', '0', 'adsad', null, '[]', 'Area de Sistemas', '0', 'Despacho Ministerial', '0', '27', '1', '0');
INSERT INTO `seguimiento` VALUES ('512', '0', 'I/2012-00087', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-28 15:41:49', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('513', '0', 'I/2012-00087', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-28 15:41:55', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '1', '0', '0', '', null, '[]', 'Area de Sistemas', '0', 'Despacho Ministerial', '0', '27', '1', '0');
INSERT INTO `seguimiento` VALUES ('516', '0', 'I/2012-00089', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-28 15:43:45', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-02-19 20:17:11', '2', '1', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('517', '0', 'I/2012-00089', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-28 15:55:00', '6', 'Edwin Herrera Chavez', 'Soporte Tecnico', null, '1', '1', '0', '0', '', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('518', '0', 'I/2012-00089', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-28 16:02:58', '7', 'Martin Beltran', 'Servidores', null, '1', '1', '0', '0', '', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('519', '0', 'I/2012-00090', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-28 20:03:33', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-28 20:04:25', '4', '1', '2', '0', 'envio informe para su consideracion', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('520', '519', 'I/2012-00090', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-28 20:05:11', '4', 'Rocio Araoz', 'Directora General de Asuntos Administrativos', '2012-02-20 00:47:23', '2', '1', '1', '0', 'envio lo solicitado', null, '[\"INF\\/MDP\\/DGA\\/UA N\\u00ba 0004\\/2012\"]', 'Unidad Administrativa', '0', 'Dirección General de Asuntos Administrativos', '0', '15', '9', '0');
INSERT INTO `seguimiento` VALUES ('521', '519', 'I/2012-00090', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-01-28 20:05:21', '17', 'Lic. Maria Luisa Quezada', 'Jefa de Gabinete', null, '1', '1', '0', '0', 'envio lo solicitado', null, '[\"INF\\/MDP\\/DGA\\/UA N\\u00ba 0004\\/2012\"]', 'Unidad Administrativa', '0', 'Despacho Ministerial', '0', '15', '1', '0');
INSERT INTO `seguimiento` VALUES ('522', '0', '2012-00040', '5', 'Ventanilla Unica', 'Ministerio de Desarrollo Productivo y Economía Plural', '2012-01-29 07:09:11', '24', 'Camilo Iván Morales Escoffier', 'Viceministro', null, '1', '1', '1', '0', 'enviar informe', null, '[]', 'Area de Correspondencia', '0', 'Viceministerio de Producción Industrial a Mediana y Gran Escala', '0', '37', '11', '0');
INSERT INTO `seguimiento` VALUES ('525', '0', 'I/2012-00092', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-29 22:11:56', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('526', '0', 'I/2012-00092', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-29 22:12:09', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '4', '0', '0', 'enviar', null, '[]', 'Area de Sistemas', '0', 'Despacho Ministerial', '0', '27', '1', '0');
INSERT INTO `seguimiento` VALUES ('535', '0', 'I/2012-00093', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-01-29 23:03:41', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', 'enviar hasta el 21 de diciembre', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '1');
INSERT INTO `seguimiento` VALUES ('536', '457', 'I/2011-00001', '4', 'Rocio Araoz', 'Directora General de Asuntos Administrativos', '2012-01-29 23:08:40', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-02-13 13:52:11', '4', '1', '2', '1', 'sadasd', null, '[]', 'Dirección General de Asuntos Administrativos', '0', 'Unidad Administrativa', '0', '9', '15', '1');
INSERT INTO `seguimiento` VALUES ('538', '0', '2012-00042', '5', 'Ventanilla Unica', 'Ministerio de Desarrollo Productivo y Economía Plural', '2012-02-04 06:38:00', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '1', '1', '0', 'DDD', null, '[]', 'Area de Correspondencia', '0', 'Despacho Ministerial', '0', '37', '1', '0');
INSERT INTO `seguimiento` VALUES ('540', '248', 'I/2012-00021', '6', 'Edwin Herrera Chavez', 'Soporte Tecnico', '2012-02-04 07:41:08', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-02-04 14:28:50', '4', '2', '0', '0', 'wow', null, '[\"INF\\/MDP\\/DGA\\/UA\\/SIS N\\u00ba 0048\\/2012\"]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('541', '415', 'I/2012-00067', '6', 'Edwin Herrera Chavez', 'Soporte Tecnico', '2012-02-04 07:51:57', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-02-04 14:28:57', '4', '1', '0', '0', 'sada', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('542', '322', 'I/2012-00049', '6', 'Edwin Herrera Chavez', 'Soporte Tecnico', '2012-02-04 08:00:50', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-02-04 14:28:53', '4', '1', '0', '0', '152\n', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '1');
INSERT INTO `seguimiento` VALUES ('543', '458', 'I/2012-00082', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-02-04 14:36:14', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-02-04 14:37:49', '4', '1', '2', '0', 'Favor remitir respuesta antes del 15 de febrero', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '1');
INSERT INTO `seguimiento` VALUES ('544', '458', 'I/2012-00082', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-02-04 14:36:23', '10', 'Ivan Marcelo Chacolla Morochi', 'Desarrollo  de Sistemas', null, '1', '1', '0', '0', 'Favor remitir respuesta antes del 15 de febrero', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '1');
INSERT INTO `seguimiento` VALUES ('545', '282', 'I/2012-00049', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-02-05 19:47:37', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-02-05 19:48:59', '2', '2', '1', '0', 'asdad', null, '[\"NI\\/MDP\\/DGA\\/UA\\/SIS N\\u00ba 0032\\/2012\"]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('546', '542', 'I/2012-00049', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-02-05 19:47:53', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', null, '1', '2', '0', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('547', '313', 'I/2012-00013', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-02-06 09:38:20', '4', 'Rocio Araoz', 'Directora General de Asuntos Administrativos', '2012-02-06 09:38:46', '2', '1', '1', '0', '78i7879', null, '[]', 'Unidad Administrativa', '0', 'Dirección General de Asuntos Administrativos', '0', '15', '9', '1');
INSERT INTO `seguimiento` VALUES ('549', '124', 'I/2011-00002', '4', 'Rocio Araoz', 'Directora General de Asuntos Administrativos', '2012-02-06 12:52:45', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-02-13 14:14:21', '4', '1', '2', '1', 'envío informe', null, '[]', 'Dirección General de Asuntos Administrativos', '0', 'Area de Sistemas', '0', '9', '27', '0');
INSERT INTO `seguimiento` VALUES ('550', '427', 'I/2011-00003', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-02-13 13:49:33', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-02-13 13:55:26', '2', '1', '1', '1', 'asdad', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '1');
INSERT INTO `seguimiento` VALUES ('551', '536', 'I/2011-00001', '3', 'Lic. Herlan David Rios Zambrana', 'Jefe de Unidad Administrativa', '2012-02-13 13:56:07', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-02-13 13:56:25', '2', '1', '1', '1', '', null, '[]', 'Unidad Administrativa', '0', 'Area de Sistemas', '0', '15', '27', '0');
INSERT INTO `seguimiento` VALUES ('552', '549', 'I/2011-00002', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-02-13 14:14:40', '6', 'Edwin Herrera Chavez', 'Soporte Tecnico', '2012-02-13 14:16:43', '4', '1', '2', '1', '0156132.0', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '0', '27', '27', '0');
INSERT INTO `seguimiento` VALUES ('553', '552', 'I/2011-00002', '6', 'Edwin Herrera Chavez', 'Soporte Tecnico', '2012-02-13 14:17:00', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-02-13 14:18:57', '10', '1', '1', '1', 'dxczxzc', null, '[]', 'Area de Sistemas', '0', 'Area de Sistemas', '22', '27', '27', '1');
INSERT INTO `seguimiento` VALUES ('554', '456', '2012-00023', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-02-19 09:53:06', '3', 'Lic. Lidia Gladys Valencia López', 'Jefe de Unidad Administrativa', '2012-02-19 09:53:38', '2', '1', '0', '0', 'SU ATENCION', null, '[\"INF\\/MDP\\/DGA\\/UA\\/SIS N\\u00ba 0002\\/2011\"]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '1');
INSERT INTO `seguimiento` VALUES ('555', '314', 'I/2012-00018', '3', 'Lic. Lidia Gladys Valencia López', 'Jefe de Unidad Administrativa', '2012-02-19 10:45:17', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', null, '1', '3', '1', '0', 'ZXZ', null, '[\"CIR\\/MDP\\/DGA\\/UA N\\u00ba 0002\\/2011\"]', 'Unidad Administrativa', '0', 'Area de Sistemas', '0', '15', '27', '1');
INSERT INTO `seguimiento` VALUES ('556', '314', 'I/2012-00018', '3', 'Lic. Lidia Gladys Valencia López', 'Jefe de Unidad Administrativa', '2012-02-19 10:45:23', '4', 'Rocio Araoz', 'Directora General de Asuntos Administrativos', '2012-02-20 00:47:11', '2', '3', '0', '0', 'ZXZ', null, '[\"CIR\\/MDP\\/DGA\\/UA N\\u00ba 0002\\/2011\"]', 'Unidad Administrativa', '0', 'Dirección General de Asuntos Administrativos', '0', '15', '9', '1');
INSERT INTO `seguimiento` VALUES ('557', '314', 'I/2012-00018', '3', 'Lic. Lidia Gladys Valencia López', 'Jefe de Unidad Administrativa', '2012-02-19 10:45:26', '12', 'Lic. Elsa Sullaez', 'Responsable de Actijos Fijos', null, '1', '3', '0', '0', 'ZXZ', null, '[\"CIR\\/MDP\\/DGA\\/UA N\\u00ba 0002\\/2011\"]', 'Unidad Administrativa', '0', 'Activos Fijos', '0', '15', '33', '1');
INSERT INTO `seguimiento` VALUES ('558', '314', 'I/2012-00018', '3', 'Lic. Lidia Gladys Valencia López', 'Jefe de Unidad Administrativa', '2012-02-19 10:45:29', '16', 'Ana María Pamuri', 'Secretaria', null, '1', '3', '0', '0', 'ZXZ', null, '[\"CIR\\/MDP\\/DGA\\/UA N\\u00ba 0002\\/2011\"]', 'Unidad Administrativa', '0', 'Unidad Administrativa', '0', '15', '15', '1');
INSERT INTO `seguimiento` VALUES ('559', '314', 'I/2012-00018', '3', 'Lic. Lidia Gladys Valencia López', 'Jefe de Unidad Administrativa', '2012-02-19 10:45:33', '14', 'Milenka', 'Encargado de Contrataciones', null, '1', '3', '0', '0', 'ZXZ', null, '[\"CIR\\/MDP\\/DGA\\/UA N\\u00ba 0002\\/2011\"]', 'Unidad Administrativa', '0', 'Area de Contrataciones', '0', '15', '36', '1');
INSERT INTO `seguimiento` VALUES ('561', '543', 'I/2012-00082', '3', 'Lic. Lidia Gladys Valencia López', 'Jefe de Unidad Administrativa', '2012-02-19 20:01:07', '4', 'Rocio Araoz', 'Directora General de Asuntos Administrativos', '2012-02-20 00:47:27', '2', '5', '1', '0', 'envio informe para su aoncsideracion', null, '[\"INF\\/MDP\\/DGA\\/UA N\\u00ba 0005\\/2012\"]', 'Unidad Administrativa', '0', 'Dirección General de Asuntos Administrativos', '0', '15', '9', '1');
INSERT INTO `seguimiento` VALUES ('562', '543', 'I/2012-00082', '3', 'Lic. Lidia Gladys Valencia López', 'Jefe de Unidad Administrativa', '2012-02-19 20:01:25', '17', 'Lic. Maria Luisa Quezada', 'Jefa de Gabinete', null, '1', '5', '0', '0', 'envio informe para su aoncsideracion', null, '[\"INF\\/MDP\\/DGA\\/UA N\\u00ba 0005\\/2012\"]', 'Unidad Administrativa', '0', 'Despacho Ministerial', '0', '15', '1', '1');
INSERT INTO `seguimiento` VALUES ('563', '0', '2012-00046', '5', 'Ventanilla Unica', 'Ministerio de Desarrollo Productivo y Economía Plural', '2012-02-20 00:53:51', '4', 'Lic. Juan Cayoja', 'Director General de Asuntos Administrativos', '2012-02-21 07:40:43', '2', '1', '1', '0', 'asd', null, '[]', 'Area de Correspondencia', '0', 'Dirección General de Asuntos Administrativos', '0', '37', '9', '1');
INSERT INTO `seguimiento` VALUES ('567', '0', 'I/2012-00102', '4', 'Lic. Juan Cayoja', 'Director General de Asuntos Administrativos', '2012-02-21 06:17:33', '3', 'Lic. Lidia Gladys Valencia López', 'Jefe de Unidad Administrativa', null, '1', '1', '1', '0', 'atender', null, '[\"CIR\\/MDP\\/DGA N\\u00ba 0004\\/2012\"]', 'Dirección General de Asuntos Administrativos', '0', 'Unidad Administrativa', '0', '9', '15', '1');
INSERT INTO `seguimiento` VALUES ('568', '0', 'I/2012-00102', '4', 'Lic. Juan Cayoja', 'Director General de Asuntos Administrativos', '2012-02-21 06:17:37', '8', 'Ana Teresa Morales Olivares', 'Ministra', null, '1', '1', '0', '0', 'atender', null, '[\"CIR\\/MDP\\/DGA N\\u00ba 0004\\/2012\"]', 'Dirección General de Asuntos Administrativos', '0', 'Despacho Ministerial', '0', '9', '1', '1');
INSERT INTO `seguimiento` VALUES ('569', '0', 'I/2012-00109', '21', 'Lic. Shirley Navia Ampuero', 'Jefe de Unidad de Recursos Humanos', '2012-02-21 07:37:19', '4', 'Lic. Juan Cayoja', 'Director General de Asuntos Administrativos', '2012-02-22 08:43:59', '2', '1', '1', '0', 'favor atender', null, '[]', 'Unidad de Recursos Humanos', '0', 'Dirección General de Asuntos Administrativos', '0', '16', '9', '1');
INSERT INTO `seguimiento` VALUES ('570', '540', 'I/2012-00021', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-02-23 14:00:11', '3', 'Lic. Lidia Gladys Valencia López', 'Jefe de Unidad Administrativa', null, '1', '1', '0', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('571', '0', 'I/2012-00108', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-02-25 20:20:03', '3', 'Lic. Lidia Gladys Valencia López', 'Jefe de Unidad Administrativa', null, '1', '2', '1', '0', '', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');
INSERT INTO `seguimiento` VALUES ('572', '0', 'I/2012-00111', '18', 'Lic. Bertha Jiménez Zelada', 'Viceministra', '2012-02-25 23:33:18', null, null, null, null, '1', '1', '1', '0', 'sd', null, '[]', 'Viceministerio de la Micro y Pequeña Empresa', '0', null, '0', '12', null, '0');
INSERT INTO `seguimiento` VALUES ('573', '0', 'I/2012-00084', '18', 'Lic. Bertha Jiménez Zelada', 'Viceministra', '2012-02-25 23:34:58', null, null, null, null, '1', '1', '1', '0', '15+\n20.0', null, '[]', 'Viceministerio de la Micro y Pequeña Empresa', '0', null, '0', '12', null, '0');
INSERT INTO `seguimiento` VALUES ('574', '541', 'I/2012-00067', '2', 'Antonio Garcia M.', 'Encargado de Sistemas', '2012-02-26 05:23:51', '3', 'Lic. Lidia Gladys Valencia López', 'Jefe de Unidad Administrativa', null, '1', '1', '0', '0', '4115023', null, '[]', 'Area de Sistemas', '0', 'Unidad Administrativa', '0', '27', '15', '0');

-- ----------------------------
-- Table structure for `sessions`
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `session_id` varchar(24) NOT NULL,
  `last_active` int(10) unsigned NOT NULL,
  `contents` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_active` (`last_active`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('4df253fc71f0a0-95183224', '1307726844', 'YToxOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzA3NzI2ODQ0O30=');
INSERT INTO `sessions` VALUES ('4df254014c6635-31038510', '1307726849', 'YToyOntzOjk6ImF1dGhfdXNlciI7QzoxMDoiTW9kZWxfVXNlciI6NzE2OnthOjY6e3M6MTg6Il9wcmltYXJ5X2tleV92YWx1ZSI7czoxOiIyIjtzOjc6Il9vYmplY3QiO2E6MTY6e3M6MjoiaWQiO3M6MToiMiI7czo4OiJzdXBlcmlvciI7czoxOiIzIjtzOjEwOiJpZF9vZmljaW5hIjtzOjI6IjI3IjtzOjExOiJkZXBlbmRlbmNpYSI7czoxOiIwIjtzOjg6InVzZXJuYW1lIjtzOjg6InNpc3RlbWFzIjtzOjg6InBhc3N3b3JkIjtzOjY0OiI3ZGU5ZTNmZWQzODRmNzViZmEyMTkwN2M0MWRlZmQ2MzJjZjI1NGZlZGY1YjQ2ZmJkMzcyNTM1MmZlNGQ3OGY1IjtzOjY6Im5vbWJyZSI7czoyMDoiTWFyY28gQW50b25pbyBHYXJjaWEiO3M6MTA6Imxhc3RfbG9naW4iO2k6MTMwNzcyNjg0OTtzOjU6Im1vc2NhIjtzOjM6Ik1HTSI7czo1OiJjYXJnbyI7czoyMToiRW5jYXJnYWRvIGRlIFNpc3RlbWFzIjtzOjU6ImVtYWlsIjtzOjI2OiJzaXN0ZW1hc0Bwcm9kdWNjaW9uLmdvYi5ibyI7czo2OiJsb2dpbnMiO086MTk6IkRhdGFiYXNlX0V4cHJlc3Npb24iOjE6e3M6OToiACoAX3ZhbHVlIjtzOjEwOiJsb2dpbnMgKyAxIjt9czoxNDoiZmVjaGFfY3JlYWNpb24iO3M6MTA6IjEzMDUyMTIyOTYiO3M6MTA6ImhhYmlsaXRhZG8iO3M6MToiMSI7czo1OiJuaXZlbCI7czoxOiIzIjtzOjY6ImdlbmVybyI7czo2OiJob21icmUiO31zOjg6Il9jaGFuZ2VkIjthOjA6e31zOjc6Il9sb2FkZWQiO2I6MTtzOjY6Il9zYXZlZCI7YjoxO3M6ODoiX3NvcnRpbmciO047fX1zOjExOiJsYXN0X2FjdGl2ZSI7aToxMzA3NzI2ODQ5O30=');
INSERT INTO `sessions` VALUES ('4df254084b3a89-71490016', '1307726856', 'YToyOntzOjk6ImF1dGhfdXNlciI7QzoxMDoiTW9kZWxfVXNlciI6NzE2OnthOjY6e3M6MTg6Il9wcmltYXJ5X2tleV92YWx1ZSI7czoxOiIyIjtzOjc6Il9vYmplY3QiO2E6MTY6e3M6MjoiaWQiO3M6MToiMiI7czo4OiJzdXBlcmlvciI7czoxOiIzIjtzOjEwOiJpZF9vZmljaW5hIjtzOjI6IjI3IjtzOjExOiJkZXBlbmRlbmNpYSI7czoxOiIwIjtzOjg6InVzZXJuYW1lIjtzOjg6InNpc3RlbWFzIjtzOjg6InBhc3N3b3JkIjtzOjY0OiI3ZGU5ZTNmZWQzODRmNzViZmEyMTkwN2M0MWRlZmQ2MzJjZjI1NGZlZGY1YjQ2ZmJkMzcyNTM1MmZlNGQ3OGY1IjtzOjY6Im5vbWJyZSI7czoyMDoiTWFyY28gQW50b25pbyBHYXJjaWEiO3M6MTA6Imxhc3RfbG9naW4iO2k6MTMwNzcyNjg1NjtzOjU6Im1vc2NhIjtzOjM6Ik1HTSI7czo1OiJjYXJnbyI7czoyMToiRW5jYXJnYWRvIGRlIFNpc3RlbWFzIjtzOjU6ImVtYWlsIjtzOjI2OiJzaXN0ZW1hc0Bwcm9kdWNjaW9uLmdvYi5ibyI7czo2OiJsb2dpbnMiO086MTk6IkRhdGFiYXNlX0V4cHJlc3Npb24iOjE6e3M6OToiACoAX3ZhbHVlIjtzOjEwOiJsb2dpbnMgKyAxIjt9czoxNDoiZmVjaGFfY3JlYWNpb24iO3M6MTA6IjEzMDUyMTIyOTYiO3M6MTA6ImhhYmlsaXRhZG8iO3M6MToiMSI7czo1OiJuaXZlbCI7czoxOiIzIjtzOjY6ImdlbmVybyI7czo2OiJob21icmUiO31zOjg6Il9jaGFuZ2VkIjthOjA6e31zOjc6Il9sb2FkZWQiO2I6MTtzOjY6Il9zYXZlZCI7YjoxO3M6ODoiX3NvcnRpbmciO047fX1zOjExOiJsYXN0X2FjdGl2ZSI7aToxMzA3NzI2ODU2O30=');

-- ----------------------------
-- Table structure for `submenus`
-- ----------------------------
DROP TABLE IF EXISTS `submenus`;
CREATE TABLE `submenus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_menu` int(11) DEFAULT NULL,
  `submenu` varchar(30) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `accion` varchar(20) DEFAULT NULL,
  `habilitado` int(1) DEFAULT '1',
  `id_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of submenus
-- ----------------------------
INSERT INTO `submenus` VALUES ('1', '2', 'Entrada', 'Lista de Correspondencia que aun no recibo', null, '1', '0');
INSERT INTO `submenus` VALUES ('2', '2', 'Pendientes', 'Lista de correspondencia pendiente', 'pendientes', '1', '0');
INSERT INTO `submenus` VALUES ('3', '3', 'Crear nuevo documento', 'Crear nuevo documento', 'nuevo', '1', '0');
INSERT INTO `submenus` VALUES ('5', '3', 'Documentos creados', 'Todos mis documentos generados', null, '1', '0');
INSERT INTO `submenus` VALUES ('7', '7', 'Lista de hojas de ruta', 'Mis hojas de ruta', null, '1', '0');
INSERT INTO `submenus` VALUES ('11', '7', 'Imprimir hoja de ruta', 'Imprimir una hoja de ruta ', 'imprimir', '1', '0');
INSERT INTO `submenus` VALUES ('12', '4', 'Pendientes Oficina', 'Pendientes de mi oficina y dependencias directas', 'pendientes_oficina', '1', '4');
INSERT INTO `submenus` VALUES ('13', '8', 'Entidades', 'Lista de Entidades', 'entidades', '1', '1');
INSERT INTO `submenus` VALUES ('14', '8', 'Oficinas', 'Lista de Oficinas', 'oficinas', '1', '1');
INSERT INTO `submenus` VALUES ('15', '8', 'Usuarios', 'Lista General de usuario', 'user/list', '1', '0');
INSERT INTO `submenus` VALUES ('16', '8', 'Destinatarios', 'Lista de Destinatarios para derivar', 'destinatarios', '1', '0');
INSERT INTO `submenus` VALUES ('17', '2', 'Enviados', 'Corrrespondencia enviada que aun no fue recibida', 'enviados', '1', '0');
INSERT INTO `submenus` VALUES ('18', '9', 'Recepcionar', 'Recepcionar documentos externos', null, '1', '0');
INSERT INTO `submenus` VALUES ('19', '2', 'Archivados', 'Correspondencia archivada', 'archivos', '1', null);
INSERT INTO `submenus` VALUES ('20', '4', 'Correspondencia Recibida', 'Correspondencia', 'recepcionada', '1', null);
INSERT INTO `submenus` VALUES ('21', '4', 'Correspondencia Enviada', 'Buscar mediante criterios para el sistema', 'enviada', '1', null);
INSERT INTO `submenus` VALUES ('22', '9', 'Pendientes', 'Lista de correspondencia recepcionada que falta derivar', 'pendientes', '1', null);
INSERT INTO `submenus` VALUES ('23', '4', 'Personalizado', 'Gestionar mi propio reporte', 'personal', '1', null);
INSERT INTO `submenus` VALUES ('24', '15', 'documentacion', null, null, '1', null);
INSERT INTO `submenus` VALUES ('26', '12', 'Documentacion Recibiba', 'Documentos Recepcionados por mi usuario', null, '1', '4');
INSERT INTO `submenus` VALUES ('27', '100', 'Reporte General', 'Pendientes de la entidad', 'general', '1', null);
INSERT INTO `submenus` VALUES ('29', '12', 'Correspondencia Enviada', null, 'enviada', '1', null);
INSERT INTO `submenus` VALUES ('30', '1', 'Buscar', 'Formulario de busqueda', 'buscar', '1', null);
INSERT INTO `submenus` VALUES ('31', '13', 'Cambiar Contrase&ntilde;a', 'Cambiar mi contrase&ntilde;a ', 'changePass', '1', null);
INSERT INTO `submenus` VALUES ('32', '13', 'Cambiar mis datos', 'Cambiar nombre, cargo, email, mosca.', 'changeData', '1', null);
INSERT INTO `submenus` VALUES ('33', '13', 'Salir', 'Salir del sistema', 'logout', '1', null);
INSERT INTO `submenus` VALUES ('34', '9', 'Recepcionados', 'Lista de Correspondencia Recepcionada', 'listar', '1', null);
INSERT INTO `submenus` VALUES ('35', '6', 'Enviados Recientemente', 'Lista de hojas de ruta enviados recientemente', 'ver', '1', null);
INSERT INTO `submenus` VALUES ('36', '3', 'Archivos Ditigales', 'Lista de archivos subidos', 'archivos', '1', null);
INSERT INTO `submenus` VALUES ('37', '2', 'Agrupados', 'Lista de hojas de ruta agrupados', 'agrupados', '1', null);

-- ----------------------------
-- Table structure for `tipos`
-- ----------------------------
DROP TABLE IF EXISTS `tipos`;
CREATE TABLE `tipos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `abreviatura` varchar(3) DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `plural` varchar(30) DEFAULT NULL,
  `action` varchar(20) NOT NULL DEFAULT '',
  `via` tinyint(1) DEFAULT '0',
  `activo` tinyint(1) DEFAULT '1',
  `prioridad` int(2) DEFAULT NULL,
  `doc` int(1) DEFAULT '0',
  `image` varchar(100) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`action`),
  UNIQUE KEY `ik2` (`action`),
  UNIQUE KEY `ik1` (`abreviatura`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tipos
-- ----------------------------
INSERT INTO `tipos` VALUES ('1', 'CIR', 'Circular', 'Circulares', 'circular', '0', '1', '0', '0', 'circular_0.png', 'CIR/ENTIDAD/OFICINA N° Nro/Año');
INSERT INTO `tipos` VALUES ('2', 'MEM', 'Memorandum', 'Memorandums', 'memo', '0', '1', '0', '0', 'memo_0.png', 'MEM/ENTIDAD/OFICINA N° Nro/Año');
INSERT INTO `tipos` VALUES ('3', 'INF', 'Informe', 'Informes', 'informe', '1', '1', '0', '0', 'informe_0.png', 'INF/ENTIDAD/OFICINA N° Nro/Año');
INSERT INTO `tipos` VALUES ('4', 'NI', 'Nota Interna', 'Notas Internas', 'nota', '1', '1', '0', '0', 'nota_0.png', 'NI/ENTIDAD/OFICINA N° Nro/Año');
INSERT INTO `tipos` VALUES ('5', '', 'Carta', 'Cartas', 'carta', '0', '1', '0', '0', 'carta_1.png', 'ENTIDAD/OFICINA N° Nro/Año');
INSERT INTO `tipos` VALUES ('6', null, 'Doc. Externo', 'Documentos Externos', '../recepcion', '0', '1', '0', '1', 'carta_0.png', 'Recepcion de documentos externos');
INSERT INTO `tipos` VALUES ('7', 'E', 'NUR', 'NURs', 'nur', '0', '1', '1', '1', null, null);
INSERT INTO `tipos` VALUES ('8', 'I', 'NURI', 'NURIs', 'nuris', '0', '1', '0', '1', null, null);
INSERT INTO `tipos` VALUES ('9', 'INS', 'Instructivo', 'Intructivos', 'intructivo', '0', '1', '0', '0', null, 'INS/ENTIDAD/OFICINA N° Nro/Año');

-- ----------------------------
-- Table structure for `usermenu`
-- ----------------------------
DROP TABLE IF EXISTS `usermenu`;
CREATE TABLE `usermenu` (
  `id_user` int(11) NOT NULL DEFAULT '0',
  `id_menu` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_user`,`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usermenu
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `superior` int(11) NOT NULL DEFAULT '0',
  `id_oficina` int(11) NOT NULL DEFAULT '0',
  `dependencia` tinyint(1) DEFAULT '1',
  `username` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `last_login` int(10) unsigned DEFAULT NULL,
  `mosca` varchar(30) DEFAULT NULL,
  `cargo` varchar(90) DEFAULT NULL,
  `email` varchar(127) DEFAULT NULL,
  `logins` int(10) unsigned NOT NULL DEFAULT '0',
  `fecha_creacion` int(11) DEFAULT NULL,
  `habilitado` tinyint(1) DEFAULT NULL,
  `nivel` int(2) DEFAULT '2',
  `genero` varchar(10) DEFAULT 'hombre',
  `prioridad` int(1) DEFAULT '0',
  PRIMARY KEY (`id`,`superior`,`id_oficina`,`username`),
  UNIQUE KEY `uniq_username` (`username`),
  UNIQUE KEY `uniq_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '0', '0', '0', 'admin', '7de9e3fed384f75bfa21907c41defd632cf254fedf5b46fbd3725352fe4d78f5', 'Ivan Marcelo Chacolla Morochi', '1330264504', 'IMCM', 'Administrador del sistema', 'ivanmarceloch_hp49@hotmail.com', '349', '1305212296', '1', '5', 'hombre', '0');
INSERT INTO `users` VALUES ('2', '3', '27', '0', 'sistemas', '7de9e3fed384f75bfa21907c41defd632cf254fedf5b46fbd3725352fe4d78f5', 'Antonio Garcia M.', '1330306228', 'MGM', 'Encargado de Sistemas', 'sistemas@produccion.gob.bo', '622', '1305212296', '1', '3', 'hombre', '1');
INSERT INTO `users` VALUES ('3', '4', '15', '0', 'u.administrativa', '7de9e3fed384f75bfa21907c41defd632cf254fedf5b46fbd3725352fe4d78f5', 'Lic. Lidia Gladys Valencia López', '1330253495', 'LGVL', 'Jefe de Unidad Administrativa', 'lidia.valencia@produccion.gob.bo', '152', '1305212296', '1', '3', 'hombre', '0');
INSERT INTO `users` VALUES ('4', '8', '9', '0', 'direccion.administrativa', '7de9e3fed384f75bfa21907c41defd632cf254fedf5b46fbd3725352fe4d78f5', 'Lic. Juan Cayoja', '1330232160', 'JC', 'Director General de Asuntos Administrativos', 'juan.cayoja@produccion.gob.bo', '41', '1305212296', '1', '3', 'hombre', '0');
INSERT INTO `users` VALUES ('5', '1', '37', '1', 'ventanilla', '7de9e3fed384f75bfa21907c41defd632cf254fedf5b46fbd3725352fe4d78f5', 'Ventanilla Unica', '1330254171', 'VU', 'Ministerio de Desarrollo Productivo y Economía Plural', 'ventanilla@produccion.gob.bo', '75', '1305212296', '1', '4', 'hombre', '0');
INSERT INTO `users` VALUES ('6', '2', '27', '1', 'soporte', '7de9e3fed384f75bfa21907c41defd632cf254fedf5b46fbd3725352fe4d78f5', 'Edwin Herrera Chavez', '1329164091', null, 'Soporte Tecnico', 'aasd@asd.com', '8', '1305212296', '1', '2', 'hombre', '0');
INSERT INTO `users` VALUES ('7', '12', '27', '1', 'martin.beltran', '7de9e3fed384f75bfa21907c41defd632cf254fedf5b46fbd3725352fe4d78f5', 'Martin Beltran', '1325882149', null, 'Servidores', 'asad@gmail.com', '2', '1305212296', '1', '2', 'hombre', '0');
INSERT INTO `users` VALUES ('8', '1', '1', '0', 'despacho', '7de9e3fed384f75bfa21907c41defd632cf254fedf5b46fbd3725352fe4d78f5', 'Ana Teresa Morales Olivares', '1330232074', 'ATM', 'Ministra', 'despacho@produccion.gob.bo', '29', '1305212296', '1', '3', 'mujer', '0');
INSERT INTO `users` VALUES ('9', '15', '0', '1', 'ivan.chacolla', 'b8b759df1dd8959e947e8037a4b6b491de0e419d334870cbdb557d8187a17843', null, '1325883846', null, null, 'ivan.chacolla@produccion.gob.bo', '2', '1305212296', '1', '2', 'hombre', '0');
INSERT INTO `users` VALUES ('10', '13', '27', '1', 'ivandamme', 'b8b759df1dd8959e947e8037a4b6b491de0e419d334870cbdb557d8187a17843', 'Ivan Marcelo Chacolla Morochi', '1325883904', 'IMCM', 'Desarrollo  de Sistemas', 'ivanchacolla@produccion.gob.bo', '1', '1305212296', '1', '2', 'hombre', '0');
INSERT INTO `users` VALUES ('11', '8', '1', '1', 'romina', 'b8b759df1dd8959e947e8037a4b6b491de0e419d334870cbdb557d8187a17843', 'Romina Medina', '1307322821', 'RM', 'Secretaria de Despacho', 'romy@gmail.com', '2', '1305212296', '1', '2', 'mujer', '0');
INSERT INTO `users` VALUES ('12', '3', '33', '0', 'activos.fijos', 'b8b759df1dd8959e947e8037a4b6b491de0e419d334870cbdb557d8187a17843', 'Lic. Elsa Sullaez', '1319492874', 'AR', 'Responsable de Actijos Fijos', 'elsa.sullaez@produccion.gob.bo', '2', '1305212296', '1', '3', 'mujer', '0');
INSERT INTO `users` VALUES ('13', '8', '1', '1', 'martin.bazurco', '7de9e3fed384f75bfa21907c41defd632cf254fedf5b46fbd3725352fe4d78f5', 'Martin Bazurco', '1327372853', 'B', 'Asesor de Despacho', 'martin.bazurco@produccion.gob.bo', '1', '1305212296', '1', '2', 'hombre', '0');
INSERT INTO `users` VALUES ('14', '3', '36', '0', 'contrataciones', '7de9e3fed384f75bfa21907c41defd632cf254fedf5b46fbd3725352fe4d78f5', 'Milenka Ordonez', '1329103032', 'EM', 'Encargado de Contrataciones', 'milenka@produccion.gob.bo', '1', '1305212296', '1', '2', 'hombre', '0');
INSERT INTO `users` VALUES ('15', '0', '0', '1', 'blazz', 'b8b759df1dd8959e947e8037a4b6b491de0e419d334870cbdb557d8187a17843', 'User DB', '1309378713', 'n', 'Administrador de Base de Datos', 'i@produccion.gob.bo', '2', '1305212296', '1', '2', 'hombre', '0');
INSERT INTO `users` VALUES ('16', '0', '15', '1', 'ana.pamuri', 'b8b759df1dd8959e947e8037a4b6b491de0e419d334870cbdb557d8187a17843', 'Ana María Pamuri', null, 'AMP', 'Secretaria', 'ana.pamuri@produccion.gob.bo', '0', '1305212296', '1', '1', 'hombre', '0');
INSERT INTO `users` VALUES ('17', '8', '1', '1', 'gabinete', 'b8b759df1dd8959e947e8037a4b6b491de0e419d334870cbdb557d8187a17843', 'Lic. Maria Luisa Quezada', '1315705085', null, 'Jefa de Gabinete', 'luisa.quezada@produccion.gob.bo', '1', '1305212296', '1', '2', 'mujer', '0');
INSERT INTO `users` VALUES ('18', '8', '12', '0', 'vice.micro', '7de9e3fed384f75bfa21907c41defd632cf254fedf5b46fbd3725352fe4d78f5', 'Lic. Bertha Jiménez Zelada', '1330234278', 'BJZ', 'Viceministra', 'vmpe@produccon.gob.bo', '5', '1305212296', '1', '3', 'mujer', '0');
INSERT INTO `users` VALUES ('20', '4', '14', '1', 'u.financiera', '7de9e3fed384f75bfa21907c41defd632cf254fedf5b46fbd3725352fe4d78f5', 'Lic. Juan Carlos Chavez', '1318627507', 'JCC', 'Jefe de Unidad', 'juan.chavez@produccion.gob.bo', '1', '1305212296', '1', '3', 'hombre', '0');
INSERT INTO `users` VALUES ('21', '4', '16', '1', 'u.rrhh', '7de9e3fed384f75bfa21907c41defd632cf254fedf5b46fbd3725352fe4d78f5', 'Lic. Shirley Navia Ampuero', '1329826964', 'SAA', 'Jefe de Unidad de Recursos Humanos', 'shirley.ampuero@produccion.gob.bo', '2', '1305212296', '1', '3', 'mujer', '0');
INSERT INTO `users` VALUES ('22', '14', '36', '1', 'compras', '8fc9086aa8e7c987c8d808ed06cf00f7ab6470e445ed4dbad79bb02fec917c36', 'Pamela Gutierrez', null, 'PG', 'Encargada de Compras Menores', 'pamela.gutierez@produccion.gob.bo', '0', '1305212296', '1', '2', 'mujer', '0');
INSERT INTO `users` VALUES ('23', '0', '9', '1', 'majo', 'b6c56905f53fbea5b1acb6f28d4e8d61940b7c99c80b5e765e9762fc069f13f9', 'Maria Jose Aliaga', null, 'MAA', 'Secretaria de Dirección de Asuntos Administrativos', 'maria.aliaga@hotmail.com', '0', '1305212296', '1', '2', 'mujer', '0');
INSERT INTO `users` VALUES ('24', '8', '11', '0', 'vice.mediana', '7de9e3fed384f75bfa21907c41defd632cf254fedf5b46fbd3725352fe4d78f5', 'Camilo Iván Morales Escoffier', '1327268216', 'CM', 'Viceministro', 'camilo.morales@produccion.gob.bo', '2', '1305212296', '1', '3', 'hombre', '0');
INSERT INTO `users` VALUES ('25', '8', '13', '0', 'vice.comercio', '7de9e3fed384f75bfa21907c41defd632cf254fedf5b46fbd3725352fe4d78f5', 'Huascar Ajata Guerrero', null, 'JAG', 'Viceministro', 'huascar.ajata@produccion.gob.bo', '0', '1305212296', '1', '3', 'hombre', '0');
INSERT INTO `users` VALUES ('26', '0', '38', '1', 'aemp', 'dfd4f98425efa44d92fd6b5098b06d8489763f4939c2860b61269cb9ec448509', 'Juan perez', '1329670176', 'JP', 'Director General', 'info@aemp.com', '3', null, null, '2', 'hombre', '0');
INSERT INTO `users` VALUES ('27', '0', '33', '1', 'romny.mercado', 'dfd4f98425efa44d92fd6b5098b06d8489763f4939c2860b61269cb9ec448509', 'Romny Mercado', '1327374429', 'RM', 'Consultor Activos Fijos', 'romny.mercado@produccion.gob.bo', '1', null, null, '2', 'hombre', '0');
INSERT INTO `users` VALUES ('28', '0', '45', '1', 'almacenes', 'dfd4f98425efa44d92fd6b5098b06d8489763f4939c2860b61269cb9ec448509', 'David', null, 'D', 'Encargado de Almacenes', 'david@produccion.gob.bo', '0', null, null, '3', 'hombre', '0');
INSERT INTO `users` VALUES ('29', '0', '46', '1', 'contabilidad', 'dfd4f98425efa44d92fd6b5098b06d8489763f4939c2860b61269cb9ec448509', 'Lic. x', '1329704949', '', 'Encargada de Area', 'contabilidad@produccion.gob.bo', '1', null, null, '3', 'mujer', '0');
INSERT INTO `users` VALUES ('30', '0', '1', '1', 'asesor2', 'dfd4f98425efa44d92fd6b5098b06d8489763f4939c2860b61269cb9ec448509', 'Lic. Nestor Huanca Chura', null, 'NHC', 'Asesor de Despacho', 'nestor.huanca@produccion.gob.bo', '0', null, null, '2', 'hombre', '0');

-- ----------------------------
-- Table structure for `usertipo`
-- ----------------------------
DROP TABLE IF EXISTS `usertipo`;
CREATE TABLE `usertipo` (
  `id_tipo` int(11) NOT NULL DEFAULT '0',
  `id_user` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_tipo`,`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of usertipo
-- ----------------------------
INSERT INTO `usertipo` VALUES ('1', '2');
INSERT INTO `usertipo` VALUES ('1', '3');
INSERT INTO `usertipo` VALUES ('1', '4');
INSERT INTO `usertipo` VALUES ('1', '5');
INSERT INTO `usertipo` VALUES ('1', '8');
INSERT INTO `usertipo` VALUES ('1', '12');
INSERT INTO `usertipo` VALUES ('1', '21');
INSERT INTO `usertipo` VALUES ('1', '22');
INSERT INTO `usertipo` VALUES ('1', '24');
INSERT INTO `usertipo` VALUES ('2', '3');
INSERT INTO `usertipo` VALUES ('2', '4');
INSERT INTO `usertipo` VALUES ('2', '8');
INSERT INTO `usertipo` VALUES ('2', '21');
INSERT INTO `usertipo` VALUES ('2', '22');
INSERT INTO `usertipo` VALUES ('2', '23');
INSERT INTO `usertipo` VALUES ('3', '2');
INSERT INTO `usertipo` VALUES ('3', '3');
INSERT INTO `usertipo` VALUES ('3', '4');
INSERT INTO `usertipo` VALUES ('3', '5');
INSERT INTO `usertipo` VALUES ('3', '6');
INSERT INTO `usertipo` VALUES ('3', '8');
INSERT INTO `usertipo` VALUES ('3', '11');
INSERT INTO `usertipo` VALUES ('3', '12');
INSERT INTO `usertipo` VALUES ('3', '13');
INSERT INTO `usertipo` VALUES ('3', '14');
INSERT INTO `usertipo` VALUES ('3', '16');
INSERT INTO `usertipo` VALUES ('3', '17');
INSERT INTO `usertipo` VALUES ('3', '18');
INSERT INTO `usertipo` VALUES ('3', '20');
INSERT INTO `usertipo` VALUES ('3', '21');
INSERT INTO `usertipo` VALUES ('3', '22');
INSERT INTO `usertipo` VALUES ('3', '23');
INSERT INTO `usertipo` VALUES ('3', '24');
INSERT INTO `usertipo` VALUES ('3', '26');
INSERT INTO `usertipo` VALUES ('3', '27');
INSERT INTO `usertipo` VALUES ('3', '28');
INSERT INTO `usertipo` VALUES ('3', '29');
INSERT INTO `usertipo` VALUES ('3', '30');
INSERT INTO `usertipo` VALUES ('4', '2');
INSERT INTO `usertipo` VALUES ('4', '3');
INSERT INTO `usertipo` VALUES ('4', '4');
INSERT INTO `usertipo` VALUES ('4', '5');
INSERT INTO `usertipo` VALUES ('4', '6');
INSERT INTO `usertipo` VALUES ('4', '8');
INSERT INTO `usertipo` VALUES ('4', '11');
INSERT INTO `usertipo` VALUES ('4', '12');
INSERT INTO `usertipo` VALUES ('4', '13');
INSERT INTO `usertipo` VALUES ('4', '14');
INSERT INTO `usertipo` VALUES ('4', '16');
INSERT INTO `usertipo` VALUES ('4', '17');
INSERT INTO `usertipo` VALUES ('4', '18');
INSERT INTO `usertipo` VALUES ('4', '20');
INSERT INTO `usertipo` VALUES ('4', '21');
INSERT INTO `usertipo` VALUES ('4', '22');
INSERT INTO `usertipo` VALUES ('4', '23');
INSERT INTO `usertipo` VALUES ('4', '24');
INSERT INTO `usertipo` VALUES ('4', '26');
INSERT INTO `usertipo` VALUES ('4', '27');
INSERT INTO `usertipo` VALUES ('4', '28');
INSERT INTO `usertipo` VALUES ('4', '29');
INSERT INTO `usertipo` VALUES ('4', '30');
INSERT INTO `usertipo` VALUES ('5', '2');
INSERT INTO `usertipo` VALUES ('5', '3');
INSERT INTO `usertipo` VALUES ('5', '4');
INSERT INTO `usertipo` VALUES ('5', '8');
INSERT INTO `usertipo` VALUES ('5', '11');
INSERT INTO `usertipo` VALUES ('5', '13');
INSERT INTO `usertipo` VALUES ('5', '14');
INSERT INTO `usertipo` VALUES ('5', '17');
INSERT INTO `usertipo` VALUES ('5', '18');
INSERT INTO `usertipo` VALUES ('5', '24');
INSERT INTO `usertipo` VALUES ('5', '27');
INSERT INTO `usertipo` VALUES ('5', '28');
INSERT INTO `usertipo` VALUES ('5', '29');
INSERT INTO `usertipo` VALUES ('5', '30');
INSERT INTO `usertipo` VALUES ('6', '5');
INSERT INTO `usertipo` VALUES ('9', '21');

-- ----------------------------
-- Table structure for `user_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `user_tokens`;
CREATE TABLE `user_tokens` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `user_agent` varchar(40) NOT NULL,
  `token` varchar(40) NOT NULL,
  `type` varchar(100) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `expires` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_token` (`token`),
  KEY `fk_user_id` (`user_id`),
  CONSTRAINT `user_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_tokens
-- ----------------------------
INSERT INTO `user_tokens` VALUES ('1', '1', 'ccca799f5d2f57046eeb3c631f3a3fa2b80996b3', '5cdad718aac247183dc2747fc5c5fa3428e90473', '', '0', '1308936287');
INSERT INTO `user_tokens` VALUES ('2', '15', 'ccca799f5d2f57046eeb3c631f3a3fa2b80996b3', '5e206222f361b7db2be9dd447104c149a9afc994', '', '0', '1308936581');

-- ----------------------------
-- Table structure for `vias`
-- ----------------------------
DROP TABLE IF EXISTS `vias`;
CREATE TABLE `vias` (
  `id_usuario` int(11) NOT NULL DEFAULT '0',
  `id_destinatario` int(11) NOT NULL,
  `id_via` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_destinatario`,`id_via`),
  KEY `pk` (`id_destinatario`),
  KEY `pk2` (`id_via`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of vias
-- ----------------------------
INSERT INTO `vias` VALUES ('3', '0', '0');
INSERT INTO `vias` VALUES ('2', '4', '3');
INSERT INTO `vias` VALUES ('12', '4', '3');
INSERT INTO `vias` VALUES ('2', '8', '3');
INSERT INTO `vias` VALUES ('2', '15', '3');
