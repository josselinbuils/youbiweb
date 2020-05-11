<?
	//Récupération du theme
	$theme = $_COOKIE['theme'];
	
	//Connexion à la base de données
	cBase();

	//Chargement du theme
	function chrgTheme()
	{
		global $theme;

		$themePost = $_POST['themes'];

		if (!empty($themePost))
		{
			$theme = $themePost;
			setcookie('theme', $theme, (time() + 365*24*60*60));
		}

		else if ((empty($theme)) OR (!file_exists('themes/'.$theme.'/style.css')))
		{
			$theme = 'bleu';
			setcookie('theme', $theme, (time() + 365*24*60*60));
		}

		echo '<link id="stylepage" rel="stylesheet" href="themes/' . $theme . '/style.css" type="text/css" media="screen" />'."\n";
	}
	
	//Affichage du menu Caraudio
	function affCaraudio()
	{
		global $bdd;

		$reponse = $bdd->query('SELECT * FROM youbiweb_album_structure WHERE catId=1 AND albumId=1 ORDER BY scatId DESC');

		for ($i = 1;$donnees = $reponse->fetch();$i++)
			echo '       <li><a title="'.$donnees['nom'].'" href="javascript:{ affChg(\'content\'); affPage(\'albums.php?catId=1&amp;scatId='.$donnees['scatId'].'\'); }">'.$donnees['nom'].'</a></li>'."\n";	
	}
	
	//Affichage du menu Programmation
	function affProgrammation()
	{
		global $bdd;
		
		$reponse = $bdd->query('SELECT * FROM youbiweb_prog_structure ORDER BY nom DESC');
		$donnees = $reponse->fetch();
		$nomFin = $donnees['nom'];

		$reponse = $bdd->query('SELECT * FROM youbiweb_prog_structure ORDER BY nom ASC');

		for ($i = 1;$donnees = $reponse->fetch();$i++)
			echo '       <li><a title="'.$donnees['nom'].'" href="javascript:{ affChg(\'content\'); affPage(\'prog.php?langId='.$donnees['langId'].'\'); }">'.$donnees['nom'].'</a></li>'."\n";	
	}

	//Affichage du formulaire de changement de theme
	function formThemes()
	{
		global $theme;

		$themes = array(1 => 'bleu', 2 => 'orange', 3 => 'rouge', 4 => 'vert', 5 => 'violet');

		for ($i = 1; $i < 6; $i++)
			echo '<option '.(($themes[$i] == $theme) ? 'selected="selected" ' : '').'value="'.$themes[$i].'">'.ucfirst(strtolower(trim($themes[$i]))).'</option>';
	}
	
	//Initialisation du menu
	function initMenu()
	{
		global $theme, $bdd;

		$reponse = $bdd->query('SELECT * FROM youbiweb_global_cat ORDER BY catId ASC');

		echo '<script type="text/javascript"> initMenu("'.$theme.'");';

		for ($i = 1;$donnees = $reponse->fetch();$i++)
			echo ' cacheMenu("'.$donnees['nom'].'");';

		echo " </script>\n";
	}
?>