package Model;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import java.sql.*;
import java.util.ArrayList;
@WebServlet(name = "ProdottoDAO", value = "/ProdottoDAO")
public class ProdottoDAO extends HttpServlet
{
    public static ArrayList<Prodotto> doRetriveByCategoria(String categoria)
    {
        ArrayList<Prodotto> elencoProdotti = new ArrayList<Prodotto>();
        try(Connection con = ConPool.getConnection())
        {
            PreparedStatement ps = con.prepareStatement("SELECT * FROM Prodotto WHERE nomeCategoria LIKE ?");
            ps.setString(1,categoria.concat("%"));
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                Prodotto p = new Prodotto();
                p.setIdProdotto(rs.getString(1));
                p.setNomeCategoria(rs.getString(2));
                p.setNomeProd(rs.getString(3));
                p.setDescrizione(rs.getString(4));
                p.setLarghezza(rs.getDouble(5));
                p.setLunghezza(rs.getDouble(6));
                p.setPrezzo(rs.getDouble(7));
                p.setQuantita(rs.getInt(8));
                p.setTipoActionFigure(rs.getString(9));
                p.setMaterialeAppoggio(rs.getString(10));
                p.setTipoLibro(rs.getString(11));
                p.setEditoreLibro(rs.getString(12));
                p.setColoreGioiello(rs.getString(13));
                p.setTipoGioiello(rs.getString(14));
                p.setTipoStoffa(rs.getString(15));
                p.setMaterialeCloth(rs.getString(16));
                p.setTipoCloth(rs.getString(17));
                elencoProdotti.add(p);
            }
            return elencoProdotti;
        }
        catch(SQLException e)
        {
            throw new RuntimeException(e);
        }
    }
    public static ArrayList<Prodotto> doRetriveAll()
    {
        ArrayList<Prodotto> elencoProdotti = new ArrayList<Prodotto>();
        try(Connection con = ConPool.getConnection())
        {
            PreparedStatement ps = con.prepareStatement("SELECT * FROM Prodotto");
            ResultSet rs = ps.executeQuery();
            while (rs.next())
            {
                Prodotto p = new Prodotto();
                p.setIdProdotto(rs.getString(1));
                p.setNomeCategoria(rs.getString(2));
                p.setNomeProd(rs.getString(3));
                p.setDescrizione(rs.getString(4));
                p.setLarghezza(rs.getDouble(5));
                p.setLunghezza(rs.getDouble(6));
                p.setPrezzo(rs.getDouble(7));
                p.setQuantita(rs.getInt(8));
                p.setTipoActionFigure(rs.getString(9));
                p.setMaterialeAppoggio(rs.getString(10));
                p.setTipoLibro(rs.getString(11));
                p.setEditoreLibro(rs.getString(12));
                p.setColoreGioiello(rs.getString(13));
                p.setTipoGioiello(rs.getString(14));
                p.setTipoStoffa(rs.getString(15));
                p.setMaterialeCloth(rs.getString(16));
                p.setTipoCloth(rs.getString(17));
                elencoProdotti.add(p);
            }
            return elencoProdotti;
        }
        catch(SQLException e)
        {
            throw new RuntimeException(e);
        }
    }
    public static ArrayList<Prodotto> doRetriveByFilter(String categoria, double max, double min)
    {
        ArrayList<Prodotto> elencoLetti = new ArrayList<Prodotto>();
        try (Connection con = ConPool.getConnection())
        {
            PreparedStatement ps =
                    con.prepareStatement("SELECT * FROM Prodotto WHERE nomeCategoria LIKE ? AND prezzo>= ? AND prezzo<= ?");
            ps.setString(1, categoria.substring(0, categoria.length() - 1).concat("%"));
            ps.setDouble(2, min);
            ps.setDouble(3, max);
            ResultSet rs = ps.executeQuery();
            while (rs.next())
            {
                Prodotto p = new Prodotto();
                p.setIdProdotto(rs.getString(1));
                p.setNomeCategoria(rs.getString(2));
                p.setNomeProd(rs.getString(3));
                p.setDescrizione(rs.getString(4));
                p.setLarghezza(rs.getDouble(5));
                p.setLunghezza(rs.getDouble(6));
                p.setPrezzo(rs.getDouble(7));
                p.setQuantita(rs.getInt(8));
                p.setTipoActionFigure(rs.getString(9));
                p.setMaterialeAppoggio(rs.getString(10));
                p.setTipoLibro(rs.getString(11));
                p.setEditoreLibro(rs.getString(12));
                p.setEditoreLibro(rs.getString(13));
                p.setColoreGioiello(rs.getString(14));
                p.setTipoStoffa(rs.getString(15));
                p.setMaterialeCloth(rs.getString(16));
                p.setTipoCloth(rs.getString(17));
                elencoLetti.add(p);
            }
            return elencoLetti;
        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }
    }
    public static Prodotto doRetriveBySearch(String nome)
    {
        Prodotto p = new Prodotto();
        try (Connection con = ConPool.getConnection())
        {
            PreparedStatement ps =
                    con.prepareStatement("SELECT * FROM Prodotto WHERE upper(nomeProd) LIKE ?");
            ps.setString(1, nome.concat("%"));
            ResultSet rs = ps.executeQuery();
            if (rs.next())
            {
                p.setIdProdotto(rs.getString(1));
                p.setNomeCategoria(rs.getString(2));
                p.setNomeProd(rs.getString(3));
                p.setDescrizione(rs.getString(4));
                p.setLarghezza(rs.getDouble(5));
                p.setLunghezza(rs.getDouble(6));
                p.setPrezzo(rs.getDouble(7));
                p.setQuantita(rs.getInt(8));
                p.setTipoActionFigure(rs.getString(9));
                p.setMaterialeAppoggio(rs.getString(10));
                p.setTipoLibro(rs.getString(11));
                p.setEditoreLibro(rs.getString(12));
                p.setColoreGioiello(rs.getString(13));
                p.setTipoStoffa(rs.getString(15));
                p.setMaterialeCloth(rs.getString(16));
                p.setTipoCloth(rs.getString(17));
            }
            return p;
        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }
    }
    public static void doUpdateQuantita(int q,String idProdotto)
    {
        try (Connection con = ConPool.getConnection())
        {
            PreparedStatement ps = con.prepareStatement("UPDATE Prodotto SET quantita=? WHERE idProdotto=?", Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, q);
            ps.setString(2, idProdotto);
            if (ps.executeUpdate() != 1)
            {
                throw new RuntimeException("INSERT error.");
            }
        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }
    }
    public static void doSetNewPrezzo(double prezzo,String idProdotto)
    {
        try (Connection con = ConPool.getConnection())
        {
            PreparedStatement ps = con.prepareStatement("UPDATE Prodotto SET prezzo=? WHERE idProdotto=?", Statement.RETURN_GENERATED_KEYS);
            ps.setDouble(1, prezzo);
            ps.setString(2, idProdotto);
            if (ps.executeUpdate() != 1)
            {
                throw new RuntimeException("INSERT error.");
            }
        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }
    }
    public static ArrayList<Prodotto> doRetriveMaterialeActionFigure(String materiale)
    {
        ArrayList<Prodotto> elencoMaterassi = new ArrayList<Prodotto>();
        try (Connection con = ConPool.getConnection())
        {
            PreparedStatement ps = con.prepareStatement("SELECT * FROM Prodotto WHERE tipoMaterialeMaterasso=?");
            ps.setString(1, materiale);
            ResultSet rs = ps.executeQuery();
            while (rs.next())
            {
                Prodotto p = new Prodotto();
                p.setIdProdotto(rs.getString(1));
                p.setNomeCategoria(rs.getString(2));
                p.setNomeProd(rs.getString(3));
                p.setDescrizione(rs.getString(4));
                p.setLarghezza(rs.getDouble(5));
                p.setLunghezza(rs.getDouble(6));
                p.setPrezzo(rs.getDouble(7));
                p.setQuantita(rs.getInt(8));
                p.setTipoActionFigure(rs.getString(9));
                p.setMaterialeAppoggio(rs.getString(10));
                p.setTipoLibro(rs.getString(11));
                p.setEditoreLibro(rs.getString(12));
                p.setColoreGioiello(rs.getString(13));
                p.setTipoGioiello(rs.getString(14));
                p.setTipoStoffa(rs.getString(15));
                p.setMaterialeCloth(rs.getString(16));
                p.setTipoCloth(rs.getString(17));
                elencoMaterassi.add(p);
            }
            return elencoMaterassi;
        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }
    }
    public static ArrayList<Prodotto> doRetriveMaterialeAppoggio(String materiale)
    {
        ArrayList<Prodotto> elencoReti = new ArrayList<Prodotto>();
        try (Connection con = ConPool.getConnection())
        {
            PreparedStatement ps = con.prepareStatement("SELECT * FROM Prodotto WHERE materialeRete=?");
            ps.setString(1, materiale);
            ResultSet rs = ps.executeQuery();
            while (rs.next())
            {
                Prodotto p = new Prodotto();
                p.setIdProdotto(rs.getString(1));
                p.setNomeCategoria(rs.getString(2));
                p.setNomeProd(rs.getString(3));
                p.setDescrizione(rs.getString(4));
                p.setLarghezza(rs.getDouble(5));
                p.setLunghezza(rs.getDouble(6));
                p.setPrezzo(rs.getDouble(7));
                p.setQuantita(rs.getInt(8));
                p.setTipoActionFigure(rs.getString(9));
                p.setMaterialeAppoggio(rs.getString(10));
                p.setTipoLibro(rs.getString(11));
                p.setEditoreLibro(rs.getString(12));
                p.setColoreGioiello(rs.getString(13));
                p.setTipoGioiello(rs.getString(14));
                p.setTipoStoffa(rs.getString(15));
                p.setMaterialeCloth(rs.getString(16));
                p.setTipoCloth(rs.getString(17));
                elencoReti.add(p);
            }
            return elencoReti;
        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }
    }
    public static ArrayList<Prodotto> doRetriveMaterialeOcchiPupazzo(String materiale)
    {
        ArrayList<Prodotto> elencoCuscini = new ArrayList<Prodotto>();
        try (Connection con = ConPool.getConnection())
        {
            PreparedStatement ps = con.prepareStatement("SELECT * FROM Prodotto WHERE materialeCuscino=?");
            ps.setString(1, materiale);
            ResultSet rs = ps.executeQuery();
            while (rs.next())
            {
                Prodotto p = new Prodotto();
                p.setIdProdotto(rs.getString(1));
                p.setNomeCategoria(rs.getString(2));
                p.setNomeProd(rs.getString(3));
                p.setDescrizione(rs.getString(4));
                p.setLarghezza(rs.getDouble(5));
                p.setLunghezza(rs.getDouble(6));
                p.setPrezzo(rs.getDouble(7));
                p.setQuantita(rs.getInt(8));
                p.setTipoActionFigure(rs.getString(9));
                p.setMaterialeAppoggio(rs.getString(10));
                p.setTipoLibro(rs.getString(11));
                p.setEditoreLibro(rs.getString(12));
                p.setColoreGioiello(rs.getString(13));
                p.setTipoGioiello(rs.getString(14));
                p.setTipoStoffa(rs.getString(15));
                p.setMaterialeCloth(rs.getString(16));
                p.setTipoCloth(rs.getString(17));
                elencoCuscini.add(p);
            }
            return elencoCuscini;
        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }
    }
    public static ArrayList<Prodotto> doRetriveQuantitaEsaurita()
    {
        ArrayList<Prodotto> prodottiEsauriti = new ArrayList<Prodotto>();
        try (Connection con = ConPool.getConnection())
        {
            PreparedStatement ps = con.prepareStatement("SELECT * FROM Prodotto WHERE quantita=0");
            ResultSet rs = ps.executeQuery();
            while (rs.next())
            {
                Prodotto p = new Prodotto();
                p.setIdProdotto(rs.getString(1));
                p.setNomeCategoria(rs.getString(2));
                p.setNomeProd(rs.getString(3));
                p.setDescrizione(rs.getString(4));
                p.setLarghezza(rs.getDouble(5));
                p.setLunghezza(rs.getDouble(6));
                p.setPrezzo(rs.getDouble(7));
                p.setQuantita(rs.getInt(8));
                p.setTipoActionFigure(rs.getString(9));
                p.setMaterialeAppoggio(rs.getString(10));
                p.setTipoLibro(rs.getString(11));
                p.setEditoreLibro(rs.getString(12));
                p.setColoreGioiello(rs.getString(13));
                p.setTipoGioiello(rs.getString(14));
                p.setTipoStoffa(rs.getString(15));
                p.setMaterialeCloth(rs.getString(16));
                p.setTipoCloth(rs.getString(17));
                prodottiEsauriti.add(p);
            }
            return prodottiEsauriti;
        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }
    }
    public static void cancellaProdotto(String idProdotto)
    {
        try (Connection con = ConPool.getConnection())
        {
            PreparedStatement ps = con.prepareStatement("DELETE FROM Prodotto WHERE idProdotto=?", Statement.RETURN_GENERATED_KEYS);
            ps.setString(1,idProdotto);
            if (ps.executeUpdate() != 1)
            {
                throw new RuntimeException("INSERT error.");
            }
        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }
    }
    public static void aggiuntaProdotto(Prodotto p)
    {
        try (Connection con = ConPool.getConnection())
        {
            PreparedStatement ps = con.prepareStatement("INSERT INTO Prodotto (idProdotto,nomeCategoria,nomeProd,descrizione,larghezza,lunghezza,prezzo,quantita,tipoMaterialeActionFigure ,tipoAppoggio, coloreAppoggio ,materialeAppoggio,editoreActionFigure,tipoActionFigure,tipoStoffaPupazzo,materialeOcchiPupazzo,tipoCreaturaPupazzo) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, p.getIdProdotto());
            ps.setString(2, p.getNomeCategoria());
            ps.setString(3, p.getNomeProd());
            ps.setString(4, p.getDescrizione());
            ps.setDouble(5, p.getLarghezza());
            ps.setDouble(6, p.getLunghezza());
            ps.setDouble(7, p.getPrezzo());
            ps.setInt(8, p.getQuantita());
            ps.setString(9, p.getTipoActionFigure());
            ps.setString(10, p.getMaterialeAppoggio());
            ps.setString(11, p.getTipoLibro());
            ps.setString(12, p.getEditoreLibro());
            ps.setString(13, p.getColoreGioiello());
            ps.setString(14, p.getTipoGioiello());
            ps.setString(15, p.getTipoStoffa());
            ps.setString(16,p.getMaterialeCloth());
            ps.setString(17,p.getTipoCloth());
            if (ps.executeUpdate() != 1)
                throw new RuntimeException("Errore nel definire il prodotto");
        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }
    }
}