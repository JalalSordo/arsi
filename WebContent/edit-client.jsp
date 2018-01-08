
<%@ page import="java.util.ArrayList"%>
<%@ page import="org.arssi.bo.Client"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	ArrayList<Client> clients = (ArrayList<Client>) request.getAttribute("clients");
	String nomCLient=request.getParameter("nomClient");
	if(nomCLient==null){
		nomCLient="";
	}
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
   
    
   
	
</body>
</html>