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
<title>Tableau de bord</title>

</head>

<body>

	<div class="container">
		<div class="col-10 mx-auto">



			<div class="row d-flex flex-column">

				<h1 class="text-primary mx-auto">Crée un nouveau Client</h1>

				<form method="post">
					<div class="form-group">
						<label for="numCl">Numero de Client</label> <input
							name="numCl" type="text" class="form-control" id="numCl"
							required>
					</div>
					<div class="form-group">
						<label for="nom">Nom</label> <input name="nom"
							type="text" class="form-control" id="nom" required>
					</div>
					<div class="form-group">
						<label for="prenom">Prénom</label> <input name="prenom"
							type="text" class="form-control" id="prenom" required>
					</div>
					<div class="form-group">
						<label for="adresse">Adresse</label> <input name="adresse"
							type="text" class="form-control" id="adresse" required>
					</div>
					<div class="form-group">
						<label for="codePostal">Code postal</label> <input name="codePostal"
							type="text" class="form-control" id="nom" required>
					</div>
					<div class="form-group">
						<label for="ville">Ville</label> <input name="ville"
							type="text" class="form-control" id="ville" required>
					</div>
					<div class="form-group">
						<label for="telephone">Télèphone</label> <input name="telephone"
							type="text" class="form-control" id="telephone" required>
					</div>
					<div class="form-group">
						<label for="mail">E-mail</label> <input name="mail"
							type="text" class="form-control" id="mail" required>
					</div>
					<button type="submit" class="btn btn-primary mb-2">Valider</button>
				</form>
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