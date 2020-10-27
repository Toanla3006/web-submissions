import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/orderReply")
public class orderReply extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("customerName");
		String email = request.getParameter("customerEmail");
		String quantity = request.getParameter("quantity");
		double pricePerUnit = 9.95;
		int quantityNumber = Integer.parseInt(quantity);
		double totalCost = pricePerUnit * quantityNumber;

		out.println("<html>");
		out.println("<head>");
		out.println("<title>Order Confirmation</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h2>Order Confirmation</h2>");
		out.println("<p>");
		out.println("Thank you for your order of " + quantityNumber + " widgets, " + name + ".");
		out.println("</p>");
		out.println("<p>");
		out.println("At $" + pricePerUnit + ", your bill will be $" + totalCost + ".");
		out.println("</p>");
		out.println("<p>");
		out.println("You will be shortly receive an email confirmation at " + email + ".");
		out.println("</p>");
		out.println("</body>");
		out.println("</html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
