package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.part;
import services.customerservice;


@WebServlet("/readtable")
public class readtable extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public readtable() {
        super();
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		customerservice service =new customerservice();
		ArrayList<part>customer=service.getAllCustomer();
		request.setAttribute("customer", customer);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("admintable.jsp");
		
		
		dispatcher.forward(request, response);
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
