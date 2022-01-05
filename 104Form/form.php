<?php
/*
Plugin Name: Formulaire 104
Plugin URI: adelineb.promo-91.codeur.online/le104
Description: Formulaire de contact [ATTENTION, NE PAS DESACTIVER]
Version: 1.0
Author: ACS Auxerre
Author URI: adelineb.promo-91.codeur.online/le104
*/

// IL faut absolument inclure la feuille shortcodes wordpress afin de pouvoir en générer un
require_once( ABSPATH . '/wp-includes/shortcodes.php' );

//Récupère la feuille de style associée au formulaire
function style_form_104() {
    wp_enqueue_style( 'style_form_VR' , '/wp-content/plugins/104Form/form.css' );
}
add_action( 'wp_enqueue_scripts' , 'style_form_104' );

//Crée le formulaire de contact

function html_form_code() {
    echo '<form action="' . $_SERVER['REQUEST_URI'] . '" method="post">';
    echo '<label>';
    echo 'Nom';
    echo '</label>';
    echo '<input type="text" name="cf-name" pattern="[a-zA-Z0-9 ]+" value="' . ( isset( $_POST["cf-name"] ) ? esc_attr( $_POST["cf-name"] ) : '' ) . '">';
    echo '<label>';
    echo 'Email';
    echo '</label>';
    echo '<input type="email" name="cf-email" value="' . ( isset( $_POST["cf-email"] ) ? esc_attr( $_POST["cf-email"] ) : '' ) . '">';
    echo '<label>';
    echo 'Message';
    echo '</label>';
    echo '<textarea rows="10" cols="35" name="cf-message">' . ( isset( $_POST["cf-message"] ) ? esc_attr( $_POST["cf-message"] ) : '' ) . '</textarea>';
    echo '<input type="submit" name="cf-submitted" value="envoyer" id="button-submit">';
    echo '</form>';
    
    echo '<div id="snackbar">';
    echo '<p>Votre message a bien été envoyé</p>';
    echo '</div>';
}

  
    //Vérification pour envoi
    function deliver_mail() {

        //Si le bouton de submit est cliqué, envoie l'email
        if ( isset( $_POST['cf-submitted']) && !empty( $_POST["cf-name"]) && !empty($_POST["cf-message"]) && !empty($_POST["cf-name"]) && !empty($_POST["cf-email"])) {

            //Dispose les valeurs
            
            $name    = sanitize_text_field( $_POST["cf-name"] );
            $email   = sanitize_email( $_POST["cf-email"] );
            $message = esc_textarea( $_POST["cf-message"] );
            $subject = 'Message provenant du site';

           
    
            //Récupère l'adresse e-mail de l'administrateur du site/blog
            $to = get_option( 'admin_email' );
            
    
            $headers = "De: $name <$email>" . "\r\n";
    
            // Si l'email suit tout le processus d'envoi, on obtient un message de succès.
            if (wp_mail( $to, $subject, $message, $headers ) ) { ///(mail($to, $subject, $message, $headers) en local/ou en dehors du contexte wordpress)
                echo '<script>
                window.onload = function () {
                    let toast = document.querySelector("#snackbar").style.display = "block";
                }
                    location.href = "https://adelineb.promo-91.codeur.online/le104/#contactez-nous";
                    function removeToast() {
                        let toast = document.querySelector("#snackbar").style.display = "none";
                       }
                       setTimeout(removeToast, 2000);                                                         
                </script>';
            } 

             
        } else {
            '<script>
            window.onload = function () {
                let toast = document.querySelector("#snackbar").style.display = "block";
                let pToast = document.querySelector("#snackbar p");
            }
                location.href = "https://adelineb.promo-91.codeur.online/le104/#contactez-nous";
                toast.style.backgroundColor = "red";
                pToast.innerText = "Une erreur est survenue";
                function removeToast() {
                    let toast = document.querySelector("#snackbar").style.display = "none";
                   }
                   setTimeout(removeToast, 2000);                                                         
            </script>';
        }
    }


    //Crée le shortcode [104_contact_form]
    function cf_shortcode() {
        ob_start(); //Démarre la mémoire tampon
        deliver_mail();
        html_form_code();
       
        return ob_get_clean();//Efface la mémoire tampon
    }
    add_shortcode( '104_contact_form', 'cf_shortcode' );

?>