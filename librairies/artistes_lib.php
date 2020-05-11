<?php

	cBase();

	function affArtistes()
	{
		global $bdd;    
		
		$tri = $_GET['tri'];
		$type = $_GET['type'];	
		
		if (empty($tri))
			$tri = 'date';  
			
		if (empty($type))
			$type = 'DESC';  
		
		echo '    <div class="entry"><div class="pageArtistes">Trier par: <select size="1" id="tri"><option '.(($tri == 'id') ? 'selected="selected" ' : '').'value="id">Date d\'ajout</option><option '.(($tri == 'date') ? 'selected="selected" ' : '').'value="date">Date de modification</option><option '.(($tri == 'nom') ? 'selected="selected" ' : '').'value="nom">Nom</option></select> <select size="1" id="type"><option '.(($type == 'ASC') ? 'selected="selected" ' : '').'value="ASC"><</option><option '.(($type == 'DESC') ? 'selected="selected" ' : '').'value="DESC">></option></select> <input value="Trier" type="button" onclick="var tri = document.getElementById(\'tri\').value; var type = document.getElementById(\'type\').value; affChg(\'artistes\'); affPage(\'artistes.php?tri=\'+tri+\'&amp;type=\'+type);" /></div></div>'."\n".'    <div id="artistes">'."\n";
		
		$page = $_GET['page'];	
		
		if (empty($page))
			$page = 1;
			
		$debut = ($page-1)*5;	
		
		$reponse = $bdd->query('SELECT * FROM youbiweb_musique_artistes ORDER BY id DESC');
		$donnees = $reponse->fetch();
		$nbPages = ceil($donnees['id']/5);

		$reponse = $bdd->query('SELECT * FROM youbiweb_musique_artistes ORDER BY '.$tri.' '.$type.' LIMIT '.$debut.', 5');

		while ($donnees = $reponse->fetch())
		{
			$type = $donnees['type'];
			$source = $donnees['source'];

			echo '     <h2>'.$donnees['nom'].'</h2><div class="entry">'.miseEnForme($donnees['article']).'</div>'."\n";
		}
		
		echo '     <div class="entry"><div class="pageArtistes">Page <select onchange="var page = document.getElementById(\'page\').value; affChg(\'content\'); affPage(\'artistes.php?page=\'+page+\'&amp;tri='.$tri.'&amp;type='.$type.'\');" size="1" id="page">';

		for ($i = 1;$i <= $nbPages; $i++)
				echo '<option '.(($i == $page) ? 'selected="selected" ' : '').'value="'.$i.'">'.$i.'</option>';
				
		echo '</select> sur '.$nbPages.'</div></div>'."\n ";
		affTChg('artistes');
		echo '    </div>'."\n";
		
		
		$reponse->closeCursor();
	}

?>