var _active_slide, _init_more_products, _init_slider;

_init_slider = function(carousel) {
  return $("#slider-nav a").bind("click", function() {
    var index;
    index = $(this).parent().find("a").index(this);
    carousel.scroll(index + 1);
    return false;
  });
};

_active_slide = function(carousel, item, idx, state) {
  var index;
  index = idx - 1;
  $("#slider-nav a").removeClass("active");
  return $("#slider-nav a").eq(index).addClass("active");
};

_init_more_products = function(carousel) {
  $(".more-nav .next").bind("click", function() {
    carousel.next();
    return false;
  });
  return $(".more-nav .prev").bind("click", function() {
    carousel.prev();
    return false;
  });
};



$(document).ready(function() {
  
  hideFlashMessages();
  

  $("#slider-holder ul").jcarousel({
    scroll: 1,
    auto: 6,
    wrap: "both",
    initCallback: _init_slider,
    itemFirstInCallback: _active_slide,
    buttonNextHTML: null,
    buttonPrevHTML: null
  });
  return $(".more-products-holder ul").jcarousel({
    scroll: 2,
    auto: 5,
    wrap: "both",
    initCallback: _init_more_products,
    buttonNextHTML: null,
    buttonPrevHTML: null
  });

 
 

});


function showFlashMessages() {
  $('.container').delay(800).animate({"top": "+=75px"}, 200);
}

function hideFlashMessages() {
  $('.container').delay(3000).animate({"top": "-=75px"}, 300);
  $('.container').fadeOut();
}

function clickHideFlashMessages() {
  $('.container').animate({"top": "-=75px"}, 300);
  $('.container').fadeOut();
}

