$(document).ready(function() {

	$('#responder').click(function(e) {
		
		$.ajax({
			url: '../control/answerQuestions.php',
			type: 'post',
			dataType: 'json',
			data: $('form').serialize(),
			beforeSend: function() {
				//$('.fa').css('display','inline');
			}
		})
		.done(function(r) {  //true
			var valid = r;
			if (valid == 0) {
				$.bootstrapGrowl('<i class="fa fa-spinner fa-spin fa-lg"></i> <strong> Redireccionando</strong>',{
					ele: 'body',
					type: 'success',
					width: 350,
					align: 'right',
					allow_dismiss: true,
					delay: 5000
				});
				setTimeout(function() {
					location = "../pages/recoverPw2.php";
			}, 5000);
			} else if (valid == 1) {
				$.bootstrapGrowl('<i class="fa fa-times fa-lg"></i> <strong> Respuestas incorrectas</strong>',{
					ele: 'body',
					type: 'warning',
					width: 350,
					align: 'right',
					allow_dismiss: true,
					delay: 10000
				});
			} else if (valid == 2) {
				$.bootstrapGrowl('<i class="fa fa-lock fa-lg"></i> <strong> Por seguridad se ha suspendido el usuario, pongase en contacto con el jefe del departamento</strong>',{
					ele: 'body',
					type: 'danger',
					width: 350,
					align: 'right',
					allow_dismiss: true,
					delay: 5000
				});
				setTimeout(function() {
					location = "../pages/sesion.php";
			}, 5000);
			}
		})
		
	})
})