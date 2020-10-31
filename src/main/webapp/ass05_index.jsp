<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Home</title>
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<h2>Widget Order Form</h2>

	<%
	Integer quantity = request.getAttribute("quantity") == null ? 0 : 
						(Integer) request.getAttribute("quantity");
	String customer_name = request.getAttribute("customerName") == null ? "" : 
						(String) request.getAttribute("customerName");
	String customer_phone = request.getAttribute("customerPhone") == null ? "" :
                        (String) request.getAttribute("customerPhone");
	String customer_email = request.getAttribute("customerEmail") == null ? "" :
						(String) request.getAttribute("customerEmail");
	String creditCardNumber = request.getAttribute("cardNumber") == null ? "" :
						(String) request.getAttribute("cardNumber");
	String creditCardYear = request.getAttribute("ExpirationYear") == null ? "" :
						(String) request.getAttribute("ExpirationYear");
	String creditCardMonth = request.getAttribute("ExpirationMonth") == null ? "" :
						(String) request.getAttribute("ExpirationMonth");
	String processor = request.getAttribute("processor") == null ? "" :
                        (String) request.getAttribute("processor");
    String monitor = (String) request.getAttribute("monitor");
	%>


    <form action="validate_ass05" method="POST">
        <table cellspacing="5">
            <tr>
                <td align="right">
					Number to purchase:<br>
					(at least 1)
				</td>
				<td><input type="text" name="quantity" value="<%=quantity %>" required>*</td>
				<td>
					<%
						String err1 = (String) request.getAttribute("errorQuantity");
						if (err1 != null) {
					%>
							<font color="red"><%=err1 %></font>
					<% } %>
				</td>
            </tr>
            <tr>
                <td align="right">Your name:</td>
                <td><input type="text" name="customerName" value="<%=customer_name %>" required>*</td>
			</tr>
			<tr>
                <td align="right">
					Your phone:<br>
					(in format xxx-xxx-xxxx)
				</td>
				<td><input type="text" name="customerPhone" value="<%=customer_phone %>" required>*</td>
				<td>
					<%
						String err2 = (String) request.getAttribute("errorPhone");
						if (err2 != null) {
					%>
							<font color="red"><%=err2 %></font>
					<% } %>
				</td>
            </tr>
            <tr>
                <td align="right">Your email:</td>
				<td><input type="text" name="customerEmail" value="<%=customer_email %>">(optional)</td>
				<td>
					<%
						String err3 = (String) request.getAttribute("errorEmail");
						if (err3 != null) {
					%>
							<font color="red"><%=err3 %></font>
					<% } %>
				</td>
			</tr>
			<tr></tr>
			<tr>
				<td align="right">			</td>
				<td>Number <input type="text" name="creditNumber" value="<%=creditCardNumber %>" required></td>
				<td>
					<%
						String err4 = (String) request.getAttribute("errorCardNumber");
						if (err4 != null) {
					%>
							<font color="red"><%=err4 %></font>
					<% } %>
				</td>
			</tr>
			<tr>
				<td align="right">Credit information</td>
			</tr>
			<tr>
				<td align="right">			</td>
				<td>
					Expiration date
					<select name="ExpirationMonth">
						<% for (int month = 1; month <= 12; month++) { %>
							<option value="<%= month %>"
								<% try {
								  if (month == Integer.parseInt(creditCardMonth)) {
								  %>
									selected
								  <%
								  }
								} catch (NumberFormatException e) {
								  
								}
								%>
							> <%= month %></option>
						<% } %>
					</select>
					<select name="ExpirationYear">
						<% for (int year = 1980; year <= 2112; year++) { %>
						<option value="<%= year %>" 
							<% try {
								if (year == Integer.parseInt(creditCardYear)) {
								%>
								  selected
								<%
								}
							  } catch (NumberFormatException e) {
								// Do nothing
							  }
							  %>
							><%= year %></option>
						<% } %>
					</select>
				</td>
				<td>
					<%
						String err5 = (String) request.getAttribute("errorCard");
						if (err5 != null) {
					%>
							<font color="red"><%=err5 %></font>
					<% } %>
				</td>
			</tr>
			<br>
			<tr>
				<td>
					<div class="form-content">
						<div class="form-group">
							<h3 id="form-title">   Processor</h3>
           					<div>
           					  <input type="radio" name="processor" id="celeron-d" value="Celeron D"
								<%
                   				 if (processor.equals("Celeron D")) {
                   				%>
                      				checked
                    			<%
                    			}
                  				%>
           					  />
           					  <label for="celeron-d">Celeron D</label>
           					</div>
           					<div>
           					  <input type="radio" name="processor" id="pentium-v" value="Pentium V"
								   <%
                   				 if (processor.equals("Pentium V")) {
                   				%>
                      				checked
                    			<%
                    			}
                  				%>
           					  />
           					  <label for="pentium-v">Pentium V</label>
           					</div>
           					<div>
           					  <input type="radio" name="processor" id="pentium-d" value="Pentium D"
								<%
                   				 if (processor.equals("Pentium D")) {
                   				%>
                      				checked
                    			<%
                    			}
                  				%>   
           					  />
           					  <label for="pentium-d">Pentium D</label>
							</div> 
							<div>
								<%
								String err6 = (String) request.getAttribute("buyReminder_processor");
								if (err6 != null) {
								%>
								<font color="red"><%=err6 %></font>
								<% } %>
							</div>   
						</div>
						<div class="form-group">
							<h3 id="form-title">Accessories</h3>
            				<div>
								<input type="checkbox" name="monitor" id="monitor" value="Monitor"
								<%
                   				 if (monitor != null) {
                   				%>
                      				checked
                    			<%
                    			}
                  				%>
								/>
            					<label for="monitor">Monitor</label>
							</div>
							<div>
								<%
								String err7 = (String) request.getAttribute("buyReminder_monitor");
								if (err7 != null) {
								%>
								<font color="red"><%=err7 %></font>
								<% } %>
							</div>
            				<select name="peripherals" id="peripherals" size="3" multiple>
            				  	<option value="camera">Camera</option>
            				  	<option value="printer">Printer</option>
							  	<option value="scanner">Scanner</option>
							</select>
							<div>
								<%
								String err8 = (String) request.getAttribute("buyReminder_peripherals");
								if (err8 != null) {
								%>
								<font color="red"><%=err8 %></font>
								<% } %>
							</div>
						</div>
					</div>
				</td>
			</tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Configure"></td>
            </tr>
        </table>
    </form>
</body>
</html>
