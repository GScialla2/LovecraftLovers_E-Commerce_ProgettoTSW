<%@ page import="Model.Prodotto" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Model.Utente" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="ParteCSS/CategorieProdotti.css">
    <link rel="stylesheet" href="ParteCSS/styleSito.css">
    <title>Lovecraft Lovers</title>
    <%
        List<Prodotto> prod = (ArrayList<Prodotto>) request.getAttribute("prodotti");
        int n = (int) request.getAttribute("Valore");
    %>
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
        @media screen and (max-width: 1482px) {
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
            *{
                zoom: normal;
            }
        }

        @media screen and (max-width: 1482px) {
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
    <div class="dropdown">
        <button class="dropbtn" onclick="window.location.href='InizioServlet?action=Libri'">Libri
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="InizioServlet?action=Libri&tipo=Romanzi">Romanzi</a>
            <a href="InizioServlet?action=Libri&tipo=RaccolteDiRacconti">Raccolte di racconti</a>
            <a href="InizioServlet?action=Libri&tipo=Lettere">Lettere</a>
            <a href="InizioServlet?action=Libri&tipo=Cicli">Cicli</a>
        </div>
    </div>

    <div class="dropdown">
        <button class="dropbtn" onclick="window.location.href='InizioServlet?action=ActionFigure'">Action Figure
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="InizioServlet?action=ActionFigure&tipo=GrandiAntichi">Grandi Antichi</a>
            <a href="InizioServlet?action=ActionFigure&tipo=DeiEsterni">Dei Esterni</a>
            <a href="InizioServlet?action=ActionFigure&tipo=Alieni e c reature del folklore">Alieni e creature del folklore</a>
        </div>
    </div>
    <div class="dropdown">
        <button class="dropbtn" onclick="window.location.href='InizioServlet?action=AppoggiActionFigure'">Appoggi Action Figure
        </button>
    </div>

    <div class="dropdown">
        <button class="dropbtn" onclick="window.location.href='InizioServlet?action=GioielliDiBigiotteria'">Gioielli di bigiotteria
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="InizioServlet?action=GioielliDiBigiotteria&tipo=Collane">Collane</a>
            <a href="InizioServlet?action=GioielliDiBigiotteria&action=Bracciali">Bracciali</a>
            <a href="InizioServlet?action=GioielliDiBigiotteria&action=Anelli">Anelli</a>
        </div>
    </div>

    <div class="dropdown">
        <button class="dropbtn" onclick="window.location.href='InizioServlet?action=Clothes'">Clothes
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="InizioServlet?action=Clothes&tipo=Felpe">Felpe</a>
            <a href="InizioServlet?action=Clothes&tipo=Maglie a manica lunga">Maglie a manica lunga</a>
            <a href="InizioServlet?action=Clothes&tipo=Camicie">Camicie</a>
            <a href="InizioServlet?action=Clothes&tipo=T-Shirt">T-Shirt</a>
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
    <%--<%if(session.getAttribute("Utente")!=null)
    {%>--%>
    <div class="dropdown">
        <button class="dropbtn" onclick="window.location.href='LoginServlet?action=carrello'">
            <i class="fa fa-shopping-cart"></i>
        </button>
    </div>
    <%if(session.getAttribute("Utente")!=null)
    {%>
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
            <input type="text" placeholder="Cerca per nome" name="search" style="padding: 6px;
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
<%
    for (int i = 0; i < 5; i++,n--) {
        String directory = "immagini/" + prod.get(n).getIdProdotto() + ".jpg";
        if(Integer.parseInt(prod.get(n).getIdProdotto().substring(3))>54)
        {
            directory = "immagini/fotoNonDisponibile.jpg";
        }
%>
<div class="box-container">
    <div class="box">
        <div class="image">
            <a href="RicercaServlet?search=<%=prod.get(n).getNomeProd()%>">
                <img src="<%=directory%>">
            </a>
        </div>
        <div class="info">
            <b style="text-align: center;"><%=prod.get(n).getNomeProd()%>
            </b><br>
            <b style="text-align: center;color: red"><%=prod.get(n).getPrezzo()%>&#8364;</b>
        </div>
    </div>
</div>
<% } %>
</body>
</html>
