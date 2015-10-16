package com.bit2015.webex01.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class tableServlet
 */
@WebServlet(name = "TableServlet", urlPatterns = { "/table" })
public class tableServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public tableServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String row = request.getParameter("r");
		String col = request.getParameter("c");
		if (row == null || row.matches("^[0-9]+$") == false) {
			row = "0";
		}
		if (col == null || col.matches("^[0-9]+$") == false) {
			col = "0";
		}
		int nRow = Integer.parseInt(row);
		int nCol = Integer.parseInt(col);
		out.println("<table border='1px' cellpadding='10px' cellspacing='0'>");
		for (int i = 0; i < nRow; i++) {
			out.println("<tr>");
			for (int j = 0; j < nCol; j++) {
				out.println("<td>cell(" + i + "," + j + ")");
				out.println("</td>");
			}
			out.println("</tr>");
		}
		out.println("</table>");
	}

}
