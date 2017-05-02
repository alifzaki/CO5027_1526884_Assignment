function initMap() {
        var Laksamana = {lat: 4.885470, lng: 114.931614};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 20,
          center: Laksamana
        });
        var marker = new google.maps.Marker({
            position: Laksamana,
          map: map
        });
      }