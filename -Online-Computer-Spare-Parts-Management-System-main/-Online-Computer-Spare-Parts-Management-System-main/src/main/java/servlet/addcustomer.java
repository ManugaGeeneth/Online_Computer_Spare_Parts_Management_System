package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.part;
import services.customerservice;

@WebServlet("/addcustomer")
public class addcustomer extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    public addcustomer() {
        super();
        // Default constructor
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // You can handle GET requests here if needed
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Create a new customer instance
        part cus = new part();
        
        // Set the new fields from the form
        cus.setCpu(request.getParameter("cpu"));
        cus.setVcard(request.getParameter("vcard"));
        cus.setMem(request.getParameter("mem"));
        cus.setMboard(request.getParameter("mboard"));
        cus.setCool(request.getParameter("cool"));
        cus.setSsd(request.getParameter("ssd"));
        cus.setEmail(request.getParameter("email"));
        
        // Initialize the customer service and register the customer
        customerservice service = new customerservice();
        service.regcustomer(cus);
            
        // Forward the request to home.jsp after successful registration
        RequestDispatcher dispatcher = request.getRequestDispatcher("admintable.jsp");
        dispatcher.forward(request, response);
    }
}
