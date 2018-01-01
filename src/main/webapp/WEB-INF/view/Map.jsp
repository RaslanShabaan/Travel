<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <title>Events - Travel</title>
        <meta name="description" content="">
<!-- 
Travel Template
http://www.templatemo.com/tm-409-travel
-->
        <meta name="viewport" content="width=device-width">
		<meta name="author" content="templatemo">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,800,700,600,300' rel='stylesheet' type='text/css'>
        
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/templatemo_misc.css">
        <link rel="stylesheet" href="css/templatemo_style.css">
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #floating-panel {
        position: absolute;
        top: 10px;
        left: 25%;
        z-index: 5;
        background-color: #fff;
        padding: 5px;
        border: 1px solid #999;
        text-align: center;
        font-family: 'Roboto','sans-serif';
        line-height: 30px;
        padding-left: 10px;
      }
      #warnings-panel {
        width: 100%;
        height:100%;
        text-align: center;
      }
    </style>

        <script src="js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->
<h1 style="font-size: 30px;font-style: italic;font-weight: bold;color: red">${Reserve}</h1>

		<div class="site-header">
            <div class="container">
                <div class="main-header">
                    <div class="row">
                        <div class="col-md-4 col-sm-6 col-xs-10">
                            <div class="logo">
                                <a href="#">
                                    <img src="images/logo.png" alt="travel html5 template" title="travel html5 template">
                                </a>
                            </div> <!-- /.logo -->
                        </div> <!-- /.col-md-4 -->
                        <div class="col-md-8 col-sm-6 col-xs-2">
                            <div class="main-menu">
                                <ul class="visible-lg visible-md">
                                
                                  <li  class="active"><form action="/GoMap" method="get"> <button style="margin-top: 30px;margin-bottom: 30px;width:130px;border: none;"> Map Services </button> </form> </li>  
                                    <li><form action="/GoWeather" method="get"> <button style="margin-top: 30px;margin-bottom: 30px;width: 130px;border: none;"> Weather Services </button> </form> </li>  
                                    <li><form action="/GoOffers" method="get"> <button style="margin-top: 30px;margin-bottom: 30px;width: 130px;border: none;"> Offers Services </button> </form> </li>  
                                  
                                </ul>
                                <a href="#" class="toggle-menu visible-sm visible-xs">
                                    <i class="fa fa-bars"></i>
                                </a>
                            </div> <!-- /.main-menu -->
                        </div> <!-- /.col-md-8 -->
                    </div> <!-- /.row -->
                </div> <!-- /.main-header -->
                <div class="row">
                    <div class="col-md-12 visible-sm visible-xs">
                        <div class="menu-responsive">
                            <ul>
                                <li class="active"> <a href="index.html"> Map Services</a></li>
                                <li><a href="services.html">Wheather Services</a></li>
                                <li ><a href="events.html">Offers</a></li>
                                
                            </ul>
                        </div> <!-- /.menu-responsive -->
                    </div> <!-- /.col-md-12 -->
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div> <!-- /.site-header -->

        <div class="page-top" id="templatemo_events">
        </div> <!-- /.page-header -->

        <div class="middle-content">
            <div class="container">
            
                <div class="row"><!-- first row -->
                
                	<div class="col-md-4"><!-- first column -->
                    
                    </div> <!-- /.col-md-4 -->
                    
                    
                    
                </div> <!-- /.row first -->
                <div class="row"><!-- second row -->
                



             	        
<div id="floating-panel" style="margin-top:230px;margin-left: 150px">
    <b> Start :) </b>
    <select id="start">
       <option value="48.8566,2.3522">Paris</option>
       <option value="55.7558,37.6173">Moscow</option>
       <option value="25.2048,55.2708">Dubai</option>
	   <option value="21.2854, 39.2376">Gadda</option>	 
       <option value="51.5074,.1278">london</option>
       
	   <option value="27.9158,34.3300">Sharm el sheikh</option>
       <option value="31.2001,29.9187">Alex</option>
	   <option value="30.0444,31.2357">cairo</option>
       <option value="24.0889,32.8998">Aswan</option>
       
       
       
     
  </select>
    <b> End :) </b>
    <select id="end">
       <option value="48.8566,2.3522">Paris</option>
       <option value="55.7558,37.6173">Moscow</option>
       <option value="25.2048,55.2708">Dubai</option> 
       <option value="51.5074,.1278">london</option>
       <option value="21.2854, 39.2376">Gadda</option>	 
	   
	   <option value="27.9158,34.3300">Sharm el sheikh</option>
       <option value="31.2001,29.9187">Alex</option>
	   <option value="30.0444,31.2357">cairo</option>
       <option value="24.0889,32.8998">Aswan</option>
	  
    </select>
    </div>
    <div id="map" style="border:1px solid #000;width:100%;height:500px"></div>
    &nbsp;
    <div id="warnings-panel" style="width:100%;height:40px"></div>
                            
    
    
                    
                    
                </div> <!-- /.row second -->
            </div> <!-- /.container -->
        </div> <!-- /.middle-content -->
        <div class="site-footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <div class="footer-logo">
                                <img src="images/logo.png" alt="">
                                                    </div>
                    </div> <!-- /.col-md-4 -->
                    <div class="col-md-4 col-sm-4">
                        <div class="copyright">
                            <span> Developed By : Raslan Shabaan :)</span>
                        </div>
                    </div> <!-- /.col-md-4 -->
                    <div class="col-md-4 col-sm-4">
                        <ul class="social-icons">
                            <li><a href="#" class="fa fa-facebook"></a></li>
                            <li><a href="#" class="fa fa-twitter"></a></li>
                            <li><a href="#" class="fa fa-linkedin"></a></li>
                            <li><a href="#" class="fa fa-flickr"></a></li>
                            <li><a href="#" class="fa fa-rss"></a></li>
                        </ul>
                    </div> <!-- /.col-md-4 -->
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div> <!-- /.site-footer -->


<script>
	
	var marker ;
	
	function getDistanceFromLatLonInKm(lat1,lon1,lat2,lon2) {
  var R = 6371; // Radius of the earth in km
  var dLat = deg2rad(lat2-lat1);  // deg2rad below
  var dLon = deg2rad(lon2-lon1); 
  var a = 
    Math.sin(dLat/2) * Math.sin(dLat/2) +
    Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * 
    Math.sin(dLon/2) * Math.sin(dLon/2)
    ; 
  var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a)); 
  var d = R * c; // Distance in km
  return d;
}

function deg2rad(deg) {
  return deg * (Math.PI/180)
}


// Distance 
/*
		function distance(lat1, lon1, lat2, lon2, unit) {
	var radlat1 = Math.PI * lat1/180;
	var radlat2 = Math.PI * lat2/180;
	var theta = lon1-lon2;
	var radtheta = Math.PI * theta/180;
	var dist = Math.sin(radlat1) * Math.sin(radlat2) + Math.cos(radlat1) * Math.cos(radlat2) * Math.cos(radtheta);
	dist = Math.acos(dist);
	dist = dist * 180/Math.PI;
	dist = dist * 60 * 1.1515;
	if (unit=="K") { dist = dist * 1.609344 ;}
	if (unit=="N") { dist = dist * 0.8684 ;}
	return dist;

	}

	*/
	
      function initMap() {
        var infoWindow = new google.maps.InfoWindow({map: map});
		
		var markerArray = [];
         // 31.2001° N, 29.9187° E
        // Instantiate a directions service.
        var directionsService = new google.maps.DirectionsService;

        // Create a map and center it on Manhattan.
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 80,
		  
          center: {lat: 30.7865, lng: 31.0004}
        });

        // Create a renderer for directions and bind it to the map.
        var directionsDisplay = new google.maps.DirectionsRenderer({map: map});

        // Instantiate an info window to hold step text.
        var stepDisplay = new google.maps.InfoWindow;

        // Display the route between the initial start and end selections.
        calculateAndDisplayRoute(
            directionsDisplay, directionsService, markerArray, stepDisplay, map);
        // Listen to change events from the start and end lists.
        var onChangeHandler = function() {
          calculateAndDisplayRoute(
              directionsDisplay, directionsService, markerArray, stepDisplay, map);
        
		
		
		// ***************************  code will be here  *********************************************************
	var st= document.getElementById('start').value
	var ed= document.getElementById('end').value;
	  var stt = st.split(",");
	  var edd = ed.split(",");	  
		 var lat1 = stt[0];
		 var lon1 = stt[1];
		 var lat2   = edd[0];
		 var lon2   = edd[1];
		
	var DD=	getDistanceFromLatLonInKm(lat1,lon1,lat2,lon2);
	var t = Math.round(DD);
	
alert('The Distance In Km Almost : ' +t);
alert('The Time In H With Speed 100 Km/H Almost : ' + t/100);

    //var D=	distance(lat1,lon1,lat2,lon2,"K");
		//alert("---- The Distance In Km Algo1 --------" + D );	 
	//	alert(" The Distance In Km Is "   +  "["  + DD  +"]" );	
		//alert(" The Time In H With Speed 100 Km/H Is  "   +  "["  + DD/100  +"]" );	
		   	
			
			
	
		// ****************************************************************************
		
		};
        document.getElementById('start').addEventListener('change', onChangeHandler);
        document.getElementById('end').addEventListener('change', onChangeHandler);
      }

      function calculateAndDisplayRoute(directionsDisplay, directionsService,
          markerArray, stepDisplay, map) {
        // First, remove any existing markers from the map.
        for (var i = 0; i < markerArray.length; i++) {
          markerArray[i].setMap(null);
        }

        // Retrieve the start and end locations and create a DirectionsRequest using
        // WALKING directions.
        directionsService.route({
          origin: document.getElementById('start').value,
          destination: document.getElementById('end').value,
          travelMode: 'WALKING'
        }, function(response, status) {
          // Route the directions and pass the response to a function to create
          // markers for each step.
          if (status === 'OK') {
            document.getElementById('warnings-panel').innerHTML =
                '<b>' + response.routes[0].warnings + '</b>';
            directionsDisplay.setDirections(response);
            showSteps(response, markerArray, stepDisplay, map);
          } else {
            window.alert('Directions request failed due to ' + status);
          }
        });
      }

      function showSteps(directionResult, markerArray, stepDisplay, map) {
        // For each step, place a marker, and add the text to the marker's infowindow.
        // Also attach the marker to an array so we can keep track of it and remove it
        // when calculating new routes.
        var myRoute = directionResult.routes[0].legs[0];
        for (var i = 0; i < myRoute.steps.length; i++) {
          var marker = markerArray[i] = markerArray[i] || new google.maps.Marker;
          marker.setMap(map);
          marker.setPosition(myRoute.steps[i].start_location);
          attachInstructionText(
              stepDisplay, marker, myRoute.steps[i].instructions, map);
        }
      }

      function attachInstructionText(stepDisplay, marker, text, map) {
        google.maps.event.addListener(marker, 'click', function() {
          // Open an info window when the marker is clicked on, containing the text
          // of the step.
          stepDisplay.setContent(text);
          stepDisplay.open(map, marker);
        });
      }
	  
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCmYO5bQQyAO-vbVT_Z1O_nzI4tfSeiBF0&callback=initMap">
    </script>
        <script src="js/vendor/jquery-1.11.0.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.0.min.js"><\/script>')</script>
        <script src="js/bootstrap.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>
        <!-- templatemo 409 travel -->
    </body>
</html>