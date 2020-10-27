<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Widget Order Form</title>
</head>
<body>
    <%
        String name = request.getParameter("customerName");
        String email = request.getParameter("customerEmail");
        String quantity = request.getParameter("quantity");
    %>

    <h2>Order Confirmation</h2>
    <p>Thank you for your order of <%= quantity %> widgets, <%= name %>.</p>
    <p>You will shortly receive an email confirmation at <%= email %>.</p>
</body>
</html>