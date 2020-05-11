<?php

	cBase();

	function affThemesMaj()
	{
		global $bdd, $theme;
				
		echo '    <h2>Mettre à jour les thèmes</h2><div class="entry"><form class="admin" method="post" action=""><input value="Mettre à jour" name="submit" type="button" onclick="affChg(\'majThemesChg\'); envForm(\'admin.php\',\'action=majThemes\');" /></form>';
		
		if ($_POST['action'] == 'majThemes')
		{
			
			$debutMaj = microtime(true);
			
			//Tableau contenant les informations sur les thèmes
			$infThemes = array(0 => array('nom' => 'bleu', 'couleur1' => '#2275BC'), 1 => array('nom' => 'vert', 'couleur1' => '#97B606'), 2 => array('nom' => 'orange', 'couleur1' => '#EE9118'), 3 => array('nom' => 'rouge', 'couleur1' => '#EE2727'), 4 => array('nom' => 'violet', 'couleur1' => '#DC41F8'));
			
			//Récupération du contenu du thème de base
			$adrTheme = '/home/youbi325/www/themes/'.$infThemes[0]['nom'].'/style.css';

			//Ouverture en lecture et récupération du thème de base
			$lectTheme = fopen($adrTheme,'r') or die("Fichier manquant");
			$themeBase = file_get_contents($adrTheme);
			fclose($lectTheme);
			
			//Création des autres thèmes
			for ($i = 1; $i <= 4; $i++)
			{
				$adrTheme = '/home/youbi325/www/themes/'.$infThemes[$i]['nom'].'/style.css';
				//Ouverture en écriture
				$ecrTheme = fopen($adrTheme,'w+') or die("Fichier manquant");
				$nTheme = str_replace($infThemes[0]['couleur1'], $infThemes[$i]['couleur1'], $themeBase);
				fwrite($ecrTheme,$nTheme);
				fclose($ecrTheme);
			}
			
			echo '<span id="majThemesChg"><br />Mise à jour effectuée en '.dTemps($debutMaj).' seconde(s).</span>';
		}
		else
			echo '<span id="majThemesChg" class="cache"></span>';
		
		echo "</div>\n";

	}
  
  function majAlbum($catId, $scatId, $albumId)
  {
  		global $bdd;
  		
    	$reponse = $bdd->query('SELECT * FROM youbiweb_album_structure WHERE catId="'.$catId.'" AND scatId="'.$scatId.'" AND albumId="'.$albumId.'"');
			$donnees = $reponse->fetch();
			$url = $donnees['rss'];

			$file = file_get_contents($url); 
			$xml = simplexml_load_string($file);
			$n = 0;
			
			//Supression des miniatures existantes
			for ($i = 1; file_exists('images/albums/'.$catId.'_'.$scatId.'_'.$albumId.'_'.$i.'_min.jpg'); $i++)
				unlink('images/albums/'.$catId.'_'.$scatId.'_'.$albumId.'_'.$i.'_min.jpg');

			foreach ($xml->channel->item as $item)
			{
				$n++;
				$media = $item->children('http://search.yahoo.com/mrss/')->group;
				$image = $media->content->attributes()->url;
				
				$adrMin = 'images/albums/'.$catId.'_'.$scatId.'_'.$albumId.'_'.$n.'_min.jpg';
				
				//Création d'une image à partir de l'originale
				$img = imagecreatefromjpeg($image);

				//Récupération des dimensions originales et stockage des futures dimensions
				$l = imagesx($img);
				$h = imagesy($img);
				$nl = 135;
				$nh = 101;

				//Création d'une image qui deviendra la miniature
				$min = imagecreatetruecolor($nl, $nh);

				//Si le rapport hauteur/largeur ne correspond pas à celui de la future miniature on tronque l'image d'origine pour conserver les proportions
				if ($l < ($h * $nl / $nh))
				{
					$y = ($h - ($l * $nh / $nl)) / 2;
					$tmph = $h - (2 * $y);
					$tmpImg = imagecreatetruecolor($l, $tmph);

					//Troncature
					imagecopy($tmpImg, $img, 0, 0, 0, $y, $l, $tmph);

					//Rétrécicement de l'image originale et on l'intègre dans la miniature
					imagecopyresampled($min, $tmpImg, 0, 0, 0, 0, $nl, $nh, $l, $tmph);
				}
          
				else
					imagecopyresampled($min, $img, 0, 0, 0, 0, $nl, $nh, $l, $h);

				//Création de la miniature sur le serveur
				imagejpeg($min, $adrMin);
				
				//Gestion des dimensions de l'image pricipale
				$taille = getimagesize($image);
				$tmpl = $taille[0];
				$tmph = $taille[1];
				$lMax = 600;
				$hMax = 450;

				//Longueur
				if ($tmpl > $lMax)
				{
					$tmph = $lMax * $tmph / $tmpl;
					$tmpl = $lMax;
				}

				//Hauteur
				if ($tmph > $hMax)
				{
					$tmpl = $hMax * $tmpl / $tmph;
					$tmph = $hMax;
				}
				
				$reponse = $bdd->query('SELECT * FROM youbiweb_album_photos WHERE catId="'.$catId.'" AND scatId="'.$scatId.'" AND albumId="'.$albumId.'" AND photoId="'.$n.'"');
				$donnees = $reponse->fetch();
				
				if ($donnees['photoId'] == $n)
				{
					if ($donnees['image'] != $image)
						$bdd->exec('UPDATE youbiweb_album_photos SET date="'.$date.'", image="'.$image.'", l="'.$tmpl.'", h="'.$tmph.'", commentaire="" WHERE catId="'.$catId.'" AND scatId="'.$scatId.'" AND albumId="'.$albumId.'" AND photoId="'.$n.'"');
				}

				else
					$bdd->exec('INSERT INTO youbiweb_album_photos VALUES("'.$catId.'", "'.$scatId.'", "'.$albumId.'", "'.$n.'", "'.$date.'", "'.$image.'", "'.$tmpl.'", "'.$tmph.'", "")');
			}
			
			$bdd->exec('UPDATE youbiweb_album_structure SET nbPhotos="'.$n.'" WHERE catId="'.$catId.'" AND scatId="'.$scatId.'" AND albumId="'.$albumId.'"');

			$bdd->exec('DELETE FROM youbiweb_album_photos WHERE catId="'.$catId.'" AND scatId="'.$scatId.'" AND albumId="'.$albumId.'" AND photoId>'.$n.'');
  }

	function affAlbumMaj()
	{
		global $bdd, $theme;
		
		//Ajouter un album
				
		echo '    <h2>Ajouter un album</h2><div class="entry"><form class="admin" method="post" action=""><label for="catId_ajAlbum">Catégorie:</label> <select size="1" id="catId_ajAlbum" name="catId" onChange="chgAlbum(\'ajAlbum\', \'scat\')">';

		$reponse = $bdd->query('SELECT * FROM youbiweb_global_cat ORDER BY catId ASC');

		while ($donnees = $reponse->fetch())
			if ($donnees['album'] == 1)
				echo '<option value="'.$donnees['catId'].'">'.$donnees['nom'].'</option>';
				
		echo '</select><br /><label for="scatId_ajAlbum">Sous-catégorie:</label> <select size="1" id="scatId_ajAlbum" name="scatId"></select><br /><label for="nom_ajAlbum">Nom:</label> <input type="text" id="nom_ajAlbum" name="nom" /><br /><label for="rss_ajAlbum">Flux RSS:</label> <input class="longElem" type="text" id="rss_ajAlbum" name="rss" /><br /><label for="comm_ajAlbum">Commentaire:</label> <textarea class="comm" id="comm_ajAlbum"></textarea><br /><input value="Ajouter" name="submit" type="button" onclick="affChg(\'ajAlbumChg\'); ajAlbum();" /></form>';
		
		if ($_POST['action'] == 'ajAlbum')
		{
			$debutMaj = microtime(true);
			$catId = $_POST['catId'];
			$scatId = $_POST['scatId'];
			$nom = $_POST['nom'];
			$commentaire = $_POST['commentaire'];
			$rss = $_POST['rss'];

			if ($scatId != 0)
			{
				$reponse = $bdd->query('SELECT * FROM youbiweb_album_structure WHERE catId="'.$catId.'" AND scatId="'.$scatId.'" ORDER BY albumId DESC');
				$donnees = $reponse->fetch();
				$nouvAlbumId = $donnees['albumId']+1;
			}
			else
			{
				$reponse = $bdd->query('SELECT * FROM youbiweb_album_structure WHERE catId="'.$catId.'" ORDER BY scatId DESC');
				$donnees = $reponse->fetch();
				$scatId = $donnees['scatId']+1;
				$nouvAlbumId = 1;
			}
			
			$bdd->query('INSERT INTO youbiweb_album_structure (catId, scatId, albumId, nom, commentaire, rss) VALUES (\''.$catId.'\', \''.$scatId.'\', \''.$nouvAlbumId.'\', \''.$nom.'\', \''.$commentaire.'\', \''.$rss.'\')');
      
      echo '<span id="ajAlbumChg"><br />Mise à jour effectuée en '.dTemps($debutMaj).' seconde(s).</span>';
		}
		else
			echo '<span id="ajAlbumChg" class="cache"></span>';

		echo "</div>\n";

		//Mettre à jour un album

		echo '    <h2>Mettre à jour un album</h2><div class="entry"><form class="admin" method="post" action=""><label for="catId_majAlbum">Catégorie: </label><select size="1" id="catId_majAlbum" name="catId" onChange="chgAlbum(\'majAlbum\', \'scat\', \'albums\')">';

		$reponse = $bdd->query('SELECT * FROM youbiweb_global_cat ORDER BY catId ASC');
		
		echo '<option value="0">Tout</option>';

		while ($donnees = $reponse->fetch())
			if ($donnees['album'] == 1)
				echo '<option value="'.$donnees['catId'].'">'.$donnees['nom'].'</option>';
				
		echo '</select><br /><label for="scatId_majAlbum">Sous-catégorie: </label><select size="1" id="scatId_majAlbum" name="scatId" onChange="chgAlbum(\'majAlbum\', \'\', \'albums\')"></select><br /><label for="albumId_majAlbum">Album: </label><select size="1" id="albumId_majAlbum" name="albumId"></select><br /><input value="Mettre à jour" name="submit" type="button" onclick="affChg(\'majAlbumChg\'); majAlbum();" /></form>';
		
		if ($_POST['action'] == 'majAlbum')
		{
			$debutMaj = microtime(true);
			$catId = $_POST['catId'];
			$scatId = $_POST['scatId'];
			$albumId = $_POST['albumId'];
			$date = date('Y-m-d h:i:s');
      
      if ($catId != 0)
      {
				if ($scatId != 0)
      	{
      		if ($albumId != 0)
      			majAlbum($catId, $scatId, $albumId);
      		
      		else
      		{
						$reponse = $bdd->query('SELECT * FROM youbiweb_album_structure WHERE catId="'.$catId.'" AND scatId="'.$scatId.'" ORDER BY albumId ASC');
      	
						while ($donnees = $reponse->fetch())
								majAlbum($donnees['catId'], $donnees['scatId'], $donnees['albumId']);
					}
      	}
      	
      	else
      	{
					$reponse = $bdd->query('SELECT * FROM youbiweb_album_structure WHERE catId="'.$catId.'" ORDER BY albumId ASC');
      	
					while ($donnees = $reponse->fetch())
							majAlbum($donnees['catId'], $donnees['scatId'], $donnees['albumId']);
				}
      }
      	
      else
      {
      	$reponse = $bdd->query('SELECT * FROM youbiweb_album_structure ORDER BY catId ASC');
      	
				while ($donnees = $reponse->fetch())
						majAlbum($donnees['catId'], $donnees['scatId'], $donnees['albumId']);
			}
      
      echo '<span id="majAlbumChg"><br />Mise à jour effectuée en '.dTemps($debutMaj).' seconde(s).</span>';
		}
		else
			echo '<span id="majAlbumChg" class="cache"></span>';

		echo "</div>\n";
		
		//Modifier un album
				
		echo '    <h2>Modifier un album</h2><div class="entry"><form class="admin" method="post" action=""><label for="catId_modAlbum">Catégorie:</label> <select size="1" id="catId_modAlbum" name="catId" onChange="chgAlbum(\'modAlbum\', \'scat\', \'albums\')">';

		$reponse = $bdd->query('SELECT * FROM youbiweb_global_cat ORDER BY catId ASC');

		while ($donnees = $reponse->fetch())
			if ($donnees['album'] == 1)
				echo '<option value="'.$donnees['catId'].'">'.$donnees['nom'].'</option>';
				
		echo '</select><br /><label for="scatId_modAlbum">Sous-catégorie:</label> <select size="1" id="scatId_modAlbum" name="scatId" onChange="chgAlbum(\'modAlbum\', \'\', \'albums\')"></select><br /><label for="albumId_modAlbum">Album: </label><select size="1" id="albumId_modAlbum" name="albumId" onchange="affModAlbum();"></select><br /><label for="nom_modAlbum">Nom:</label> <input type="text" id="nom_modAlbum" name="nom" /><br /><label for="rss_modAlbum">Flux RSS:</label> <input class="longElem" type="text" id="rss_modAlbum" name="rss" /><br /><label for="comm_modAlbum">Commentaire:</label> <textarea class="comm" id="comm_modAlbum"></textarea><br /><input value="Modifier" name="submit" type="button" onclick="affChg(\'modAlbumChg\'); modAlbum();" /></form>';
		
		if ($_POST['action'] == 'modAlbum')
		{
			$debutMaj = microtime(true);
			$catId = $_POST['catId'];
			$scatId = $_POST['scatId'];
			$albumId = $_POST['albumId'];
			$nom = $_POST['nom'];
			$commentaire = $_POST['commentaire'];
			$rss = $_POST['rss'];

			$bdd->query('UPDATE youbiweb_album_structure SET nom="'.$nom.'", commentaire="'.$commentaire.'", rss="'.$rss.'" WHERE catId="'.$catId.'" AND scatId="'.$scatId.'" AND albumId="'.$albumId.'"');

      echo '<span id="modAlbumChg"><br />Mise à jour effectuée en '.dTemps($debutMaj).' seconde(s).</span>';
		}
		else
			echo '<span id="modAlbumChg" class="cache"></span>';

		echo "</div>\n";
		
		//Gestion Javascript
		
		echo '    <script type="text/javascript">'."\n".'     album_structure = new Array();'."\n".'     album_structure[0] = new Array(); ';
				
		$reponse = $bdd->query('SELECT * FROM youbiweb_global_cat ORDER BY nom ASC');

		while ($donnees = $reponse->fetch())
			if ($donnees['album'] == 1)
				echo "\n".'     album_structure['.$donnees['catId'].'] = new Array();'."\n".'     album_structure['.$donnees['catId'].']["nom"] = "'.$donnees['nom'].'";';
		
		$reponse = $bdd->query('SELECT * FROM youbiweb_album_structure WHERE albumId="1" ORDER BY nom ASC');
					
		while ($donnees = $reponse->fetch())
			echo "\n".'     album_structure['.$donnees['catId'].']['.$donnees['scatId'].'] = new Array();'."\n".'     album_structure['.$donnees['catId'].']['.$donnees['scatId'].']["nom"] = "'.$donnees['nom'].'";';
					
		$reponse = $bdd->query('SELECT * FROM youbiweb_album_structure WHERE albumId>0 ORDER BY nom ASC');
					
		while ($donnees = $reponse->fetch())
			echo "\n".'     album_structure['.$donnees['catId'].']['.$donnees['scatId'].']['.$donnees['albumId'].'] = new Array();'."\n".'     album_structure['.$donnees['catId'].']['.$donnees['scatId'].']['.$donnees['albumId'].']["nom"] = "'.$donnees['nom'].'";'."\n".'     album_structure['.$donnees['catId'].']['.$donnees['scatId'].']['.$donnees['albumId'].']["comm"] = "'.str_replace('"', '\"', $donnees['commentaire']).'";'."\n".'     album_structure['.$donnees['catId'].']['.$donnees['scatId'].']['.$donnees['albumId'].']["rss"] = "'.$donnees['rss'].'";';
				
		echo "\n".'     chgAlbum(\'ajAlbum\', \'scat\');'."\n".'     chgAlbum(\'majAlbum\', \'scat\', \'albums\');'."\n".'     chgAlbum(\'modAlbum\', \'scat\', \'albums\');'."\n".'    </script>'."\n";
	}
	
	function affProgMaj()
	{
		global $bdd, $theme;
		
		//Ajouter un langage

		echo '    <h2>Ajouter un langage</h2><div class="entry"><form class="admin" method="post" action=""><label for="nom_ajLang">Nom:</label> <input type="text" id="nom_ajLang" name="nom" /><br /><label for="ident_ajLang">Identifiant:</label> <input type="text" id="ident_ajLang" name="ident" /><br /><input value="Ajouter" name="submit" type="button" onclick="affChg(\'ajLangChg\'); ajLang();" /></form>';
		
		if ($_POST['action'] == 'ajLang')
		{
			$debutMaj = microtime(true);
			$nom = $_POST['nom'];
			$ident = $_POST['ident'];

			$reponse = $bdd->query('SELECT * FROM youbiweb_prog_structure ORDER BY langId DESC');
			$donnees = $reponse->fetch();
			$nouvLangId = $donnees['langId']+1;
			
			$bdd->query('INSERT INTO youbiweb_prog_structure (langId, nom, ident) VALUES (\''.$nouvLangId.'\', \''.$nom.'\', \''.$ident.'\')');
      
      echo '<span id="ajLangChg"><br />Mise à jour effectuée en '.dTemps($debutMaj).' seconde(s).</span>';
		}
		else
			echo '<span id="ajLangChg" class="cache"></span>';

		echo "</div>\n";

		//Ajouter une source
		
		echo '    <h2>Ajouter une source</h2><div class="entry"><form class="admin" method="post" action=""><label for="langId_ajSource">Langage:</label> <select size="1" id="langId_ajSource" name="langId">';

		$reponse = $bdd->query('SELECT * FROM youbiweb_prog_structure ORDER BY nom ASC');

		while ($donnees = $reponse->fetch())
				echo '<option value="'.$donnees['langId'].'">'.$donnees['nom'].'</option>';
				
		echo '</select><br /><label for="nom_ajSource">Nom:</label> <input type="text" id="nom_ajSource" name="nom" /><br /><label for="comm_ajSource">Commentaire:</label> <textarea class="comm" id="comm_ajSource"></textarea><br /><label for="source_ajSource">Source:</label> <textarea class="source" id="source_ajSource"></textarea><br /><input value="Ajouter" name="submit" type="button" onclick="affChg(\'ajSourceChg\'); ajSource();" /></form>';
		
		if ($_POST['action'] == 'ajSource')
		{
			$debutMaj = microtime(true);
			$langId = $_POST['langId'];
			$nom = $_POST['nom'];
			$commentaire = $_POST['commentaire'];
			$source = $_POST['source'];

			$reponse = $bdd->query('SELECT * FROM youbiweb_prog_sources ORDER BY sourceId DESC');
			$donnees = $reponse->fetch();
			$nouvSourceId = $donnees['sourceId']+1;
			
			$bdd->query('INSERT INTO youbiweb_prog_sources (langId, sourceId, nom, commentaire, source) VALUES (\''.$langId.'\', \''.$nouvSourceId.'\', \''.$nom.'\', \''.$commentaire.'\', \''.$source.'\')');
      
      echo '<span id="ajSourceChg"><br />Mise à jour effectuée en '.dTemps($debutMaj).' seconde(s).</span>';
		}
		else
			echo '<span id="ajSourceChg" class="cache"></span>';
			
		echo "</div>\n";
	}
	
	function affArtistesMaj()
	{
		global $bdd;
		
		//Ajouter un artiste
		echo '    <h2>Ajouter un artiste</h2><div class="entry"><form class="admin" method="post" action=""><label for="nom_ajArtiste">Nom:</label> <input class="longElem" type="text" id="nom_ajArtiste" name="nom" /><br /><label for="article_ajArtiste">Article:</label> <textarea class="source" id="article_ajArtiste"></textarea><br /><input value="Ajouter" name="submit" type="button" onclick="affChg(\'ajArtisteChg\'); ajArtiste();" /></form>';
		
		if ($_POST['action'] == 'ajArtiste')
		{
			$debutMaj = microtime(true);
			$nom = $_POST['nom'];
			$article = $texte = str_replace("\n", '<br />', $_POST['article']);
			$date = date('Y-m-d h:i:s');

			$reponse = $bdd->query('SELECT * FROM youbiweb_musique_artistes ORDER BY id DESC');
			$donnees = $reponse->fetch();
			$id = $donnees['id']+1;
			
			$bdd->query('INSERT INTO youbiweb_musique_artistes (id, nom, article, date) VALUES (\''.$id.'\', \''.$nom.'\', \''.$article.'\', \''.$date.'\')');
      
      echo '<span id="ajArtisteChg"><br />Mise à jour effectuée en '.dTemps($debutMaj).' seconde(s).</span>';
		}
		else
			echo '<span id="ajArtisteChg" class="cache"></span>';
			
		echo "</div>\n";
		
		//Modifier un artiste
				
		echo '    <h2>Modifier un artiste</h2><div class="entry"><form class="admin" method="post" action=""><label for="id_modArtiste">Selection:</label> <select class="longElem" size="1" id="id_modArtiste" name="catId" onChange="affModArtiste();"></select><br /><label for="nom_modArtiste">Nom:</label> <input class="longElem" type="text" id="nom_modArtiste" name="nom" /><br /><label for="article_modArtiste">Article:</label> <textarea class="source" id="article_modArtiste"></textarea><br /><input value="Modifier" name="submit" type="button" onclick="affChg(\'modArtisteChg\'); modArtiste();" /></form>';
		
		if ($_POST['action'] == 'modArtiste')
		{
			$debutMaj = microtime(true);
			$id = $_POST['id'];
			$nom = $_POST['nom'];
			$date = date('Y-m-d h:i:s');
			$article = $texte = str_replace("\n", '<br />', $_POST['article']);

			$bdd->query('UPDATE youbiweb_musique_artistes SET nom="'.$nom.'", article="'.$article.'", date="'.$date.'" WHERE id="'.$id.'"');

      echo '<span id="modArtisteChg"><br />Mise à jour effectuée en '.dTemps($debutMaj).' seconde(s).</span>';
		}
		else
			echo '<span id="modArtisteChg" class="cache"></span>';

		echo "</div>\n";
		
		//Gestion Javascript
		
		echo '    <script type="text/javascript">'."\n".'     musique_artistes = new Array();';
				
		$reponse = $bdd->query('SELECT * FROM youbiweb_musique_artistes ORDER BY id DESC');

		while ($donnees = $reponse->fetch())
				echo "\n".'     musique_artistes['.$donnees['id'].'] = new Array();'."\n".'     musique_artistes['.$donnees['id'].']["nom"] = "'.$donnees['nom'].'";'."\n".'     musique_artistes['.$donnees['id'].']["article"] = "'.str_replace('"', '\"', $donnees['article']).'";';
		
		echo "\n".'     affModArtisteId();'."\n".'     affModArtiste();'."\n".'    </script>'."\n";
	}

	function initSession()
	{
		global $bdd;
		
		session_start();

		//Deconnexion
		if ($_GET['action'] == 'fsession')
		{
			$_SESSION = array();
			session_destroy();
			session_start();
		}

		//Connexion
		if (($_SESSION['statut'] != 'connecte') && ($_POST['action'] == 'connexion'))
		{
			$login = $_POST['login'];
			$mdp = $_POST['mdp'];
		
			//Vérification
			if ((!empty($login)) && (!empty($mdp)))
			{
				$reponse = $bdd->query('SELECT * FROM youbiweb_admin_droits WHERE utilisateur="'.$login.'" AND mdp="'.$mdp.'"');
				$donnees = $reponse->fetch();
		
				if (($login == $donnees['utilisateur']) && ($mdp == $donnees['mdp']))
				{
					$_SESSION['statut'] = 'connecte';
					$_SESSION['nom'] = $donnees['nom'];
				}
					
			}

		}
		
		if ($_SESSION['statut'] == 'connecte')
		{
			echo '<h2>Administration</h2><div class="entry">Bienvenue '.$_SESSION['nom'].' (<a href="javascript:affPage(\'admin.php?action=fsession\');">X</a>).</div>'."\n";
			
			affThemesMaj();
			affAlbumMaj();
			affProgMaj();
			affArtistesMaj();
		}
		
		//Affichage du formulaire de connexion si non connecté
		else
		{
			echo '    <h2>Administration</h2><div class="entry"><form class="admin" method="post" action="admin.php"><label for="login">Login: </label><input type="text" id="login" name="login" /><br /><label for="mdp">Mot de Passe: </label><input type="password" id="mdp" name="mdp" /><br /><input type="button" name="submit" value="Connexion" onClick="envForm(\'admin.php\', \'action=connexion&login=\'+document.getElementById(\'login\').value+\'&mdp=\'+document.getElementById(\'mdp\').value); this.disabled = true;" /></form>';
			
			if ($_POST['action'] == 'connexion')
				echo '<br /><div class="caution"><br />Erreur de connexion!</div>';
				
			echo "</div>\n";
		}
		affTChg('admin');
	}
		
?>