<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Order Confimation</title>
</head>
<body>
    <%
        String name = request.getParameter("customerName");
        String email = request.getParameter("customerEmail");
        String quantity = request.getParameter("quantity");
        double pricePerUnit = 9.95;
        int quantityNumber = Integer.parseInt(quantity);
        double totalCost = pricePerUnit * quantityNumber;
    %>


	<h1>Order Confimation</h1>
    <p>Thank you for your order of <%= quantity %> widgets, <%= name %>.</p>
    <p>At $<%= pricePerUnit %>, your bill will be $<%= totalCost %>.</p>
    <p>You will shortly recieve an email confirmation at <%= email %>.</p>
  </body>
</html>