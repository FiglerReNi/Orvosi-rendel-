<?php
require_once 'kapcs.php';

$oid=$_POST['oid'];
$razon=$_POST['razon'];
$datum=$_POST['datum'];
$rend=$_POST['rend'];
$oraszam=$_POST['oraszam'];

$kapcsolat= mysqli_connect(HOST, UNAME, PASS, AB) or die ("Nem jött létre a kapcsolat");

if(($oid === '1' || $oid === '2' || $oid === '3' || $oid === '4') && ($razon === '1' || $razon === '2' || $razon === '3' || $razon === '4')&& ($rend === 'hazi' || $rend === 'szak')){
    $adat= "INSERT INTO `beosztas`(oid, razon, datum, rendeles_tipusa, oraszam) VALUES ('$oid', '$razon', '$datum', '$rend', '$oraszam');";
    $lekerdezes= mysqli_query($kapcsolat, $adat) or die ("Hiba a beszúráskor");
    echo "Sikeres feltöltés";
}
else{      
     echo "Sikertelen feltöltés, téves adat";
}
mysqli_close($kapcsolat);

