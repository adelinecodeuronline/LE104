<?php 
/* Chargement feuilles de style*/
function le104_enqueue_assets() {
  
    /*css principal*/
    wp_enqueue_style( 'le104_main-css' , get_template_directory_uri() ); // Un des hooks de wordpress
  
    /* css*/
    wp_enqueue_style( 'style_mobile' , get_template_directory_uri() . '/style-mobile.css' );
    wp_enqueue_style( 'style_web' , get_template_directory_uri() . '/style.css' );
    wp_enqueue_style( 'style_template' , get_template_directory_uri() . '/style-template.css' );
    
    
  }
  add_action( 'wp_enqueue_scripts' , 'le104_enqueue_assets' );// permet d'éxécuter la fonction
  

//Chargement script
function addjs() {
    wp_enqueue_style( 'le104_main-js' , get_template_directory_uri() ); //nom de "clef" + hook
    wp_enqueue_script('script_le104', get_template_directory_uri() . '/assets/js/script.js');
    //wp_enqueue_script('script_virtua');
}
add_action( 'wp_enqueue_scripts' , 'addjs' );

//Chargement des fichiers SVG (sinon rejet de wordpress pour des raisons de sécurité)
function cc_mime_types($mimes) {
  $mimes['svg'] = 'image/svg+xml';
  return $mimes;
}
add_filter('upload_mimes', 'cc_mime_types');


//Chargement menu

/*function wpb_custom_principal_menu() {
  register_nav_menu('my-menu',__( 'principal virtua' ));
}
add_action( 'init', 'wpb_custom_principal_menu' );*/