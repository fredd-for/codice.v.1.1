<script>
$(function(){
    $('input:first').focus();
});
</script>
<h2 class="subtitulo">Crear una nueva entidad<br/><span>Llene correctamente los datos del formulario</span></h2>
<?php if($mensaje!='') echo "Se creo corectamente la entidad $mensaje"; ?>
<?php if(sizeof($errors)>0): ?>
<ul>
    <?php foreach($errors as $e):?>
    <li><?php echo $e?></li>
    <?php endforeach;?>
</ul>
<?php endif;?>
<form method="post">
    <table>
        <tr>
            <td><?php echo Form::label('Nombre de la Entidad');?></td>
            <td><?php echo Form::input('entidad',Arr::get($_POST, 'entidad',''),array('size'=>60));?></td>
        </tr>
        <tr>
            <td><?php echo Form::label('Sigla');?></td>
            <td><?php echo Form::input('sigla',Arr::get($_POST, 'sigla',''));?></td>
        </tr>
    </table>
<hr/>
<br/>
<input type="submit" value="Crear entidad" class="uibutton" />
</form>