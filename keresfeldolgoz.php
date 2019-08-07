 <!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head lang="hu-HU">
        <link href="stilus.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="UTF-8">
        <title>Nyilvántartó</title>
     <?php
         
  require_once 'kapcs.php';
  ?>
    </head>
    <body>
        <header>
            <img id="kepa" src="banner.jpg" alt=""/>
        </header>
        <div id="keret">
            <div id="a">
                <h2>Menüpontok</h2>
                <ul>
                    <li><a href="uj.html"><img class="kepb" src="haz.png" alt=""/>ÚJ</a></li> 
                    <li><a href="keres.html">Keresés</a></li>
                    <li><a href=#>Módosítás</a></li> 
                    <li><a href=#>Törlés</a></li>                    
                </ul>
            </div>
            <div id="b"> 
                    <form id="formb" name="urlap" action="keresfeldolgoz.php" method="post">
                    <label for="keres">Nap megadása:</label>
                    <input type="text" name="keres" id="keres"/>
                    <input type="submit" value="Keres"/>
                </form>
                <?php
                 $keres=$_POST['keres'];


$kapcsolat=  mysqli_connect(HOST, UNAME, PASS, AB) or die ("Hiba a kapcsolódáskor");
if ($keres == "hetfo" || $keres == "kedd" ||$keres == "szerda" ||$keres == "csutortok" ||$keres == "pentek" ||$keres == "szombat" ||$keres == "vasarnap"){
$kereses = "Select `$keres` from `nyitvatartas`;";
$lekerdezes= mysqli_query($kapcsolat, $kereses) or die("Hiba a lekéréskor");
echo"<table>";
echo "<tr><th>Nyitva</th><th>&emsp;</th><th>$keres</th></tr>";
while ($sor = mysqli_fetch_array($lekerdezes)) 
{                  
                    echo "<tr>";
                    echo "<td>";
                        echo "Idoszak";
                     echo "</td>";
                     echo "<td>";
                        echo "&emsp;";
                     echo "</td>";
                    echo "<td>";
                        echo $sor["$keres"];
                     echo "</td>";
                  echo"</tr>";
}
echo"</table>";
}
else{
echo'Téves adat';
}
mysqli_close($kapcsolat);
?>


              
            </div>
            <div id="c"> b</div>           
        </div>
        <footer>
            <table id="tabla">
                <tr>
                    <td id="f1">
                        <img id="logo" src="logo.jpg" alt=""/>
                    </td>
                    <td id="f2"><p>9451 Ebergőc Petőfi Sándor utca 15.</br>
                            Fő bejárat: Somló utca felől</p></td>                   
                </tr>               
            </table>
        </footer>
    </body>
</html>
 
 