<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>My First Leaflet Map</title>
	<script src="https://unpkg.com/leaflet@1.3.1/dist/leaflet.js"></script>
</head>
<body>
	Hello World!	
	<div id="button"><h3>On/Off
	</h3></div>
	<div id="map"></div>
	<script >
		 var map = L.map('map').setView([10.849850, 106.799784], 15);

                     L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: 'NQ &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'}).addTo(map);
               var c2= new L.geoJson(creek, {
                    style: function (feature) {
                        return feature.properties && feature.properties.style;
                    }
                }).addTo(map);
               map.fitBounds(c2.getBounds());
// 	
	</script>
</body>
</html>