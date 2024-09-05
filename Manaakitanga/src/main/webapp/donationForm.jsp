<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Donation Form</title>
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

        .container {
            background-color: white;
            padding: 10px 100px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px; /* Smaller width */
            width: 100%;
            animation: fadeIn 1s ease-in-out;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 15px; /* Reduced margin */
            font-size: 1.5rem; /* Smaller font size */
        }

        label {
            font-weight: bold;
            margin-bottom: 3px; /* Reduced margin */
            display: block;
            color: #555;
            font-size: 0.9rem; /* Smaller font size */
        }

        input[type="text"], input[type="number"], textarea {
            width: 100%;
            padding: 8px; /* Reduced padding */
            margin: 8px 0 15px; /* Reduced margin */
            border: 1px solid #ddd;
            border-radius: 5px;
            transition: border-color 0.3s ease;
            font-size: 0.9rem; /* Smaller font size */
        }

        input[type="text"]:focus, input[type="number"]:focus, textarea:focus {
            border-color: #ff7e5f;
            outline: none;
        }

        input[type="submit"] {
            background-color: #ff7e5f;
            color: white;
            padding: 10px 15px; /* Reduced padding */
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 0.9rem; /* Smaller font size */
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #feb47b;
        }

        textarea {
            resize: vertical;
            min-height: 80px; /* Smaller height */
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

        /* Responsive Design */
        @media (max-width: 600px) {
            .container {
                padding: 10px 15px;
            }

            h1 {
                font-size: 1.3rem; /* Adjust font size for small screens */
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Book Donation Form</h1>
        <form action="SubmitDonation" method="post">
            <label for="donername">Donor Name:</label>
            <input type="text" id="donername" name="donername" required>

            <label for="bookname">Book Name:</label>
            <input type="text" id="bookname" name="bookname" required>

            <label for="bookauthor">Book Author:</label>
            <input type="text" id="bookauthor" name="bookauthor" required>

            <label for="bookyear">Book Year:</label>
            <input type="number" id="bookyear" name="bookyear" min="1000" max="9999" required>

            <label for="quantity">Quantity:</label>
            <input type="number" id="quantity" name="quantity" min="1" required>

            <label for="donormobileno">Donor Mobile No:</label>
            <input type="text" id="donormobileno" name="donormobileno" required>

            <label for="donoraddress">Donor Address:</label>
            <textarea id="donoraddress" name="donoraddress" required></textarea>

            <input type="submit" value="Submit Donation">
        </form>
    </div>
</body>
</html>
