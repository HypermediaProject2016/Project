$(document).bind("mobileinit", function () { 
	'use strict';
	$.support.cors = true; 
	$.mobile.allowCrossDomainPages = true;
});

$(function(){
	'use strict';
    $('#incl_header').load('intestazione.html #divmenu');
    $('#incl_footer').load('footer.html #footer');
});