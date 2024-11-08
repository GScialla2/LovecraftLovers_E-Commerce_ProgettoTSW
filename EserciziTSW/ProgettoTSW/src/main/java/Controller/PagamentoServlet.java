package Controller;
import Model.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
@WebServlet("/PagamentoServlet")
public class PagamentoServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request , HttpServletResponse response) throws ServletException , IOException
    {
        doPost(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request , HttpServletResponse response) throws ServletException, IOException
    {
        HttpSession session = request.getSession();
        if(session.getAttribute("Utente")!=null)
        {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/results/Pagamento.jsp");
            dispatcher.forward(request,response);
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/results/Login.jsp");
        dispatcher.forward(request,response);
    }
}
