<?php wp_footer();

$custom_logo_id = get_theme_mod( 'custom_logo' );
$logo = wp_get_attachment_image_src( $custom_logo_id , 'full' );
?>

<!-- FOOTER -->
<footer class="bg-light">
  <div class="container py-3">
    <div class="row mx-0 d-flex justify-content-center">
      <div class="col-4">
        <h4>A propos de Optimum</h4>
        <ul>
          <li><a class="link" href="#">Accueil</a></li>
          <li>
            <a class="link" href="#">Les cours</a>
            <ul>
              <li><a class="link" href="#">Cours particuliers</a></li>
              <li><a class="link" href="#">Cours collectifs</a></li>
              <li><a class="link" href="#">Séances</a></li>
            </ul>
          </li>
          <li><a class="link" href="#">Les offres</a></li>
          <li><a class="link" href="#">Réservations</a></li>
          <li><a class="link" href="#">Contact</a></li>
        </ul>
      </div>
      <div class="col-4">
        <h4>Conditions</h4>
        <ul>
          <li><a class="link" href="#">Mentions légales</a></li>
          <li><a class="link" href="#">Protection des données</a></li>
        </ul>
      </div>
      <div class="col-4">
        <h4>Nous suivre</h4>
        <a class="navbar-brand" href="<?php echo home_url( '/' ); ?>">
          <img src="<?php echo esc_url( $logo[0]); ?>" alt="<?php echo get_bloginfo( 'name' ); ?>">
        </a>
      </div>
    </div>
  </div>
</footer>

</body>
</html>