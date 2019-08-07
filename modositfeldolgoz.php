<?php

require_once 'kapcs.php';

$mod = $_POST['mod'];
$n = $_POST['n'];
$sz = $_POST['sz'];
$mu = $_POST['mu'];
$e = $_POST['e'];
$t = $_POST['t'];
$ugy = $_POST['ugy'];

$kapcsolat = mysqli_connect(HOST, UNAME, PASS, AB) or die ("Kapcsolati hiba");

$modosit = "Update `orvosok` SET `nev`='$n',`szakterulet`='$sz',`mukodesi_azonosito`='$mu',`email`='$e',`tel`='$t',`ugyeleti_oraszam`='$ugy' WHERE `oid`='$mod';";
$lekerdezes = mysqli_query($kapcsolat, $modosit) or die ("Sikertelen módosítás");

mysqli_close($kapcsolat);
