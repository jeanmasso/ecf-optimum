<?php
/*
Plugin Name: Optimum Plugin Cours
Description: Ceci est une extension dédiée au site optimum.nc pour la gestion des cours
Author: Jean Masso
Version: 1.0.0
*/

function cours_init()
{
  // CPT Cours
  $labels = array(
    'name' => 'Cours',
    'all_items' => 'Tous les cours',
    'singular_name' => 'Cours',
    'add_new_item' => 'Ajouter un cours',
    'menu_name' => 'Cours'
  );

  $args = array(
    'labels' => $labels,
    'public' => true,
    'show_in_rest' => true,
    'has_archive' => true,
    'rewrite' => array("slug" => "cours"),
    'supports' => array('title', 'editor', 'thumbnail'),
    'menu_position' => 5,
    'menu_icon' => 'dashicons-clipboard',
    'taxonomies' => array('category'),
  );

  register_post_type('cours', $args);
}

add_action('init', 'cours_init');

// Add event post type to home and main query
function add_cours_post_type($query)
{
  if (is_home() && $query->is_main_query()) {
    $query->set('post_type', array('post', 'cours'));
    return $query;
  }
}

add_action('pre_get_posts', 'add_cours_post_type');

// Ajout d'une meta box de prix
function add_price_lessons_meta_box()
{
  function price_lessons($post)
  {
    $price = get_post_meta($post->ID, 'price', true);

    if (empty($price))
      $price = null;

    echo '<input type="number" name="price" value="' . $price . '" />';
  }

  add_meta_box('price_meta_boxes', 'Prix', 'price_lessons', 'cours', 'side', 'default');
}

add_action('add_meta_boxes', 'add_price_lessons_meta_box');

// Short code pour afficher la meta box de définition de prix
function show_price_lessons()
{
  ob_start();
  $price = get_post_meta(get_the_ID(), 'price', true);
  echo "<date>$price</date>";
  return ob_get_clean();
}

add_shortcode('show_price_lessons', 'show_price_lessons');

// Ajout d'une meta box de places
function add_places_meta_box()
{
  function places($post)
  {
    $places = get_post_meta($post->ID, 'places', true);

    if (empty($places))
      $places = null;

    echo '<input type="number" name="places" value="' . $places . '" />';
  }

  add_meta_box('places_meta_boxes', 'Places', 'places', 'cours', 'side', 'default');
}

add_action('add_meta_boxes', 'add_places_meta_box');

// Short code pour afficher la meta box de définition du nombre de places
function show_places()
{
  ob_start();
  $places = get_post_meta(get_the_ID(), 'places', true);
  echo "<span>$places</span>";
  return ob_get_clean();
}

add_shortcode('show_places', 'show_places');

// Update meta on event post save
function plugin_post_lessons_save_meta($post_id)
{
  if (isset($_POST['price']) && $_POST['price'] !== "") {
    update_post_meta($post_id, 'price', $_POST['price']);
  }

  if (isset($_POST['places']) && $_POST['places'] !== "") {
    update_post_meta($post_id, 'places', $_POST['places']);
  }
}

add_action('save_post', 'plugin_post_lessons_save_meta');

// Création de la table "reservations_cours" dans la base de données
function reservations_lessons_database()
{
  global $wpdb;

  $table_name = $wpdb->prefix . 'reservations_lessons';
  $charset_collate = $wpdb->get_charset_collate();

  $sql = "CREATE TABLE IF NOT EXISTS $table_name (
    id mediumint(9) NOT NULL AUTO_INCREMENT,
    name VARCHAR(55) NOT NULL,
    mail VARCHAR(155) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    lesson_id INT (9) NOT NULL,
    PRIMARY KEY (id)
  ) $charset_collate;";

  require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
  dbDelta($sql);
  add_option('contact_db_version', '1.0');
}

register_activation_hook(__FILE__, 'reservations_lessons_database');


// Étape 2: Insertion dans la base de données
/*function insert_reservation_lesson()
{
  global $wpdb;

  $table_name = $wpdb->prefix . 'reservations_lessons';

  $wpdb->insert(
    $table_name, array(
      'name' => 'Joe Doe',
      'mail' => 'joe.doe@mail.com',
      'phone' => '43.05.50',
      'lesson_id' => 30,
    )
  );
}*/

register_activation_hook(__FILE__, 'insert_reservation_lesson');

// Étape 3: Ajouter le plugin  à l'admin
function add_plugin_reservation_lesson_to_admin()
{
  function reservation_lesson_content()
  {
    echo '<h1>Réservation de cours</h1>';
    echo '<div style="margin-left: 20px;">';

    if (class_exists('WP_List_Table')) {
      require_once(ABSPATH . 'wp-admin/includes/class-wp-list-table.php');
      require_once(plugin_dir_path(__FILE__) . 'reservations-lessons-list-table.php');
      $reservationLessonListTable = new ReservationListTable();
      $reservationLessonListTable->prepare_items();
      $reservationLessonListTable->display();
    } else {
      echo "WP_List_Table n'est pas disponible.";
    }

    echo "</div>";
  }

  add_menu_page('Réservation', 'Reservations (Cours)', 'manage_options', 'reservations-lessons-plugin', 'reservation_lesson_content');

  function reservation_lesson_form() {
    global $wpdb;
    $table_name = $wpdb->prefix . 'posts';
    $lessons = $wpdb->get_results("SELECT * FROM $table_name WHERE post_type = 'cours'", ARRAY_A);

    if (isset($_REQUEST['id'])) {
      $table_name = $wpdb->prefix . 'reservations_lessons';
      $lesson = $wpdb->get_row($wpdb->prepare("SELECT * FROM $table_name WHERE id = %d", $_REQUEST['id']));
    }

    echo '<h1>'.((isset($lesson)) ? "Modifier": "Ajouter").' une réservation de cours</h1>';
    echo '<form method="POST">';
      echo '<input type="text" name="fullname" placeholder="Nom" '.((isset($lesson)) ? 'value="'.$lesson->name.'"': '').' required/>';
      echo '<input type="mail" name="mail" placeholder="Email" '.((isset($lesson)) ? 'value="'.$lesson->mail.'"': '').' required/>';
      echo '<input type="tel" name="phone" placeholder="N° de téléphone" '.((isset($lesson)) ? 'value="'.$lesson->phone.'"': '').' required/>';
      echo '<select name="lesson_id">';
        foreach ($lessons as $e) {
          echo '<option value="'.$e['ID'].'" '. ((isset($lesson) && $lesson->lesson_id == $e['ID']) ? 'selected': '') .'>'.$e['post_title'].'</option>';
        }
      echo'</select>';
      echo '<input type="submit" name="reservation" value="Réserver"/>';
    echo '</form>';

   if (isset($_POST['reservation'])) {
     $table_name = $wpdb->prefix . 'reservations_lessons';
     $name = sanitize_text_field($_POST['fullname']);
     $mail = sanitize_text_field($_POST['mail']);
     $phone = sanitize_text_field($_POST['phone']);
     $lesson_id = $_POST['lesson_id'];

     if (!empty($name) && !empty($mail) && !empty($phone) && !empty($lesson_id)) {

       if (isset($lesson)) {
         $wpdb->update(
           $table_name, array(
             'name' => $name,
             'mail' => $mail,
             'phone' => $phone,
             'lesson_id' => $lesson_id,
           ),
           array('id'=>$lesson->id)
         );
       } else {
         $wpdb->insert(
           $table_name, array(
             'name' => $name,
             'mail' => $mail,
             'phone' => $phone,
             'lesson_id' => $lesson_id,
           )
         );
       }

       echo '<h4>Votre réservation a bien été enregistré.</h4>';
     }

   }

  }

  add_submenu_page('reservations-lessons-plugin', 'Réservation de cours', 'Ajouter', 'edit_posts', 'edit-reservation-lesson', 'reservation_lesson_form');

}

add_action('admin_menu', 'add_plugin_reservation_lesson_to_admin');

// Étape 4:
function show_reservation_lesson_form()
{
  ob_start();
  global $wpdb;
  $table_name = $wpdb->prefix . 'posts';
  $lessons = $wpdb->get_results("SELECT *  FROM $table_name WHERE post_type = 'cours';", ARRAY_A);

  if (isset($_POST['reservation'])) {
    $name = sanitize_text_field($_POST['fullname']);
    $mail = sanitize_email($_POST['mail']);
    $phone = sanitize_text_field($_POST['phone']);
    $lesson_id = $_POST['lesson_id'];

    if (!empty($name) && !empty($mail) && !empty($phone) && !empty($lesson_id)) {
      $table_name = $wpdb->prefix . 'reservations_lessons';
      $wpdb->insert(
        $table_name, array(
          'name' => $name,
          'mail' => $mail,
          'phone' => $phone,
          'lesson_id' => $lesson_id,
        )
      );
      echo '<h4>Votre réservation a bien été enregistré.</h4>';
    }
  }

  # Id du cours envoyé en paramètre dans l'url
  $lesson_param = $_GET["lessonId"];

  echo '<fieldset class="border rounded px-4 py-3">';
    echo '<h3 class="text-white text-center mb-3">Réservez votre place à un cours</h3>';
    echo '<form method="POST">';
      echo '<div class="row mx-0 g-3">';
        echo '<div class="col-12">';
          echo '<input type="text" name="fullname" class="form-control" placeholder="Nom" required/>';
        echo '</div>';
        echo '<div class="col-12">';
          echo '<input type="email" name="mail" class="form-control" placeholder="Email" required/>';
        echo '</div>';
        echo '<div class="col-12">';
          echo '<input type="tel" name="phone" class="form-control" placeholder="N° de téléphone" required/>';
        echo '</div>';
        echo '<div class="col-12">';
          echo '<select name="lesson_id" class="form-select">';
            foreach ($lessons as $e) {
              echo '<option value="'.$e['ID'].'"'.(($lesson_param != $e['ID'])?null:' selected').'>'.$e['post_title'].'</option>';
            }
          echo'</select>';
        echo '</div>';
        echo '<div class="col-12">';
          echo '<button type="submit" name="reservation" class="btn btn-primary w-100">Réserver</button>';
        echo '</div>';
      echo '</div>';
    echo '</form>';
  echo '</fieldset>';

  return ob_get_clean();
}

add_shortcode('show_reservation_lesson_form', 'show_reservation_lesson_form');

/*function show_lessons()
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
  WHERE post_type = 'cours'
  ;";

  $lessons = $wpdb->get_results($sql, ARRAY_A);

  echo '<div class="container">';
    echo '<div class="row g-3 justify-content-center">';

    foreach ($lessons as $lesson):
      if ($lesson['slug'] == $page->post_name):
        $post = get_post($lesson['ID']);
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
      endif;

    endforeach;

    echo '</div>';
  echo '</div>';

  return ob_get_clean();
}

add_shortcode('show_lessons', 'show_lessons')*/;
