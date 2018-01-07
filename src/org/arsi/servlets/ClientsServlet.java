package org.arsi.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.arssi.db.DAOClients;

@WebServlet(urlPatterns = {"/home"})
public class ClientsServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private DAOClients daoClients;

	public ClientsServlet() {
		daoClients = new DAOClients();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("HEY!");
		try {
			System.out.println(daoClients.getAllClients().size());
			request.setAttribute("clients", daoClients.getAllClients());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
		if (dispatcher != null) {
			dispatcher.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String yourName = request.getParameter("yourName");
		PrintWriter writer = response.getWriter();
		writer.println("<h1>Hello " + yourName + "</h1>");
		writer.close();
	}

}
