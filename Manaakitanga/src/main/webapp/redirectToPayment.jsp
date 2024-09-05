<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Redirecting to Payment</title>
    <script>
        function redirectToPayment() {
            // Replace with actual payment gateway URL
            const paymentGatewayUrl = "https://www.paymentgateway.com/pay";
            const donationAmount = "<%= request.getAttribute("donationAmount") %>";
            const donername = "<%= request.getAttribute("donername") %>";
            const recipient = "<%= request.getAttribute("recipient") %>";

            // Redirect to payment gateway with necessary parameters
            window.location.href = `${paymentGatewayUrl}?amount=${donationAmount}&recipient=${recipient}&donername=${donername}`;
        }

        // Redirect as soon as the page loads
        window.onload = redirectToPayment;
    </script>
</head>
<body>
    <p>Redirecting to payment gateway...</p>
</body>
</html>
