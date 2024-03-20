
<!-- Start Top Menu Scoral Disable -->

window.onscroll = function() {scrollFunction()};
function scrollFunction() {
  if (document.body.scrollTop > 10 || document.documentElement.scrollTop > 10) {
    document.getElementById("top-header").style.position = "fixed";
    document.getElementById("top-header").style.margin = "-40px 0px 0px 0px";
	    document.getElementById("page").style.margin = "120px 0px 0px 0px";


  } else {
      document.getElementById("top-header").style.position = "fixed";
    document.getElementById("top-header").style.margin = "0px 0px 0px 0px";
		    document.getElementById("page").style.margin = "122px 0px 0px 0px";

}
}

<!-- End Top Menu Scoral Disable -->





<!-- Sart Right Click Disable -->

$(document).ready(function () {
    //Disable full page
    $('body').bind('cut copy paste', function (e) {
        e.preventDefault();
    });
    
    //Disable part of page
    $('#id').bind('cut copy paste', function (e) {
        e.preventDefault();
    });
});

<!-- End Right Click Disable -->