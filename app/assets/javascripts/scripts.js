$(document).ready(function() {

	// Open navigation menu
		$('.header__burger').click(function() {
			if 
				($(this).hasClass("ion-navicon")) {
				$(this).removeClass('ion-navicon').addClass('ion-android-close').css('color', '#fff');
				$('body').addClass('disable-scroll');
			}
			else if
				($(this).hasClass("ion-android-close")) {
				$(this).removeClass('ion-android-close').addClass('ion-navicon').css('color', '#444');
				$('body').removeClass('disable-scroll');
			}
		});

	// Slider
		var slider = $('#owlSlider');

		slider.owlCarousel({
			margin: 0,
			loop: false,
			autoplay: false,
			nav: false,
			mouseDrag: false,
			dots: false,
			items: 1,

		});

	// Popular posts

		var owl = $('#owlPopularPosts');

		owl.owlCarousel({
			margin: 0,
			loop: true,
			autoplay: false,
			nav: false,
			mouseDrag: false,
			dots: false,
			responsive:{
				480:{
					items: 1
				},
				960:{
					items: 2
				},
				1280:{
					items: 3
				},
				1920:{
					items: 4
				}
			}

		});

		$('.popular-posts__button-next').click(function() {
			owl.trigger('next.owl.carousel');
		})

		$('.popular-posts__button-prev').click(function() {
			owl.trigger('prev.owl.carousel');
		})

});

//# sourceMappingURL=scripts.js.map
