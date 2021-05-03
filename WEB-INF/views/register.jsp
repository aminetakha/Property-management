<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gestion immobilier</title>
<link rel="stylesheet" href="http://localhost:9999/css/styles.css" />
<style>
	table, th, td{
		border-collapse: collapse;
		border: 1px solid black;
	}
</style>
</head>
<body>
	<div class="auth-container">
		<h1>Register Page</h1>
		<div>
			<c:if test="${!empty success }"><c:out value="${success}" /></c:if>
			<c:if test="${!empty error }"><c:out value="${error}" /></c:if>
		</div>
		<form method="post" action="register" class="auth-form">
			<div>
				<label for="username">Username: </label>
				<input type="text" name="username" id="username" />
			</div>
			<div>
				<label for="nom">Nom et prénom: </label>
				<input type="text" name="nom" id="nom" />
			</div>
			<div>
				<label for="tel">Téléphone: </label>
				<input type="text" name="tel" id="tel" />
			</div>
			<div>
				<label for="email">Email: </label>
				<input type="text" name="email" id="email" />
			</div>
			<div>
				<label for="pass">Password: </label>
				<input type="password" name="pass" id="pass" />
			</div>
			<div class="submit-container">
				<button type="submit">Register</button>
			</div>
		</form>
		<div class="connect-links">
			<p>Already have account? <a href="login">Sign in</a></p>
		</div>
	</div>
</body>
</html>