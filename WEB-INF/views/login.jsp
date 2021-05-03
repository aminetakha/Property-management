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
		<h1>Login Page</h1>
		<div>
			<c:if test="${!empty success }"><c:out value="${success}" /></c:if>
			<c:if test="${!empty error }"><c:out value="${error}" /></c:if>
		</div>
		<form method="post" action="login" class="auth-form">
			<div>
				<label for="username">Username: </label>
				<input type="text" name="username" id="username" />
			</div>
			<div>
				<label for="pass">Password: </label>
				<input type="password" name="pass" id="pass" />
			</div>
			<div class="submit-container">
				<button type="submit">Login</button>
			</div>
		</form>
		<div class="connect-links">
			<p>Don't have an account? <a href="register">Sign up now</a></p>
		</div>
	</div>
</body>
</html>