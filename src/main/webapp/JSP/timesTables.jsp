<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GUGUDAN 결과</title>
<style>
	td { border: 1px solid black; }
</style>
</head>
<body>
		<table>
		<% for(int i=1; i<10; i++){ %>
			<tr> 
				<% for(int j=2; j<10; j++){ %>
					<td><%= j%>*<%= i%> = <%= j*i %></td>
				<% } %>
			</tr>
		<% } %>
		</table>
		
</body>
</html>