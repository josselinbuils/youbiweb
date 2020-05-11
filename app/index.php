<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <title>Youbiweb</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <script type="text/javascript">tDebut = ((new Date()).getTime());</script>
  <link rel="shortcut icon" type="image/x-icon" href="/images/favicon.ico" />
  <?php include 'librairies/main_lib.php'; include 'librairies/index_lib.php'; chrgTheme(); ?>
  <script type="text/javascript" src="librairies/main_lib.js"></script>
 </head>
 <body onload="dTemps('index'); affChg('content'); affPage('accueil.php');">
  <div id="header"><div id="headerimg"><h1><a href="http://www.youbiweb.fr/">Youbiweb</a></h1></div></div>
  <div id="body">
   <div id="menu">
    <h2>Navigation</h2>
    <ul class="menu-list">
     <li class="plie"><a title="Accueil" href="javascript:{ affChg('content'); affPage('accueil.php'); }">Accueil</a></li>
     <li id="menuCaraudio" class="plie"><a title="Caraudio" href="javascript:menu('Caraudio');">Caraudio</a></li>
     <li class="sousmenu-list" id="sousMenuCaraudio">
		  <ul>
<?php affCaraudio(); ?>
      </ul>
		 </li>
     <li id="menuHifi" class="plie"><a title="Hifi" href="javascript:menu('Hifi');">Hifi</a></li>
     <li class="sousmenu-list" id="sousMenuHifi">
		  <ul>
		   <li><a title="Mon Installation" href="javascript:{ affChg('content'); affPage('albums.php?catId=2&amp;scatId=1'); }">Mon Installation</a></li>
		  </ul>
		 </li>
		 <li id="menuMusique" class="plie"><a title="Musique" href="javascript:menu('Musique');">Musique</a></li>
     <li class="sousmenu-list" id="sousMenuMusique">
		  <ul>
		   <li><a title="Vrac" href="javascript:{ affChg('content'); affPage('artistes.php'); }">Artistes</a></li>
      </ul>
     </li>
		 <li id="menuProgrammation" class="plie"><a title="Forum" href="javascript:{ menu('Programmation') }">Programmation</a></li>
     <li class="sousmenu-list" id="sousMenuProgrammation">
		  <ul>
<?php affProgrammation(); ?>
      </ul>
     </li>
     <li><select id="themeForm" onChange="chgTheme(document.getElementById('themeForm').value.toLowerCase());" name="themes" size="1"><?php formThemes(); ?></select></li>
    </ul>
    <ul class="sponsorlinks">
     <li><a href="http://www.graphiques-kits.com" target="_blank">Graphiques-kits.com</a></li>
     <li><a href="http://www.gtamp.fr" target="_blank">Gtamp.fr</a></li>
    </ul>
<?php initMenu(); ?>
   </div>
   <div id="content">
    <noscript><div class="caution"><br />Vous devez activer Javascript pour naviguer sur ce site web!</div></noscript>
   </div>
   <hr class="hidden" />
  </div>
  <div id="copyright">
   <div class="copyalignleft"><a href="javascript:void(0);">Youbiweb</a> (<a href="javascript:void(0);" title="Ceci est le temps de création de la page côté serveur."><?php echo dTemps(0); ?>s</a> / <a href="javascript:void(0);" title="Ceci est le temps de chargement de la page côté client."><span id="jsChg_index"></span>s</a>) ¦ Tous droits réservés ¦ Design par <a href="http://www.gtamp.fr">S.Bader</a></div>
   <div class="copyalignright"><a href="javascript:void(0);">A propos</a> ¦ <a href="javascript:void(0);">Contact</a> ¦ <a href="javascript:{ affChg('content'); affPage('admin.php'); }">Admin</a></div>
  </div>
 </body>
</html>
