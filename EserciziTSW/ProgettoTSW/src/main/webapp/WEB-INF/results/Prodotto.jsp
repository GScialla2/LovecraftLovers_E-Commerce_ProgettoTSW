<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="prodotto" scope="request" type="Model.Prodotto"/>
<%@ page import="Model.Prodotto"%>
<%@ page contentType="text/html;charset>=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="ParteCSS/paginaProdotto.css">
    <link rel="styleshett" type="text/css" href="ParteCSS/styleSito.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>${prodotto.nomeProd}</title>
    <style>
        .box-container .box .image img
        {
            width: 500px;
            height: 500px;
            border-style: solid;
            border-width: 2px;
            filter: drop-shadow(0 3px 5px rgba(0,0,0,.7));
        }
        .box-container
        {
            border: none;
            display: flex;
            flex-direction: column;
            align-items: center;
            border: 0;
        }
    </style>
</head>
<body>
<div class="box-container">
    <div class="box">
        <div class="image">
            <img src="${(prodotto.idProdotto.substring(3)>54)?'immagini/fotoNonDisponibile.jpg' : 'immagini/'.concat(prodotto.idProdotto.concat('.jpg'))}" alt="">
        </div>
        <div class="info">
            <p>${prodotto.descrizione}</p>
            <p>Lunghezza: ${prodotto.lunghezza} cm Larghezza: ${prodotto.larghezza} cm</p>
            <p>Quantit&agrave; disponibile: ${prodotto.quantita}</p>
            <c:choose>
                <c:when test="${prodotto.idProdotto.startsWith('M')}">
                    <p>Categoria Pantheon: ${prodotto.tipoActionFigure}</p>
                </c:when>
                <c:when test="${prodotto.idProdotto.startsWith('L')}">
                    <p>Editore: ${prodotto.editoreLibro}</p>
                </c:when>
                <c:when test="${prodotto.idProdotto.startsWith('R')}">
                    <p>Materiale: ${prodotto.materialeAppoggio}</p>
                </c:when>
                <c:when test="${prodotto.idProdotto.startsWith('D')}">
                    <p>Colore: ${prodotto.coloreGioiello}</p>
                </c:when>
                <c:otherwise>
                    <p>Tipo Stoffa: ${prodotto.tipoStoffa}</p>
                    <p>Materiale: ${prodotto.materialeCloth}</p>
                </c:otherwise>
            </c:choose>
            <b><strong>Le consegne sono previste per un limite dai 7 ai 30 giorni lavorativi</strong></b>
        </div>
    </div>
    <table>
        <tr>
            <th>
                <h1>${prodotto.nomeProd}</h1>
                <h2>${prodotto.prezzo} &euro;</h2>
            </th>
        </tr>
        <c:choose>
            <c:when test="${prodotto.quantita == 0}">
                <th><p style="color: red">Prodotto non disponibile</p></th>
            </c:when>
            <c:otherwise>
                <th>
                    <form action="CarrelloServlet">
                        <label for =quantita>Seleziona quantit&agrave;:</label>
                        <select name="quantita" id="quantita">
                            <c:forEach var="i" begin="1" end="${prodotto.quantita}">
                                <option value="${i}">${i}</option>
                            </c:forEach>
                        </select>
                        <button class="cart" type="submit"><i class="fa fa-shopping-cart"></i></button>
                    </form>
                </th>
            </c:otherwise>
        </c:choose>
        <tr>
            <td>
                <button class="cart" onclick="window.location.href='./'">
                    <a style="text-decoration: none; color: white; text-underline: none" >
                        <i class="fa fa-home"></i>
                    </a>
                </button>
            </td>
        </tr>
    </table>
</div>
</body>
</html>