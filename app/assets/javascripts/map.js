$(document).ready(function() {

  var map = L.mapbox.map('map', 'jolieonline.jbjk2k3j', { zoomControl: false }).setView([34.035, -118.253], 15);

  map.scrollWheelZoom.disable();

  new L.Control.Zoom({ position: 'bottomright' }).addTo(map);
});
