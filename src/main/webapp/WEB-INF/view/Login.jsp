<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    <head>
        <title>Animated Form Switching with jQuery</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="description" content="Expand, contract, animate forms with jQuery wihtout leaving the page" />
        <meta name="keywords" content="expand, form, css3, jquery, animate, width, height, adapt, unobtrusive javascript"/>
		<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
		<script src="js/cufon-yui.js" type="text/javascript"></script>
		<script src="js/ChunkFive_400.font.js" type="text/javascript"></script>
		<script type="text/javascript">
			Cufon.replace('h1',{ textShadow: '1px 1px #fff'});
			Cufon.replace('h2',{ textShadow: '1px 1px #fff'});
			Cufon.replace('h3',{ textShadow: '1px 1px #000'});
			Cufon.replace('.back');
		</script>
    </head>
    <body>



<h3>${Reg}</h3>
    
        <!--  Login Fail  -->
    <c:if test="${not empty error}">
        <h1 style="color: #c7254e;font-weight: bold;font-style: italic;font-size: 30px">  ${error}</h1>
    </c:if>

    	<div class="wrapper">		
			<div class="content">
				<div id="form_wrapper" class="form_wrapper">
					
					<form class="login active" action="/Login" method="post" >
						<h3>Login Form </h3>
						<div>
							<label>Username:</label>
							<input type="text" required="required" name="username" />
							
						</div>
						<div>
							<label>Password: </label>		
							<input required="required" type="password" name="password"  />
													</div>
						<div class="bottom">
			 <input type="hidden"  name="${_csrf.parameterName}"	value="${_csrf.token}"/>
						
						<button style="border: none;background-color:#000;font-style: italic;font-weight: bold;color:#fff;font-size:20px;width:200px;height:50px;margin-top: 20px;margin-bottom:20px;margin-left: 70px"> Log Me In</button>	   	
                   	</form>
						
					
							<div class="clear"></div>
							
					
						</div>
					
				</div>
				<form action="/GoRegister" method="get">
							<button style="border: none;background-color:#000;font-style: italic;font-weight: bold;color:#fff;font-size:20px;width:200px;height:50px;margin-top: 10px;margin-bottom:10px;margin-left: 380px"> Register Me Up</button>	
					</form>
				<form action="/GoServices" method="get">
							<button style="border: none;background-color:#000;font-style: italic;font-weight: bold;color:#fff;font-size:20px;width:200px;height:50px;margin-top: 10px;margin-bottom:10px;margin-left: 380px"> User Services</button>	
					</form>
					
				<div class="clear"></div>
			</div>
			
		</div>

		<!-- The JavaScript -->
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
		<script type="text/javascript">
			$(function() {
					//the form wrapper (includes all forms)
				var $form_wrapper	= $('#form_wrapper'),
					//the current form is the one with class active
					$currentForm	= $form_wrapper.children('form.active'),
					//the change form links
					$linkform		= $form_wrapper.find('.linkform');
						
				//get width and height of each form and store them for later						
				$form_wrapper.children('form').each(function(i){
					var $theForm	= $(this);
					//solve the inline display none problem when using fadeIn fadeOut
					if(!$theForm.hasClass('active'))
						$theForm.hide();
					$theForm.data({
						width	: $theForm.width(),
						height	: $theForm.height()
					});
				});
				
				//set width and height of wrapper (same of current form)
				setWrapperWidth();
				
				/*
				clicking a link (change form event) in the form
				makes the current form hide.
				The wrapper animates its width and height to the 
				width and height of the new current form.
				After the animation, the new form is shown
				*/
				$linkform.bind('click',function(e){
					var $link	= $(this);
					var target	= $link.attr('rel');
					$currentForm.fadeOut(400,function(){
						//remove class active from current form
						$currentForm.removeClass('active');
						//new current form
						$currentForm= $form_wrapper.children('form.'+target);
						//animate the wrapper
						$form_wrapper.stop()
									 .animate({
										width	: $currentForm.data('width') + 'px',
										height	: $currentForm.data('height') + 'px'
									 },500,function(){
										//new form gets class active
										$currentForm.addClass('active');
										//show the new form
										$currentForm.fadeIn(400);
									 });
					});
					e.preventDefault();
				});
				
				function setWrapperWidth(){
					$form_wrapper.css({
						width	: $currentForm.data('width') + 'px',
						height	: $currentForm.data('height') + 'px'
					});
				}
				
				/*
				for the demo we disabled the submit buttons
				if you submit the form, you need to check the 
				which form was submited, and give the class active 
				to the form you want to show
				*/
				$form_wrapper.find('input[type="submit"]')
							 .click(function(e){
								e.preventDefault();
							 });	
			});
        </script>
    </body>
</html>