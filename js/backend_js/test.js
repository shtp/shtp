 var map = L.map('map').setView([10.849850, 106.799784], 13);

        	 L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: 'NQ &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'}).addTo(map);

       var c2= new L.geoJson(creek, {
            style: function (feature) {
                return feature.properties && feature.properties.style;
            }
        }).addTo(map);
       map.fitBounds(c2.getBounds());

 // var map = L.map('map').setView([10.849850, 106.799784], 13);
	
	// L.marker([10.849850, 106.799784]).addTo(map);

	// 	 L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
 //    attribution: 'NQ &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'}).addTo(map);