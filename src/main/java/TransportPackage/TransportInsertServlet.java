package TransportPackage;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TransportInsertServlet")
public class TransportInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// Collect parameters from the form
		String event_type = request.getParameter("event_type");
		String event_type_other = request.getParameter("event_type_other");
		String reservation_type = request.getParameter("reservation_type");
		String reservation_type_other = request.getParameter("reservation_type_other");
		String distance_range = request.getParameter("distance_range");
		String distance_range_other = request.getParameter("distance_range_other");
		String event_date = request.getParameter("event_date");
		String pickup_location = request.getParameter("pickup_location");
		String drop_location = request.getParameter("drop_location");
		String contact_person = request.getParameter("contact_person");
		String contact_number = request.getParameter("contact_number");
		String vehicle_type = request.getParameter("vehicle_type");
		String vehicle_type_other = request.getParameter("vehicle_type_other");
		String route_name = request.getParameter("route_name");
		String schedule_time = request.getParameter("schedule_time"); // Expected format: HH:MM
		String capacity = request.getParameter("capacity");
		String driver_name = request.getParameter("driver_name");
		String driver_name_other = request.getParameter("driver_name_other");
		String status = request.getParameter("status");
		String status_other = request.getParameter("status_other");
		String notes = request.getParameter("notes");

		// Call the TransportController to insert the data
		boolean isTrue;
		isTrue = TransportController.insertdata(event_type, event_type_other, reservation_type, reservation_type_other, distance_range, distance_range_other,
			event_date, pickup_location, drop_location, contact_person, contact_number, vehicle_type, vehicle_type_other,
			route_name, schedule_time, capacity, driver_name, driver_name_other, status, status_other, notes);

		// Check if the insert was successful and provide feedback
		if (isTrue == true) {
			String alertMessage = "Data Insert Successful";
			response.getWriter().println("<script> alert ('"+alertMessage+"');window.location.href = 'TransportGetAllServelet'</script>");
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Pankajiwrong.jsp");
			dis2.forward(request, response);
		}
	}
}
