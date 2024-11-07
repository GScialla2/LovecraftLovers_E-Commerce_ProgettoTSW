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

    public static ArrayList<Prodotto> doRetriveByCategoriaTipo(String categoria,String tipo)
    {
        ArrayList<Prodotto> elencoProdotti = new ArrayList<Prodotto>();
        try(Connection con = ConPool.getConnection())
        {
            String query = "Select * From Prodotto Where nomeCategoria = ? and ";
            String tipoLibri[] = {"Romanzi","Raccolte di racconti", "Lettere", "Cicli"};
            String tipoActionFigure[] = {"GrandiAntichi" , "DeiEsterni" , "Alieni e creature del folklore"};
            String tipoGioiello[] = {"Collane" , "Bracciali" , "Anelli"};
            String tipoCloth[] = {"Felpe","Maglie a manica lunga","Camicie","T-Shirt"};
            PreparedStatement ps = null;
            for(int i = 0;  i < 4; i++) {
                if(tipo.equals(tipoLibri[i])) {
                    query += "TipoLibro = ? and tipoActionFigure is NULL And  tipoCloth is NULL And tipoGioiello is NULL";
                    ps = con.prepareStatement(query);
                    ps.setString(1,"Libri");
                    ps.setString(2,tipoLibri[i]);
                    break;
                }
            }
            for(int i = 0; i<3; i++)
            {
                if(tipo.equals(tipoActionFigure[i])) {
                    query += "TipoLibro is NULL and tipoActionFigure = ? And  tipoCloth is NULL And tipoGioiello is NULL";
                    ps = con.prepareStatement(query);
                    ps.setString(1,"ActionFigure");
                    ps.setString(2,tipoActionFigure[i]);
                    break;
                }
            }
            for(int i = 0; i<3; i++)
            {
                if(tipo.equals(tipoGioiello[i])) {
                    query += "TipoLibro is NULL and tipoActionFigure is NUll And  tipoCloth is NULL And tipoGioiello = ?";
                    ps = con.prepareStatement(query);
                    ps.setString(1,"GioielliDiBigiotteria");
                    ps.setString(2,tipoGioiello[i]);
                    break;
                }
            }
            for(int i = 0;  i < 4; i++) {
                if(tipo.equals(tipoCloth[i])) {
                    query += "TipoLibro is NULL and tipoActionFigure is NULL And  tipoCloth = ? And tipoGioiello is NULL";
                    ps = con.prepareStatement(query);
                    ps.setString(1,"Clothes");
                    ps.setString(2,tipoCloth[i]);
                    break;
                }
            }
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
            System.out.println(elencoProdotti.size());
            System.out.println(tipo);
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
            PreparedStatement ps = con.prepareStatement("INSERT INTO Prodotto (idProdotto,nomeCategoria,nomeProd,descrizione,larghezza,lunghezza,prezzo,quantita,tipoActionFigure,tipoLibro,editoreLibro,materialeAppoggio, coloreGioiello ,tipoGioiello,tipoStoffa,materialeCloth,tipoCloth) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, p.getIdProdotto());
            ps.setString(2, p.getNomeCategoria());
            ps.setString(3, p.getNomeProd());
            ps.setString(4, p.getDescrizione());
            ps.setDouble(5, p.getLarghezza());
            ps.setDouble(6, p.getLunghezza());
            ps.setDouble(7, p.getPrezzo());
            ps.setInt(8, p.getQuantita());
            ps.setString(9, p.getTipoActionFigure());
            ps.setString(10, p.getTipoLibro());
            ps.setString(11, p.getEditoreLibro());
            ps.setString(12, p.getMaterialeAppoggio());
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
