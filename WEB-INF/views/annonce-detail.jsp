<%@ include file="header.jsp" %>
	<div class="annonce-detail">
		<div>
			<p>Superficie: </p>
			<span><c:out value="${annonce.superficie }" /> m<sup>2</sup></span>
		</div>
		<div>
			<p>Prix: </p>
			<c:out value="${annonce.prix } DH" />
		</div>
		<div>
			<p>Description: </p>
			<c:out value="${annonce.description }" />
		</div>
		<div>
			<p>Nombre des chambres: </p>
			<c:out value="${annonce.nombreChambre }" />
		</div>
		<div>
			<p>Prix Promo: </p>
			<c:out value="${annonce.prixPromo }" />
		</div>
		<div>
			<p>Type Maison: </p>
			<c:out value="${annonce.typeMaison }" />
		</div>
		<div>
			<p>Date: </p>
			<c:out value="${annonce.date }" />
		</div>
		<div>
			<p>Type Annonce: </p>
			<c:out value="${annonce.typeAnnonce }" />
		</div>
		<div class="images">
			<c:forEach items="${annonce.images }" var="image">
				<div>
					<a href="http://localhost:9999/images/${image }">
						<img src="http://localhost:9999/images/${image }" width="400px" />
					</a>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>