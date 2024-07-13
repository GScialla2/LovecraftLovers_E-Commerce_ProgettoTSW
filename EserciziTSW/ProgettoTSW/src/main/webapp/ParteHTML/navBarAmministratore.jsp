<%@ page import="Model.Utente" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="ParteCSS/CategorieProdotti.css">
    <link rel="stylesheet" type="text/css" href="ParteCSS/navBarAmministratore.css">
    <script>
        function myFunction() {
            var x = document.getElementById("myTopnav");
            if (x.className === "topnav") {
                x.className += " responsive";
            } else {
                x.className = "topnav";
            }
        }
    </script>
    <style>
        @media screen and (max-width: 1100px) {
            .topnav a:not(:first-child), .dropdown .dropbtn {
                display: none;
            }
            .topnav a.icon {
                float: right;
                display: block;
            }
            .topnav .search-container{
                float: left;
            }
        }

        @media screen and (max-width: 1100px) {
            .topnav.responsive {position: relative;}
            .topnav.responsive .icon {
                position: absolute;
                right: 0;
                top: 0;
            }
            .topnav.responsive a {
                float: none;
                display: block;
                text-align: left;
            }
            .topnav.responsive .dropdown {float: none;}
            .topnav.responsive .dropdown-content {position: relative;}
            .topnav.responsive .dropdown .dropbtn {
                display: block;
                width: 100%;
                text-align: left;
            }
        }
    </style>
</head>
<body>
<img src="immagini/logosito.png" class="sfondo">
<div class="topnav" id="myTopnav">
    <a href="HomeServletAmministratore" class="active"><i class="fa fa-home"></i></a>
    <div class="dropdown">
        <button class="dropbtn" onclick="window.location.href='InizioServlet?valore=Libri'">Libri
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="InizioServlet?valore=Romanzi">Romanzi</a>
            <a href="InizioServlet?valore=RaccolteDiRacconti">Raccolte di racconti</a>
            <a href="InizioServlet?valore=Lettere">Lettere</a>
            <a href="InizioServlet?valore=Cicli">Cicli</a>
        </div>
    </div>

    <div class="dropdown">
        <button class="dropbtn" onclick="window.location.href='InizioServlet?valore=ActionFigure'">Action Figure
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="InizioServlet?valore=GrandiAntichi">Grandi Antichi</a>
            <a href="InizioServlet?valore=DeiEsterni">Dei esterni</a>
            <a href="InizioServlet?valore=AlieniECreatureDelFolklore">Alieni e creature del folklore</a>
        </div>
    </div>

    <div class="dropdown">
        <button class="dropbtn" onclick="window.location.href='InizioServlet?valore=AppoggiActionFigure'">Appoggi action figure
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="InizioServlet?valore=AppoggiClassici">Appoggi classici</a>
            <a href="InizioServlet?valore=AppoggiABraccio">Appoggi a braccio</a>
            <a href="InizioServlet?valore=AppoggiAPiedistallo">Appoggi a piedistallo</a>
        </div>
    </div>

    <div class="dropdown">
        <button class="dropbtn" onclick="window.location.href='InizioServlet?valore=GioielliDiBigiotteria'">Gioielli di bigiotteria
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="InizioServlet?valore=Collane">Collane</a>
            <a href="InizioServlet?valore=Bracciali">Bracciali</a>
            <a href="InizioServlet?valore=Anelli">Anelli</a>
        </div>
    </div>

    <div class="dropdown">
        <button class="dropbtn" onclick="window.location.href='InizioServlet?valore=Clothes'">Clothes
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="InizioServlet?valore=Felpe">Felpe</a>
            <a href="InizioServlet?valore=MaglieAManicaLunga">Maglie a manica lunga</a>
            <a href="InizioServlet?valore=Camicie">Camicie</a>
            <a href="InizioServlet?valore=T-Shirt">T-Shirt</a>
        </div>
    </div>

    <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>

    <div class="dropdown">
        <button class="dropbtn" onclick="window.location.href='LoginServlet?action=logout'">
            <i class="fa fa-sign-out"></i>
        </button>
    </div>
    <div class="dropdown">
        <%Utente u = (Utente) session.getAttribute("Amministratore");%>
        <a style="text-underline: none; pointer-events: none">Bentornato Amministatore, <%=u.getNome()%></a>
    </div>
    <div class="dropdown">
        <button class="dropbtn" onclick="window.location.href='HomeServletAmministratore?valore=quantita'"><i class='fa fa-cart-arrow-down'></i></button>
    </div>
    <div class="dropdown">
        <div class="dropdown">
            <button class="dropbtn" onclick="window.location.href='HomeServletAmministratore?valore=ordine'"><i class="fa fa-calendar-check-o"></i></button>
        </div>
    </div>
    <div class="dropdown">
        <button class="dropbtn" onclick="window.location.href='HomeServletAmministratore?valore=clienti'"><i class="fa fa-group"></i></button>
    </div>
    <div class="dropdown">
        <button class="dropbtn" onclick="window.location.href='HomeServletAmministratore?valore=aggiungi'"><i class="fa fa-cart-plus"></i></button>
    </div>
</div>
</body>
</html>
