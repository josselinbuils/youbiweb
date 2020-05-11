<?php 

	session_start();
				
	if ($_SESSION['statut'] == 'connecte')
	{
		echo '<form class="admin" method="post" action="admin.php?action=cAlbum"><label for="catId_cAlbum">Catégorie:</label><label for="scatId_cAlbum">Sous-catégorie:</label> <select size="1" id="scatId_cAlbum" name="scatId"></select><br /><label for="albumId_cAlbum">Id:</label> <input type="text" id="albumId_cAlbum" name="albumId" /><br /><label for="nom_cAlbum">Nom:</label> <input type="text" id="nom_cAlbum" name="nom" /><br /><label for="rss_cAlbum">Flux RSS:</label> <input type="text" id="rss_cAlbum" name="rss" /><br /><input value="Créer" name="submit" type="submit" /></form>';
	}

?>