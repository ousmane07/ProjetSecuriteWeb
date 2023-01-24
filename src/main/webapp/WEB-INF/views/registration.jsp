<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up Form by Colorlib</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
					
						<form method="POST" action="RegistrationServlet" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="lastname"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="lastname" id="lastname" placeholder="Your Lastname" />
							</div>
							<div class="form-group">
								<label for="firstname"><i
										class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="firstname" id="firstname" placeholder="Your Firstname" />
							</div>
							<div class="form-group">
								<label for="phonenumber"><i
										class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="phonenumber" id="phonenumber" placeholder="Your Phone Number" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email" />
							</div>

							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="${pageContext.request.contextPath}/images/signup-image.jpg" alt="sing up image">
						</figure>
						<a href="/securiteweb/login" class="signup-image-link">I am already
							member</a>
					</div>
				</div>
			</div>
		</section>


	</div>
	<!-- JS -->
	<script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/main.js"></script>



</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>