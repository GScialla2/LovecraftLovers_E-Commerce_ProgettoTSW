<%@ page import="Model.Utente" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="ParteCSS/styleSito.css">
    <link rel="stylesheet" href="ParteCSS/CategorieProdotti.css">
    <style>
        @media screen and (max-width: 1341px) {
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

        @media screen and (max-width: 445px){
            .topnav .search-container{
                margin-top: 2%;
                float: left;
            }
        }

        @media screen and (max-width: 1341px) {
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
</head>
<body>
<img src="immagini/logosito.png" class="sfondo">
<div class="topnav" id="myTopnav">
    <div class="dropdown">
        <a href="HomePage"><i class="fa fa-home"></i></a>
    </div>
    <div class="dropdown">
        <button class="dropbtn" onclick="window.location.href='InizioServlet?action=Libri'">Libri
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="InizioServlet?action=Romanzi">Romanzi</a>
            <a href="InizioServlet?action=RaccolteDiRacconti">Raccolte di racconti</a>
            <a href="InizioServlet?action=Lettere">Lettere</a>
            <a href="InizioServlet?action=Cicli">Cicli</a>
        </div>
    </div>

    <div class="dropdown">
        <button class="dropbtn" onclick="window.location.href='InizioServlet?action=ActionFigure'">Action Figure
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="InizioServlet?action=GrandiAntichi">Grandi Antichi</a>
            <a href="InizioServlet?action=DeiEsterni">Dei Esterni</a>
            <a href="InizioServlet?action=AlieniECreatureDelFolklore">Aliene e creature del folklore</a>
        </div>
    </div>
    <div class="dropdown">
        <button class="dropbtn" onclick="window.location.href='InizioServlet?action=AppoggiActionFigure'">AppoggiActionFigure
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="InizioServlet?action=AppoggiClassici">Appoggi classici</a>
            <a href="InizioServlet?action=AppoggiABraccio">Appoggi a braccio</a>
            <a href="InizioServlet?action=AppoggiAPiedistallo">Appoggi a piedistallo</a>
        </div>
    </div>

    <div class="dropdown">
        <button class="dropbtn" onclick="window.location.href='InizioServlet?action=GioielliDiBigiotteria'">Gioielli di bigiotteria
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="InizioServlet?action=Collane">Collane</a>
            <a href="InizioServlet?action=Bracciali">Bracciali</a>
            <a href="InizioServlet?action=Anelli">Anelli</a>
        </div>
    </div>

    <div class="dropdown">
        <button class="dropbtn" onclick="window.location.href='InizioServlet?action=Clothes'">Clothes
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="InizioServlet?action=Felpe">Felpe</a>
            <a href="InizioServlet?action=Maglie a manica lunga">Maglie a manica lunga</a>
            <a href="InizioServlet?action=Camicie">Camicie</a>
            <a href="InizioServlet?action=T-Shirt">T-Shirt</a>
        </div>
    </div>

    <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
    <div class="dropdown">
        <button class="dropbtn" onclick="window.location.href='InizioServlet?action=contatti'">
            <i class="fa fa-phone"></i>
        </button>
    </div>
    <%
        if(session.getAttribute("Utente")==null)
        {%>
    <div class="dropdown">
        <button class="dropbtn" onclick="window.location.href='InizioServlet?action=login'">
            <i class="fa fa-user-circle"></i>
        </button>
    </div>
    <%}
    else
    {%>
    <div class="dropdown">
        <button class="dropbtn" onclick="window.location.href='LoginServlet?action=logout'">
            <i class="fa fa-sign-out"></i>
        </button>
    </div>
    <div class="dropdown">
        <%Utente u = (Utente) session.getAttribute("Utente");%>
        <a style="text-underline: none; pointer-events: none">Bentornato, <%=u.getNome()%></a>
    </div>
    <%}%>
    <%if(session.getAttribute("Utente")!=null)
    {%>
    <div class="dropdown">
        <button class="dropbtn" onclick="window.location.href='LoginServlet?action=carrello'">
            <i class="fa fa-shopping-cart"></i>
        </button>
    </div>
    <div class="dropdown">
        <button class="dropbtn" onclick="window.location.href='LoginServlet?action=riepilogo'">
            <i class="fa fa-truck"></i>
        </button>
    </div>
    <%}%>
    <div class="search-container">
        <form action="RicercaServlet">
            <button type="submit" value="Cerca" class="cerca" style="margin-right: 30px;
    margin-top: 8px;
    width: 32px;
    height: 32px;
    margin-left: 3px;
    float: right;"><i class="fa fa-search"></i></button>
            <input type="text" placeholder="Cerca per nome" name="search" class="nomeProdotto" style="padding: 6px;
    font-size: 17px;
    border: none;
    margin-left: 3px;
    margin-right: auto;
    margin-top: 8px;
    width: 15em;
    float: right;">
        </form>
    </div>
</div>
</body>
</html>
