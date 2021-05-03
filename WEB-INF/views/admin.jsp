<%@ include file="header.jsp" %>
	<div class="admin-panel">
		<p>Liste des annonces</p>
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
					<td>
						<c:choose>
							<c:when test="${annonce.active == 0 }">
								<!-- <a href="#">Active</a> -->
								<form method="post" action="admin">
									<input name="action" value="activer" type="hidden" />
									<input name="id" value="${annonce.id }" type="hidden" />
									<button class="activer type="submit">Activer</button>
								</form>
							</c:when>
							
							<c:when test="${annonce.active == 1 }">
								<!-- <a href="#">Desactiver</a> -->
								<form method="post" action="admin">
									<input name="action" value="desactiver" type="hidden" />
									<input name="id" value="${annonce.id }" type="hidden" />
									<button class="desactiver" type="submit">Desactiver</button>
								</form>
							</c:when>
						</c:choose>
					</td>
					
					<td><a onclick="return confirm('Voulez-vous supprimer cette annonce?');" href="annonceur?del=${annonce.id }">Supprimer</a></td>
					<td><a href="annonce-detail?annonceId=${annonce.id }">View details</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>