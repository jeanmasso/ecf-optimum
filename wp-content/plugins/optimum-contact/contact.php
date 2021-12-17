<?php
/*
Plugin Name: Optimum Plugin Contact
Description: Ceci est une extension dédiée au site optimum.nc pour la gestion des prises de contact à travers ce site
Author: Jean Masso
Version: 1.0.0
*/

function contact_database() {
  global $wpdb;

  $table_name = $wpdb->prefix . 'contacts';
  $charset_collate = $wpdb->get_charset_collate();

  $sql = "CREATE TABLE IF NOT EXISTS $table_name (
    id mediumint(9) NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(55) NOT NULL,
    last_name VARCHAR(55) NOT NULL,
    mail VARCHAR(55) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    message TEXT NOT NULL,
    PRIMARY KEY (id)
  ) $charset_collate;";

  require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
  dbDelta($sql);
  add_option('contact_db_version', '1.0');
}

register_activation_hook(__FILE__, 'contact_database');

//Test de données pour insertion dans la table "Contact"
/*function insert_contact() {
  global $wpdb;
  $table_name = $wpdb->prefix . 'contacts';

  $wpdb->insert(
    $table_name, array(
      'first_name' => 'John',
      'last_name' => 'Doe',
      'mail' => 'johndoe@mail.com',
      'phone' => '43.05.50',
      'message' => 'Re-bonjour',
    )
  );
}

register_activation_hook(__FILE__,'insert_contact');*/

// Étape 3: Ajouter le plugin  à l'admin
function add_plugin_to_admin() {
  function contact_content() {
    echo '<h1>Contacts</h1>';
    echo '<div style="margin-left: 20px;">';

    if (class_exists('WP_List_Table')) {
      require_once(ABSPATH . 'wp-admin/includes/class-wp-list-table.php');
      require_once(plugin_dir_path(__FILE__) . 'contact-list-table.php');
      $contactListTable = new ContactListTable();
      $contactListTable->prepare_items();
      $contactListTable->display();
    } else {
      echo "WP_List_Table n'est pas disponible.";
    }

    echo "</div>";
  }

  add_menu_page('Contacts', 'Contacts', 'manage_options', 'contact-plugin', 'contact_content');
}

add_action('admin_menu', 'add_plugin_to_admin');

// Étape 4:
function show_contact_form() {
  ob_start();

  if (isset($_POST['contact'])) {
    $first_name = sanitize_text_field($_POST['first_name']);
    $last_name = sanitize_text_field($_POST['last_name']);
    $mail = sanitize_text_field($_POST['mail']);
    $phone = sanitize_text_field($_POST['phone']);
    $message = esc_textarea($_POST['message']);

    if (!empty($first_name) && !empty($last_name) && !empty($mail) && !empty($phone) && !empty($message)) {
      global $wpdb;
      $table_name = $wpdb->prefix . 'contacts';
      $wpdb->insert(
        $table_name, array(
          'first_name' => $first_name,
          'last_name' => $last_name,
          'mail' => $mail,
          'phone' => $phone,
          'message' => $message
        )
      );
      echo '<h3>Votre message a bien été enregistré.</h3>';
    }
  }

  echo '<fieldset class="border rounded px-4 py-3">
    <h3 class="text-white text-center mb-3">Contactez-nous</h3>
    <form method="POST">
      <div class="row mx-0 g-3">
        <input type="text" name="first_name" class="form-control col-12" placeholder="Prénom" required/>
        <input type="text" name="last_name" class="form-control col-12" placeholder="Nom de famille" required/>
        <input type="email" name="mail" class="form-control col-12" placeholder="Email" required/>
        <input type="tel" name="phone" class="form-control col-12" placeholder="N° de téléphone" required/>
        <textarea type="text" name="message" rows="5" class="form-control col-12" placeholder="Message" required></textarea>
        <input type="submit" name="contact" class="btn btn-primary col-12" value="Envoyer"/>
      </div>
    </form>
  </fieldset>';

  return ob_get_clean();
}

add_shortcode('show_contact_form', 'show_contact_form');