<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 350px;
            padding: 20px;
            text-align: center;
            animation: fadeIn 1s ease-in-out;
        }
        .container h2 {
            margin-bottom: 20px;
            color: #333;
            font-size: 24px;
        }
        .form-group {
            margin-bottom: 20px;
            position: relative;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            transition: border-color 0.3s;
        }
        .form-group input:focus {
            border-color: #66afe9;
            outline: none;
        }
        .show-password {
            position: absolute;
            right: 10px;
            top: 38px;
            cursor: pointer;
            transition: opacity 0.3s;
        }
        .form-group input[type="submit"] {
            background-color: #5cb85c;
            color: #fff;
            cursor: pointer;
            border: none;
            border-radius: 5px;
            transition: background-color 0.3s, transform 0.2s;
        }
        .form-group input[type="submit"]:hover {
            background-color: #4cae4c;
            transform: translateY(-2px);
        }
        .form-group input[type="submit"]:active {
            transform: translateY(0);
        }
        .signup-link {
            display: block;
            margin-top: 15px;
            color: #5cb85c;
            text-decoration: none;
            font-size: 14px;
        }
        .signup-link:hover {
            text-decoration: underline;
        }
        .error {
            color: red;
            font-size: 14px;
            margin-top: 10px;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
    <script>
        function togglePassword() {
            var password = document.getElementById('password');
            var showPassword = document.getElementById('showPassword');
            if (password.type === 'password') {
                password.type = 'text';
                showPassword.classList.remove('fa-eye');
                showPassword.classList.add('fa-eye-slash');
            } else {
                password.type = 'password';
                showPassword.classList.remove('fa-eye-slash');
                showPassword.classList.add('fa-eye');
            }
        }
    </script>
</head>
<body>
    <div class="container">
        <h2>Login</h2>
        <form action="LoginServlet" method="post">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
                <i id="showPassword" class="fas fa-eye show-password" onclick="togglePassword()"></i>
            </div>
            <div class="form-group">
                <input type="submit" value="Login">
            </div>
        </form>
        <a href="signup.jsp" class="signup-link">Not registered? Sign up here</a>
        <% if (request.getAttribute("loginErrorMessage") != null) { %>
            <p class="error">
                <%= request.getAttribute("loginErrorMessage") %>
            </p>
        <% } %>
    </div>
</body>
</html>
