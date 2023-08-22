
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page
	import="finaltick.Ticket,finaltick.Passengers,finaltick.JDBC,finaltick.BookingServletFunction"%>
<%@ page import="java.util.*,java.io.IOException,java.sql.SQLException"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<center>
	<body>
		<h1>Booked Successfully</h1>
		<h3>Ticket Details</h3>
		<%
		Ticket at = (Ticket) request.getAttribute("tdata");
		%>
		<label><b>From :</b><%=at.getFrom()%></label>
		<br></br>
		<label><b>To :</b><%=at.getTo()%></label>
		<br></br>
		<label><b>Train:</b><%=at.getTrain()%></label>
		<br></br>
		<label><b>Class:</b><%=at.getCls()%></label>
		<br></br>
		<label><b>Date :</b><%=at.getDate()%></label>
		<br></br>
		<label><b>Total Fare :</b><%=at.getFare()%></label>
		<br></br>
		<table>
			<tr>
				<th>Name</th>
				<th>Age</th>
				<th>Gender</th>
			</tr>
			<%
			ArrayList<Passengers> ap = at.getAp();
			String[] age = new String[10];
			int i = 0;
			for (Passengers p : ap) {
				age[i] = p.getAge();
				i++;
			%>
			<tr>
				<td><%=p.getName()%></td>
				<td><%=p.getAge()%></td>
				<td><%=p.getGender()%></td>
			</tr>
			<%
			}
			%>
		</table>
		<br></br>
	
</center>
<script>

</script>
</body>
</html>