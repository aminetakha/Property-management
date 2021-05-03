<%@ include file="header.jsp" %>
	
	
	<h1 class="annonce-header">Liste des annonces</h1>
	<div class="annonces-container">
		<!-- <div class="annonce-ajouter">
			<a href="annonce">Ajouter une annonce</a>
		</div> -->
		<div class="annonces">
			<c:forEach items="${annonces}" var="annonce">
				<div class="annonce">
					<div class="annonce-image">
						<img src="http://localhost:9999/images/${annonce.images[0] }" width="100px" >
					</div>
					<div class="annonce-info">
						<h3><c:out value="Addresse: ${annonce.adresse }" /></h3>
						<p><c:out value="Superficie: ${annonce.superficie } m2" /></p>
						<p><c:out value="${annonce.nombreChambre } chambres" /></p>
						<p><c:out value="${annonce.prix } DH" /></p>
						<a href="annonce-detail?annonceId=${annonce.id }">View details...</a>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>