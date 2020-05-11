<?php 

	cBase();

	$catId = $_GET['catId'];
	$scatId = $_GET['scatId'];
	$albumId = $_GET['albumId'];
	$photoId = $_GET['photoId'];

	function affMins($albumId)
	{
		global $bdd, $catId, $scatId;
		
		$nbMins = 0;
		$mins;
		$nPage = 1;

		$reponse = $bdd->query('SELECT * FROM youbiweb_album_photos WHERE catId="'.$catId.'" AND scatId="'.$scatId.'" AND albumId="'.$albumId.'" ORDER BY photoId ASC');

		while ($donnees = $reponse->fetch())
		{
			$nbMins++; //Comptage du nombre de photos de l'album
			$photoId = $donnees['photoId'];
			
			if (($nbMins > 1) && (($nbMins-1)%8 == 0))
			{
				$nPage++;
				$mins = $mins.'</div><div class="cache" id="p_'.$albumId.'_'.$nPage.'">';
			}
			
			$src = 'images/albums/'.$catId.'_'.$scatId.'_'.$albumId.'_'.$photoId.'_min.jpg';
			list($width, $height, $type, $attr) = getimagesize($src);
			
			$mins = $mins.'<a href="javascript:{ affChg(\'content\'); affPage(\'albums.php?catId='.$catId.'&amp;scatId='.$scatId.'&amp;albumId='.$albumId.'&amp;photoId='.$photoId.'\'); }"><img class="min" alt="" src="'.$src.'" '.$attr.' /></a>';

		}
		
		$reponse->closeCursor();

		if ($nbMins > 0)
		{
			echo '<div class="'.(($nPage > 1) ? 'mins_grd' : 'mins').'"><div id="p_'.$albumId.'_1">'.$mins.'</div><span class="page_bas">Page <span id="n_'.$albumId.'">1</span> sur <span id="nb_'.$albumId.'">'.$nPage.'</span>';
		
			if ($nPage > 1)	
				echo '<span class="spRight"><a title="Précédente" href="javascript:chgMins('.$albumId.', \'prec\');">Préc.</a> / <a title="Suivante" href="javascript:chgMins('.$albumId.', \'suiv\');">Suiv.</a></span>';
				
			echo '</span></div>';
		}
	}

	function affPhotos()
	{
		global $bdd, $theme, $catId, $scatId, $albumId, $photoId;

		$reponse = $bdd->query('SELECT * FROM youbiweb_album_photos WHERE catId="'.$catId.'" AND scatId="'.$scatId.'" AND albumId="'.$albumId.'" ORDER BY photoId ASC');
		$nbPhotos = 0;

		//Création d'un tableau JS 
		echo '     <script type="text/javascript"> photos = new Array();';

		while ($donnees = $reponse->fetch())
		{
			$nbPhotos++; //Comptage du nombre de photos de l'album
			$tmpl = $donnees['l'];
			$tmph = $donnees['h'];

			//Si on traite l'image à afficher on stocke ses dimensions
			if ($photoId == $nbPhotos)
			{
				$l = $tmpl;
				$h = $tmph;
			}

			//Stockage des données concernant les images dans le tableau JS
			echo ' photos['.$nbPhotos.'] = "'.$donnees['image'].'";';
			echo ' photos["'.$nbPhotos.'_l"] = '.$tmpl.';';
			echo ' photos["'.$nbPhotos.'_h"] = '.$tmph.';';
			echo ' photos["'.$nbPhotos.'_c"] = "'.$donnees['commentaire'].'";';
		}

		echo ' photos["n"] = '.$photoId.'; photos["nMax"] = '.$nbPhotos.'; </script>'."\n";

		$reponse = $bdd->query('SELECT * FROM youbiweb_album_photos WHERE catId="'.$catId.'" AND scatId="'.$scatId.'" AND albumId="'.$albumId.'" AND photoId="'.$photoId.'"');
		$donnees = $reponse->fetch();
		$image = $donnees['image'];
		
		echo '     <div id="photos" style="display: none;" class="photos">Photo <span id="n">'.$photoId.'</span> sur '.$nbPhotos.' <a href="javascript:{ affChg(\'content\'); affPage(\'albums.php?catId='.$catId.'&amp;scatId='.$scatId.'\'); }">Retour</a>';

		if ($nbPhotos > 1)
			echo '<span class="spRight"><a title="Précédente" href="javascript:chgPhoto(\'prec\');">Préc.</a> / <a title="Suivante" href="javascript:chgPhoto(\'suiv\');">Suiv.</a></span><br /><a title="Suivante" href="javascript:chgPhoto(\'suiv\');"><img id="photo" class="photo" src="'.$image.'" height="'.$h.'" width="'.$l.'" onLoad="affPhoto();" /></a><img id="chargement" class="chargement" src="themes/'.$theme.'/chargement.gif" />';

		else
			echo '<br /><img id="photo" class="photo" src="'.$image.'" height="'.$h.'" width="'.$l.'" onLoad="affPhoto();" /><img id="chargement" class="chargement" src="themes/'.$theme.'/chargement.gif" />';

		echo '<br /><span id="commentaire">'.$donnees['commentaire'].'</span></div>'."\n";
	}

	function initAlbum()
	{
		global $bdd, $catId, $scatId, $albumId, $photoId; // catId: voir main.php

		if (empty($albumId))
		{
			$reponse = $bdd->query('SELECT * FROM youbiweb_album_structure WHERE catId="'.$catId.'" AND scatId="'.$scatId.'" AND albumId="1"');
			$debut = true;

			while ($donnees = $reponse->fetch())
			{
				echo '    <h2>'.$donnees['nom'].'</h2><div class="entry">'.(($donnees['nbPhotos'] > 0) ? '<p>'.$donnees['commentaire'].'</p>' : $donnees['commentaire']);

				affMins($donnees['albumId']);

				echo '</div>'."\n";
						
				if ($debut)
				{
					$reponse = $bdd->query('SELECT * FROM youbiweb_album_structure WHERE catId="'.$catId.'" AND scatId="'.$scatId.'" AND albumId>"1" ORDER BY nom ASC');
					$debut = false;
				}	
			}
		}

		else
		{
			//Récupération du nom de l'album
			$reponse = $bdd->query('SELECT * FROM youbiweb_album_structure WHERE catId="'.$catId.'" AND scatId="'.$scatId.'" AND albumId="'.$albumId.'"');
			$donnees = $reponse->fetch();
			$albumNom = $donnees['nom'];

			echo '    <h2>'.$albumNom.'</h2>'."\n".'    <div class="entry">'."\n";
			affPhotos();
			echo "    </div>\n";
		}
		$reponse->closeCursor();
    affTChg('albums');
	}

?>