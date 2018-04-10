//the part of Ajax sending about data
$(function () {
	$('form').on('submit', function (e) {
		//prevent the web to refresh, missing the data you key in
		e.preventDefault();
		$.ajax({
			//POST is safer than GET
			type: 'post',
			url: 'connect.php',
			//Ajax get the value by id not name
			//use the form id get input's data
			data: $('#send').serialize(),
			success: function () {
				alert('Form was submitted!\n');
			}
		});
	});
	
});




/*this way will go to the another page XXX.php
	function submit(){
	food = document.getElementsByName("food")[0].value;
	window.alert(food);
	window.location.href = "connect.php?food=" + food;
}*/