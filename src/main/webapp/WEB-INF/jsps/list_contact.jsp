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
	<h2>List All Contacts</h2>
	<table border='1'>
		<tr>
			<th>FirstName</th>
			<th>LastName</th>
			<th>Source</th>
			<th>Email</th>
			<th>Mobile</th>
			<th>Billing</th>
		</tr>
		
		<c:forEach var="contact" items= "${contacts }" >
		<tr>
			<td><a href="findLeadById?id=${contact.id }">${contact.firstName }</a></td>
			<td>${contact.lastName }</td>
			<td>${contact.source }</td>
			<td>${contact.email }</td>
			<td>${contact.mobile }</td>
			<td><a href="generateBill?id=${contact.id }">generate bill</a></td>
		</tr>
		</c:forEach>
	
	</table>
</body>
</html>