<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gestion immobilier</title>
<link rel="stylesheet" href="http://localhost:9999/css/styles.css" />
<body>
	<nav>
		<c:choose>
			<c:when test="${loggedIn == true }">
				<form method="post" action="logout">
					<button type="submit">Logout</button>
					<a href="/gestion-immobilier/${sessionScope.type }">Dashboard</a>
				</form>
			</c:when>
			<c:when test="${loggedIn == false }">
				<a href="login">Login</a>
				<a href="register">Register</a>
			</c:when>
		</c:choose>
	</nav>