$("#srch").click(function(){
  value = $('#search').val();
  $.ajax({
        type: 'post', 
        url: 'search',
        data: {val:value}
      });
 
});
var map = L.map('map',{zoomControl: false}).setView([15.51976,73.76650],15);
L.tileLayer('http://otile1.mqcdn.com/tiles/1.0.0/osm/{z}/{x}/{y}.png', {attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>' }).addTo(map);
