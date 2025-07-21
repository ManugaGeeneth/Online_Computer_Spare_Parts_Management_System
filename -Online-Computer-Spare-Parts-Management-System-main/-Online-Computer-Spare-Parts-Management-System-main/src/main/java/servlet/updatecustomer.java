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

/**
 * Servlet implementation class updatecustomer
 */
@WebServlet("/updatecustomer")
public class updatecustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updatecustomer() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		part cus=new part(); 
		 cus.setCpu(request.getParameter("cpu"));
	        cus.setVcard(request.getParameter("vcard"));
	        cus.setMem(request.getParameter("mem"));
	        cus.setMboard(request.getParameter("mboard"));
	        cus.setCool(request.getParameter("cool"));
	        cus.setSsd(request.getParameter("ssd"));
	        cus.setEmail(request.getParameter("email"));
	        
		customerservice service =new customerservice();
		service.updateCustomer(cus);
		
		 RequestDispatcher dispatcher =request.getRequestDispatcher("readtable");
		
		dispatcher.forward(request, response);
	}

}
