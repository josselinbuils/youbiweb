<?php

	cBase();
	
	$langId = $_GET['langId'];
	$sourceId = $_GET['sourceId'];
	$ident;

	function affSource()
	{
		global $bdd, $langId, $sourceId, $ident;
		
		include 'geshi.php';
		
		$reponse = $bdd->query('SELECT * FROM youbiweb_prog_sources WHERE langId="'.$langId.'" AND sourceId="'.$sourceId.'"');
		$donnees = $reponse->fetch();
		
		echo '    <div id="code">'."\n".'     <h2>'.$donnees['nom'].'</h2>'."\n".'     <div class="entry">'."\n".((!empty($donnees['commentaire'])) ? '      <p>'.$donnees['commentaire'].'</p>' : '')."\n".'      <div class="prog">'."\n";
		
		$geshi =& new GeSHi($donnees['source'], $ident);
		// style
		$geshi->set_header_type(GESHI_HEADER_NONE);
		$geshi->enable_line_numbers(GESHI_NORMAL_LINE_NUMBERS);
		$geshi->set_keyword_group_style(1, 'color:#7F0055; font-weight:bold;');
		$geshi->set_keyword_group_style(2, 'color:#7F0055; font-weight:bold;');
		$geshi->set_keyword_group_style(4, 'color:#7F0055; font-weight:bold;');
		$geshi->set_comments_style(1, 'color:#3F7F5F;');
		$geshi->set_comments_style('MULTI', 'color:#3F7F5F;');
		$geshi->set_strings_style('color:#2A00FF;');
		$geshi->set_numbers_style('color:#7d7d7d;');
		$geshi->set_symbols_style('color:#7d7d7d;');
		
		echo $geshi->parse_code();
		
		echo "\n      </div>\n     </div>\n ";
		affTChg('prog');
		echo "    </div>\n";
	}
	
	function initProg()
	{
		global $bdd, $langId, $sourceId, $ident;
	
		$reponse = $bdd->query('SELECT * FROM youbiweb_prog_structure WHERE langId="'.$langId.'"');
		$donnees = $reponse->fetch();
		
		$ident = $donnees['ident'];

		echo '    <h2>'.$donnees['nom'].'</h2><div class="entry"><form method="post" action=""><label for="sources">Source: </label><select size="1" id="sources" name="sources">';

		$reponse = $bdd->query('SELECT * FROM youbiweb_prog_sources WHERE langId="'.$langId.'" ORDER BY nom ASC');

		while ($donnees = $reponse->fetch())
				echo '<option value="'.$donnees['sourceId'].'" '.(($donnees['sourceId'] == $sourceId) ? 'selected="selected"' : '').'>'.$donnees['nom'].'</option>';
				
		echo '</select> <input value="Afficher" name="submit" type="button" onclick="affChg(\'code\'); affPage(\'prog.php?langId='.$langId.'&amp;sourceId=\'+document.getElementById(\'sources\').value);" /></form></div>'."\n";
	
		if (!empty($sourceId))
			affSource();
		else
		{
			echo '    <div id="code">'."\n ".'    <p><img alt="" src="https://lh6.googleusercontent.com/-MQ5XTW6gOrg/TvfSPdb1pCI/AAAAAAAAEVc/sq2yuSPv7yg/s498/3042_render_Leg_renderv3.jpg" wifth="498" height="425" /></p>'."\n";
			affTChg('prog');
			echo '    </div>'."\n";
		}
	}
?>