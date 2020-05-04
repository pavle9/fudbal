<?php
/**
 * Created by PhpStorm.
 * User: pavle
 * Date: 4/17/20
 * Time: 1:07 PM
 */

require_once 'connection/database.php';

class model
{

    public function Ekipe()
    {
        try
        {
            $sql = 'SELECT * FROM ekipa ORDER BY BROJ_BODOVA DESC ';
            $query = database::Connect()->prepare($sql);
            $query->execute();
            $result = $query->fetchAll(PDO::FETCH_ASSOC);
            return $result;
        }
        catch(PDOException $e)
        {
            echo  $e->getMessage();
        }
    }

    public function Utakmice($sezona)
    {
        try
        {
            $sql = 'SELECT * FROM utakmica WHERE ID_SEZONE='.$sezona;
            $query = database::Connect()->prepare($sql);
            $query->execute();
            $result = $query->fetchAll(PDO::FETCH_ASSOC);
            return $result;
        }
        catch(PDOException $e)
        {
            echo  $e->getMessage();
        }
    }

    public function insertSezona($data)
    {
        $sezona = $data['sezona'];
        try
        {
            $sql = "INSERT INTO sezona (SEZONA)
                                            VALUES ('$sezona')";
            $query = database::Connect()->prepare($sql);
            $result=$query->execute();
            $last_id = database::Connect()->lastInsertId();
            return $last_id;
        }
        catch(PDOException $e)
        {
            echo $e->getMessage();
        }
    }


    public function insertUtakmice($domacin, $gost, $br_kola, $sezona, $datum)
    {
        $vrijeme = '15:00:00';
        try
        {
            $sql = "INSERT INTO utakmica (ID_SEZONE, REZULTAT, BROJ_KOLA, DATUM, VRIJEME, DOMACIN, GOST)
                                            VALUES ('$sezona', '0-0','$br_kola','$datum','$vrijeme','$domacin','$gost')";
            $query = database::Connect()->prepare($sql);
            $result=$query->execute();
        }
        catch(PDOException $e)
        {
            echo $e->getMessage();
        }
    }

    public function updateUtakmicu($id,$rezultat)
    {

        try
        {
            $sql = 'UPDATE utakmica SET REZULTAT=:rezultat WHERE ID_UTAKMICE=:id';
            $query = database::Connect()->prepare($sql);
            $result=$query->execute(array(':rezultat' => $rezultat,':id' => $id));
            return $result;
        }
        catch(PDOException $e)
        {
            echo $e->getMessage();
        }
    }

    public function updateEkipu($gol1,$gol2,$ekipa)
    {
        $br_pobjeda = $ekipa['BROJ_POBJEDA'];
        $br_nerjesenih = $ekipa['BROJ_NERJESENIH'];
        $br_poraza = $ekipa['BROJ_PORAZA'];
        $br_bodova = $ekipa['BROJ_BODOVA'];
        $br_datih = $ekipa['BROJ_DATIH_GOLOVA'];
        $br_primljenih = $ekipa['BROJ_PRIMLJENIH_GOLOVA'];
        $naziv = $ekipa['NAZIV_EKIPE'];
        if($gol1 > $gol2)
        {
            $br_pobjeda += 1;
            $br_bodova += 3;
        }
        elseif($gol1 < $gol2)
        {
            $br_poraza += 1;
        }
        else
        {
            $br_nerjesenih += 1;
            $br_bodova += 1;
        }
        $br_datih += $gol1;
        $br_primljenih += $gol2;
        try
        {
            $sql = 'UPDATE ekipa SET BROJ_BODOVA=:br_bodova,BROJ_POBJEDA=:br_pobjeda,BROJ_NERJESENIH=:br_nerjesenih, BROJ_PORAZA=:br_poraza,BROJ_DATIH_GOLOVA=:br_datih,BROJ_PRIMLJENIH_GOLOVA=:br_primljenih WHERE NAZIV_EKIPE=:naziv';
            $query = database::Connect()->prepare($sql);
            $result=$query->execute(array(':br_datih' => $br_datih,':br_primljenih' => $br_primljenih,':br_pobjeda' => $br_pobjeda,':br_nerjesenih' => $br_nerjesenih,':br_poraza' => $br_poraza,':br_bodova' => $br_bodova,':naziv' => $naziv));
        }
        catch(PDOException $e)
        {
            echo $e->getMessage();
        }
    }

    public function ResetEkipe()
    {

        try
        {
            $sql = 'UPDATE ekipa SET BROJ_BODOVA=0,BROJ_POBJEDA=0,BROJ_NERJESENIH=0, BROJ_PORAZA=0,BROJ_DATIH_GOLOVA=0,BROJ_PRIMLJENIH_GOLOVA=0';
            $query = database::Connect()->prepare($sql);
            $result=$query->execute();
        }
        catch(PDOException $e)
        {
            echo $e->getMessage();
        }
    }


    public function getUtakmica($id)
    {
        try
        {
            $sql = 'SELECT * FROM utakmica WHERE ID_UTAKMICE=:id';
            $query = database::Connect()->prepare($sql);
            $query->execute(array(':id' => $id));
            $result = $query->fetch();
            return $result;
        }
        catch(PDOException $e)
        {
            echo $e->getMessage();
        }
    }

    public function getSezona($id)
    {
        try
        {
            $sql = 'SELECT * FROM sezona WHERE ID_SEZONE=:id';
            $query = database::Connect()->prepare($sql);
            $query->execute(array(':id' => $id));
            $result = $query->fetch();
            return $result;
        }
        catch(PDOException $e)
        {
            echo $e->getMessage();
        }
    }

    public function getEkipa($naziv)
    {
        try
        {
            $sql = 'SELECT * FROM ekipa WHERE NAZIV_EKIPE=:naziv';
            $query = database::Connect()->prepare($sql);
            $query->execute(array(':naziv' => $naziv));
            $result = $query->fetch();
            return $result;
        }
        catch(PDOException $e)
        {
            echo $e->getMessage();
        }
    }
}
