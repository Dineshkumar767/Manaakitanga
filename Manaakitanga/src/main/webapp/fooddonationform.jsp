<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food Donation Form</title>
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
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            animation: fadeIn 1s ease-in-out;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
            font-size: 1.5rem;
        }

        label {
            font-weight: bold;
            margin-bottom: 10px;
            display: block;
            color: #555;
        }

        input[type="text"], input[type="number"], textarea, select {
            width: 100%;
            padding: 10px;
            margin: 8px 0 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            transition: border-color 0.3s ease;
            font-size: 1rem;
        }

        input[type="text"]:focus, input[type="number"]:focus, textarea:focus, select:focus {
            border-color: #ff7e5f;
            outline: none;
        }

        input[type="submit"], .button {
            background-color: #ff7e5f;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 1rem;
            transition: background-color 0.3s ease;
            text-align: center;
            text-decoration: none;
            display: inline-block;
        }

        input[type="submit"]:hover, .button:hover {
            background-color: #feb47b;
        }

        textarea {
            resize: vertical;
            min-height: 80px;
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
</head>
<body>
    <div class="container">
        <h1>Food Donation Form</h1>
        <form action="SubmitFoodDonation" method="post">
            <label for="donername">Donor Name</label>
            <input type="text" id="donername" name="donername" required>

            <label for="recipient">Select Recipient</label>
            <select id="recipient" name="recipient" required>
               
                <option value="Ashram2">Ashram's</option>
                
                <option value="School2">Schools</option>
                
                <option value="OldAgeHome2">Old Age Homes</option>
            </select>

            <label for="donationAmount">Donation Amount (in $)</label>
            <input type="number" id="donationAmount" name="donationAmount" required min="1" step="0.01">

            <label for="donormobileno">Mobile Number</label>
            <input type="text" id="donormobileno" name="donormobileno" required>

            <label for="donoraddress">Address</label>
            <textarea id="donoraddress" name="donoraddress" required></textarea>

            <input type="submit" value="Donate">
        </form>
    </div>
</body>
</html>
