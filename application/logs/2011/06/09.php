<?php defined('SYSPATH') or die('No direct script access.'); ?>

2011-06-09 08:48:45 --- ERROR: ErrorException [ 8 ]: Undefined variable: template ~ APPPATH\views\template.php [ 1 ]
2011-06-09 08:51:41 --- ERROR: ErrorException [ 8 ]: Undefined variable: template ~ APPPATH\views\template.php [ 1 ]
2011-06-09 08:52:52 --- ERROR: ErrorException [ 1 ]: Call to undefined method View::convert() ~ APPPATH\classes\controller\pdf.php [ 71 ]
2011-06-09 08:58:15 --- ERROR: ErrorException [ 8 ]: Undefined variable: template ~ APPPATH\views\template.php [ 1 ]
2011-06-09 08:58:21 --- ERROR: ErrorException [ 8 ]: Undefined variable: template ~ APPPATH\views\template.php [ 1 ]
2011-06-09 08:58:49 --- ERROR: ErrorException [ 8 ]: Undefined variable: template ~ APPPATH\views\template.php [ 1 ]
2011-06-09 09:02:43 --- ERROR: HTTP_Exception_404 [ 404 ]: The requested URL generar/documento was not found on this server. ~ SYSPATH\classes\kohana\request\client\internal.php [ 120 ]
2011-06-09 09:06:35 --- ERROR: HTTP_Exception_404 [ 404 ]: The requested URL entrada/bandeja was not found on this server. ~ SYSPATH\classes\kohana\request\client\internal.php [ 94 ]
2011-06-09 09:17:16 --- ERROR: HTTP_Exception_404 [ 404 ]: The requested URL entrada/bandeja was not found on this server. ~ SYSPATH\classes\kohana\request\client\internal.php [ 94 ]
2011-06-09 09:28:39 --- ERROR: HTTP_Exception_404 [ 404 ]: The requested URL entrada/bandeja was not found on this server. ~ SYSPATH\classes\kohana\request\client\internal.php [ 94 ]
2011-06-09 10:28:38 --- ERROR: ErrorException [ 8 ]: Undefined index: institucion ~ APPPATH\classes\controller\generar.php [ 103 ]
2011-06-09 10:29:35 --- ERROR: ErrorException [ 8 ]: Undefined index: institucion ~ APPPATH\classes\controller\generar.php [ 103 ]
2011-06-09 10:30:44 --- ERROR: ErrorException [ 8 ]: Undefined index: institucion ~ APPPATH\classes\controller\generar.php [ 103 ]
2011-06-09 10:32:40 --- ERROR: Kohana_View_Exception [ 0 ]: The requested view errors/404 could not be found ~ SYSPATH\classes\kohana\view.php [ 252 ]
2011-06-09 10:32:47 --- ERROR: ErrorException [ 4 ]: syntax error, unexpected ' ~ APPPATH\views\documentos\create.php [ 71 ]
2011-06-09 10:32:57 --- ERROR: ErrorException [ 4 ]: syntax error, unexpected ' ~ APPPATH\views\documentos\create.php [ 71 ]
2011-06-09 10:33:14 --- ERROR: ErrorException [ 4 ]: syntax error, unexpected ' ~ APPPATH\views\documentos\create.php [ 71 ]
2011-06-09 10:34:01 --- ERROR: HTTP_Exception_404 [ 404 ]: The requested URL generar/docInforme was not found on this server. ~ SYSPATH\classes\kohana\request\client\internal.php [ 120 ]
2011-06-09 10:34:16 --- ERROR: HTTP_Exception_404 [ 404 ]: The requested URL generar/docInforme was not found on this server. ~ SYSPATH\classes\kohana\request\client\internal.php [ 120 ]
2011-06-09 10:35:18 --- ERROR: ErrorException [ 8 ]: Undefined index: 0 ~ APPPATH\views\documentos\index.php [ 10 ]
2011-06-09 10:38:23 --- ERROR: ErrorException [ 8 ]: Undefined index:  ~ APPPATH\views\documentos\index.php [ 10 ]
2011-06-09 10:47:32 --- ERROR: ErrorException [ 8 ]: Undefined index: via ~ APPPATH\classes\controller\generar.php [ 48 ]
2011-06-09 10:50:16 --- ERROR: ErrorException [ 8 ]: Undefined index: cargovia ~ APPPATH\classes\controller\generar.php [ 49 ]
2011-06-09 10:57:22 --- ERROR: Kohana_View_Exception [ 0 ]: The requested view errors/404 could not be found ~ SYSPATH\classes\kohana\view.php [ 252 ]
2011-06-09 10:58:41 --- ERROR: HTTP_Exception_404 [ 404 ]: The requested URL seguimiento/14 was not found on this server. ~ SYSPATH\classes\kohana\request\client\internal.php [ 94 ]
2011-06-09 11:19:51 --- ERROR: HTTP_Exception_404 [ 404 ]: The requested URL seguimiento/15 was not found on this server. ~ SYSPATH\classes\kohana\request\client\internal.php [ 94 ]
2011-06-09 11:41:08 --- ERROR: ErrorException [ 8 ]: Undefined variable: superior ~ APPPATH\views\documentos\create.php [ 119 ]
2011-06-09 11:45:18 --- ERROR: HTTP_Exception_404 [ 404 ]: Unable to find a route to match the URI: media/images/user.png ~ SYSPATH\classes\kohana\request.php [ 760 ]
2011-06-09 11:46:11 --- ERROR: HTTP_Exception_404 [ 404 ]: Unable to find a route to match the URI: media/images/user.png ~ SYSPATH\classes\kohana\request.php [ 760 ]
2011-06-09 11:46:18 --- ERROR: HTTP_Exception_404 [ 404 ]: Unable to find a route to match the URI: media/images/user.png ~ SYSPATH\classes\kohana\request.php [ 760 ]
2011-06-09 12:08:13 --- ERROR: HTTP_Exception_404 [ 404 ]: The requested URL entrada/bandeja was not found on this server. ~ SYSPATH\classes\kohana\request\client\internal.php [ 94 ]
2011-06-09 12:09:43 --- ERROR: Database_Exception [ 1064 ]: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''3' at line 4 [ SELECT u.id as id_d, u.nombre,u.cargo,w.id as id_v, w.nombre as via, w.cargo as cargo_via,u.genero from users u 
             INNER JOIN vias v ON v.id_destinatario=u.id
             INNER JOIN users w ON v.id_via=w.id
             WHERE v.id_usuario='3 ] ~ MODPATH\database\classes\kohana\database\mysql.php [ 181 ]
2011-06-09 12:12:09 --- ERROR: HTTP_Exception_404 [ 404 ]: The requested URL entrada/bandeja was not found on this server. ~ SYSPATH\classes\kohana\request\client\internal.php [ 94 ]
2011-06-09 14:40:08 --- ERROR: ErrorException [ 8 ]: Trying to get property of non-object ~ APPPATH\views\documentos\index.php [ 21 ]
2011-06-09 14:45:03 --- ERROR: ErrorException [ 8 ]: Trying to get property of non-object ~ APPPATH\views\documentos\index.php [ 21 ]
2011-06-09 14:47:34 --- ERROR: ErrorException [ 8 ]: Trying to get property of non-object ~ APPPATH\views\documentos\index.php [ 21 ]
2011-06-09 14:48:25 --- ERROR: ErrorException [ 8 ]: Trying to get property of non-object ~ APPPATH\views\documentos\index.php [ 21 ]
2011-06-09 14:48:28 --- ERROR: ErrorException [ 8 ]: Trying to get property of non-object ~ APPPATH\views\documentos\index.php [ 21 ]
2011-06-09 14:50:41 --- ERROR: ErrorException [ 8 ]: Trying to get property of non-object ~ APPPATH\views\documentos\index.php [ 21 ]
2011-06-09 14:50:50 --- ERROR: ErrorException [ 8 ]: Trying to get property of non-object ~ APPPATH\views\documentos\index.php [ 21 ]
2011-06-09 14:52:33 --- ERROR: ErrorException [ 8 ]: Trying to get property of non-object ~ APPPATH\views\documentos\index.php [ 21 ]
2011-06-09 14:54:36 --- ERROR: ErrorException [ 8 ]: Trying to get property of non-object ~ APPPATH\views\documentos\index.php [ 21 ]
2011-06-09 14:54:38 --- ERROR: ErrorException [ 8 ]: Trying to get property of non-object ~ APPPATH\views\documentos\index.php [ 21 ]
2011-06-09 14:56:30 --- ERROR: ErrorException [ 8 ]: Trying to get property of non-object ~ APPPATH\views\documentos\index.php [ 21 ]
2011-06-09 15:22:23 --- ERROR: HTTP_Exception_404 [ 404 ]: The requested URL 1/index was not found on this server. ~ SYSPATH\classes\kohana\request\client\internal.php [ 94 ]
2011-06-09 15:22:23 --- ERROR: HTTP_Exception_404 [ 404 ]: The requested URL 0/index was not found on this server. ~ SYSPATH\classes\kohana\request\client\internal.php [ 94 ]
2011-06-09 15:22:48 --- ERROR: HTTP_Exception_404 [ 404 ]: The requested URL 0/index was not found on this server. ~ SYSPATH\classes\kohana\request\client\internal.php [ 94 ]
2011-06-09 15:22:48 --- ERROR: HTTP_Exception_404 [ 404 ]: The requested URL 1/index was not found on this server. ~ SYSPATH\classes\kohana\request\client\internal.php [ 94 ]
2011-06-09 15:29:08 --- ERROR: HTTP_Exception_404 [ 404 ]: The requested URL entrada/bandeja was not found on this server. ~ SYSPATH\classes\kohana\request\client\internal.php [ 94 ]
2011-06-09 15:37:23 --- ERROR: HTTP_Exception_404 [ 404 ]: The requested URL archivos/index was not found on this server. ~ SYSPATH\classes\kohana\request\client\internal.php [ 94 ]
2011-06-09 16:17:20 --- ERROR: Kohana_Exception [ 0 ]: The titulo property does not exist in the Model_Documentos class ~ MODPATH\orm\classes\kohana\orm.php [ 682 ]
2011-06-09 16:17:49 --- ERROR: ErrorException [ 8 ]: Undefined variable: txt ~ APPPATH\classes\controller\pdf.php [ 56 ]
2011-06-09 16:51:38 --- ERROR: ErrorException [ 4 ]: syntax error, unexpected T_CONSTANT_ENCAPSED_STRING ~ APPPATH\classes\controller\pdf.php [ 82 ]
2011-06-09 16:52:06 --- ERROR: ErrorException [ 4 ]: syntax error, unexpected $end ~ APPPATH\classes\controller\pdf.php [ 94 ]
2011-06-09 16:52:11 --- ERROR: ErrorException [ 4 ]: syntax error, unexpected $end ~ APPPATH\classes\controller\pdf.php [ 94 ]
2011-06-09 16:57:21 --- ERROR: HTTP_Exception_404 [ 404 ]: The requested URL pdf/index was not found on this server. ~ SYSPATH\classes\kohana\request\client\internal.php [ 120 ]
2011-06-09 17:11:01 --- ERROR: HTTP_Exception_404 [ 404 ]: The requested URL pdf/index was not found on this server. ~ SYSPATH\classes\kohana\request\client\internal.php [ 94 ]
2011-06-09 17:11:12 --- ERROR: HTTP_Exception_404 [ 404 ]: The requested URL pdf/action_pdf was not found on this server. ~ SYSPATH\classes\kohana\request\client\internal.php [ 94 ]
2011-06-09 17:36:11 --- ERROR: ErrorException [ 8 ]: Undefined variable: l ~ APPPATH\classes\controller\documentos.php [ 101 ]
2011-06-09 17:44:02 --- ERROR: HTTP_Exception_404 [ 404 ]: The requested URL json/pdf was not found on this server. ~ SYSPATH\classes\kohana\request\client\internal.php [ 120 ]