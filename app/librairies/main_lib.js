
//********************
//**     Main       **
//********************  
function dTemps(page)
{
    document.getElementById("jsChg_" + page).innerHTML = (temps() - tDebut) / 1000;
}
function temps()
{
    return ((new Date()).getTime());
}
function affChg(id)
{
    document.getElementById(id).style.display = 'block';
    document.getElementById(id).innerHTML = '<br /><img src="themes/' + theme + '/chargement.gif" />';
}
function chgTheme(theme)
{
    document.getElementById('stylepage').href = 'themes/' + theme + '/style.css';

    initMenu(theme);

    var today = new Date(), expires = new Date();
    expires.setTime(today.getTime() + (365 * 24 * 60 * 60 * 1000));
    document.cookie = 'theme' + "=" + encodeURIComponent(theme) + ";expires=" + expires.toGMTString();
}
function affPage(lien)
{
    scrollTo(0, 0);

    tDebut = temps();

    if ((window.ActiveXObject) || (navigator.appName == "Microsoft Internet Explorer")) // Internet Explorer 
    {
        document.getElementById('content').innerHTML = "<div class=\"caution\">A quoi sert Internet Explorer ?<br /><br />A télécharger Google Chrome. </div><br /><img alt=\"Mugiwaras\" src=\"https://lh4.googleusercontent.com/-WTD-qxBdiEA/TvfeJ9p9zvI/AAAAAAAAEWk/7sexMCNPQRA/s300/mugiwara_embleme_v3.png\" />";
        return;
    }
    else if (window.XMLHttpRequest)
        var http = new XMLHttpRequest();
    else
    {
        document.getElementById('content').innerHTML = "<div class=\"caution\"><br />Votre navigateur ne supporte pas les requêtes serveur!</div>";
        return;
    }

    http.open('GET', lien, false);
    http.send(null);

    if (http.readyState == 4)
    {
        var e = document.getElementById('content');
        e.innerHTML = "\n" + http.responseText + "\n   ";
        var scripts = e.getElementsByTagName('script');

        for (var i = 0; i < scripts.length; i++)
            window.eval(scripts[i].text);
    }
}
function envForm(lien, params)
{
    tDebut = temps();
    var http = new XMLHttpRequest();

    http.open("POST", lien, true);

    http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    http.setRequestHeader("Content-length", params.length);
    http.setRequestHeader("Connection", "close");

    http.onreadystatechange = function() {
        if (http.readyState == 4 && http.status == 200)
        {
            var e = document.getElementById('content');
            e.innerHTML = http.responseText;
            var scripts = e.getElementsByTagName('script');

            for (var i = 0; i < scripts.length; i++)
                window.eval(scripts[i].text);
        }
    }
    http.send(params);
}
function initMenu(nom)
{
    //Définition du theme en variable globale
    theme = nom;

    //Chargement d'une image pour le menu dynamique
    i1 = new Image;
    i1.src = 'themes/' + theme + '/mini-navig2.gif';
}
function cacheMenu(nom)
{
    document.getElementById('sousMenu' + nom).style.display = 'none';
}
//Gestion du menu dynamique
function menu(nom)
{
    if (document.getElementById('sousMenu' + nom).style.display == 'none')
    {
        document.getElementById('sousMenu' + nom).style.display = 'block';
        document.getElementById('menu' + nom).className = 'deplie';
    }

    else
    {
        document.getElementById('sousMenu' + nom).style.display = 'none';
        document.getElementById('menu' + nom).className = 'plie';
    }
}

//********************
//**     Admin      **
//********************                        	
function majAlbum()
{
    var catId = document.getElementById('catId_majAlbum').value;

    if (catId == 0)
    {
        var scatId = 0;
        var albumId = 0;
    }
    else
    {
        var scatId = document.getElementById('scatId_majAlbum').value;
        if (scatId == 0)
            var albumId = 0;
        else
            var albumId = document.getElementById('albumId_majAlbum').value;
    }

    envForm('admin.php', 'action=majAlbum&catId=' + catId + '&scatId=' + scatId + '&albumId=' + albumId);
}
function ajAlbum()
{
    var catId = document.getElementById('catId_ajAlbum').value;
    var scatId = document.getElementById('scatId_ajAlbum').value;
    var nom = document.getElementById('nom_ajAlbum').value;
    var commentaire = document.getElementById('comm_ajAlbum').value;
    var rss = document.getElementById('rss_ajAlbum').value;

    envForm('admin.php', 'action=ajAlbum&catId=' + catId + '&scatId=' + scatId + '&nom=' + nom + '&commentaire=' + commentaire + '&rss=' + rss);
}
function modAlbum()
{
    var catId = document.getElementById('catId_modAlbum').value;
    var scatId = document.getElementById('scatId_modAlbum').value;
    var albumId = document.getElementById('albumId_modAlbum').value;
    var nom = document.getElementById('nom_modAlbum').value;
    var commentaire = document.getElementById('comm_modAlbum').value;
    var rss = document.getElementById('rss_modAlbum').value;

    envForm('admin.php', 'action=modAlbum&catId=' + catId + '&scatId=' + scatId + '&albumId=' + albumId + '&nom=' + nom + '&commentaire=' + commentaire + '&rss=' + rss);
}
function ajLang()
{
    var nom = document.getElementById('nom_ajLang').value;
    var ident = document.getElementById('ident_ajLang').value;

    envForm('admin.php', 'action=ajLang&nom=' + nom + '&ident=' + ident);
}
function ajSource()
{
    var langId = document.getElementById('langId_ajSource').value;
    var nom = document.getElementById('nom_ajSource').value;
    var commentaire = document.getElementById('comm_ajSource').value;
    var source = document.getElementById('source_ajSource').value;

    envForm('admin.php', 'action=ajSource&langId=' + langId + '&nom=' + nom + '&commentaire=' + commentaire + '&source=' + source);
}
function ajArtiste()
{
    var nom = document.getElementById('nom_ajArtiste').value;
    var article = document.getElementById('article_ajArtiste').value;

    envForm('admin.php', 'action=ajArtiste&nom=' + nom + '&article=' + article);
}
function modArtiste()
{
    var id = document.getElementById('id_modArtiste').value;
    var nom = document.getElementById('nom_modArtiste').value;
    var article = document.getElementById('article_modArtiste').value;

    envForm('admin.php', 'action=modArtiste&id=' + id + '&nom=' + nom + '&article=' + article);
}
function chgAlbum(nom, type, type2)
{
    var catId = document.getElementById('catId_' + nom).value, i;

    if (type == 'scat')
    {
        document.getElementById('scatId_' + nom).innerHTML = '';

        if (catId != 0)
        {
            if (nom == 'majAlbum')
                document.getElementById('scatId_' + nom).options[document.getElementById('scatId_' + nom).options.length] = new Option('Tout', 0);

            for (i = 1; i < album_structure[catId].length; i++)
                document.getElementById('scatId_' + nom).options[document.getElementById('scatId_' + nom).options.length] = new Option(album_structure[catId][i]['nom'], i);

            if (nom == 'ajAlbum')
                document.getElementById('scatId_' + nom).options[document.getElementById('scatId_' + nom).options.length] = new Option('Nouvelle', 0);
        }
    }

    if (type2 == 'albums')
    {
        document.getElementById('albumId_' + nom).innerHTML = '';

        if ((document.getElementById('scatId_' + nom).value) && (document.getElementById('scatId_' + nom).value != 0))
        {
            var scatId = document.getElementById('scatId_' + nom).value;

            if (nom == 'majAlbum')
                document.getElementById('albumId_' + nom).options[document.getElementById('albumId_' + nom).options.length] = new Option('Tout', 0);

            for (i = 1; i < album_structure[catId][scatId].length; i++)
                document.getElementById('albumId_' + nom).options[document.getElementById('albumId_' + nom).options.length] = new Option(album_structure[catId][scatId][i]['nom'], i);

            if (nom == 'modAlbum')
                affModAlbum();
        }
    }
}
function affModAlbum()
{
    var catId = document.getElementById('catId_modAlbum').value;
    var scatId = document.getElementById('scatId_modAlbum').value;
    var albumId = document.getElementById('albumId_modAlbum').value;

    document.getElementById('nom_modAlbum').value = album_structure[catId][scatId][albumId]['nom'];
    document.getElementById('comm_modAlbum').value = album_structure[catId][scatId][albumId]['comm'];
    document.getElementById('rss_modAlbum').value = album_structure[catId][scatId][albumId]['rss'];
}
function affModArtiste()
{
    var id = document.getElementById('id_modArtiste').value;

    document.getElementById('nom_modArtiste').value = musique_artistes[id]['nom'];
    document.getElementById('article_modArtiste').value = musique_artistes[id]['article'];
}
function affModArtisteId()
{
    for (i = (musique_artistes.length - 1); i > 0; i--)
        document.getElementById('id_modArtiste').options[document.getElementById('id_modArtiste').options.length] = new Option(musique_artistes[i]['nom'], i);
}
//********************
//**    Albums      **
//********************  
function chgMins(albumId, action)
{
    if (action == 'prec')
    {
        var nPage = document.getElementById('n_' + albumId).innerHTML;
        document.getElementById('p_' + albumId + '_' + nPage).style.display = 'none';

        if (document.getElementById('n_' + albumId).innerHTML > 1)
            nPage--;
        else
            nPage = document.getElementById('nb_' + albumId).innerHTML;

        document.getElementById('p_' + albumId + '_' + nPage).style.display = 'block';
        document.getElementById('n_' + albumId).innerHTML = nPage;
    }

    else if (action == 'suiv')
    {
        var nPage = document.getElementById('n_' + albumId).innerHTML;
        document.getElementById('p_' + albumId + '_' + nPage).style.display = 'none';

        if (document.getElementById('n_' + albumId).innerHTML != document.getElementById('nb_' + albumId).innerHTML)
            nPage++;
        else
            nPage = 1;

        document.getElementById('p_' + albumId + '_' + nPage).style.display = 'block';
        document.getElementById('n_' + albumId).innerHTML = nPage;
    }
}
function chgPhoto(action)
{
    if (action == 'prec')
    {
        if (photos['n'] > 1)
            photos['n'] = photos['n'] - 1;
        else
            photos['n'] = photos['nMax'];
    }

    else if (action == 'suiv')
    {
        if (photos['n'] < photos['nMax'])
            photos['n'] = photos['n'] + 1;
        else
            photos['n'] = 1;
    }

    document.getElementById('photo').style.display = 'none';
    document.getElementById('n').innerHTML = photos['n'];
    document.getElementById('commentaire').innerHTML = photos[photos['n'] + '_c'];
    document.getElementById('photo').src = photos[photos['n']];
    document.getElementById('chargement').style.display = 'block';
    document.getElementById('photo').width = photos[photos['n'] + '_l'];
    document.getElementById('photo').height = photos[photos['n'] + '_h'];
}
function affPhoto()
{
    if (document.getElementById('photos').style.display != 'block')
        document.getElementById('photos').style.display = 'block';

    if (document.getElementById('chargement').style.display != 'none')
        document.getElementById('chargement').style.display = 'none';

    if (document.getElementById('photo').style.display != 'block')
        document.getElementById('photo').style.display = 'block';
}