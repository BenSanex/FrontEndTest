$(document).ready(function(){
	$('#popup input').keyup(function(){
		console.log('event triggered')
		if ( $('#input input').val().match(/^[0123456789]{5}$/) ) {
			$('#input').removeClass('has-error').addClass('has-success');
		} else {
			$('#input').removeClass('has-success').addClass('has-error');
		};
	})
	$('#close').on('click',function(){
		$('#popup').fadeOut(200,function() {
			$(this).remove();
		});
	});
	$('form').on('submit', function(event){
		event.preventDefault()
		var data = $(this).serialize()
		$.ajax({
			method:'POST',
			url:'leads',
			data: data
		})
		.done(function(){
			$('#popup').fadeOut(200,function() {
				$(this).remove();
				alert('Submitted successfully')
			});
		});
	});
});