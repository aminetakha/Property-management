<%@ include file="header.jsp" %>

	<div class="annonce-form-wrapper">
		<div>
			<a href="annonceur">Mes annonces</a>
		</div>
		
		<form class="annonce-form" action="annonce" method="post" enctype="multipart/form-data">
			<table>
				<tr>
					<td>Superficie</td>
					<td><input type="text" name="superficie" /></td>
				</tr>
				<tr>
					<td>Adresse</td>
					<td><input type="text" name="adresse" /></td>
				</tr>
				<tr>
					<td>Photos</td>
					<td><input type="file" name="photos" multiple="multiple" /></td>
				</tr>
				<tr>
					<td>Prix Promo</td>
					<td><input type="text" name="prixPromo" /></td>
				</tr>
				<tr>
					<td>Nombre de chambres</td>
					<td><input type="text" name="nombreChambre" /></td>
				</tr>
				<tr>
					<td>Type de maison</td>
					<td><input type="text" name="typeMaison" /></td>
				</tr>
				<tr>
					<td>Description</td>
					<td><input type="text" name="description" /></td>
				</tr>
				<tr>
					<td>Prix</td>
					<td><input type="text" name="prix" /></td>
				</tr>
				<tr>
					<td>Date</td>
					<td><input type="date" name="date" /></td>
				</tr>
				<tr>
					<td>Type annonce</td>
					<td><input type="text" name="typeAnnonce" /></td>
				</tr>
			</table>
			<input type="submit" value="Creer Annonce" />
		</form>
	</div>

</body>
</html>