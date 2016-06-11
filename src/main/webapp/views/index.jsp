<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Generic - Phantom by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />	
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
										<li><a href="#menu">Menu</a></li>
									</ul>
								</nav>

						</div>
					</header>

				<!-- Menu -->
					<nav id="menu">
						<h2>City Picker</h2>
						<ul>
							<li>
							   <a href="#">Weather Menu</a>
							   <div>
							       <input data-bind="value: zipCode" />
							   </div>							
							</li>
							<li><a href="#">Weather Info</a></li>
							<li><a href="#">Weather </a></li>							
						</ul>
					</nav>

				<!-- Main -->
					<div id="main">
						<div class="inner">
							<h1>Weather Info Demo!!!</h1>
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