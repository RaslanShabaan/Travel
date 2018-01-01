<%@ page import="java.util.ArrayList" %>

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
                                    <li><form action="/GoWeather" method="get"> <button style="margin-top: 30px;margin-bottom: 30px;width: 130px;border: none;"> Weather Services </button> </form> </li>  
                                    <li class="active"><form action="/GoOffers" method="get"> <button style="margin-top: 30px;margin-bottom: 30px;width: 130px;border: none;"> Offers Services </button> </form> </li>  
                                    
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
                                <li>Map Services</li>
                                <li>Wheather Services</li>
                                <li class="active">Offers</li>
                                
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
                            <%
                            HttpSession d=request.getSession();
                            ArrayList v= (ArrayList) d.getAttribute("Offers");

                            int count=v.size()/7;
                            int o=0;

                             %>		                
                             <h1 style="font-size: 30px;font-style: italic;font-weight: bold;"> Number Of All Offers : <span style="font-size: 40px;color:#999;font-style: italic;font-weight: bold;"> <%= count %> </span></h1>                        
                            
                <div class="row"><!-- second row -->
                
                	<div class="col-md-4"><!-- first column -->
                   
                   
                   <% for (int t=0;t<count;t++) {%>
                   
                        <div class="widget-item"  style="border:1px solid #000">
                            <h3 class="widget-title"> Company : <%= v.get(o+1)%></h3>
                            <div class="sample-thumb">
                                <img src="images/<%=v.get(o+5) %>" alt="New Event" title="New Event">
                            </div>
                            
                    
                     <h4  style= "width:100%;color:#000; font-size: 20px;font-style: italic;font-weight: bold;">Offer Id : <span style="color:#999; font-size: 30px;font-style: italic;font-weight: bold"> <%= v.get(o)%> </span></h4>       
                     <h4 style="width:100%;color:#000; font-size: 20px;font-style: italic;font-weight: bold;">Country : <span style="color:#999; font-size: 30px;font-style: italic;font-weight: bold"><%=  v.get(o+2) %> </span></h4>
                     <h4 style="width:100%;color:#000; font-size: 20px;font-style: italic;font-weight: bold;">Price   : <span style="color:#999; font-size: 30px;font-style: italic;font-weight: bold"><%= v.get(o+6) %></span></h4>
                     <h4 style="width:100%;color:#000; font-size: 20px;font-style: italic;font-weight: bold;">Days : <span style="color:#999; font-size: 30px;font-style: italic;font-weight: bold"><%= v.get(o+3) %></span></h4>
                     <h4 style="width:100%;color:#000; font-size: 20px;font-style: italic;font-weight: bold;">Description : <span style="color:#999; font-size: 30px;font-style: italic;font-weight: bold"> <%= v.get(o+4) %></span></h4>
        <!--      
            <a style="margin-top:20px;margin-bottom:10px;margin-left: 100px;color:red;font-style: italic;font-weight: bold;font-size: 20px" href='http://localhost:60650/GoBook?Reserve="+ R +"' > Reserve :)  </a>
         -->
         
                <form action="/GoBook" method="post">
                <input type="hidden" value=<%= v.get(o) %> name="R" />
                 <input type="hidden"  name="${_csrf.parameterName}"	value="${_csrf.token}"/>
                <button style="margin-bottom:20px;margin-top:10px;width:180px;color:#000; font-size: 20px;font-style: italic;font-weight: bold;margin-left: 100px"> Reserve :)</button>   
		         </form>
		
		
		</div> 	
		<% 
		o=o+7;
              }%>
		
		
                    </div> 
                    
                    
                    
                    
                </div> <!-- /.row second -->
                
            </div> <!-- /.container -->
        </div> <!-- /.middle-content -->


        <div class="site-footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <div class="footer-logo">
                            <a href="index.html">
                                <img src="images/logo.png" alt="">
                            </a>
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

        <script src="js/vendor/jquery-1.11.0.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.0.min.js"><\/script>')</script>
        <script src="js/bootstrap.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>
        <!-- templatemo 409 travel -->
    </body>
</html>