<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML >
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>HIT - devops students survey</title>
</head>
     
<body style="background-color:#00BFFF;" align="center" width = "100%" border = "0" >
	<table style="width:100%">
		<tr >
			<td><h1>Devops - The best course in HIT</h1></td>
		</tr>
		<tr >
			<td><h2>Which subjets you want to learn more about</h2></td>
		</tr>
		<tr>
			<td>
					<form action = "OrderForm.jsp" method = "POST" target = "_blank">
         <input type = "checkbox" name = "maths" checked = "checked" /> Maths
         <input type = "checkbox" name = "physics"  /> Physics
         <input type = "checkbox" name = "chemistry" checked = "checked" /> Chem
         <input type = "submit" value = "Select Subject" />
      </form>

			</td>
		</tr>
		<tr>
			<% 
				String[] dgrees = request.getParameterValues("dgree");
				if (dgrees != null) {
			%>
			<td>
				<h3>Lets see:</h3>
			</td>
		</tr>
		<tr>
			<td>
				<ul>
					<%for (String dgree : dgrees) { %>
					<li style="background-color:#0FFFFF; color:#FFFF; font-size:200%;font-family:verdana;"><%= dgree %></li>
					<%}%>
				</ul>
				<%}%>
			</td>
		</tr>
	</table>

	  <br /><a href="<%= request.getRequestURI() %>">BACK</a> 
<body>
</html>
