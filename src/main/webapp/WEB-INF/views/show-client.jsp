<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="fr">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
</head>

<body>

	<div class="container">
		<div class="col-10 mx-auto">

			<div class="row">
				<h1 class="text-primary">detail du client</h1>
				<table class="table">
					<thead>
						<tr class="table-primary text-white">
							<th scope="col">Id</th>
							<th scope="col">Numero de Client</th>
							<th scope="col">Nom</th>
							<th scope="col">Prénom</th>
							<th scope="col">Adresse</th>
							<th scope="col">Code Postal</th>
							<th scope="col">Ville</th>
							<th scope="col">Télèphone</th>
							<th scope="col">E-mail</th>

						</tr>
					</thead>
					<tbody>

							<tr>
								<td>${client.id}</td>
								<td>${client.numCl}</td>
								<td>${client.nom}</td>
								<td>${client.prenom}</td>
								<td>${client.adresse}</td>
								<td>${client.codePostal}</td>
								<td>${client.ville}</td>
								<td>${client.telephone}</td>
								<td>${client.mail}</td>
								
	
							</tr>

					</tbody>
				</table>
			</div>
		</div>
	</div>
		
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>