<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Widget Order Form</title>
</head>
<body>
    <h2>Widget Order Form</h2>
    <form action="ass02_orderReply.jsp" method="GET">
        <table cellspacing="5">
            <tr>
                <td align="right">Number to purchase:</td>
                <td><input type="text" name="quantity"></td>
            </tr>
            <tr>
                <td align="right">Your name:</td>
                <td><input type="text" name="customerName"></td>
            </tr>
            <tr>
                <td align="right">Your email:</td>
                <td><input type="text" name="customerEmail"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Place Order"></td>
            </tr>
        </table>
    </form>
</body>
</html>