<?php
/*
Template Name: Le 104
Template Post Type: post, page
*/
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>Le 104 | Réservation</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet"> 

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Georama:wght@200;300;400;500;600&display=swap" rel="stylesheet"> 

    <?php wp_head() ?>
</head>

<header class="effect"><!--Début Header HAUT DU SITE-->
    <div class="nav">
        <ul>
            <li><a href="https://adelineb.promo-91.codeur.online/le104/#services">nos services</a></li>
            <li><a href="https://adelineb.promo-91.codeur.online/le104/#tarifs-cartes">formules</a></li>
            <li><a href="https://adelineb.promo-91.codeur.online/le104/#carte-dips">cartes starter</a></li>
            <li><a href="https://adelineb.promo-91.codeur.online/le104/#contactez-nous">contact</a></li>
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

<main id="reserv"><!--Insertion du shortcode relatif au plugin de calendrier-->
    
        <?php echo do_shortcode( '[wpbs id="1" title="yes" legend="yes" legend_position="side" display="1" year="0" month="0" language="auto" start="1" dropdown="yes" jump="no" history="1" tooltip="1" highlighttoday="no" weeknumbers="no" form_id="1" auto_pending="no" selection_type="multiple" selection_style="normal" minimum_days="0" maximum_days="0" booking_start_day="0" booking_end_day="0"]' ); ?>
    <div class="reservation"></div>
</main>

<?php get_footer(); ?>