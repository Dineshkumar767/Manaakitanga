<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - NGO Team</title>
    
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
    body {
        font-family: 'Poppins', sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f8f9fa;
        color: #333;
    }

    .header {
        background-color: #343a40;
        padding: 10px 0;
    }

    .navbar {
        display: flex;
        justify-content: space-between;
        align-items: center;
        max-width: 1200px;
        margin: auto;
        padding: 0 20px;
        color: #fff;
    }

    .navbar-brand {
        font-size: 24px;
        font-weight: 600;
    }

    .navbar-links {
        list-style: none;
        display: flex;
        gap: 20px;
    }

    .navbar-links li a {
        color: #fff;
        text-decoration: none;
        transition: color 0.3s;
    }

    .navbar-links li a:hover {
        color: #ff6b6b;
    }

    .navbar-toggler {
        display: none;
        font-size: 28px;
        cursor: pointer;
    }

    @media (max-width: 768px) {
        .navbar-links {
            flex-direction: column;
            display: none;
            background-color: #343a40;
            position: absolute;
            top: 60px;
            right: 20px;
            width: 200px;
            border-radius: 5px;
            padding: 10px 0;
            z-index: 1000;
        }

        .navbar-toggler {
            display: block;
        }

        .navbar-links.active {
            display: flex;
        }
    }

    .hero {
        background: url('assets/new.jpg') no-repeat center center/cover;
        height: 60vh;
        display: flex;
        align-items: center;
        justify-content: center;
        color: #fff;
        text-align: center;
        animation: fadeIn 1s ease-in-out;
    }

    .hero-title {
        font-size: 3rem;
        margin: 0;
    }

    .hero-subtitle {
        font-size: 1.5rem;
        margin-top: 10px;
    }

    .team {
        display: flex;
        justify-content: space-around;
        flex-wrap: wrap;
        padding: 50px 20px;
        background-color: #fff;
    }

    .team-member {
        max-width: 300px;
        text-align: center;
        margin: 20px;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        border-radius: 10px;
        overflow: hidden;
        background-color: #f9f9f9;
    }

    .team-member img {
        width: 100%;
        height: auto;
        border-bottom: 5px solid #ff6b6b;
        transition: transform 0.3s ease;
    }

    .team-member:hover {
        transform: translateY(-10px);
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
    }

    .team-member:hover img {
        transform: scale(1.05);
    }

    .team-member h3 {
        margin: 15px 0 5px 0;
        font-size: 1.5rem;
        color: #343a40;
    }

    .team-member p {
        font-size: 1rem;
        margin: 0 10px 15px 10px;
        color: #555;
    }

    .about-project {
        padding: 50px 20px;
        background-color: #f8f9fa;
        text-align: center;
    }

    .about-project h2 {
        font-size: 2.5rem;
        margin-bottom: 20px;
        color: #343a40;
    }

    .about-project p {
        max-width: 800px;
        margin: auto;
        font-size: 1.2rem;
        color: #555;
    }

    .footer {
        background-color: #343a40;
        color: #fff;
        text-align: center;
        padding: 20px 0;
    }

    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }
    
    </style>
</head>
<body>
    <header class="header">
        <nav class="navbar">
            <div class="navbar-brand">Our NGO</div>
            <ul class="navbar-links">
                <li><a href="home.jsp">Home</a></li>
                <li><a href="about.jsp">About Us</a></li>
                <li><a href="projects.jsp">Projects</a></li>
                <li><a href="contact.jsp">Contact</a></li>
            </ul>
            <div class="navbar-toggler">&#9776;</div>
        </nav>
    </header>

    <section class="hero">
        <div class="hero-content">
            <h1 class="hero-title">Meet Our Dedicated Team</h1>
            <p class="hero-subtitle">Together, we're making the world a better place.</p>
        </div>
    </section>

    <section class="team">
        <div class="team-member">
            <img src="images/leader-image.jpg" alt="Dinesh Kumar">
            <h3>Dinesh Kumar</h3>
            <p>Team Leader</p>
            <p>As the leader of this passionate team, Dinesh oversees all operations and ensures that our projects align with the NGO's mission to create meaningful change.</p>
        </div>
        <div class="team-member">
            <img src="images/member1-image.jpg" alt="Narender">
            <h3>Narender</h3>
            <p>Web Developer</p>
            <p>Narender is responsible for developing and maintaining the NGO's website, ensuring it remains accessible, user-friendly, and impactful.</p>
        </div>
        <div class="team-member">
            <img src="images/member2-image.jpg" alt="Shivasaiprasad">
            <h3>Shivasaiprasad</h3>
            <p>Project Manager</p>
            <p>Shivasaiprasad manages our various projects, coordinating efforts and ensuring that our initiatives are completed on time and within budget.</p>
        </div>
        <div class="team-member">
            <img src="images/member3-image.jpg" alt="Shivam">
            <h3>Shivam</h3>
            <p>Graphic Designer</p>
            <p>Shivam brings our vision to life with stunning visuals, creating compelling designs that resonate with our audience and enhance our campaigns.</p>
        </div>
    </section>

    <section class="about-project">
        <h2>About Our Project</h2>
        <p>Our NGO is committed to making a difference in the world. Through our various initiatives, we aim to provide support to those in need, raise awareness about important issues, and inspire others to join us in our mission. Our current project focuses on [Project Details], which is designed to [Purpose and Goal of the Project].</p>
    </section>

    <footer class="footer">
        <p>&copy; 2024 Our NGO. All rights reserved.</p>
    </footer>

    <script>
    document.querySelector('.navbar-toggler').addEventListener('click', function() {
        document.querySelector('.navbar-links').classList.toggle('active');
    });
    </script>

</body>
</html>
