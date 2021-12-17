<?php
get_header();

/*
  Template Name: Cours
*/
?>

  <div class="container my-5 border-start border-end">
      <?php
      $page_id = get_the_ID();
      $page = get_post($page_id);
      $page_slug = $page->post_name;
      $the_query = new WP_Query(array(
        'post_type' => "cours",
        'posts_per_page' => -1
      ));

      echo '<div class="row mb-5">';
        echo '<h2 class="text-center text-white">'. get_the_title($page_id).'</h2>';
      echo '</div>';

      while ($the_query->have_posts()) : $the_query->the_post();
        $categories = get_the_category(get_the_ID());
        foreach ($categories as $category) :
          $post_category_slug = $category->slug;
          if ($post_category_slug == $page_slug) :

            # Récupération du prix du cours par sa meta-box
            $meta_box_price = get_post_meta(get_the_ID(), 'price', true);
            $price = number_format($meta_box_price, 0, ",", " ")." XPF";

            # Récupération du nombres de places du cours par sa meta-box
            $meta_box_places = get_post_meta(get_the_ID(), 'places', true);
            $places = $meta_box_places." places";

            ?>
            <div class="row my-5">
              <h3 class="my-0 text-white text-center"><?php the_title(); ?></h3>
            </div>
            <div class="row mx-0">
              <div class="col-5">
                <div class="lesson-image">
                  <?php
                  if (has_post_thumbnail())
                    the_post_thumbnail('post-thumbnail', ['class' => 'w-100 h-100']);
                  else
                    echo '<img class="w-100 h-100" src="https://via.placeholder.com/310x200.png?text=Image not found">';
                  ?>
                </div>
              </div>
              <div class="col-7 text-white">
                <?php
                the_content();
                echo '<p>Prix : '.$price.'</p>';
                echo ($meta_box_places) ? '<p>Total de places : '.$places.'</p>' : '';
                echo '<a href="#" class="btn btn-primary">Réserver votre place</a>';
                ?>
              </div>
            </div>
            <?php
          endif;
        endforeach;
      endwhile;
      wp_reset_postdata();
      ?>
  </div>

  </div>

<?php get_footer(); ?>