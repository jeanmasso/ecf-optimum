<?php wp_footer();

$custom_logo_id = get_theme_mod( 'custom_logo' );
$logo = wp_get_attachment_image_src( $custom_logo_id , 'full' );
?>

<!-- FOOTER -->
<footer class="bg-light">
  <div class="container py-3">
    <div class="row mx-0">
      <div class="col-4">
        <h4>Optimum</h4>
        <ul class="ps-4">
          <li><a class="link" href="#">Accueil</a></li>
          <li>
            <a class="link" href="#">Les cours</a>
          </li>
          <li><a class="link" href="#">Les offres</a></li>
          <li><a class="link" href="#">Réservations</a></li>
          <li><a class="link" href="#">Contact</a></li>
        </ul>
      </div>
      <div class="col-4">
        <h4>Conditions</h4>
        <ul class="ps-4">
          <li><a class="link" href="#">Mentions légales</a></li>
          <li><a class="link" href="#">Protection des données</a></li>
        </ul>
      </div>
      <div class="col-4">
        <h4 class="d-flex justify-content-end">Nous suivre</h4>
        <!--<a class="navbar-brand" href="<?php /*echo home_url( '/' ); */?>">
          <img src="<?php /*echo esc_url( $logo[0]); */?>" alt="<?php /*echo get_bloginfo( 'name' ); */?>">
        </a>-->
        <div class="social-network-container d-flex justify-content-end">
          <ul class="list-group list-group-horizontal">
            <li class="list-group-item">
              <a href="#" class="link"><i class="fab fa-facebook-square"></i></a>
            </li>
            <li class="list-group-item">
              <a href="#" class="link"><i class="fab fa-instagram-square"></i></a>
            </li>
            <li class="list-group-item pe-0">
              <a href="#" class="link"><i class="fab fa-twitter-square"></i></a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</footer>

</body>
</html>