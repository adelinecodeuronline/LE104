<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>Le 104 | garage solidaire | self repair & café</title>
<!--Les polices peuvent être importées ici-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Georama:wght@200;300;400;500;600&display=swap" rel="stylesheet"> 

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet"> 

<?php wp_head() ?><!--balise nécessaire appartenant à wordpress, à ne pas confondre avec celui de "get_header" de l'index -->
</head><!--Le head reste classique mais attention, c'est dans le fichier functions.php que l'on appelle scripts et feuilles de style-->

<body><!--on ouvre la balise du body ici (celle fermante et dans le footer.php)-->

<header class="effect"><!--Début Header HAUT DU SITE-->
    <div class="nav">
        <ul>
            <li><a href="#services">nos services</a></li>
            <li><a href="#tarifs-cartes">formules</a></li>
            <li><a href="#carte-dips">cartes starter</a></li>
            <li><a href="#contactez-nous">contact</a></li>
        </ul> 

        <img id="burger" src="<?php bloginfo('template_directory');?>/assets/img/burger.svg" alt="burger menu"><!--la balise php bloginfo permet à wordpress de trouver le chemin des images-->
    </div>

    <div class="logo-baselines"><!--zone logo + titre et baseline--> 
        <img id="logo-header" src="<?php bloginfo('template_directory');?>/assets/img/logo-le104.svg" alt="logo le 104">
        <div class="titres">
            <h1>garage concept</h1>
            <h2>self repair | cours | café | garage nomade</h2>
        </div>
    </div>    
</header><!--Fin Header-->

