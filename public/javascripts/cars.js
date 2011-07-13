(function() {
   jQuery(document).ready(function($) {
       var url = "http://localhost:3002/cars/index?callback=?";
       $.getJSON(jsonp, function(data) {
           $('#widget').html("This data comes from another server: " + data.html);
       });
   });
})();
