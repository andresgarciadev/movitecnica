<?php
$cn->query("SELECT id, name FROM product WHERE parent_id = '0' AND type = '1' ORDER BY id asc");
?>
<a href="#" class="cancel list">Cancelar</a>
<a href="#" class="new list">Nuevo</a>
<h1>Categorías</h1>
<a href="./">Inicio </a> - <a href="./?mod=40">Categorías</a><br /><br /><br />
<div class="MOForm">
    <fieldset class="search">
        <legend>Filtrar Información</legend>
        <table id="category">
            <tr>
                <td><label for="search">Búsqueda por nombre</label></td>
                <td><input type="text" name="search" id="search" /></td>
            </tr>
        </table>
    </fieldset>
    <div id="list"></div>
    <div id="form"></div>
</div>
<script src="../lib/tiny_mce/tiny_mce.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function() {
        var mod = 40;
        mo_addcat(mod, "", "");
        mo_list(mod);
        Shadowbox.init();
        var category_value = "", category_text, $array = new Array(), $select, $arraylen, cont, target;
        $array.push(category_value);
        $(document).on("change", ".cat_prod", function() {
            $select = $(this);
            $arraylen = $array.length;
            category_value = $select.val();
            category_text = $select.find("option:selected").text();
            cont = 0;
            target = $select.parent().parent();
            if ($("#list td:eq(0)").is(".row_error")) {
                cont++;
            }
            if ($select.val() !== "" && category_text === "") {
                target = target.prev();
            }
            while (target.next().is("tr")) {
                cont++;
                if (target.next().is("tr")) target.next().remove();
            }
            $array.splice($arraylen - cont, cont);
            mo_list(mod, category_value);
            if (category_value !== "") {
                mo_addcat(mod, category_value, category_text);
                $array.push(category_value);
            }
            console.log($array)
            return false; 
        });
        $(document).on("keyup","#search",function(){ mo_search(mod); return false; });
        $(document).on("click",".list", function(){ mo_list(mod,category_value); return false; });
        $(document).on("click",".update", function(){ mo_update(mod, $(this));  return false; });
        $(document).on("click",".delete", function(){ mo_delete(mod, $(this)); return false; });
        $(document).on("click",".status", function(){ mo_status(mod, $(this)); return false; });
        $(".new").on("click", function(){ mo_new(mod, category_value); return false; });

        $(document).on("submit","form#update", function() {
            $("#img_file").val($("#image").val()); 
            tinyMCE.triggerSave();
            if (!required('#name', 'Debe ingresar un nombre.')) return false;
            mo_submit_cat(mod, 5, category_value, $array);
            return false;
        });
        $(document).on("submit","form#save", function(){
            tinyMCE.triggerSave();
            if(!required('#name', 'Debe ingresar un nombre.')) return false;
            mo_submit_cat(mod, 2, category_value, $array);
            return false;
        });
    });
</script>