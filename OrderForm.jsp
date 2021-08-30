<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML >
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>HIT - devops students survey</title>
</head>
     
<body style="background-color:#FF00FF;" align="center" width = "100%" border = "0" >
	<table style="width:100%">
		<tr >
			<td><h1>Devops course in HIT - the best course students can get! </h1></td>
		</tr>
		<tr >
			<td><h2>Which subjet you love the most?</h2></td>
		</tr>
		<tr>
			<td>
					<form method="get">
						<input type="radio" name="subject" value="WRONG ANSWER">C programming
						<input type="radio" name="subject" value="Tere you go! GOOD ONE!">Devops
						<input type="radio" name="subject" value="WRONG ANSWER">Reverse engineering 
						<input type="radio" name="subject" value="WRONG ANSWER">IOT
						<input type="submit" value="Submit">
					</form>
			</td>
		</tr>
		<tr>
			<% 
				String[] subjects = request.getParameterValues("subject");
				if (dgrees != null) {
			%>
			<td>
				<h3>Lets see:</h3>
			</td>
		</tr>
		<tr>
			<td>
				<ul>
					<%for (String subject : subjects) { %>
					<li style="background-color:#FF00FF; color:#FFFF; font-size:100%;font-family:verdana;"><%= subject %></li>
					<%}%>
				</ul>
				<%}%>
			</td>
		</tr>
	</table>
<body>
</html>
