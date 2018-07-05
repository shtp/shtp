var mymap = L.map('map').setView([10.828576, 106.796674], 13);

  L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw', {
    maxZoom: 18,
    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, ' +
      '<a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, ' +
      'Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
    id: 'mapbox.streets'
  }).addTo(mymap);
  
  var countriesLayer = L.geoJson(maps).addTo(mymap);
  mymap.fitBounds(countriesLayer.getBounds());
  var info = L.geoJson(maps, {
   style: function (feature) {
       return {weight: 2,
        opacity: 1,
        color: 'white'};
   },
   onEachFeature: function (feature, layer) {
       layer.bindPopup(feature.properties.TenCty)
   }
}).addTo(mymap);