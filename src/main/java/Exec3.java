

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Exec3")
public class Exec3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Exec3() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Hello").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        out.println("<html>");
        out.println("<head><title>Formulário</title></head>");
        out.println("<body>");
        out.println("<h1>Formulário</h1>");
        
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        
        out.println("<p>Nome: " + nome + "</p>");
        out.println("<p>Email: " + email + "</p>");
        
        out.println("</body>");
        out.println("</html>");
    }

}
