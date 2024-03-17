

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Exec2")
public class Exec2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Exec2() {
        super();
    }

    // No navegador acessar essa URL pra funcionar: /Exec2?name=Renan&idade=25
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        out.println("<html>");
        out.println("<head><title>Query params</title></head>");
        out.println("<body>");
        out.println("<h1>Query params</h1>");
        
        String name = request.getParameter("name");
        String idade = request.getParameter("idade");
        
        out.println("<p>Parâmetro 1: " + name + "</p>");
        out.println("<p>Parâmetro 2: " + idade + "</p>");
        
        out.println("</body>");
        out.println("</html>");
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}


