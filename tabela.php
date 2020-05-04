<?php

require_once 'model.php';
$model = new model();
$tabela = $model->Ekipe();
?>

<table class="table table-dark table-hover" id="tabela">
    <thead>
        <tr>
            <th>Pozicija</th>
            <th>Ekipa</th>
            <th title="Odigrani susreti">OS</th>
            <th title="Pobjede">P</th>
            <th title="Nerjeseno">N</th>
            <th title="Izgubljene">I</th>
            <th title="Dati golovi">DG</th>
            <th title="Postignuti golovi">PG</th>
            <th>Bodovi</th>
        </tr>
        </thead>
        <tbody class="my-tbody">
        <?php $br=0; foreach($tabela as $row){ ?>
            <tr>
                <td><?= $br+=1; ?></td>
                <td><?= $row["NAZIV_EKIPE"]  ?></td>
                <td><?= $row["BROJ_POBJEDA"]+$row["BROJ_PORAZA"]+$row["BROJ_NERJESENIH"]  ?></td>
                <td><?= $row["BROJ_POBJEDA"]  ?></td>
                <td><?= $row["BROJ_NERJESENIH"]  ?></td>
                <td><?= $row["BROJ_PORAZA"]  ?></td>
                <td><?= $row["BROJ_DATIH_GOLOVA"]  ?></td>
                <td><?= $row["BROJ_PRIMLJENIH_GOLOVA"]  ?></td>
                <td><?= $row["BROJ_BODOVA"]  ?></td>
            </tr>
        <?php } ?>
    </tbody>
</table>
