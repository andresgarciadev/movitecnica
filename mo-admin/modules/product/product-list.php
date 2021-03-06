<?php
require_once "../conf.php";
$search = isset($_POST['search']) ? strtolower(mo_scape($_POST['search'])) : "";
$select = isset($_POST['select']) ? $_POST['select'] : "0";
$cn->query("SELECT id, name, image, status FROM product WHERE parent_id = '$select' AND type = '3' AND LOWER(name) like '%$search%' ORDER BY id asc");
?>
<table width="100%" class="listing">
    <thead>
        <tr>
            <th width="30">N&deg;</th>
            <th width="170">Nombre</th>
            <th width="58">Miniatura</th>
            <th width="40">Visible</th>
            <th width="40">Editar</th>
            <th width="40">Eliminar</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $cont = 1;
        while ($row = $cn->fetch()) { ?>
            <tr>
                <td class="center"><?php echo $cont; ?></td>
                <td><?php echo mo_unscape($row['name']); ?></td>
                <td class="center"><a href="../userfiles/<?php echo $row['image'] != "" ? $row['image'] : "_nodispo.jpg" ; ?>" rel="shadowbox;width=220;height=250;" class="button file" title="<?php echo mo_unscape($row['name']); ?>"></a></td>
                <td class="center"><a href="#" id="<?php echo $row['id']; ?>" class="button status<?php if($row['status'] == 0) echo " status_inactive"; ?>"  value="<?php echo $row['status']; ?>"></a></td>
                <td class="center"><a href="#" id="<?php echo $row['id']; ?>" class="button update" title="Editar"></a></td>
                <td class="center"><a href="#" id="<?php echo $row['id']; ?>" class="button delete" title="Eliminar"></a></td>
            </tr>
        <?php $cont++; } ?>
        <?php if ($cn->numrows() == 0) echo '<tr><td colspan="10" class="row_error"> No se encontraron registros para la categoria seleccionada</td></tr>'; ?>
    </tbody>
</table>