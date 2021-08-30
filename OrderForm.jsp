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
			<td><h1>HIT - best devops students survey</h1></td>
		</tr>
		<tr >
			<td><h2>Which degree are you studying</h2></td>
		</tr>
		<tr>
			<td>
					<form method="get">
						<input type="radio" name="dgree" value="you thought you are going do code haa?">Computer science
						<input type="radio" name="dgree" value="computerScience.concat(physics)">Computer engineering
						<input type="radio" name="dgree" value="in the industry you are going to code anyway">Electric engineering
						<input type="radio" name="dgree" value="4 years to be a product manager">Industrial engineering
						<input type="submit" value="Query">
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
