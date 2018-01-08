
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
	    <div class="container">
	    	<div class="col-lg-4 col-lg-offset-4">
			    <div class="thumbnail" style="background-color: lightgray;">
			      <div class="caption">
		         	<form action="modifyClient" method="post">
			     		<input type="hidden"  name="id" value="<c:out value="${client.id}"/>"/>
			     		<table>
							<tr><td><span class="span1">ID : </span></td><td><span class="badge"><c:out value="${client.id}"/></span></td></tr>
							<tr><td><span class="span1">Nom : </span></td><td><input type="text" class="form-control" name="nom" value="<c:out value="${client.nom}"/>"/></td></tr>
							<tr><td><span class="span1">Adresse : </span></td><td><input type="text" class="form-control" name="adresse" value="<c:out value="${client.adresse}"/>"/></td></tr>
							<tr><td><span class="span1">Ville : </span></td><td><input type="text" class="form-control" name="ville" value="<c:out value="${client.ville}"/>"/></td></tr>
							<tr><td><span class="span1">Pays : </span></td><td><input type="text" class="form-control" name="pays" value="<c:out value="${client.pays}"/>"/></td></tr>
							<tr><td><span class="span1">T�l�phone : </span></td><td><input type="text" class="form-control" name="telephone" value="<c:out value="${client.telephone}"/>"/></td></tr>
							<tr><td><span class="span1">Fax : </span></td><td><input type="text" class="form-control" name="fax" value="<c:out value="${client.fax}"/>"/></td></tr>
							<tr><td><span class="span1">Email : </span></td><td><input type="text" class="form-control" name="email" value="<c:out value="${client.email}"/>"/></td></tr>
							<tr><td><span class="span1">Site Web : </span></td><td><input type="text" class="form-control" name="siteWeb" value="<c:out value="${client.siteWeb}"/>"/></td></tr>
						</table>
			         	<center>
				         	<div style="margin-top:10px;">
				         		<input type="submit" class="btn btn-success" value="Confirmer"/>
				        		<a onclick="window.history.back()" class="btn btn-primary" role="button">Annuler</a>
				        	</div>
			        	</center>
		        	</form>
			      </div>
			    </div>
			  </div>
			</div>
	</div>
</body>
</html>