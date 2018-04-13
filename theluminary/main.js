$(function() {

	
	$('.burger').on('click', function(){
		$('ul.menu').toggleClass('open');
		$('html').toggleClass('overflow');
	});


	$('ul.menu li a').on('click', function(){
		$('ul.menu').removeClass('open');
		$('html').toggleClass('overflow');
	});


});