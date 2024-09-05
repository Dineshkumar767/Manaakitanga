<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donation Success</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: linear-gradient(to right, #ff7e5f, #feb47b);
        }

        .certificate {
            background-color: white;
            padding: 20px 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
            text-align: center;
            animation: fadeIn 1s ease-in-out;
        }

        h1 {
            color: #333;
            font-size: 2rem;
            margin-bottom: 20px;
        }

        p {
            font-size: 1rem;
            color: #555;
            margin: 10px 0;
        }

        .highlight {
            font-weight: bold;
            color: #ff7e5f;
        }

        .buttons {
            margin-top: 20px;
        }

        .button {
            background-color: #ff7e5f;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            margin: 0 10px;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #feb47b;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
    <script>
        function printCertificate() {
            window.print();
        }
    </script>
</head>
<body>
    <div class="certificate">
        <h1>Donation Certificate</h1>
        <p>Dear <span class="highlight"><%= request.getAttribute("donername") %></span>,</p>
        <p>Thank you for your generous donation of <span class="highlight"><%= request.getAttribute("quantity") %></span> copies of the book titled <span class="highlight"><%= request.getAttribute("bookname") %></span>, authored by <span class="highlight"><%= request.getAttribute("bookauthor") %></span>, published in the year <span class="highlight"><%= request.getAttribute("bookyear") %></span>.</p>
        <p>Your support is invaluable and will make a significant difference.</p>
        <p>Thank you once again for your kindness!</p>
        <div class="buttons">
            <button class="button" onclick="printCertificate()">Print Certificate</button>
            <a class="button" href="<%= request.getContextPath() %>/home.jsp">Home</a>
        </div>
    </div>
</body>
</html>
