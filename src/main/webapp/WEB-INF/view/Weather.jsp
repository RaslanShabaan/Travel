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

        <script src="http://code.jquery.com/jquery.js"></script>
        <script src="js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->

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
                                  <li><form action="/GoMap" method="get"> <button style="margin-top: 30px;margin-bottom: 30px;width:130px;border: none;"> Map Services </button> </form> </li>  
                                    <li  class="active"><form action="/GoWeather" method="get"> <button style="margin-top: 30px;margin-bottom: 30px;width: 130px;border: none;"> Weather Services </button> </form> </li>  
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
                                <li><a href="index.html">Map Services</a></li>
                                <li class="active" ><a href="services.html">Wheather Services</a></li>
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
                
                   <input type="text" id="City_Name" placeholder="City_Name"/>
                   <button onclick="ShowWeather()" style="font-weight: bold;font-style: italic;border: none;"> Show City Weather </button>
                   <br>
                   <div class="weather"  style="border: 1px solid #555 ;width: 40%;padding: 2%"></div>
                
                
                	<div class="col-md-4"><!-- first column -->       
                    </div> <!-- /.col-md-4 -->
                </div> <!-- /.row first -->
                
                <div class="row"><!-- second row -->
                
             
                    
                    
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
function ShowWeather(){
$('.weather').html('');

var CityName=$('#City_Name').val();

var apiCall='http://api.openweathermap.org/data/2.5/weather?q='+CityName+'&appid=2313eee4884fcc7bb3d9092af78d26ec';
$.getJSON(apiCall,weatherCallback);

function weatherCallback(weatherData){


console.log(weatherData);

var Name = weatherData.name;
var Temp = weatherData.main.temp;
var Clouds =weatherData.clouds.all;
var Country =weatherData.sys.country;
var Winddeg =weatherData.wind.deg;
var Windspeed =weatherData.wind.speed;
var Description= weatherData.weather[0].description;

$('.weather').append("The Weather In City :"+Name+" <br> IN Country : "+Country +" <br>Description IS : "+ Description+"<br> Tempreture IS : "+Temp+" <br> Clouds Are :"+Clouds+"<br> Wind Degrees Are : "+Winddeg+"<br> Wind Speed IS : "+Windspeed+" ");

}

}

</script>


        <script src="js/vendor/jquery-1.11.0.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.0.min.js"><\/script>')</script>
        <script src="js/bootstrap.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>
        <!-- templatemo 409 travel -->
    </body>
</html>