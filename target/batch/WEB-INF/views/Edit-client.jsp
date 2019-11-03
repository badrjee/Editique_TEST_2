<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mise à jour</title>
</head>
<body>
	<h2>Créer un nouveau Client</h2>
	<form method="post">
		<c:if test="${not empty client}">
			<input type="hidden" name="id" value="${client.id}" />
		</c:if>
		<div>
			<label for="numCl">Nom :</label>
			<input id="numCl" name="numCl" value="${not empty client ? client.numCl : '' }" />
		</div>
		<div>
			<label for="nom">Nom :</label>
			<input id="nom" name="nom" value="${not empty client ? client.nom : '' }" />
		</div>
		<div>
			<label for="prenom">Prénom :</label>
			<input id="prenom" name="prenom" value="${not empty client ? client.prenom : '' }" />
		</div>
		<div>
			<label for="adress">Adresse :</label>
			<input id="adress" name="adress" value="${not empty client ? client.adress : '' }" />
		</div>
		<div>
			<label for="cp">Code Postal :</label>
			<input id="cp" name="cp" value="${not empty client ? client.codePostal : '' }" />
		</div>
		<div>
			<label for="ville">Ville :</label>
			<input id="ville" name="ville" value="${not empty client ? client.ville : '' }" />
		</div>
		<div>
			<label for="tel">Télèphone :</label>
			<input id="tel" name="tel" value="${not empty client ? client.telephone : '' }" />
		</div>
		<div>
			<label for="mail">E-mail :</label>
			<input id="mail" name="mail" value="${not empty client ? client.mail : '' }" />
		</div>
		<button>Valider</button>
	</form>
</body>
</html>