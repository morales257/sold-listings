$(document).ready(function() {
L.mapbox.accessToken = 'pk.eyJ1IjoibW9yYWxlczI1NyIsImEiOiJjaWpybXdsMWMwY2tndG9tNXB5ajFhbjE3In0.whDnBZvQN5wQ5bwvtw2fBw';
var map;
map = L.mapbox.map('map', 'morales257.opbj9hf9').setView([43.654967,-79.392524], 15);
var myLayer = L.mapbox.featureLayer().addTo(map);



  $.ajax({
    dataType: 'text',
    url: '/properties.json',
    success: function(data) {
        var geojson;
        geojson = $.parseJSON(data);
        myLayer.setGeoJSON(geojson);
    }
   });  

});
