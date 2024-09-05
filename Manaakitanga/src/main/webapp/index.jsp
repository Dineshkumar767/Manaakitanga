<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manaakitanga NGO</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Include Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	rel="stylesheet">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/about.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/hero-section.css">
<link rel="stylesheet" href="css/hero-section.css">
<link rel="stylesheet" href="css/navbar.css">
<link rel="stylesheet" href="css/home-page-blog.css">

</head>
<body>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">
			<!-- Logo -->
			<a class="navbar-brand d-flex align-items-center" href="#"> <!-- <img src="logo-placeholder.png" alt="Logo" style="width: 40px; height: 40px;"> -->
				<i class="fa-brands fa-fedora"></i> <span class="ms-2">Manaakitanga</span>
			</a>

			<!-- Toggler for mobile view -->
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarContent"
				aria-controls="navbarContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<!-- Navbar content -->
			<div class="collapse navbar-collapse justify-content-between"
				id="navbarContent">
				<!-- Centered Links -->
				<ul class="navbar-nav mx-auto">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Donations</a></li>
					<li class="nav-item"><a class="nav-link" href="blog.jsp">Blog</a></li>
				    <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
				</ul>

				<!-- Search and Donate Now buttons -->
				<div class="d-flex">
					<button class="btn btn-outline-primary me-2" type="button">
						<i class="fa-solid fa-magnifying-glass"></i>
					</button>
					<a href="login.jsp" class="btn btn-primary">DONATE NOW <i
						class="fas fa-heart"></i></a>
				</div>
			</div>
		</div>
	</nav>


	<!-- Hero Section with Carousel -->
	<section id="hero" class="mb-5">
		<div id="heroCarousel" class="carousel slide" data-bs-ride="carousel"
			data-bs-interval="3000">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="images/carousel-1.jpg" class="d-block w-100"
						alt="Providing Books"> <img src="images/bg.png"
						class="overlay-img" alt="Providing Books Overlay">
					<div class="carousel-caption d-none d-md-block">
						<h5>Providing Books</h5>
						<p>Your support helps us provide educational resources to
							those in need.</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="images/carousel-2.jpg" class="d-block w-100"
						alt="Feeding the Hungry"> <img src="images/bg.png"
						class="overlay-img" alt="Feeding the Hungry Overlay">
					<div class="carousel-caption d-none d-md-block">
						<h5>Feeding the Hungry</h5>
						<p>We ensure that every individual has access to nutritious
							food.</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="images/carousel-3.jpg" class="d-block w-100"
						alt="Financial Support"> <img src="images/bg.png"
						class="overlay-img" alt="Financial Support Overlay">
					<div class="carousel-caption d-none d-md-block">
						<h5>Financial Support</h5>
						<p>Empowering communities with financial assistance.</p>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#heroCarousel" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#heroCarousel" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</section>

	<!-- Features Section -->
	<section class="features-section">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 text-center">
					<h2>Connects Nonprofits, Donors, & Companies in Every Country</h2>
					<a href="login.jsp" class="btn btn-outline-primary mt-3">Donate Now</a>
				</div>
				<div class="col-lg-6">
					<div class="row">
						<div class="col-md-6 mb-4">
							<div class="feature-box">
								<img src="assets/food.png" alt="Healthy Food">
								<h4>Healthy Food</h4>
								<p>We help local nonprofits access the funding, tools,
									training, and support they need to become more.</p>
							</div>
						</div>
						<div class="col-md-6 mb-4">
							<div class="feature-box">
								<img src="assets/water.png" alt="Clean Water">
								<h4>Clean Water</h4>
								<p>We help local nonprofits access the funding, tools,
									training, and support they need to become more.</p>
							</div>
						</div>
						<div class="col-md-6 mb-4">
							<div class="feature-box">
								<img src="assets/medical.png" alt="Medical Help">
								<h4>Medical Help</h4>
								<p>We help local nonprofits access the funding, tools,
									training, and support they need to become more.</p>
							</div>
						</div>
						<div class="col-md-6 mb-4">
							<div class="feature-box">
								<img src="assets/education.png" alt="Education">
								<h4>Education</h4>
								<p>We help local nonprofits access the funding, tools,
									training, and support they need to become more.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

<section class="hero">
    <div class="hero-overlay">
        <div class="hero-content">
            <h1>Helping Today, Helping Tomorrow</h1>
            <p>Manaakitanga is the largest global crowdfunding community connecting non-profits, donors, and companies in nearly every country.</p>
            <div class="buttons">
                <a href="#" class="button">LEARN MORE</a>
                <a href="#" class="button">VOLUNTEER</a>
            </div>
        </div>
    </div>
    
    <!-- Mobile-Only Content -->
    <div class="hero-mobile-content">
        <p>Join us in making a difference today!</p>
        <p>Discover how you can help those in need, no matter where you are.</p>
    </div>
</section>

	<!-- About Us Section -->

<section id="about" class="text-center py-5">
    <div class="container">
        <h2 class="mb-4">About Manaakitanga</h2>
        <p class="lead mb-5">Manaakitanga is a nonprofit organization committed to
            providing essential services and support to underprivileged
            communities around the world.</p>
        <div class="row">
            <div class="col-lg-4">
                <div class="about-box">
                    <img src="assets/our-mission.jpg" alt="Our Mission">
                    <h4 class="mt-3">Our Mission</h4>
                    <p>To alleviate poverty and improve the quality of life for
                        vulnerable populations.</p>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="about-box">
                    <img src="assets/our-vision.jpg" alt="Our Vision">
                    <h4 class="mt-3">Our Vision</h4>
                    <p>A world where everyone has access to basic needs and
                        opportunities for a better life.</p>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="about-box">
                    <img src="assets/our-values.jpg" alt="Our Values">
                    <h4 class="mt-3">Our Values</h4>
                    <p>Compassion, Integrity, and Excellence guide our work and
                        interactions.</p>
                </div>
            </div>
        </div>
    </div>
</section>


	<!-- Blog Section -->
	<section id="blog" class="py-5 bg-light">
		<div class="container">
			<h2 class="text-center mb-4">From Our Blog</h2>
			<div class="row">
				<div class="col-md-4">
					<div class="blog-post">
						<img src="images/blog1.jpg" alt="Blog Post 1">
						<div class="p-3">
							<h5><a href="#" class="text-dark">Empowering Communities</a></h5>
							<p>Discover how Manaakitanga is making a difference by
								empowering local communities to achieve sustainable growth.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="blog-post">
						<img src="images/blog-post-2.jpg" alt="Blog Post 2">
						<div class="p-3">
							<h5><a href="#" class="text-dark">Feeding the Future</a></h5>
							<p>Learn about our latest initiatives to combat hunger and
								ensure food security for all.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="blog-post">
						<img src="images/blog-post-3.jpg" alt="Blog Post 3">
						<div class="p-3">
							<h5><a href="#" class="text-dark">Educational Programs</a></h5>
							<p>Read about our efforts to provide education to those in
								need and how it’s transforming lives.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	
	<!-- Footer -->
<footer class="footer mt-5">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <a class="navbar-brand d-flex align-items-center" href="#"> <!-- <img src="logo-placeholder.png" alt="Logo" style="width: 40px; height: 40px;"> -->
				<i class="fa-brands fa-fedora"></i> <span class="ms-2">Manaakitanga</span>
			</a>
                <p>We're curious, passionate, and committed to helping nonprofits learn and grow. Donate now!</p>
                <a href="login.jsp" class="btn btn-danger">DONATE NOW <i class="fas fa-heart"></i></a>
            </div>
            <div class="col-md-4">
                <h5 class="footer-title">CONTACTS</h5>
                <p><i class="fas fa-map-marker-alt"></i> 92 Bowery St., NY 10013</p>
                <p><i class="fas fa-envelope"></i> bighearts@mail.com</p>
                <p><i class="fas fa-phone-alt"></i> +1 800 123 456 789</p>
                <div>
                    <a href="#" class="social-icon"><i class="fab fa-twitter"></i></a>
                    <a href="#" class="social-icon"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="social-icon"><i class="fab fa-pinterest"></i></a>
                    <a href="#" class="social-icon"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
            <div class="col-md-4">
                <h5 class="footer-title">NONPROFITS</h5>
                <ul class="footer-list">
                    <li><a href="#">Nonprofit Resources</a></li>
                    <li><a href="#">Corporate Giving Resources</a></li>
                    <li><a href="#">Corporate Gift Cards</a></li>
                    <li><a href="#">CSR Made Simple</a></li>
                    <li><a href="#">Start an Application</a></li>
                </ul>
            </div>
        </div>
        <div class="footer-bottom text-center mt-4">
            <p>Copyright © 2024 BigHearts by <a href="#">WebGeniusLab</a>. All Rights Reserved.</p>
            <p><a href="#">Terms of use</a> | <a href="#">Privacy Environmental Policy</a></p>
        </div>
    </div>
</footer>
	
</body>
</html>