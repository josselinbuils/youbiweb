<?php

	$tDebut = microtime(true);

	$bdd;
	
	function dTemps($t)
	{
		global $tDebut;
		return round((microtime(true) - ($t != 0 ? $t : $tDebut)), 4);
	}
	
	function affTChg($page)
	{
		echo '    <span class="spRight">(<a href="javascript:void(0);" title="Ceci est le temps de création de la page côté serveur.">'.dTemps(0).'s</a> / <a href="javascript:void(0);" title="Ceci est le temps de chargement de la page côté client."><span id="jsChg_'.$page.'"></span>s</a>)</span>'."\n";
	}
	
	function miseEnForme($texte)
	{
		global $bdd;
		
		cBase();
		
		$reponse = $bdd->query('SELECT * FROM youbiweb_smileys ORDER BY id ASC');

		while ($donnees = $reponse->fetch())
				$texte = str_replace($donnees['code'], '<img class="smiley" alt="'.$donnees['code'].'" src="'.$donnees['src'].'" />', $texte);

		$reponse = $bdd->query('SELECT * FROM youbiweb_miseEnForme ORDER BY id ASC');

		while ($donnees = $reponse->fetch())
				$texte = preg_replace($donnees['regex'], $donnees['resultat'], $texte);
		
		
		return $texte;
	}

	//Connexion à la BDD
	function cBase()
	{
		global $bdd;

		$pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
		$bdd = new PDO('mysql:host=cl1-sql15;dbname=youbi3251', 'youbi3251', 'Boxster987', $pdo_options);
		$reponse = $bdd->query('SET NAMES UTF8');
	}

?>