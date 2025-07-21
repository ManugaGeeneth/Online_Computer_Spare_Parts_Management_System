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


@WebServlet("/deletedata")
public class deletedata extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public deletedata() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		part cus=new part();
		cus.setEmail(request.getParameter("email"));
		
		
		customerservice service=new customerservice();
		service.deleteCustomer(cus);
		
		
		
		RequestDispatcher dispatcher =  request.getRequestDispatcher("readtable");
		dispatcher.forward(request, response);
	}

}
