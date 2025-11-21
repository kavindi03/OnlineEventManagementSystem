package TransportPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TransportDeleteServelet")
public class TransportDeleteServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String transport_id = request.getParameter("transport_id");
		boolean isTrue;
		isTrue = TransportController.deletedata(transport_id);
		if(isTrue==true) {
			String alertMessage = "Data Delete Successful";
			response.getWriter().println("<script>alert('"+alertMessage+"');"+"window.location.href='TransportGetAllServelet';</script>");
			
			
		}
		else {
			List<TransportModel>transportdetail = TransportController.getById(transport_id);
			request.setAttribute("transportdetail", transportdetail);
			
			RequestDispatcher dispacher =request.getRequestDispatcher("wrong.jsp");
			dispacher.forward(request, response);
			
		}
	}
}