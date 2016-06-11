<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Weather Info - Demo</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />	
		<link rel="shortcut icon" href="http://vortex.accuweather.com/adc2010/images/favicons/awx-2013-master.ico" />		
		<link rel="stylesheet" type="text/css" href="<spring:url value="/resources/styles/jquery-ui.css" />"/>	
		<link rel="stylesheet" type="text/css" href="<spring:url value="/resources/styles/main.css" />"/>				
		<!--[if lte IE 9]><link rel="stylesheet" href="<spring:url value="/styles/ie9.css" />" /><![endif]-->
	
		<script type="text/javascript">
		  var Environment_APP_PATH = "<spring:url value="/" />";
		</script>
	
	</head>
	<body data-bind="with: context">
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<div class="inner">							

							<!-- Nav -->
								<nav>
									<ul>
										<li><a id="main-menu" href="#menu">Cities</a></li>
									</ul>
								</nav>
						</div>
					</header>

				<!-- Menu -->
					<nav id="menu">
						<h2 style="margin-bottom: 20px">Cities</h2>
						<ul>
							<li>
							   <div>Zip Code 1</div>
							   <div>
							       <input min="1" type="number" data-bind="value: zips()[0].zipCode" />
							   </div>							
							</li>
							<li>
							  <div>Zip Code 2</div>
							   <div>
							       <input  min="1" type="number" data-bind="value: zips()[1].zipCode" />
							   </div>							
							</li>
							<li>
							   <div>Zip Code 3</div>
							   <div>
							       <input   min="1" type="number" data-bind="value: zips()[2].zipCode" />
							   </div>							
							</li>	
							<li>
							   <div>Zip Code 4</div>
							   <div>
							       <input  min="1" type="number" data-bind="value: zips()[3].zipCode" />
							   </div>							
							</li>
							<li>
							   <div>Zip Code 5</div>
							   <div>
							       <input  min="1" type="number" data-bind="value: zips()[4].zipCode" />
							   </div>							
							</li>					
						</ul>
						
						<div>
							<button id="weather-btn" data-bind="click: weatherBtnClickAction">Weather Info</button>
						</div>
						
					</nav>

				<!-- Main -->
					<div id="main">
						<div class="inner">
							<h1 style="margin-bottom: 20px">Weather Info Demo!!!</h1>													
							<div class="accordion-wrapper">							
								<div id="city-accordion" style="display: none" data-bind="foreach: weatherData">
									  
								  <h3><a data-bind="text:  'City' + ($index() + 1) + '(' +  $parent.zips()[$index()].zipCode() + ')'" href="#"></a></h3>
								  <div>
										<ul>
											<li>
												<img data-bind="attr: { 'src': weatherInfo.picUrl }"  />
												<label>Description: <span data-bind="text: weatherInfo.description"></span></label>										
											</li>
										
											<li>
												<label>City: <span data-bind="text: weatherInfo.city"></span></label>	
											</li>
											
											<li>
												<label>State: <span data-bind="text: weatherInfo.state"></span></label>	
											</li>
											
											<li>										
												<label>Weather Station: <span data-bind="text: weatherInfo.weatherStation"></span></label>	
											</li>	
											
											<li>
												<label>Pressure: <span data-bind="text: weatherInfo.pressure"></span></label>	
											</li>	
											
											<li>
												<label>Temperature: <span data-bind="text: weatherInfo.temperature"></span></label>
											</li>
											
											<li>
												<label>Relative Humidity: <span data-bind="text: weatherInfo.relativeHumidity"></span></label>
											</li>						
																	
										</ul>
									  
									 </div>								 
								</div>							
								
							</div>
						</div>
					</div>

				<!-- Footer -->
					<footer id="footer">
						<div class="inner">
							<section>
								<h2>Get in touch</h2>
								<form method="post" action="#">
									<div class="field half first">
										<input type="text" name="name" id="name" placeholder="Name" />
									</div>
									<div class="field half">
										<input type="email" name="email" id="email" placeholder="Email" />
									</div>
									<div class="field">
										<textarea name="message" id="message" placeholder="Message"></textarea>
									</div>
									<ul class="actions">
										<li><input type="submit" value="Send" class="special" /></li>
									</ul>
								</form>
							</section>
							<section>
								<h2>Follow</h2>
								<ul class="icons">
									<li><a href="#" class="icon style2 fa-twitter"><span class="label">Twitter</span></a></li>
									<li><a href="#" class="icon style2 fa-facebook"><span class="label">Facebook</span></a></li>
									<li><a href="#" class="icon style2 fa-instagram"><span class="label">Instagram</span></a></li>
									<li><a href="#" class="icon style2 fa-dribbble"><span class="label">Dribbble</span></a></li>
									<li><a href="#" class="icon style2 fa-github"><span class="label">GitHub</span></a></li>
									<li><a href="#" class="icon style2 fa-500px"><span class="label">500px</span></a></li>
									<li><a href="#" class="icon style2 fa-phone"><span class="label">Phone</span></a></li>
									<li><a href="#" class="icon style2 fa-envelope-o"><span class="label">Email</span></a></li>
								</ul>
							</section>
							<ul class="copyright">
								<li>&copy; Untitled. All rights reserved</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="<spring:url value="/resources/scripts/lib/require.js" />" data-main="<spring:url value="/resources/scripts/app/init.js" />"></script>			
			
	</body>
</html>