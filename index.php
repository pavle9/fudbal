<?php

require_once 'head.php';
require_once 'model.php';
$model = new model();
$header ='';
$ekipe = $model->Ekipe();

foreach($ekipe as $row)
{
    $teams[] = $row['NAZIV_EKIPE'];
}

if(isset($_POST['potvrdi']))
{
    $sezona = $model -> insertSezona($_POST);
    $header = $_POST['sezona'];
    $reset = $model -> ResetEkipe();
    $num_team = sizeof($teams);
    $num_week = $num_team-1;
    $n2 = ($num_team-1)/2;
    shuffle($teams);
    $datum = date('Y-m-d');
    for($x = 0; $x < $num_week*2 ; $x++){
        for($i = 0; $i < $n2; $i++)
        {
            $team1 = $teams[$n2 - $i];
            $team2 = $teams[$n2 + $i + 1];
            $results[$team1][$x] = $team2;
            $results[$team2][$x] = $team1;
            if(($x>($num_week-1) && $x%2==0) || $x%2==0){
                $results[$team1][$x] = $team1;
                $results[$team2][$x] = $team2;
            }
            $insert = $model -> insertUtakmice($results[$team1][$x], $results[$team2][$x], $x+1, $sezona, $datum);
        }
        $datum = date('Y-m-d', strtotime($datum. '+ 7 days'));
        $tmp = $teams[1];
        for($i = 1; $i < sizeof($teams)-1; $i++){
            $teams[$i] = $teams[$i+1];
        }
        $teams[sizeof($teams)-1] = $tmp;
    }
    $utakmica = $model->Utakmice($sezona);
}

else
{
    $utakmica = $model->Utakmice(1);
    $sezona = $model -> getSezona(1);
    $header = $sezona['SEZONA'];
}

?>


<body class="img">
<div class="container-fluid">
        <div class="col-lg" >
            <p class="badge-primary h4 text-center">Sezona: <?=$header?></p>

            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                Kreiraj sezonu
            </button>
        </div>
            <!-- The Modal -->
            <div class="modal" id="myModal">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">Kreiraj sezonu:</h4>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">
                            <form action="" method="post" id="forma" class="was-validated">
                                <label>Sezona:</label>
                                <input type="text" name="sezona"  class="form-control" autocomplete="off" required>
                                <div class="valid-feedback">Valid.</div>
                                <br />
                                <input type="submit" name="potvrdi"  value="Kreiraj" class="btn btn-primary" />
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Zatvori</button>
                            </form>
                        </div>

                        <!-- Modal footer -->
                        <div class="modal-footer">

                        </div>

                    </div>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-6 table-wrapper-scroll-y my-custom-scrollbar">
                    <p class="badge-primary h4 text-center">Raspored:</p>
                    <?php require_once 'sheduleTable.php';?>
                </div>
                <div class="col-6">
                    <p class="badge-primary h4 text-center">Tabela:</p>
                    <?php require_once 'tabela.php';?>
                </div>
            </div>
    `
    </div>
</div>
</body>



