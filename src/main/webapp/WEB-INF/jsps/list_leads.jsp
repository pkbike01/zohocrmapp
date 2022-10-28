<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Leads</title>

</head>
<body>
	<h2>List All Leads</h2>
	<table border='1'>
		<tr>
			<th>FirstName</th>
			<th>LastName</th>
			<th>Source</th>
			<th>Email</th>
			<th>Mobile</th>
		</tr>
		
		<c:forEach var="lead" items= "${leads }" >
		<tr>
			<td><a href="findLeadById?id=${lead.id }">${lead.firstName }</a></td>
			<td>${lead.lastName }</td>
			<td>${lead.source }</td>
			<td>${lead.email }</td>
			<td>${lead.mobile }</td>
			
		</tr>
		</c:forEach>
	
	</table>
</body>
</html>