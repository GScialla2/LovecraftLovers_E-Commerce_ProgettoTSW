package Controller;
import Model.Prodotto;
import Model.ProdottoDAO;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
@WebServlet("/FiltraggioServletMateriale")
public class FiltraggioServletMateriale extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request , HttpServletResponse response) throws ServletException,IOException
    {
        String mat = request.getParameter("prodotto");
        String materiale = request.getParameter("materiale");
        if(mat.equalsIgnoreCase("ActionFigure"))
        {
            response.getWriter().append("<option>Seleziona...</option>");
            response.getWriter().append("<option>Plastica</option>");
            response.getWriter().append("<option>Legno</option>");
            response.getWriter().append("<option>Stoffa</option>");
            response.getWriter().append("<option>Metallo</option>");
        }
        else if(mat.equalsIgnoreCase("Appoggio"))
        {
            response.getWriter().append("<option>Selezionare...</option>");
            response.getWriter().append("<option>Plastica</option>");
            response.getWriter().append("<option>Ferro</option>");
        }
        else if(mat.equalsIgnoreCase("Cloth"))
        {
            response.getWriter().append("<option>Selezionare...</option>");
            response.getWriter().append("<option>Nylon</option>");
            response.getWriter().append("<option>Cotone</option>");
            response.getWriter().append("<option>Lana</option>");
        }
        HttpSession session = request.getSession();
        session.setAttribute("mat",mat);
        session.setAttribute("materiale",materiale);
    }
}
