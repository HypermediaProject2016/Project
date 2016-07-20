function getBrowserWidth(){
		'use strict';
		if (window.innerWidth){
			return window.innerWidth;}	
		else if (document.documentElement && document.documentElement.clientWidth !== 0){
			return document.documentElement.clientWidth;	}
		else if (document.body){return document.body.clientWidth;}		
			return 0;
	}

function dynamicLayout(){
	'use strict';
	var browserWidth = getBrowserWidth();

	//Load Thin CSS Rules
	if (browserWidth < 1025){
		changeLayout("css2");
	}
	if (browserWidth >= 1025){
		changeLayout("default");
	}
}

function changeLayout(description){
	'use strict';
   	var i, a;
   	for(i=0; (a = document.getElementsByTagName("link")[i]); i++){
	   if(a.getAttribute("title") === description){a.disabled = false;}
	   else if(a.getAttribute("title") !== "default"){a.disabled = true;}
   }
}

	function addEvent( obj, type, fn ){ 
		'use strict';
	   if (obj.addEventListener){ 
	      obj.addEventListener( type, fn, false );
	   }
	   else if (obj.attachEvent){ 
	      obj["e"+type+fn] = fn; 
	      obj[type+fn] = function(){ obj["e"+type+fn]( window.event ); } 
	      obj.attachEvent( "on"+type, obj[type+fn] ); 
	   } 
	} 
	
	//Run dynamicLayout function when page loads and when it resizes.
	addEvent(window, 'load', dynamicLayout);
	addEvent(window, 'resize', dynamicLayout);
	
	


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