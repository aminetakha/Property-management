<%@ include file="header.jsp" %>
	<div class="admin-panel">
		<p>Liste des annonces</p>
		<a class="ajouter-annonce" href="annonce">Ajouter une annonce</a>
		<c:choose>
			<c:when test="${annonces.size() > 0}">
				<table>
					<tr>
						<th>superficie</th>
						<th>nombre chambre</th>
						<th>type maison</th>
						<th>prix</th>
						<th>date</th>
						<th>Image</th>
						<th></th>
						<th></th>
					</tr>
					<c:forEach items="${annonces}" var="annonce">
						<tr>
							<td><c:out value="${annonce.superficie }" /></td>
							<td><c:out value="${annonce.nombreChambre }" /></td>
							<td><c:out value="${annonce.typeMaison }" /></td>
							<td><c:out value="${annonce.prix }" /></td>
							<td><c:out value="${annonce.date }" /></td>
							<td><img src="http://localhost:9999/images/${annonce.images[0] }" width="200px" ></td>					
							<td><a onclick="return confirm('Voulez-vous supprimer cette annonce?');" href="annonceur?del=${annonce.id }">Supprimer</a></td>
							<td><a href="annonce-detail?annonceId=${annonce.id }">View details</a></td>
						</tr>
					</c:forEach>
				</table>
			</c:when>
			<c:when test="${annonces.size() == 0}">
				<p>Aucune annonce existe!</p>
			</c:when>
		</c:choose>
	</div>
</body>
</html>