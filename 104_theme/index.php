 <!--MILIEU DU SITE : Dans ce fichier ne figure que le corps de notre thème (il est la pierre angulaire du header et du footer)-->
<?php get_header(); ?><!--balise nécessaire (relative à wordpress) afin d'appeler le header (se trouve dans un fichier séparé "header.php")-->

<?php $services = get_field('cards');?> <!--Récupère les valeurs de champs (services : cartes) du module ACF-->

   <main>
       <!--section cartes services avec bouton rdv-->
       <section class="cards-services" id="services">
           <div class="parent-card">
                <div class="container-card">
                    <div class="contenu-card active" id="next2" ><!--carte 1-->
                        <img class="img-service" src="<?php bloginfo('template_directory');?>/assets/img/imageservice1.png" alt="image solidarité">
                        <div>
                            <h3 class="titre-card"><?php echo $services['titre-carte1'];?></h3>
                            <P class="texte-card"><?php echo $services['description-carte1'];?></P>
                        </div>

                        <img class="suivant" data-id="next" src="<?php bloginfo('template_directory');?>/assets/img/arrow.svg" alt="flèche">
                    </div>

                    <div class="contenu-card" id="next"><!--carte 2-->
                        <img class="img-service" src="<?php bloginfo('template_directory');?>/assets/img/imageservice2.png" alt="image solidarité">
                        <div>
                            <h3 class="titre-card">Réparer autrement</h3>
                            <P class="texte-card">Depuis 1982, notre espace de cesse
                                d'évoluer afin de faciliter la transition écologique.
                                Rejoignez notre aventure :-)
                            </P>
                        </div>

                        <img class="suivant" data-id="next1" src="<?php bloginfo('template_directory');?>/assets/img/arrow.svg" alt="flèche">
                    </div>

                    <div class="contenu-card" id="next1"><!--carte 3-->
                        <img class="img-service" src="<?php bloginfo('template_directory');?>/assets/img/imageservice3.png" alt="image libre accès">
                        <div>
                            <h3 class="titre-card">Libre accès</h3>
                            <P class="texte-card">La communication étant primordiale,
                                venez échanger autour d'un café
                                bio-équitable
                            </P>
                        </div>

                        <img class="suivant" data-id="next2" src="<?php bloginfo('template_directory');?>/assets/img/arrow.svg" alt="flèche">
                    </div>
                </div>
           </div>

           <div class="bouton-rdv">               
               <a href="https://adelineb.promo-91.codeur.online/le104/reservation/#reserv"><p class="rectangle-blanc">prendre rdv</p></a>
           </div>
       </section>

<!--Partie des 3 tarifs (abonnement, cours, intervention à domicile)-->
       <section class="tarifs" id="tarifs-cartes">
           <div class="container-tarifs">
                <div class="carte-tarif">
                    <h4 class="titre-tarifs">abonnement solidaire</h4>
                    <p class="texte-tarifs">Une formule simple : basée sur une cotisation annuelle, profitez des
                        moyens humains et matériaux du gare
                    </p>
                    <a class="bouton-tarifs" href="#">25 € / an</a>
                </div>

                <div class="carte-tarif">
                    <h4 class="titre-tarifs">cours des parfaits mécanicien.ne.s</h4>
                    <p class="texte-tarifs">Vous apprenez les grands principes de la mécanique et
                        réparations essentielles. Du pur DIY qui vous perfectionne
                    </p>
                    <a class="bouton-tarifs" href="#">15 € / heure</a>
                </div>

                <div class="carte-tarif">
                    <h4 class="titre-tarifs">intervention à domicile</h4>
                    <p class="texte-tarifs">Bénéficiez de nos services directement chez vous,
                        surtout en cas d'urgence
                    </p>
                    <a class="bouton-tarifs" href="#">25 € / heure</a>
                </div>
           </div>

           <div class="bouton-rdv">               
               <a href="#"><p class="rectangle-blanc">En savoir +</p></a>
           </div>
       </section>

    <!--Partie des starters (carte boissons et grignotage)-->
        <section class="starters" id="carte-dips">
            <img id="encadrement" src="<?php bloginfo('template_directory');?>/assets/img/encadrement-fuel.svg" alt="Encadré décoratif fuel">
            <div class="titre-pompe">
                <h5>prenez du fuel, en attendant...</h5>
                <img id="fuel" src="<?php bloginfo('template_directory');?>/assets/img/fuel.svg" alt="pompe fuel">   
            </div>

            <div class="starters-detail">
                <div class="col-detail">
                    <img class="picto" src="<?php bloginfo('template_directory');?>/assets/img/pictobatterie.svg" alt="picto batterie">
                    <ul class="items-menu">
                        <li>cupcake lavande............2 €</li>
                        <li>cookie beurre de
                            cacahuète.......................3 €</li>
                        <li>sandwich américain......5 €</li>
                        <li>club sandwich...............4 €</li>
                        <li>burger vegan.................8 €</li>
                        <li>tacos...............................5 €</li>
                        <li>bagel...............................7 €</li>
                    </ul>   
                </div>

                <div class="col-detail">
                    <img class="picto" id="oil" src="<?php bloginfo('template_directory');?>/assets/img/pictohuile.svg" alt="picto huile">
                    <ul class="items-menu">
                        <li>café................................2 €</li>
                        <li>milkshake.....................3 €</li>
                        <li>limonade.......................2 €</li>
                        <li>bubble tea....................5 €</li>
                        <li>chocolat chaud...........3 €</li>
                        <li>chai latte.....................4 €</li>
                        <li>matcha..........................6 €</li>
                    </ul>   
                </div>
            </div>
        </section>

    <!--Partie contact-->

        <section class="contact" id="contactez-nous">
            <div class="coordonnees">
                <!--Affiche le formulaire du plugin grâce au shortcode créé-->
                <?php echo do_shortcode("[104_contact_form]"); ?>
                <p>104 avenue de stalingrad, 21000 Dijon
                    +33 86 86 86 86
                </p>
            </div>

            <img src="<?php bloginfo('template_directory');?>/assets/img/illuscar.svg" alt="">
        </section>
      
   </main>

   <?php get_footer(); ?><!--idem pour cette balise mais appelle le footer ("footer.php")-->
  
