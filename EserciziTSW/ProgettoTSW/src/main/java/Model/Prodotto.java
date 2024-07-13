package Model;
public class Prodotto
{
    private String idProdotto;
    private String nomeProd;
    private String descrizione;
    private String tipoActionFigure;
    private String tipoLibro;
    private String editoreLibro;
    private String materialeAppoggio;
    private String tipoGioiello;
    private String coloreGioiello;
    private String tipoStoffa;
    private String materialeCloth;
    private String tipoCloth;
    private String nomeCategoria;
    private double larghezza;
    private double lunghezza;
    private double prezzo;
    private int quantita;
    public String getIdProdotto()
    {
        return idProdotto;
    }
    public String getNomeCategoria()
    {
        return nomeCategoria;
    }
    public String getNomeProd()
    {
        return nomeProd;
    }
    public String getDescrizione()
    {
        return descrizione;
    }
    public String getTipoActionFigure()
    {
        return tipoActionFigure;
    }
    public String getTipoLibro()
    {
        return tipoLibro;
    }
    public String getEditoreLibro()
    {
        return editoreLibro;
    }
    public String getMaterialeAppoggio()
    {
        return materialeAppoggio;
    }
    public String getColoreGioiello()
    {
        return coloreGioiello;
    }
    public String getTipoGioiello()
    {
        return tipoGioiello;
    }
    public String getTipoStoffa()
    {
        return tipoStoffa;
    }
    public String getMaterialeCloth()
    {
        return materialeCloth;
    }
    public String getTipoCloth()
    {
        return tipoCloth;
    }
    public double getLarghezza()
    {
        return larghezza;
    }
    public double getLunghezza()
    {
        return lunghezza;
    }
    public double getPrezzo()
    {
        return prezzo;
    }
    public int getQuantita()
    {
        return quantita;
    }
    public void setIdProdotto(String idProdotto)
    {
        this.idProdotto = idProdotto;
    }
    public void setNomeProd(String nomeProd)
    {
        this.nomeProd = nomeProd;
    }
    public void setDescrizione(String descrizione)
    {
        this.descrizione = descrizione;
    }
    public void setTipoActionFigure(String tipoActionFigure)
    {
        this.tipoActionFigure = tipoActionFigure;
    }
    public void setMaterialeAppoggio(String materialeAppoggio)
    {
        this.materialeAppoggio = materialeAppoggio;
    }
    public void setTipoLibro(String tipoLibro)
    {
        this.tipoLibro = tipoLibro;
    }
    public void setEditoreLibro(String editoreLibro)
    {
        this.editoreLibro = editoreLibro;
    }
    public void setNomeCategoria(String nomeCategoria)
    {
        this.nomeCategoria = nomeCategoria;
    }
    public void setColoreGioiello(String coloreGioiello)
    {
        this.coloreGioiello = coloreGioiello;
    }
    public void setTipoGioiello(String tipoGioiello)
    {
        this.tipoGioiello = tipoGioiello;
    }
    public void setTipoStoffa(String tipoStoffa)
    {
        this.tipoStoffa = tipoStoffa;
    }
    public void setMaterialeCloth(String materialeCloth)
    {
        this.materialeCloth = materialeCloth;
    }
    public void setTipoCloth(String tipoCreaturaPupazzo)
    {
        this.tipoCloth = tipoCloth;
    }
    public void setLarghezza(double larghezza)
    {
        this.larghezza = larghezza;
    }
    public void setLunghezza(double lunghezza)
    {
        this.lunghezza = lunghezza;
    }
    public void setPrezzo(double prezzo)
    {
        this.prezzo = prezzo;
    }
    public void setQuantita(int quantita)
    {
        this.quantita = quantita;
    }
    @Override
    public String toString()
    {
        return "Prodotto{"+"idProdotto='"+idProdotto+'\''+",nomeProd='"+nomeProd+'\''+",descrizione='"+descrizione+'\''+",tipoActionFigure='"+tipoActionFigure+'\''+",materialeAppoggio='"+materialeAppoggio+'\''+",tipoLibro='"+tipoLibro+'\''+",editoreLibro='"+editoreLibro+'\''+",coloreGioiello='"+coloreGioiello+'\''+",tipoGioiello='"+tipoGioiello+'\''+",tipoStoffa='"+tipoStoffa+'\''+",materialeCloth='"+materialeCloth+'\''+",tipoCloth='"+tipoCloth+'\''+",nomeCategoria='"+nomeCategoria+'\''+",larghezza="+larghezza+",lunghezza="+lunghezza+",prezzo="+prezzo+",quantità="+quantita+'}';
    }
}
