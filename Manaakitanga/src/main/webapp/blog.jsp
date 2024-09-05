<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Include Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet" href="css/blog.css">
<link rel="stylesheet" href="css/navbar.css">
<link rel="stylesheet" href="css/footer.css">


</head>
<body>

<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">
			<!-- Logo -->
			<a class="navbar-brand d-flex align-items-center" href="index.jsp"> <!-- <img src="logo-placeholder.png" alt="Logo" style="width: 40px; height: 40px;"> -->
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
						aria-current="page" href="index.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Donations</a></li>
					<li class="nav-item"><a class="nav-link" href="blog.jsp">Blog</a></li>
					<li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
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

 <!-- Hero Section -->
    <section class="hero">
        <div class="hero-overlay">
            <div class="hero-content">
                <h1 class="blog-title">Blog</h1>
                <nav class="breadcrumb">
                    <a href="index.jsp">Home</a> > <span>Blog</span>
                </nav>
            </div>
        </div>
    </section>

    <!-- Blog Posts Section -->
    <section class="blog-posts">
        <div class="container">
            <div class="post-grid">
                <!-- Blog Post 1 -->
                <div class="post">
                    <img src="images/blog1.jpg" alt="Blog Image">
                    <div class="post-info">
                        <p class="post-date">Sept 10, 2018 Admin 3</p>
                        <h3 class="post-title">Hurricane Irma has devastated Florida</h3>
                        <p class="post-excerpt">A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                    </div>
                </div>
                <!-- Blog Post 2 -->
                <div class="post">
                    <img src="images/blog2.jpg" alt="Blog Image">
                    <div class="post-info">
                        <p class="post-date">Sept 10, 2018 Admin 3</p>
                        <h3 class="post-title">Hurricane Irma has devastated Florida</h3>
                        <p class="post-excerpt">A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                    </div>
                </div>
                <!-- Blog Post 3 -->
                <div class="post">
                    <img src="images/blog-post-2.jpg" alt="Blog Image">
                    <div class="post-info">
                        <p class="post-date">Sept 10, 2018 Admin 3</p>
                        <h3 class="post-title">Hurricane Irma has devastated Florida</h3>
                        <p class="post-excerpt">A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                    </div>
                </div>
                <!-- Add more blog posts as needed -->
            </div>
        </div>
    </section>
    
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