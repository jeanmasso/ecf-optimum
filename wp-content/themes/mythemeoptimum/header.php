<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
  <meta charset="<?php bloginfo('charset'); ?>">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

  <?php wp_head(); ?>
</head>

<?php
$custom_logo_id = get_theme_mod( 'custom_logo' );
$logo = wp_get_attachment_image_src( $custom_logo_id , 'full' );
?>

<body <?php body_class( 'site' ); ?>>

<header class="site__header">
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
      <a class="navbar-brand" href="<?php echo home_url( '/' ); ?>">
        <img src="<?php echo esc_url( $logo[0]); ?>" alt="<?php echo get_bloginfo( 'name' ); ?>">
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <?php wp_nav_menu(
          array(
            'theme_location' => 'main',
            'container' => 'ul', // afin d'éviter d'avoir une div autour
            'menu_class' => 'navbar-nav ms-auto', // ma classe personnalisée
          )
        ); ?>
      </div>
    </div>
  </nav>
</header>

<?php wp_body_open(); ?>