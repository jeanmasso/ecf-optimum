jQuery(document).ready(function($) {

  /* Initialition de la barre de navigation */
  $(".site__header .navbar .nav-item a").addClass("nav-link");
  $(".site__header .navbar .dropdown > .nav-link").attr({
    role: "button",
    "data-bs-toggle":"dropdown",
    "aria-expanded": false
  }).addClass("dropdown-toggle");
  $(".site__header .navbar .dropdown > .sub-menu").addClass("dropdown-menu");

});
