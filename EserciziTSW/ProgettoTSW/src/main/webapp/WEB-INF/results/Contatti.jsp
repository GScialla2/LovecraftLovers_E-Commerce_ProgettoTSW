<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contatti</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="ParteCSS/Contatti.css">
    <script>
        $(document).ready(function(){
            $("#1").mouseenter(function () {
                $("#1").css("color","#058c42");
            });
            $("#1").mouseleave(function(){
                $("#1").css("color", "black");
            });
        });

        $(document).ready(function(){
            $("#2").mouseenter(function () {
                $("#2").css("color","#058c42");
            });
            $("#2").mouseleave(function(){
                $("#2").css("color", "black");
            });
        });

        $(document).ready(function(){
            $("#3").mouseenter(function () {
                $("#3").css("color","#058c42");
            });
            $("#3").mouseleave(function(){
                $("#3").css("color", "black");
            });
        });

        $(document).ready(function(){
            $("#4").mouseenter(function () {
                $("#4").css("color","#058c42");
            });
            $("#4").mouseleave(function(){
                $("#4").css("color", "black");
            });
        });

        $(document).ready(function(){
            $("#5").mouseenter(function () {
                $("#5").css("color","#058c42");
            });
            $("#5").mouseleave(function(){
                $("#5").css("color", "black");
            });
        });

        $(document).ready(function(){
            $("#5").css("display","none");
            $("#5").css("color","transparent");
        });

        $(document).ready(function(){
            $("#chiSiamo").click(function(){
                $("#5").slideToggle("slow");
                $("#5").css("color","black");
                $("#5").css("font-weight","bold");
            });
        });

    </script>
</head>
<body>
<img src="immagini/pharmatex.jpg" class="contatti">
<table>
    <tr>
        <th style="font-size: 2vw">Indirizzo:</th>
        <th style="font-size: 2vw">Contatti Telefonici:</th>
        <th style="font-size: 2vw">E-mail:</th>
        <th style="font-size: 2vw">Orario:</th>
    </tr>
    <tr>
        <th><p id="1">Via campole case sparse SNC <br> 81040 Liberi (CE) <br> loc. Liberi</p></th>
        <th><p id="2">Cellulare:3332984857<br>Fisso:0823870381</p></th>
        <th><p id="3">lovecraft.lovers@libero.it</p></th>
        <th><p id="4">Lun - Ven 09:30 - 18:00 <br> Sabato 09:00 - 13:00 <br> Domenica chiuso</p></th>
        <td><button id="chiSiamo" class="cart">Chi siamo</button></td>
        <td><button class="cart" onclick="window.location.href='HomePage'">HomePage</button></td>
    </tr>
</table>
<p id="5">Ci occupiamo della vendita di action figure dediacate a lovecraft , vestiti in stile lovecraftiano e varie raccolte e adattamenti delle opere letterarie del solitario di Providence a Liberi, in provincia di Caserta.<br> <br>
</p>
</body>
</html>
