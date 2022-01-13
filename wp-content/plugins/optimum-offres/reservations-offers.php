<?php
/*
Plugin Name: Optimumn Plugin Offres
Description: Ceci est une extension dédiée au site optimum.nc pour la gestion des offres du site optimum.nc
Author: Jean Masso
Version: 1.0.0
*/

function offres_init()
{
  // CPT Cours
  $labels = array(
    'name' => 'Offres',
    'all_items' => 'Toutes les offres',
    'singular_name' => 'Offre',
    'add_new_item' => 'Ajouter une offre',
    'menu_name' => 'Offres',
    'view_item' => 'voir'
  );

  $args = array(
    'labels' => $labels,
    'public' => true,
    'show_in_rest' => true,
    'has_archive' => true,
    'rewrite' => array("slug" => "offres"),
    'supports' => array('title', 'editor', 'thumbnail'),
    'menu_position' => 5,
    'menu_icon' => 'dashicons-clipboard',
    'taxonomies' => array('category'),
  );

  register_post_type('offres', $args);
}

add_action('init', 'offres_init');

// Add event post type to home and main query
function add_offres_post_type($query)
{
  if (is_home() && $query->is_main_query()) {
    $query->set('post_type', array('post', 'offres'));
    return $query;
  }
}

add_action('pre_get_posts', 'add_offres_post_type');

// Ajout d'une meta box de prix
function add_price_offers_meta_box()
{
  function price_offers($post)
  {
    $price = get_post_meta($post->ID, 'price', true);

    if (empty($price))
      $price = null;

    echo '<input type="number" name="price" value="' . $price . '" />';
  }

  add_meta_box('price_meta_boxes', 'Prix', 'price_offers', 'offres', 'side', 'default');
}

add_action('add_meta_boxes', 'add_price_offers_meta_box');

// Short code pour afficher la meta box de définition de prix
function show_price_offers()
{
  ob_start();
  $price = get_post_meta(get_the_ID(), 'price', true);
  echo "<date>$price</date>";
  return ob_get_clean();
}

add_shortcode('show_price_offers', 'show_price');

// Update meta on event post save
function plugin_post_offers_save_meta($post_id)
{
  if (isset($_POST['price']) && $_POST['price'] !== "") {
    update_post_meta($post_id, 'price', $_POST['price']);
  }
}

add_action('save_post', 'plugin_post_offers_save_meta');


// Création de la table "reservations_offers" dans la base de données
function reservations_offers_database()
{
  global $wpdb;

  $table_name = $wpdb->prefix . 'reservations_offers';
  $charset_collate = $wpdb->get_charset_collate();

  $sql = "CREATE TABLE IF NOT EXISTS $table_name (
    id mediumint(9) NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(55) NOT NULL,
    last_name VARCHAR(55) NOT NULL,
    mail VARCHAR(55) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    offer_id INT(9) NOT NULL,
    PRIMARY KEY (id)
  ) $charset_collate;";

  require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
  dbDelta($sql);
  add_option('contact_db_version', '1.0');
}

register_activation_hook(__FILE__, 'reservations_offers_database');

// Étape 2: Insertion dans la base de données
/*function insert_reservation_offer()
{
  global $wpdb;

  $table_name = $wpdb->prefix . 'reservations_offers';

  $wpdb->insert(
    $table_name, array(
      'first_name' => 'John',
      'last_name' => 'Doe',
      'mail' => 'john.doe@mail.com',
      'phone' => '43.05.50',
      'offer_id' => 43,
    )
  );
}

register_activation_hook(__FILE__, 'insert_reservation_offer');*/

// Étape 3: Ajouter le plugin  à l'admin
function add_plugin_reservation_offer_to_admin()
{
  function reservation_offer_content()
  {
    echo '<h1>Souscrption aux offres</h1>';
    echo '<div style="margin-left: 20px;">';

    if (class_exists('WP_List_Table')) {
      require_once(ABSPATH . 'wp-admin/includes/class-wp-list-table.php');
      require_once(plugin_dir_path(__FILE__) . 'reservations-offers-list-table.php');
      $contactListTable = new ReservationListTable();
      $contactListTable->prepare_items();
      $contactListTable->display();
    } else {
      echo "WP_List_Table n'est pas disponible.";
    }

    echo "</div>";
  }

  add_menu_page('Souscriptions', 'Souscriptions (Offres)', 'manage_options', 'reservations-offers-plugin', 'reservation_offer_content');

  function reservation_offer_form() {
    global $wpdb;
    $table_name = $wpdb->prefix . 'posts';
    $offers = $wpdb->get_results("SELECT * FROM $table_name WHERE post_type = 'offres'", ARRAY_A);

    if (isset($_REQUEST['id'])) {
      $table_name = $wpdb->prefix . 'reservations_offers';
      $offer = $wpdb->get_row($wpdb->prepare("SELECT * FROM $table_name WHERE id = %d", $_REQUEST['id']));
    }

    echo '<h1>'.((isset($offer)) ? 'Modifier': 'Ajouter').' une réservation</h1>';
    echo '<form method="POST">';
      echo '<input type="text" name="first_name" placeholder="Prénom" '.((isset($offer)) ? 'value="'.$offer->first_name.'"': '').' required/>';
      echo '<input type="text" name="last_name" placeholder="Nom de famille" '.((isset($offer)) ? 'value="'.$offer->last_name.'"': '').' required/>';
      echo '<input type="email" name="mail" placeholder="Mail" '.((isset($offer)) ? 'value="'.$offer->mail.'"': '').' required/>';
      echo '<input type="tel" name="phone" placeholder="N° de téléphone" '.((isset($offer)) ? 'value="'.$offer->phone.'"': '').' required/>';
      echo '<select name="offer_id">';
        foreach ($offers as $e) {
          echo '<option value="'.$e['ID'].'" '. ((isset($offer) && $offer->offer_id == $e['ID']) ? 'selected': '') .'>'.$e['post_title'].'</option>';
        }
      echo'</select>';
      echo '<button type="submit" name="souscription">Souscrire</button>';
    echo '</form>';

   if (isset($_POST['souscription'])) {
     $table_name = $wpdb->prefix . 'reservations_offers';
     $first_name = sanitize_text_field($_POST['first_name']);
     $last_name = sanitize_text_field($_POST['last_name']);
     $mail = sanitize_email($_POST['mail']);
     $phone = sanitize_text_field($_POST['phone']);
     $offer_id = $_POST['offer_id'];

     if (!empty($first_name) && !empty($last_name) && !empty($phone)  && !empty($mail) && !empty($offer_id)) {

       if (isset($offer)) {
         $wpdb->update(
           $table_name, array(
             'first_name' => $first_name,
             'last_name' => $last_name,
             'mail' => $mail,
             'phone' => $phone,
             'offer_id' => $offer_id,
           ),
           array('id'=>$offer->id)
         );
       } else {
         $wpdb->insert(
           $table_name, array(
             'first_name' => $first_name,
             'last_name' => $last_name,
             'mail' => $mail,
             'phone' => $phone,
             'offer_id' => $offer_id
           )
         );
       }

       echo '<h4>Votre réservation a bien été enregistré.</h4>';
     }

   }

  }

  add_submenu_page('reservations-offers-plugin', 'Souscription', 'Ajouter', 'edit_posts', 'edit-reservation-offer', 'reservation_offer_form');

}

add_action('admin_menu', 'add_plugin_reservation_offer_to_admin');

// Étape 4:
function show_reservation_offer_form()
{
  ob_start();
  global $wpdb;
  $table_name = $wpdb->prefix . 'posts';
  $offers = $wpdb->get_results("SELECT *  FROM $table_name WHERE post_type = 'offres';", ARRAY_A);

  if (isset($_POST['souscription'])) {
    $first_name = sanitize_text_field($_POST['first_name']);
    $last_name = sanitize_text_field($_POST['last_name']);
    $mail = sanitize_email($_POST['mail']);
    $phone = sanitize_text_field($_POST['phone']);
    $offer_id = $_POST['offer_id'];

    if (!empty($first_name) && !empty($last_name) && !empty($mail) && !empty($phone) && !empty($offer_id)) {
      $table_name = $wpdb->prefix . 'reservations_offers';
      $wpdb->insert(
        $table_name, array(
          'first_name' => $first_name,
          'last_name' => $last_name,
          'mail' => $mail,
          'phone' => $phone,
          'offer_id' => $offer_id
        )
      );
      echo '<h4>Votre réservation a bien été enregistré.</h4>';
    }
  }

  echo '<fieldset class="border rounded px-2 px-md-4 py-3">';
    echo '<h3 class="text-white text-center mb-3">Souscrivez un abonnement</h3>';
    echo '<form method="POST">';
      echo '<div class="row mx-0 g-3">';
        echo '<div class="col-12">';
          echo '<input type="text" name="first_name" class="form-control" placeholder="Prénom" required/>';
        echo '</div>';
        echo '<div class="col-12">';
          echo '<input type="text" name="last_name" class="form-control" placeholder="Nom de famille" required/>';
        echo '</div>';
        echo '<div class="col-12">';
              echo '<input type="email" name="mail" class="form-control" placeholder="Mail" required/>';
        echo '</div>';
        echo '<div class="col-12">';
              echo '<input type="tel" name="phone" class="form-control" placeholder="N° de téléphone" required/>';
        echo '</div>';
        echo '<div class="col-12">';
          echo '<select name="offer_id" class="form-select">';
            foreach ($offers as $e) {
              echo '<option value="'.$e['ID'].'">'.$e['post_title'].'</option>';
            }
          echo'</select>';
        echo '</div>';
        echo '<div class="col-12">';
              echo '<button type="submit" name="souscription" class="btn btn-primary w-100">Souscrire</button>';
        echo '</div>';
      echo '</div>';
    echo '</form>';
  echo '</fieldset>';

  return ob_get_clean();
}

add_shortcode('show_reservation_offer_form', 'show_reservation_offer_form');

/*function show_offers()
{
  ob_start();
  global $wpdb;
  $page = get_post(get_the_ID());
  $posts_name = $wpdb->prefix . 'posts';
  $terms_name = $wpdb->prefix . 'terms';
  $terms_relationships_name = $wpdb->prefix . 'term_relationships';
  $terms_taxonomy_name = $wpdb->prefix . 'term_taxonomy';

  $sql = "SELECT * FROM $posts_name
  INNER JOIN $terms_relationships_name ON $terms_relationships_name.object_id = $posts_name.ID
  INNER JOIN $terms_taxonomy_name ON $terms_relationships_name.term_taxonomy_id = $terms_taxonomy_name.term_taxonomy_id
  INNER JOIN $terms_name ON $terms_taxonomy_name.term_taxonomy_id = $terms_name.term_id
  WHERE post_type = 'offres'
  ;";

  $offers = $wpdb->get_results($sql, ARRAY_A);

  echo '<div class="container">';
  echo '<div class="row g-3 justify-content-center">';
  foreach ($offers as $offer):
    $post = get_post($offer['ID']);
    echo '<div class="col-8">';
      echo '<div class="card my-3">';
        echo '<div class="card-img">'.get_the_post_thumbnail($post->ID).'</div>';
        echo '<div class="card-body">';
          echo '<h5 class="card-title">' . $post->post_title . '</h5>';
          echo '<p class="card-text">';
            echo '<small class="text-muted">Publié le '.$post->post_date .' par ' . $post->post_author . '</small>';
          echo '</p>';
          echo '<p class="card-text">' . $post->post_content . '</p>';
          echo '<a href="' . $post->guid . '" class="btn btn-primary">Lire la suite</a>';
        echo '</div>';
      echo '</div>';
    echo '</div>';

  endforeach;

  echo '</div>';
  echo '</div>';

  return ob_get_clean();
}

add_shortcode('show_offers', 'show_offers');*/