<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <tite>Aggiunta nuovo prodotto</tite>
    <link rel="stylesheet" type="text/css" href="ParteCSS/AggiuntaProdotto.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script>
        function validateNewProduct()
        {
            var idProdotto = document.getElementById(('idProdotto')).value;
            var idProdottoRGX=/^[A-Z0-9]*$/;
            var nomeProdotto=document.getElementById('nomeProdotto').value;
            var nomeProdottoRGX=/^[a-zA-Z' ']*$/;
            var lunghezza=document.getElementById('lunghezza').value;
            var lunghezzaRGX=/^[0-9]*$/;
            var larghezza=document.getElementById('larghezza').value;
            var larghezzaRGX=/^[0-9]*$/;
            var quantita=document.getElementById('quantita').value;
            var quantitaRGX=/^[0-9]*$/;
            var tipoActionFigure=document.getElementById('tipoActionFigure');
            var tipoActionFigureRGX = /^[a-zA-Z]*$/;
            var tipoGioiello=document.getElementById('tipoGioiello').value;
            var tipoGioielloRGX=/^[a-zA-Z]*$/;
            var coloreGioiello=document.getElementById('coloreGioiello').value;
            var coloreGioielloRGX=/^[a-zA-Z]*$/;
            var tipoLibro=document.getElementById('tipoLibro').value;
            var tipoLibroRGX=/^[a-zA-Z]*$/;
            var editoreLibro=document.getElementById('editoreLibro').value;
            var editoreLibroRGX=/^[a-zA-Z]*$/;
            var tipoStoffa=document.getElementById('tipoStoffa').value;
            var tipoStoffaRGX=/^[a-zA-Z]*$/;
            var tipoCloth=document.getElementById('tipoCloth').value;
            var tipoClothRGX=/^[a-zA-Z]*$/;
            var materialeCloth=document.getElementById('materialeCloth').value;
            var materialeClothRGX=/^[a-zA-Z]*$/;
            var materialeAppoggio=document.getElementById('materialeAppoggio').value;
            var materialeAppoggioRGX=/^[a-zA-Z]*$/;
            var numProdotto=idProdotto.substring(3);
            console.log(numProdotto)
            if(numProdotto<=54)
            {
                alert("Errore nella definizione del valore dell'ID");
                return false;
            }

            if(idProdottoRGX.test(idProdotto)==false)
            {
                alert("Errore nella definizione dell'ID");
                return false;
            }

            if(nomeProdottoRGX.test(nomeProdotto)==false)
            {
                alert("Errore nella definizione del nome");
                return false;
            }

            if(lunghezzaRGX.test(lunghezza)==false)
            {
                alert("Errore nella definizione della lunghezza");
                return false;
            }

            if(larghezzaRGX.test(larghezza)==false)
            {
                alert("Errore nella definizione della larghezza");
                return false;
            }

            if(prezzoRGX.test(prezzo)==false)
            {
                alert("Errore nella definizione del prezzo");
                return false;
            }

            if(quantitaRGX.test(quantita)==false)
            {
                alert("Errore nella definizione della quantita");
                return false
            }

            if(tipoActionFigureRGX.test(tipoActionFigure)==false)
            {
                alert("Errore nella definizione del tipo di action figure");
                return false;
            }

            if(tipoGioielloRGX.test(tipoGioiello)==false)
            {
                alert("Errore nella definizione del tipo del gioiello");
                return false;
            }

            if(coloreGioielloRGX.test(coloreGioiello)==false)
            {
                alert("Errore nella definizione del colore del gioiello");
                return false;
            }

            if(tipoLibroRGX.test(tipoLibro)==false)
            {
                alert("Errore nella definizione del tipo di libro");
                return false;
            }

            if(editoreLibroRGX.test(editoreLibro)==false)
            {
                alert("Errore nella definizione dell'editore del libro");
                return false;
            }

            if(tipoStoffaRGX.test(tipoStoffa)==false)
            {
                alert("Errore nella definizione del tipo di stoffa del vestito");
                return false;
            }

            if(tipoClothRGX.test(tipoCloth)==false)
            {
                alert("Errore nella definizione del tipo di vestito");
                return false;
            }

            if(materialeClothRGX.test(materialeCloth)==false)
            {
                alert("Errore nella definizione del materiale del vestito");
                return false;
            }

            if(materialeAppoggioRGX.test(materialeAppoggio)==false)
            {
                alert("Errore nella definizione del materiale di appoggio");
                return false;
            }
        }
    </script>
    <style>
        @media screen and (max-width: 1920px)
        {
            textarea
            {
                width: 80%;
            }
        }
        table
        {
            border: 3px solid green;
            padding: 5px;
            border-collapse: collapse;
            margin-left: auto;
            margin-right: auto;
            margin-top: 5%;
            width: 50%;
        }
    </style>
</head>
<body>
<form method="post" action="AggiuntaProdottoServlet">
    <table>
        <tr>
            <th class="inserimento1">
                <label>Per i prodotti la prima lettera rappresenta la categoria e la seconda il tipo: AA000 Action figure Grandi Antichi</label>
                <label for="idProdotto">Inserisci l'id del prodotto:</label>
                <input type="text" name="idProdotto" id="idProdotto" required><br>
                <label>Scegli la categoria del prodotto</label>
                <select name="nomeCategoria">
                    <option id="grandiAntichi">Grandi Antichi</option>
                    <option id="deiEsterni">Dei Esterni</option>
                    <option id="alieniECreatureDelFolklore">Alieni e creature del folklore</option>
                    <option id="romanzi">Romanzi</option>
                    <option id="raccolteDiRacconti">Raccolte di racconti</option>
                    <option id="Lettere">Lettere</option>
                    <option id="Cicli">Cicli</option>
                    <option id="appoggiClassici">Appoggi classici</option>
                    <option id="appoggiABraccio">Appoggi a braccio</option>
                    <option id="appoggiAPiedistallo">Appoggi a piedistallo</option>
                    <option id="collane">Collane</option>
                    <option id="bracciali">Bracciali</option>
                    <option id="anelli">Anelli</option>
                    <option id="felpe">Felpe</option>
                    <option id="magliaAManicaLunga">Maglie a manica lunga</option>
                    <option id="Camicie">Camicie</option>
                    <option id="T-Shirt">T-Shirt</option>
                </select><br>
                <label for="nomeProdotto">Inserisci il nome del prodotto</label>
                <input type="text" name="nomeProdotto" id="nomeProdotto" required><br>
                <label for="descrizione">Inserisci la descrizione del prodotto:</label>
                <textarea type="text" name="descrizione" id="descrizione" rows="4" cols="80"></textarea><br>
                <label for="larghezza">Inserisci la larghezza</label>
                <input type="text" name="larghezza" id="larghezza"><br>
                <label for="lunghezza">Inserisci la lunghezza</label>
                <input type="text" name="lunghezza" id="lunghezza"><br>
                <label for="prezzo">Inserisci il prezzo</label>
                <input  type="text" name="prezzo" id="prezzo"><br>
                <label for="quantita">Inserisci la quantità</label>
                <input type="text" name="quantita" id="quantita"><br>
            </th>
            <th class="inserimento">
                <label>Inserire i parametri solo per i prodotti di appartenenza:</label><br>
                <label for="tipoActionFigure">Inserire il tipo di action figure</label>
                <input type="text" name="tipoActionFigure" id="tipoActionFigure"><br>
                <label for="tipoGioiello">Inserire il tipo di gioiello</label>
                <input type="text" name="tipoGioiello" id="tipoGioiello">
                <label for="coloreGioiello">Inserire il colore del gioiello</label>
                <input type="text" name="coloreGioiello" id="coloreGioiello">
                <label for="tipoLibro">Inserire il tipo di libro</label>
                <input type="text" name="tipoLibro" id="tipoLibro">
                <label for="editoreLibro">Inserire l'editore del libro</label>
                <input type="text" name="editoreLibro" id="editoreLibro">
                <label for="tipoStoffa">Inserire il tipo di stoffa del vestito</label>
                <input type="text" name="tipoStoffa" id="tipoStoffa">
                <label for="tipoCloth">Inserire il tipo di vestito</label>
                <input type="text" name="tipoCloth" id="tipoCloth">
                <label for="materialeCloth">Inserire il materiale del vestito</label>
                <input type="text" name="materialeCloth" id="materialeCloth">
                <label for="materialeAppoggio">Inserire il materiale dell'appoggio</label>
                <input type="text" name="materialeAppoggio" id="materialeAppoggio">
            </th>
        </tr>
    </table>
    <button onclick="return(validateNewProduct())" type="submit" class="cart"><i class="fa fa-cart-plus"></i></button>
    <button onclick="window.location.href='HomeServletAmministratore'" type="submit" class="cart"><i class="fa fa-home"></i></button>
</form>
</body>
</html>
