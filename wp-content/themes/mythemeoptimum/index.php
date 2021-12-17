<?php get_header(); ?>

  <!-- Bannière d'accueil -->
  <div class="banner-content row position-relative d-flex align-items-center justify-content-center">
    <div class="content-image col-12 col-xxl-10 p-0">
      <img class="w-100 h-100" src="<?php bloginfo('template_url'); ?>/images/banner-1.png">
    </div>
    <div class="position-absolute w-50 text-center text-white">
      <h1>Bienvenu sur Optimum.nc</h1>
      <h4>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad asperiores deleniti, ea eos et id illo iste laborum minus nulla odio praesentium quam ratione sed sunt tempora tenetur vel, vitae.</h4>
    </div>
  </div>

  <!-- Présentations des types de cours -->
  <div class="lessons-banner my-5">
    <div class="row">
      <div class="col-12">
        <h2 class="text-center text-white mb-4">Nos cours</h2>
        <div class="row">
          <div class="col-4">
            <div class="card m-auto">
              <div class="card-body text-center">
                <i class="fas fa-user fa-5x"></i>
                <h5 class="card-title my-3">Cours particuliers</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary">En savoir plus</a>
              </div>
            </div>
          </div>
          <div class="col-4">
            <div class="card m-auto">
              <div class="card-body text-center">
                <i class="fas fa-users fa-5x"></i>
                <h5 class="card-title my-3">Cours collectifs</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary">En savoir plus</a>
              </div>
            </div>
          </div>
          <div class="col-4">
            <div class="card m-auto">
              <div class="card-body text-center">
                <i class="fas fa-heartbeat fa-5x"></i>
                <h5 class="card-title my-3">Séances</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary">En savoir plus</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

<hr class="container text-white">

  <div class="others-banner my-5">
    <div class="row d-flex align-items-center">
      <div class="col-6">
        <h2 class="text-center text-white mb-4">Consultez nos offres</h2>
      </div>
      <div class="col-6">
        <h2 class="text-center text-white mb-4">Des questions ? Contactez-nous</h2>
      </div>
    </div>
    <div class="row">
      <div class="col-6">
        <div class="card m-auto">
          <div class="card-body text-center">
            <i class="fas fa-dumbbell fa-5x"></i>
            <h5 class="card-title my-3">Nos offres</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary">Voir les offres</a>
          </div>
        </div>
      </div>
      <div class="col-6">
        <div class="card m-auto">
          <div class="card-body text-center">
            <i class="fas fa-envelope fa-5x"></i>
            <h5 class="card-title my-3">Prise de contact</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary">Prendre contact</a>
          </div>
        </div>
      </div>
    </div>
  </div>

<?php get_footer(); ?>