import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/validate_ass05")
public class validate_ass05 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String customer_name = (request.getParameter("customerName")).trim();
		String customer_email = (request.getParameter("customerEmail")).trim();
		String customer_phone = (request.getParameter("customerPhone")).trim();
		String quantity = (request.getParameter("quantity")).trim();
		String creditCardNumber = (request.getParameter("creditNumber")).trim();
		String creditCardYear = (request.getParameter("ExpirationYear")).trim();
		String creditCardMonth = (request.getParameter("ExpirationMonth")).trim();
		String processor = request.getParameter("processor");
		String monitor = request.getParameter("monitor");
		String[] peripherals = request.getParameterValues("peripherals");

		int quantityNumber = 0;
		
		try {
			quantityNumber = Integer.parseInt(quantity);
		} catch (NumberFormatException e) {
			request.setAttribute("errorQuantity", "Please enter numeric character only");
		}
		
		if (quantityNumber > 0) {
			request.setAttribute("quantity", quantityNumber);
		}

		if (customer_name == null) {
			request.setAttribute("customerName", "");
		}
		else {
			request.setAttribute("customerName", customer_name);
		}

		Pattern phonePattern = Pattern.compile("(\\d\\D*){10}");
		Matcher phoneMatcher = phonePattern.matcher(customer_phone);
		if (!phoneMatcher.matches()) {
			request.setAttribute("customerPhone", "");
			request.setAttribute("errorPhone", "Please enter a pattern of 10 digit");
		}
		else {
			request.setAttribute("customerPhone", customer_phone);
		}

		Pattern emailPattern = Pattern.compile("[^@ \\t\\r\\n]+@[^@ \\t\\r\\n]+\\.[^@ \\t\\r\\n]+");
		Matcher emailMatcher = emailPattern.matcher(customer_email);
		if (!emailMatcher.matches() && !customer_email.isEmpty()) {
			request.setAttribute("customerEmail", "");
			request.setAttribute("errorEmail", "Please enter a valid email (abc@xyz.com)");
		}
		else {
			request.setAttribute("customerEmail", customer_email);
		}
		
		Pattern cardNumberPattern = Pattern.compile("\\d{16}");
		Matcher cardNumberMatcher = cardNumberPattern.matcher(creditCardNumber);
		if (!cardNumberMatcher.matches()) {
			request.setAttribute("cardNumber", "");
			request.setAttribute("errorCardNumber", "Please enter a vaild card number (16 digits)");
		} else {
			request.setAttribute("cardNumber", creditCardNumber);
		}

		GregorianCalendar c = new GregorianCalendar();
		int yearNow = c.get(Calendar.YEAR);
		int monthNow = c.get(Calendar.MONTH);
		try {
			if (Integer.parseInt(creditCardYear) <= yearNow && Integer.parseInt(creditCardMonth) < monthNow) {
				request.setAttribute("ExpirationYear", creditCardYear);
				request.setAttribute("ExpirationMonth", creditCardMonth);
				request.setAttribute("errorCard", "Your card has expired");
			}
			else {
				request.setAttribute("ExpirationYear", creditCardYear);
				request.setAttribute("ExpirationMonth", creditCardMonth);
			}
		} catch (NumberFormatException e) {
			// Nothing to do here
		}

		if (processor == null) {
			request.setAttribute("buyReminder_processor", "Buy something, will ya?");
		}
		else {
			request.setAttribute("processor", processor);
		}

		if (monitor == null) {
			request.setAttribute("buyReminder_monitor", "I'll take it you ain't getting a monitor then");
		}
		else {
			request.setAttribute("monitor", monitor);
		}

		if (peripherals == null) {
			request.setAttribute("buyReminder_peripherals", "What are you even doing here...");
		}
		else {
			request.setAttribute("peripherals", peripherals);
		}

		RequestDispatcher rd = request.getRequestDispatcher("ass05_index.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
