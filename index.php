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
                    <li><a href="modosit.html">Módosítás</a></li> 
                    <li><a href="torlesfeldolgoz.php">Törlés</a></li>                    
                </ul>
            </div>
            <div id="b"> 
                <?php
                $kapcsolat= mysqli_connect(HOST, UNAME, PASS, AB) or die ("Nem jött létre a kapcsolat");
                $adat = "SELECT * FROM `beosztas`;";
                $lekerdezes= mysqli_query($kapcsolat, $adat) or die ("Nem sikerült a lekérdezés");
                echo "<table>";
                echo "<tr><th>oid</th><th>razon</th><th>datum</th><th>rendeles_tipusa</th><th>bazon</th><th>oraszam</th></tr>";
                while ($row = mysqli_fetch_array($lekerdezes)) 
                {
                    echo "<tr>";
                    echo "<td>";
                        echo $row['oid'];
                    echo "</td>";
                    echo "<td>";
                        echo $row['razon'];
                    echo "</td>";
                    echo "<td>";
                        echo $row['datum'];
                    echo "</td>";
                    echo "<td>";
                        echo $row['rendeles_tipusa'];
                    echo "</td>";
                    echo "<td>";
                        echo $row['bazon'];
                    echo "</td>";
                    echo "<td>";
                        echo $row['oraszam'];
                    echo "</td>";
                    echo "</tr>";                   
                }
                echo "</table>";
                
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
