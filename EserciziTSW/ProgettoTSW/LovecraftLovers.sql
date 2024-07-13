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
("LCM14","Libri","LovecraftReloaded","Romanzo di Alessandro Manzetti e Paolo DiOrazio basato sui racconti di Lovecraft",30,30,15,10,null,"Romanzo","EC edizioni collection",null,null,null,null,null,null,null),
("LCM15","Libri","Le montagne della follia","Romanzo breve fi HPL ambientato nella misteriosa antartide",30,30,15,10,null,"Romanzo","Classic house book",null,null,null,null,null,null,null),
("LCP16","Libri","L'abitatore del buio","Romanzo illustrato dal mangaka Gou Tanabe basato sul racconto l'abitatore del buio di HPL",20,20,13,10,null,"Romanzo","J-Pop",null,null,null,null,null,null,null);



