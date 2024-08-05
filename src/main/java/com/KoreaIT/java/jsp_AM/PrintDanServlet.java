package com.KoreaIT.java.jsp_AM;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/printDan")
public class PrintDanServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");

		String inputedDan = request.getParameter("dan");
		String inputedLimit = request.getParameter("limit");

		
		if (inputedDan == null) {
			inputedDan = "1";
		}

		if (inputedLimit == null) {
			inputedLimit = "1";
		}

		int dan = Integer.parseInt(inputedDan);
		int limit = Integer.parseInt(inputedLimit);

		response.getWriter().append(String.format("==%d단==<br>", dan));

		
		for (int i = 1; i <= limit; i++) {
			response.getWriter().append(String.format("%d * %d = %d<br>", dan, i, dan * i));
		}

	}
}