<?php

require_once 'model.php';
$model = new model();
?>

<table class="table table-dark table-hover">
    <thead>
    <tr>
        <th>Kolo</th>
        <th>Datum</th>
        <th>Domacin</th>
        <th>Gost</th>
        <th>Rezultat</th>
    </tr>
    </thead>
    <tbody class="my-tbody">
    <?php $i=-1; foreach($utakmica as $row){ $i++; ?>
        <tr>
            <td><?=$row['BROJ_KOLA']?></td>
            <td><?=$row['DATUM']?></td>
            <td><?=$row['DOMACIN']?></td>
            <td><?=$row['GOST']?></td>
            <td><input style="text-align: center" name="rez"  type="text" value="<?=$row['REZULTAT']?>" autocomplete="off" onfocusout="myFunction('<?=$row['ID_UTAKMICE']?>','<?=$i?>')"></td>
        </tr>
    <?php } ?>
    </tbody>
</table>
