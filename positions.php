<?php

require_once 'model.php';
$model = new model();
if(isset($_POST))
{
    $rezultat = $model -> updateUtakmicu($_POST['id'], $_POST['rezultat']);
    $utakmica = $model -> getUtakmica($_POST['id']);

    $domacin = $model -> getEkipa($utakmica['DOMACIN']);
    $gost = $model -> getEkipa($utakmica['GOST']);

    $updateHOME = $model -> updateEkipu($_POST['goal1'], $_POST['goal2'],$domacin);
    $updateAWAY = $model -> updateEkipu($_POST['goal2'], $_POST['goal1'],$gost);

    include("tabela.php");
}




