$(document).ready(function() {
	$(window).scroll(function () {
		if ($(this).scrollTop() > 50) {
			$('.h-cart').addClass('cartTop');
			$('.regblock').css('margin-right','130px');
			$('#top #logo').removeClass('hidden');
			$('#top').css('padding-bottom','0');
		}
		else {
			$('.h-cart').removeClass('cartTop');
			$('.regblock').css('margin-right','inherit');
			$('#top #logo').addClass('hidden');
			$('#top').css('padding-bottom','14px');
		}
	});

});