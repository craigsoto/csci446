//Validates the form. If the feeling field is blank, display on alert.
//Always returns false to prevent the form from posting to the server.
function validate() {
	if(document.getElementById('feeling').value == '') {
		alert('Surley you feel something!');
	}
	return false;
}