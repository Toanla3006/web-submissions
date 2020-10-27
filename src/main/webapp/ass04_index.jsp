<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Home</title>
</head>
<body>
	<h1>Widget Order Form</h1>
	<form action="validate" method="POST">
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
