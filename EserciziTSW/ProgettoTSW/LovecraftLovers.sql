drop database if exists LovecraftLovers;
create database LovecraftLovers;
use LovecraftLovers;

CREATE TABLE Cliente(
email varchar(50) primary key,
passwordEmail varchar(100) not null,
nome varchar(30) not null,
dataDiNascita char(10) not null,
numeroTelefono char(10) not null,
codiceFiscale char(16) not null,
via varchar(300) not null,
citta varchar(50) not null,
cap char(5) not null,
provincia char(2) not null,
nazione char(20) not null,
amministratore boolean
);

CREATE TABLE Prodotto(
idProdotto char(5) primary key,
nomeCategoria varchar(30),
nomeProd varchar(50) not null,
descrizione text not null,
larghezza double,
lunghezza double,
prezzo double not null,
quantita int not null,
tipoActionFigure varchar(30),
tipoLibro varchar(30),
editoreLibro varchar(30),
materialeAppoggio varchar(30),
coloreGioiello varchar(30),
tipoGioiello varchar(30),
tipoStoffa varchar(30),
materialeCloth varchar(30),
tipoCloth varchar(30)
);

CREATE TABLE Acquistare(
emailCliente char(50) references Cliente(email),
idProdotto char(5) references Prodotto(idProdotto),
quantitaAcquistata int
);

CREATE TABLE CartaDiCredito(
numeroCarta varchar(16) primary key,
nomeIntestatario varchar(30) not null,
dataScadenza char(10) not null,
CVV char(3) not null,
emailProprietario char(50) references Cliente(email)
);

INSERT INTO Cliente VALUES
("admin@gmail.com",SHA1("admin001"),"Nome","Cognome","2021-07-01","1234567890","ABCDE25F67G160H","Indirizzo, civico","Città","12345","NA","Italia",1),
("cliente1@gmail.com",SHA1("Cliente1"),"Nome","Cognome","2021-07-01","1234567890","ABCDE25F67G160H","Indirizzo, civico","Città","12345","AV","Italia",0),
("cliente2@gmail.com",SHA1("Cliente2"),"Nome","Cognome","2021-07-01","1234567890","ABCDE25F67G160H","Indirizzo, civico","Città","12345","AV","Italia",0);

INSERT INTO Prodotto VALUES
("MM001","ActionFigure","Chtulhu1","Statuetta di Chtulhu in miniatura",10,15,30,10,"GrandiAntichi",null,null,null,null,null,null,null,null,null),
("MM002","ActionFigure","Chtulhu2","Statuetta di chtulhu realistica in miniatura",15,20,50,10,"GarndiAntichi",null,null,null,null,null,null,null,null,null),
("MM003","ActionFigure","Yig","Statuetta non dipinta di Yig",15,20,40,10,"GrandiAntichi",null,null,null,null,null,null,null,null,null),
("MM004","ActionFigure","Dagon1","Statuetta di Dagon nella versione più realistica",20,30,30,10,"GrandiAntichi",null,null,null,null,null,null,null,null,null),
("MM005","ActionFigure","Cthugha","Statuetta realistica di Cthugha",30,30,80,10,"GrandiAntichi",null,null,null,null,null,null,null,null,null),
("MS006","ActionFigure","Great race of Yith1","Statuetta rappresentante la grande razza di Yith",10,15,20,10,"Alieni e creature del folklore",null,null,null,null,null,null,null,null,null),
("MM007","ActionFigure","Dagon2","Statuetta di Dagon nella versione stilizzata",20,30,30,10,"GrandiAntichi",null,null,null,null,null,null,null,null,null),
("MS008","ActionFigure","Great race of Yith2","Statuetta rappresentante la grande razza di Yith nella versione più folle",10,20,40,10,null,null,null,null,null,null,null,null,null),
("MS009","ActionFigure","Mi-Go","Statuetta rappresentante la razza aliena dei funghi Mi-Go",10,20,30,10,"Alieni e creature del folklore",null,null,null,null,null,null,null,null,null),
("MS010","ActionFigure","Antichi","Statuetta rappresentate la primordiale razza degli antichi",10,20,30,10,"Alieni e creature del folklore",null,null,null,null,null,null,null,null,null),
("MPM11","ActionFigure","Azathoth1","Statuetta del grande dio cieco e stupido al centro dell'universo Azathoth",30,30,80,10,"DeiEsterni",null,null,null,null,null,null,null,null,null),
("MPM12","ActionFigure","Azathoth2","Statuetta rappresentante la seconda forma di Azathoth",25,30,80,10,"DeiEsterni",null,null,null,null,null,null,null,null,null),
("MPM13","ActionFigure","Nyarlathothep","Statuetta raffigurante il caos strisciante Nyarlathothep",25,40,100,10,"DeiEsterni",null,null,null,null,null,null,null,null,null),
("LCM14","Libri","LovecraftReloaded","Romanzo di Alessandro Manzetti e Paolo DiOrazio basato sui racconti di Lovecraft",30,30,15,10,null,"Romanzi","EC edizioni collection",null,null,null,null,null,null,null),
("LCM15","Libri","Le montagne della follia","Romanzo breve fi HPL ambientato nella misteriosa antartide",30,30,15,10,null,"Romanzi","Classic house book",null,null,null,null,null,null,null),
("LCP16","Libri","L'abitatore del buio","Romanzo illustrato dal mangaka Gou Tanabe basato sul racconto l'abitatore del buio di HPL",20,20,13,10,null,"Romanzi","J-Pop",null,null,null,null,null,null,null),
("LCP17","Libri","Il caso di Charles Dexter Ward","Romanzo breve tra i più famosi di HPL che definisce alla perfezione il concetto di orrore cosmico",30,30,15,10,null,"Romanzi","PLR",null,null,null,null,null,null,null),
("LCS18","Libri","Il colore venuto dallo spazio","Romanzo breve in cui viene presentato l'enigmatico e orribile colore venuto dall'universo più remoto",30,30,15,10,null,"Romanzi","Mondadori",null,null,null,null,null,null,null),
("LCS19","Libri","Il grande libro di H.P.Lovecraft","Raccolta di racconti del solitario di providence a cura di Sebastiano Fusco",50,50,30,10,null,"Raccolte di racconti",null,null,null,null,null,null,null),
("MPM20","ActionFigure","Yog-Sothoth1","Statuetta raffifurante Yog-Sothoth il custode delle chiavi stilizzata",30,30,80,10,null,null,null,null,null,null,null,null,null),
("MPM21","ActionFigure","Yog-Sothoth2","Statuetta raffigurante Yog-Sothoth il custode delle chiavi nella sua versione più orrificante",30,30,80,10,"DeiEsterni",null,null,null,null,null,null,null,null),
("MPM22","ActionFigure","Shub-Niggurath1","Statuetta  raffigurante La Shub-Niggurath la dea capra dai mille figli in modo realistico e senza texture",30,20,60,10,"DeiEsterni",null,null,null,null,null,null,null,null,null),
("MPM23","ActionFigure","Hastur","Statuetta senza texture rappresentante Hastur il re in giallo",30,20,60,10,"DeiEsterni",null,null,null,null,null,null,null,null,null),
("MS024","ActionFigure","Antichi2","Statuetta rappresentante la primordiale razza degli antichi",10,20,30,10,"Alieni e creature del folklore",null,null,null,null,null,null,null,null,null),
("MS025","ActionFigure","Byahkee","Statuetta che raffiguara la razza alata presente nel racconto la ricorrenza",10,20,20,10,"Alieni e creature del folklore",null,null,null,null,null,null,null,null,null),
("RE026","AppoggiActionFigure","Chaotic Sigil","Appoggio a piedistallo per action figure in plastica",10,10,20,10,null,null,"Plastica",null,null,null,null,null),
("RE027","AppoggiActionFigure","Appoggio classico1","Appoggio classico in plastica per action figure",10,10,20,10,null,null,"Plastica",null,null,null,null,null),
("RE028","AppoggiActionFigure","Appoggio a braccio","Appoggio a braccio in ferro per action figure",10,10,20,10,null,null,"Ferro",null,null,null,null,null),
("RE029","AppoggiActionFigure","Appoggio classico2","Appoggio classico per action figure in ferro",10,10,20,10,null,null,"Ferro",null,null,null,null,null),
("RD030","AppoggiActionFigure","Appoggio a piedistallo","Appoggio a piedistallo con teca in vetro per action figure",10,20,20,10,null,null,"Vetro",null,null,null,null,null),
("DL031","GioielliDiBigiotteria","Anello Miskatonic","Anello della Miskatonic University",5,5,10,10,null,null,null,"Grigio","Anelli",null,null,null),
("DL032","GioielliDiBigiotteria","Anello Chthulhu","Anello con rappresentato Chtulhu",5,5,10,10,null,null,null,"Topo","Anelli",null,null,null),
("C0033","Clothes","Felpa Chthulhu","Felpa nera con grafica di Chthulhu centrale",50,30,30,10,null,null,null,null,null,"Cotone","Sintetico","Felpe"),
("C0034","Clothes","Maglia Chthulhu","Maglia a maniche lunghe nera con grafica di Chthulhu centrale",50,30,30,10,null,null,null,null,null,"Cotone","Sintetico","Maglie a manica lunga"),
("C0035","Clothes","Camicia Chthulhu","Camicia con grafica Chtulhu",50,30,30,10,null,null,null,null,null,"Cotone","Sintetico","Camicie"),
("P0036","ActionFigure","Shoggoth1","Statuetta raffigurante l'orribile shoggoth stilizzata",30,30,60,10,"Alieni e creature del folklore",null,null,null,null,null,null,null,null,null),
("LS037","Libri","I miti di Chtulhu","Ciclo del mito di Chtulhu",30,30,25,10,null,"Cicli","Mondadori",null,null,null,null,null,null,null),
("LS038","Libri","Il profeta dell'incubo","Ciclo del sogno e saga di Randolph Carter",30,30,25,10,null,"Cicli","Feltrinelli",null,null,null,null,null,null,null,null),
("LS039","Libri","La guida al ciclo di Chtulhu e ai mostri di Lovecraft","Una guida al pantheon lovecraftiano a cura di Ilario Gobbi",30,30,20,10,null,"Cicli","Indipendente",null,null,null,null,null,null,null),
("LM040","Libri","Lovecraft tutti i romanzi e i racconti","Raccolta di tutti i racconti e romanzi di HPL",30,30,20,10,null,"Raccolte di racconti","Newton Compton editori", null,null,null,null,null,null,null),
("LM041","Libri","Il Necronomicon","Raccolta di racconti di HPL incentrati tutti sullo pseudo grimorio: il Necronomicon",30,30,30,10,null,"Raccolte di racconti","Mondadori",null,null,null,null,null,null,null),
("LM042","Libri","Lettere di HPL","Raccolta di lettere del solitario di Providence",30,30,15,10,null,"Lettere","Caravaggio Editore",null,null,null,null,null,null,null),
("DCP43","GioielliDiBigiotteria","Ciondolo collana esoterico","Ciondolo per collana in stile esoterico",10,10,5,10,null,null,null,"Nero","Collane",null,null,null),
("DCP44","GioielloDiBigiotteria","Collana Azathoth","Collana raffigurante il dio Azathoth",10,10,10,10,null,null,null,"Oro","Collane",null,null,null),
("DCP45","GioielliDiBigiotteria","Bracciale esoterico","Bracciale in stile esoterico",10,5,10,10,null,null,null,"NeroGrigio","Bracciali",null,null,null),
("P0046","ActionFigure","Shoggoth2","Statuetta raffigurante l'orrribile Shoggoth con tentacoli e fauci",30,30,40,10,"Alieni e creature del folklore",null,null,null,null,null,null,null,null,null),
("C0047","Clothes","T-shirt Chtulhu","T-shirt nera con grafica di Chtulhu centrale",50,30,30,10,null,null,null,null,null,"Cotone","Sintetico","T-Shirt"),
("C0048","Clothes","Felpa Miskatonic University","Felpa blu con grafica MIskatonic University centale",50,30,30,10,null,null,null,null,null,"Cotone","Sintetico","Felpe"),
("MPM49","ActionFigure","Shub-Niggurath2","Statuetta rappresentante la Shub-Niggurath stilizzata",30,20,60,10,null,null,null,null,null,null,null,null,null),
("MS050","ActionFigure","Abitatore del profondo","Statuetta rappresentante un abitatore del profondo realistico",20,20,20,10,null,null,null,null,null,null,null,null,null),
("LPM51","Libri","Lovecraft l'età adulta e l'inferno","Raccolta di lettere di HPL",30,30,20,10,null,"Lettere","L'orma editore",null,null,null,null,null,null,null),
("LPM52","Libri","Richard Upton Pickman diari e lettere","Raccolta di lettere e diari del personaggio di finzione ideato da HPL: il pittore Pickman",30,30,20,10,"Lettere","Blackhouse",null,null,null,null,null,null,null),
("DC053","GioielliDiBigiotteria","Collana Azathoth2","Collana con ciondolo Azathoth",10,10,5,10,null,null,null,"Nero","Collane",null,null,null),
("DC054","GioielliDiBigiotteria","Ciondolo strani eoni","Ciondolo con incisa la celebre citazione di Lovecraft: E col passare di strani eoni anche la morte può morire",10,10,5,10,null,null,null,"Oro","Collane",null,null,null);
