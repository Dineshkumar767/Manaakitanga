<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donation Page</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
 

<!-- Include Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	rel="stylesheet">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
               margin: 0;
    padding: 0;
    overflow-x: hidden;
    box-sizing: border-box;

        }
         .footer {
            background-color: #343a40;
            color: #fff;
        }
        .footer {
            color: #fff;
        }
  
        .category-block {
            cursor: pointer;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            border-radius: 10px;
            overflow: hidden;
        }
        .category-block:hover {
            transform: scale(1.05);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .form-container {
            display: none;
            margin-top: 20px;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #fff;
        }
        .form-container.active {
            display: block;
        }
        
      .motivation {
    margin: 30px 0;
    padding: 20px;
    background-color: #e9ecef;
    border-radius: 5px;
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    justify-content: center;
}

.motivation img {
    max-width: 100%;
    height: auto;
    border-radius: 10px;
    flex: 1;
    max-height: 300px;
    object-fit: cover;
}

.motivation .text-content {
    margin-left: 20px;
    flex: 2;
}

@media (max-width: 768px) {
    .motivation {
        flex-direction: column;
        text-align: center;
    }

    .motivation .text-content {
        margin-left: 0;
        margin-top: 20px;
    }
}

        .category-image {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-radius: 10px;
        }
        .carousel {
            position: relative;
            width: 100%;
            max-width: 1300px;
            margin: auto;
        }
        .carousel-inner img {
            width: 100%;
            height: 400px;
            object-fit: cover;
        }
        .carousel-control-prev, .carousel-control-next {
            width: 5%;
        }
        .carousel-control-prev-icon, .carousel-control-next-icon {
            background-color: rgba(0, 0, 0, 0.5);
            border-radius: 50%;
        }
/* Navbar Styles */
.navbar-brand span {
    font-weight: bold;
    font-size: 1.25rem;
}

.navbar-nav .nav-link {
    font-size: 1rem;
    font-weight: 500;
}

.navbar .btn-outline-primary {
    border-color: orange;
    color: orange;
}
.navbar .btn-outline-primary:hover {
    color: white;
    background-color: orange;
}

.navbar .btn-primary {
    background-color: orange;
    border-color: orange;
}
        
        /* Adjusted Carousel Caption for Full Text Visibility */
        .carousel-caption {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            
            width: 80%; /* Added to prevent text overflow */
            max-width: 100%; /* Ensures it doesn't overflow out of bounds */
            white-space: normal; /* Allows wrapping of text */
            padding: 10px; /* Added padding for better spacing around text */
            border-radius: 10px; /* Rounded corners for aesthetic */
        }

        /* Typing Text Animation */
        .typing-text {
            display: inline-block;
            font-size: 2rem;
            font-weight: bold;
            white-space: nowrap;
            
            overflow: hidden;
            animation: typing 4s steps(40, end) infinite, blink-caret .75s step-end infinite;
        }

@keyframes typing {
    from { width: 0; }
    to { width: 100%; }
}

@keyframes blink-caret {
    from, to { border-color: transparent; }
    50% { border-color: #fff; }
}
        
    </style>
</head>
<body>
    <!-- Header -->
   
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
					
					<li class="nav-item"><a class="nav-link" href="blog.jsp">Blog</a></li>
					
					<li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
					<li class="nav-item"><a class="nav-link" href="about.jsp">About Us</a></li>
				</ul>

				<!-- Search and Donate Now buttons -->
				<div class="d-flex">
					<button class="btn btn-outline-primary me-2" type="button">
						<i class="fa-solid fa-magnifying-glass"></i>
					</button>
					
				</div>
			</div>
		</div>
	</nav>
 
   <!-- Carousel -->
<div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="assets/carousel1.jpg" class="d-block w-100" alt="Slide 1">
            <div class="carousel-caption">
                <div class="typing-text" id="text1">Welcome to our Donation Drive</div>
            </div>
        </div>
        <div class="carousel-item">
            <img src="assets/carousel2.jpg" class="d-block w-100" alt="Slide 2">
            <div class="carousel-caption">
                <div class="typing-text" id="text2">Your Support Makes a Difference</div>
            </div>
        </div>
        <div class="carousel-item">
            <img src="assets/carousel3.jpg" class="d-block w-100" alt="Slide 3">
            <div class="carousel-caption">
                <div class="typing-text" id="text3">Join Us in Making an Impact</div>
            </div>
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
   <!-- Main Content -->
<div class="container">
    <h1 class="my-4 text-center">Choose a Donation Category</h1>
    <div class="row">
        <div class="col-md-4 mb-4">
            <div class="category-block text-center p-3 text-black" onclick="window.location.href='donationForm.jsp';" style="background-color: #eef2e2;">
                <img src="https://cdn.create.vista.com/api/media/small/38411117/stock-photo-books-in-library-room" class="category-image" alt="Books">
                <h3>Donate Books</h3>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="category-block text-center p-3 text-black" onclick="window.location.href='fooddonationform.jsp';" style="background-color: #eef2e2;">
                <img src="https://img.freepik.com/premium-photo/large-bowl-food-with-fish-vegetables_197463-2405.jpg" class="category-image" alt="Food">
                <h3>Donate Food</h3>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="category-block text-center p-3 text-black" onclick="window.location.href='donate_money.jsp';" style="background-color: #eef2e2;">
                <img src="https://cdn.pixabay.com/photo/2017/09/07/08/54/money-2724241_640.jpg" class="category-image" alt="Money">
                <h3>Donate Money</h3>
            </div>
        </div>
        <div class="w-100 d-none d-md-block mb-4"></div> <!-- This empty div creates space between rows -->
        <div class="col-md-4 mb-4">
    <div class="category-block text-center p-3 text-black" onclick="window.location.href='other_donation.jsp';" style="background-color: #eef2e2;">
        <img src="https://www.rd.com/wp-content/uploads/2019/01/GettyImages-1144565915-copy-scaled.jpg" class="category-image" alt="Other Items">
        <h3>Donate Other Items</h3>
    </div>
</div>
</div>>
    </div>

        <!-- Motivation Section -->
        <div class="motivation">
            <img src="https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvczkzLXBtLTI3NTdfMS5qcGc.jpg">
            <div class="text-content">
                <h2>Why Donate?</h2>
                <p>Your donation has the power to change lives. By contributing, you're directly supporting those in need, whether it's providing food, education, medical care, or shelter. Every small donation collectively makes a significant impact on the lives of those who rely on the generosity of others.</p>
                When you donate, you're choosing to support a cause that's important to you. Whether it's helping children, supporting environmental initiatives, or assisting disaster-stricken communities, your donation aligns with your values and passions.
            </div>
        </div>

     
   
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

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
    document.addEventListener('DOMContentLoaded', function () {
        $('#carouselExampleIndicators').on('slide.bs.carousel', function () {
            let typingTexts = document.querySelectorAll('.typing-text');
            typingTexts.forEach(text => {
                text.style.animation = 'none';
                void text.offsetWidth; // Trigger reflow
                text.style.animation = '';
            });	
        });
    });
</script>
    
</body>
</html>