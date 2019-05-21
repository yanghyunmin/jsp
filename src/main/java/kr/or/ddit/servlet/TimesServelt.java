package kr.or.ddit.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TimesServelt extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text/html; charset=utf-8"); 
		
		// localhost/jsp/timeTables?param=6
		String i = req.getParameter("i");
		String j = req.getParameter("j");
		System.out.println("i : " + i);
		System.out.println("j : " + j);
		
		PrintWriter printWriter = resp.getWriter();
		printWriter.write("<html>");
		printWriter.write("	<head>");
		printWriter.write("		<title>GUGUDAN PRINT</title>");
		printWriter.write("	<style>");
		printWriter.write("		td {border : 1px solid black; }");
		printWriter.write("	</style>");
		printWriter.write("	</head>");
		printWriter.write("	<body>");
		printWriter.write("	<table border='1'>");
		
		int si = Integer.parseInt(i);
		int sj = Integer.parseInt(j);
		
		for(int k=1; k<=sj; k++){
			printWriter.write("		<tr>");
			for(int l=2; l<=si; l++){
				printWriter.write("			<td>" + l + "*" + k + "=" + l * k + "</td>");
			}
			printWriter.write("		</tr>");
		}
		printWriter.write("	</table>");
		printWriter.write("	</body>");
		printWriter.write("</html>");
		printWriter.close();
	}
}
