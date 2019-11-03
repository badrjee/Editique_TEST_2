<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Détails</title>
</head>
<body>
	<h1>Détails sur le client :</h1>
	<h3>ID : ${client.id}</h3>
	<h3>Numéro Client : ${client.numCl}</h3>
	<h3>Nom : ${client.nom}</h3>
	<h3>Prénom : ${client.prenom}</h3>
	<h3>Adresse : ${client.adress}</h3>
	<h3>Code Postal : ${client.cp}</h3>
	<h3>Ville : ${client.ville}</h3>
	<h3>Télephone : ${client.tel}</h3>
	<h3>E-mail : ${client.mail}</h3>
	
	<c:url value="/edit-client.html?clientId=${client.id}" var="editUrl" />
	<button onclick="window.document.location.href='${editUrl}'">Modifier</button>
</body>
</html>