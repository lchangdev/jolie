$(document).ready(function(){
  $("#menu-toggle").click(function(e) {
    e.preventDefault();
    $("#wrapper").toggleClass("toggled");
  });

  $(".navbar-link").on('click', function(e){
    e.preventDefault();
  });

  // buttons'
  $('.wholesale-btn').mouseenter(function(){
    $(this).fadeTo('slow', 1);
  });

  $('.wholesale-btn').mouseleave(function(){
    $(this).fadeTo('slow', 0.5);
  });

  smoothScroll.init({
      speed: 500, // Integer. How fast to complete the scroll in milliseconds
      easing: 'Linear', // Easing pattern to use
      updateURL: true, // Boolean. Whether or not to update the URL with the anchor hash on scroll
      offset: 0, // Integer. How far to offset the scrolling anchor location in pixels
      callbackBefore: function ( toggle, anchor ) {}, // Function to run before scrolling
      callbackAfter: function ( toggle, anchor ) {} // Function to run after scrolling
  });
})
