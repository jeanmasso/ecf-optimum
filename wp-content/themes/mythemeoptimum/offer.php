<?php
get_header();

/*
  Template Name: Offres
*/
?>

<div class="container my-5 border-start border-end">
  <?php
  $page_id = get_the_ID();
  $page = get_post($page_id);
  $page_slug = $page->post_name;
  $the_query = new WP_Query(array(
    'post_type' => "offres",
    'posts_per_page' => -1
  ));

  echo '<div class="row">';
  echo '<h2 class="text-center text-white">'. get_the_title($page_id).'</h2>';
  echo '</div>';

  echo '<div class="row my-5 d-flex justify-content-center">';
  while ($the_query->have_posts()) : $the_query->the_post();
    $meta_box_price = get_post_meta(get_the_ID(), 'price', true);
    $price = number_format($meta_box_price, 0, ",", " ")." XPF";
  ?>
    <div class="col-4">
      <div class="card text-center">
        <div class="card-header">
          <h4 class=""><?php the_title(); ?></h4>
        </div>
        <div class="card-body">
          <h5 class="card-title"><?php echo $price; ?></h5>
          <p class="card-text"><?php the_content(); ?></p>
        </div>
      </div>
    </div>
  <?php
  endwhile;
  echo '</div>';

  echo '<div class="row d-flex justify-content-center">';
    echo '<div class="col-6">';
      echo do_shortcode('[show_reservation_offer_form][/show_reservation_offer_form]');
    echo '</div>';
  echo '</div>';

  wp_reset_postdata();
  ?>
</div>

<?php get_footer(); ?>