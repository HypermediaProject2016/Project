$(document).bind("mobileinit", function () { 
	'use strict';
	$.support.cors = true; 
	$.mobile.allowCrossDomainPages = true;
});


$(document).ready(function() 
{
	"use strict";
	var QueryString = function () {
  	// This function is anonymous, is executed immediately and 
  	// the return value is assigned to QueryString!
 	var query_string = {};
  	var query = window.location.search.substring(1);
  var vars = query.split("&");
  for (var i=0;i<vars.length;i++) {
    var pair = vars[i].split("=");
        // If first entry with this name
    if (typeof query_string[pair[0]] === "undefined") {
      query_string[pair[0]] = decodeURIComponent(pair[1]);
        // If second entry with this name
    } else if (typeof query_string[pair[0]] === "string") {
      var arr = [ query_string[pair[0]],decodeURIComponent(pair[1]) ];
      query_string[pair[0]] = arr;
        // If third or later entry with this name
    } else {
      query_string[pair[0]].push(decodeURIComponent(pair[1]));
    }
  } 
  return query_string;
}();


$(document).ready(function () {
    $.ajax(
    {
      //imposto il tipo di invio dati (GET O POST)
      type: "GET",
	  dataType: "json",
      //Dove devo inviare i dati recuperati dal form?
      crossDomain: true,
	  cache: false,
	  url: "http://www.hypermediaproject2016.altervista.org/dbscript.php",
      //Quali dati devo inviare?
      data: "ID=" + QueryString.id,
      }).done(function(data) {
    	  $("#img").html(data.img);
	      $("#brand").html(data.brand);
	      $("#name").html(data.name);
	      $("#name2").html(data.name);
	      $("#tecnology").html(data.tecnology);
 	  	  $("#connection").html(data.connection);
	      $("#display").html(data.display);
	      $("#photocamera").html(data.photocamera);
	      $("#memory").html(data.memory);
          $("#processor").html(data.processor);
	      $("#sim").html(data.sim);
	  	  $("#prev").html(data.prev);
	  	  $("#next").html(data.next);
	      $("#price").html(data.price+" €");
	      $("#services").html(data.services);
	      $("#assistance").html(data.assistance);
	      $("#promotions").html(data.promotions);
	  })
	  .fail(function() {
      alert( "error" + QueryString.id );
 	  });
	});
});