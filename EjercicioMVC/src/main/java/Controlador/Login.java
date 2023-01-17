package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import Modelo.Usuario;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nombre = request.getParameter("nombre");
		String password = request.getParameter("password");
		Usuario usuario1 = new Usuario(nombre, password);
		
		if (usuario1.validar() == true) {
			jakarta.servlet.RequestDispatcher miDisapcher = request.getRequestDispatcher("/usuario_aceptados.jsp");
			miDisapcher.forward(request, response);
		}
		else {
			jakarta.servlet.RequestDispatcher miDisapcher = request.getRequestDispatcher("/error.jsp");
			miDisapcher.forward(request, response);
		}
	}

}
