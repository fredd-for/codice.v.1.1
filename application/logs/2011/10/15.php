<?php defined('SYSPATH') or die('No direct script access.'); ?>

2011-10-15 11:44:11 --- ERROR: Database_Exception [ 0 ]: [1146] Table 'paperwork.menus' doesn't exist ( SELECT m.id, m.menu, m.descripcion, m.controlador,m.logo FROM menus m
              INNER JOIN nivelmenu n ON m.id=n.id_menu
              WHERE n.id_nivel='3'
              ORDER BY m.index ) ~ MODPATH\database\classes\kohana\database\mysql.php [ 181 ]
2011-10-15 12:42:43 --- ERROR: Database_Exception [ 0 ]: [1054] Unknown column 'id_user' in 'where clause' ( SELECT `carpetas`.* FROM `carpetas` WHERE `id_user` = '4' ORDER BY `carpetas`.`carpeta` DESC ) ~ MODPATH\database\classes\kohana\database\mysql.php [ 181 ]
2011-10-15 15:45:27 --- ERROR: Database_Exception [ 0 ]: [1054] Unknown column 'id_user' in 'where clause' ( SELECT `carpetas`.* FROM `carpetas` WHERE `id_user` = '2' ORDER BY `carpetas`.`carpeta` DESC LIMIT 1 ) ~ MODPATH\database\classes\kohana\database\mysql.php [ 181 ]
2011-10-15 15:48:10 --- ERROR: Database_Exception [ 0 ]: [1054] Unknown column 'id_user' in 'where clause' ( SELECT `carpetas`.* FROM `carpetas` WHERE `id_user` = '4' ORDER BY `carpetas`.`carpeta` DESC LIMIT 1 ) ~ MODPATH\database\classes\kohana\database\mysql.php [ 181 ]
2011-10-15 15:48:11 --- ERROR: Database_Exception [ 0 ]: [1054] Unknown column 'id_user' in 'where clause' ( SELECT `carpetas`.* FROM `carpetas` WHERE `id_user` = '4' ORDER BY `carpetas`.`carpeta` DESC LIMIT 1 ) ~ MODPATH\database\classes\kohana\database\mysql.php [ 181 ]
2011-10-15 15:48:12 --- ERROR: Database_Exception [ 0 ]: [1054] Unknown column 'id_user' in 'where clause' ( SELECT `carpetas`.* FROM `carpetas` WHERE `id_user` = '4' ORDER BY `carpetas`.`carpeta` DESC LIMIT 1 ) ~ MODPATH\database\classes\kohana\database\mysql.php [ 181 ]
2011-10-15 15:49:44 --- ERROR: ErrorException [ 8 ]: Undefined variable: id_carptera ~ APPPATH\classes\model\archivados.php [ 26 ]
2011-10-15 15:50:40 --- ERROR: ErrorException [ 8 ]: Undefined variable: id_carpteta ~ APPPATH\classes\model\archivados.php [ 26 ]
2011-10-15 16:10:16 --- ERROR: ErrorException [ 8 ]: Undefined variable: user ~ APPPATH\views\bandeja\carpeta.php [ 22 ]
2011-10-15 16:30:55 --- ERROR: ErrorException [ 1 ]: Call to undefined method ORM::facroty() ~ APPPATH\classes\controller\bandeja.php [ 366 ]
2011-10-15 16:31:07 --- ERROR: Database_Exception [ 0 ]: [1054] Unknown column 'id_archivo' in 'where clause' ( SELECT `archivados`.* FROM `archivados` WHERE `id_archivo` = '13' LIMIT 1 ) ~ MODPATH\database\classes\kohana\database\mysql.php [ 181 ]
2011-10-15 16:37:27 --- ERROR: ErrorException [ 1 ]: Call to undefined function redirect() ~ APPPATH\classes\controller\bandeja.php [ 181 ]
2011-10-15 16:46:21 --- ERROR: Database_Exception [ 0 ]: [1062] Duplicate entry 'INF/MDP/DGA Nº /2011' for key 'codigo' ( INSERT INTO `documentos` (`id_user`, `id_tipo`, `codigo`, `citeOriginal`, `nombreDestinatario`, `cargoDestinatario`, `institucionDestinatario`, `nombreRemitente`, `cargoRemitente`, `institucionRemitente`, `moscaRemitente`, `referencia`, `contenido`, `fecha_creacion`, `adjuntos`, `copias`, `nombreVia`, `cargoVia`, `id_proceso`, `id_oficina`, `nroHojas`) VALUES ('4', '3', 'INF/MDP/DGA Nº /2011', 'INF/MDP/DGA Nº /2011', 'Ana Teresa Morales Olivares', 'Ministra', '', 'Lic. Rocio Araoz', 'Director General de Asuntos Administrativos', '', 'JPS', 'sad', '\n	sadsad\n', 1318715181, '', '', '', '', '2', '9', 0) ) ~ MODPATH\database\classes\kohana\database\mysql.php [ 181 ]
2011-10-15 16:46:38 --- ERROR: Database_Exception [ 0 ]: [1062] Duplicate entry 'INF/MDP/DGA Nº /2011' for key 'codigo' ( INSERT INTO `documentos` (`id_user`, `id_tipo`, `codigo`, `citeOriginal`, `nombreDestinatario`, `cargoDestinatario`, `institucionDestinatario`, `nombreRemitente`, `cargoRemitente`, `institucionRemitente`, `moscaRemitente`, `referencia`, `contenido`, `fecha_creacion`, `adjuntos`, `copias`, `nombreVia`, `cargoVia`, `id_proceso`, `id_oficina`, `nroHojas`) VALUES ('4', '3', 'INF/MDP/DGA Nº /2011', 'INF/MDP/DGA Nº /2011', 'Ana Teresa Morales Olivares', 'Ministra', '', 'Lic. Rocio Araoz', 'Director General de Asuntos Administrativos', '', 'JPS', 'sad', '\n	sadsad\n', 1318715198, '', '', '', '', '7', '9', 0) ) ~ MODPATH\database\classes\kohana\database\mysql.php [ 181 ]
2011-10-15 16:46:53 --- ERROR: Database_Exception [ 0 ]: [1062] Duplicate entry 'NI/MDP/DGA Nº /2011' for key 'codigo' ( INSERT INTO `documentos` (`id_user`, `id_tipo`, `codigo`, `citeOriginal`, `nombreDestinatario`, `cargoDestinatario`, `institucionDestinatario`, `nombreRemitente`, `cargoRemitente`, `institucionRemitente`, `moscaRemitente`, `referencia`, `contenido`, `fecha_creacion`, `adjuntos`, `copias`, `nombreVia`, `cargoVia`, `id_proceso`, `id_oficina`, `nroHojas`) VALUES ('4', '4', 'NI/MDP/DGA Nº /2011', 'NI/MDP/DGA Nº /2011', 'Ana Teresa Morales Olivares', 'Ministra', '', 'Lic. Rocio Araoz', 'Director General de Asuntos Administrativos', '', 'JPS', 'asdas', '\n	dsad\n', 1318715213, '', '', '', '', '2', '9', 0) ) ~ MODPATH\database\classes\kohana\database\mysql.php [ 181 ]
2011-10-15 17:30:15 --- ERROR: ErrorException [ 8 ]: Undefined variable: id ~ APPPATH\classes\controller\admin\oficinas.php [ 34 ]
2011-10-15 17:41:11 --- ERROR: ErrorException [ 8 ]: Undefined index: sigla ~ APPPATH\classes\controller\admin\entidades.php [ 60 ]
2011-10-15 17:41:27 --- ERROR: ErrorException [ 8 ]: Undefined index: sigla ~ APPPATH\classes\controller\admin\entidades.php [ 60 ]
2011-10-15 17:44:36 --- ERROR: ErrorException [ 8 ]: Undefined variable: mensaje ~ APPPATH\views\admin\add_entidad.php [ 7 ]
2011-10-15 17:47:56 --- ERROR: ErrorException [ 8 ]: Undefined variable: id ~ APPPATH\classes\controller\admin\oficinas.php [ 34 ]
2011-10-15 17:58:24 --- ERROR: ErrorException [ 8 ]: Undefined variable: id ~ APPPATH\classes\controller\admin\oficinas.php [ 34 ]