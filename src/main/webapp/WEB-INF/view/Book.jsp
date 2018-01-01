<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <title>Contact - Travel</title>
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
                                
                            </div> <!-- /.main-menu -->
                        </div> <!-- /.col-md-8 -->
                    </div> <!-- /.row -->
                </div> <!-- /.main-header -->
                <div class="row">
                    <div class="col-md-12 visible-sm visible-xs">
                        <div class="menu-responsive">
                            <ul>
                                <li><a href="index.html">Home</a></li>
                                <li><a href="services.html">Services</a></li>
                                <li><a href="events.html">Events</a></li>
                                <li><a href="about.html">About Us</a></li>
                                <li class="active"><a href="contact.html">Contact</a></li>
                            </ul>
                        </div> <!-- /.menu-responsive -->
                    </div> <!-- /.col-md-12 -->
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div> <!-- /.site-header -->

        <div class="page-top" id="templatemo_contact">
        </div> <!-- /.page-header -->

        <div class="contact-page">
            <div class="container">
                <div class="row">
                
                    
                    <div class="col-md-5 col-sm-6">
                        <h3 class="widget-title"> Reserve Offer </h3>
                        <div class="contact-form">
                        
                        
                            <form onsubmit="return validation()"  name="contactform" id="contactform" action="/Reserve" method="post" >
                                <p>
                                    <input name="First_Name" type="text" id="fname" required="required" placeholder="First-Name">
                                </p>
                                <p>
                                    <input name="Last_Name" type="text" id="lname" required="required" placeholder="Last-Name"> 
                                </p>
                                <p>
                                    <input name="Phone" type="text" id="phone" required="required" placeholder="Phone"> 
                                </p>
                                <p>
                                    <input name="E_Mail" type="email" id="mail" required="required" placeholder="E-Mail" />    
                                </p>
                                 <input type="hidden"  name="${_csrf.parameterName}"	value="${_csrf.token}"/>
                                
                                <input type="submit" class="mainBtn" id="submit" value="Reserve :)">
                            </form>
                        </div> <!-- /.contact-form -->
                    </div>
                    
                    
                    
                    
                </div>
            </div>
        </div>




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
                            <span>Developed By : Raslan Shabaan :) </span>
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
        
        function validation()
        {
            var text=/^[A-Za-z]+$/;
            // UserName Validation //
            if (document.contactform.fname.value.length <1) {
                alert("User Name Is Requred.");
                return false;
            }
            if(document.contactform.fname.value.length >20) {
                alert("User Name Is InValid Too Long .");
                return false;
            }  
            
        if( document.contactform.fname.value.match(text)) {
               
            }else{
                alert("Not A Text ");
                return false;
            }
         
         
        //  email  Validation // 
        if (document.contactform.mail.value.length < 1) {
                alert("Email Is Requred .");
                return false;
            }
            
                // Phone  Validation //
            if (document.contactform.Phone.value.length <1 ) {
                alert("Phone Is Requred .");
                return false;
            }if (document.contactform.Phone.value.length != 11 ) {
                alert("Not A Phone Number .");
                return false;
            }if (isNaN(document.contactform.Phone.value) ) {
                alert("Not A Phone Number .");
                return false;
            }
            
         else {
                return true;
            }
        }
    </script>

        <script src="js/vendor/jquery-1.11.0.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.0.min.js"><\/script>')</script>
        <script src="js/bootstrap.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>

        <!-- Google Map -->
        <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
        <script src="js/vendor/jquery.gmap3.min.js"></script>
        
        <!-- Google Map Init-->
        <script type="text/javascript">
            jQuery(function($){
                $('.first-map, .map-holder').gmap3({
                    marker:{
                        address: '16.8496189,96.1288854' 
                    },
                        map:{
                        options:{
                        zoom: 16,
                        scrollwheel: false,
                        streetViewControl : true
                        }
                    }
                });
            });
        </script>
        <!-- templatemo 409 travel -->
    </body>
</html>