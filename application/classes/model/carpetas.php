<?php
defined('SYSPATH') or die ('no tiene acceso');
//descripcion del modelo productos
class Model_Carpetas extends ORM{
    protected $_table_names_plural = false;
    protected $_sorting = array('carpeta' => 'ASC');   
    public function archivadores($id_user)
    {
        $sql="SELECT c.id,c.carpeta, COUNT(c.carpeta) as cc 
        FROM archivados a 
        INNER JOIN carpetas c ON a.id_carpeta=c.id
        WHERE a.id_user='$id_user'
        GROUP BY c.id
        ORDER BY c.carpeta";
        return $this->_db->query(Database::SELECT,$sql,TRUE);
    }
}
?>
