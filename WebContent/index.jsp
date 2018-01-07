
<%@ page import="java.util.ArrayList"%>
<%@ page import="org.arssi.bo.Client"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	ArrayList<Client> clients = (ArrayList<Client>) request.getAttribute("clients");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Optional theme -->
<link rel="stylesheet" href="css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Client Management</title>
</head>
<body>
	<h1>Liste des Clients</h1>
	<table class="table">
		<tr>
			<th>Id</th>
			<th>Nom</th>
			<th>Adresse</th>
			<th>Ville</th>
			<th>Pays</th>
			<th>Téléphone</th>
			<th>Fax</th>
			<th>Email</th>
			<th>Site Web</th>
		</tr>
		<c:forEach var="client" items="${clients}">
			<tr>
				<td><c:out value="${client.id}" /></td>
				<td><c:out value="${client.nom}" /></td>
				<td><c:out value="${client.adresse}" /></td>
				<td><c:out value="${client.ville}" /></td>
				<td><c:out value="${client.pays}" /></td>
				<td><c:out value="${client.telephone}" /></td>
				<td><c:out value="${client.fax}" /></td>
				<td><c:out value="${client.email}" /></td>
				<td><c:out value="${client.siteWeb}" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>