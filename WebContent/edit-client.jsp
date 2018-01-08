
<%@ page import="java.util.ArrayList"%>
<%@ page import="org.arssi.bo.Client"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
Client clients =(Client) request.getAttribute("client");
	
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
<style type="text/css">

</style>
</head>
<body>
<div class="jumbotron" style="margin-bottom: -40px;margin-top: -60px;">
	<center><h1>Modifer client</h1></center>
   
    <div class="col-sm-3 col-md-3">
		    <div class="thumbnail" style="background-color: lightgray;">
		      <div class="caption">
		        <h3 style="color:cornflowerblue;"><c:out value="${client.nom}"/></h3>
					<p><span class="span1">ID : </span><span class="span2 badge"><c:out value="${client.id}"/></span></p>
					<p><span class="span1">Adresse : </span><span class="span2"><c:out value="${client.adresse}"/></span></p>
					<p><span class="span1">Ville : </span><span class="span2"><c:out value="${client.ville}" /></span></p>
					<p><span class="span1">Pays : </span><span class="span2"><c:out value="${client.pays}" /></span></p>
					<p><span class="span1">T�l�phone : </span><span class="span2"><c:out value="${client.telephone}"/></span></p>
					<p><span class="span1">Fax : </span><span class="span2"><c:out value="${client.fax}" /></span></p>
					<p><span class="span1">Email : </span><span class="span2"><c:out value="${client.email}" /></span></p>
					<p><span class="span1">Site Web : </span><span class="span2"><c:out value="${client.siteWeb}" /></span></p>
		         	<center>
		         		<a href="./modifyClient?id=<c:out value="${client.id}"/>" class="btn btn-success" role="button">Confirmer</a>
		        		<a  onclick="window.history.back()" class="btn btn-primary" role="button">Annuler</a>
		        	</center>
		      </div>
		    </div>
		  </div>
   
	
</body>
</html>