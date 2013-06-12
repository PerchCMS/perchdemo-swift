jQuery( document ).ready( function( $ ) {

	// Add active slideshow stuff
	$(".slideshow").addClass("active-slideshow");
	$(".slide h3").wrapInner('<a class="slide-link" href="#">');
	$(".slide:nth-of-type(1)").addClass("selected");
	$(".slide:nth-of-type(1)").parent().parent().toggleClass("slide-one-selected");
	$(".slide:nth-of-type(2)").addClass("not-selected");
	$(".slide:nth-of-type(3)").addClass("not-selected");

	// On click, switch slide
	$(".slide-link").click(function() {
		$(".selected").toggleClass("selected").toggleClass("not-selected");
		$(this).parent().parent().toggleClass("selected").toggleClass("not-selected");
	});

	$(".active-slideshow .slide-one .slide-link").click(function() {
		$(this).parent().parent().parent().parent().removeClass("slide-two-selected").removeClass("slide-three-selected").toggleClass("slide-one-selected");
	});

	$(".active-slideshow .slide-two .slide-link").click(function() {
		$(this).parent().parent().parent().parent().removeClass("slide-one-selected").removeClass("slide-three-selected").toggleClass("slide-two-selected");
	});

	$(".active-slideshow .slide-three .slide-link").click(function() {
		$(this).parent().parent().parent().parent().removeClass("slide-one-selected").removeClass("slide-two-selected").toggleClass("slide-three-selected");
	});

} );