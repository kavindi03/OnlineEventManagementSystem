package TransportPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TransportController {

    // Connect DB 
    private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    // Insert Data Function
    public static boolean insertdata(String event_type, String event_type_other, String reservation_type, 
                                      String reservation_type_other, String distance_range, String distance_range_other, 
                                      String event_date, String pickup_location, String drop_location, String contact_person, 
                                      String contact_number, String vehicle_type, String vehicle_type_other, String route_name, 
                                      String schedule_time, String capacity, String driver_name, String driver_name_other, 
                                      String status, String status_other, String notes) {
        boolean isSuccess = false;
        try {
            // DB CONNECTION CALL
            con = PankajiDBConnection.getConnection();
            stmt = con.createStatement();

            // SQL query
            String sql = "Insert into transport values (0,'" + event_type + "', '" + event_type_other + "', '" + reservation_type + "', '" + reservation_type_other + "', '" +
                    distance_range + "', '" + distance_range_other + "', '" + event_date + "', '" + pickup_location + "', '" +
                    drop_location + "', '" + contact_person + "', '" + contact_number + "', '" + vehicle_type + "', '" +
                    vehicle_type_other + "', '" + route_name + "', '" + schedule_time + "', '" + capacity + "', '" +
                    driver_name + "', '" + driver_name_other + "', '" + status + "', '" + status_other + "', '" + notes + "')";

            int rs = stmt.executeUpdate(sql);
            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return isSuccess;
    }

    // GET by ID
    public static List<TransportModel> getById(String transportID) {
        int convertedID = Integer.parseInt(transportID);
        ArrayList<TransportModel> transport = new ArrayList<>();

        try {
            // DB Connection
            con = PankajiDBConnection.getConnection();
            stmt = con.createStatement();

            // Query
            String sql = "select * from transport where id '" + convertedID + "'";

            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int transport_id = rs.getInt("transport_id");
                String event_type = rs.getString("event_type");
                String event_type_other = rs.getString("event_type_other");
                String reservation_type = rs.getString("reservation_type");
                String reservation_type_other = rs.getString("reservation_type_other");
                String distance_range = rs.getString("distance_range");
                String distance_range_other = rs.getString("distance_range_other");
                String event_date = rs.getString("event_date");
                String pickup_location = rs.getString("pickup_location");
                String drop_location = rs.getString("drop_location");
                String contact_person = rs.getString("contact_person");
                String contact_number = rs.getString("contact_number");
                String vehicle_type = rs.getString("vehicle_type");
                String vehicle_type_other = rs.getString("vehicle_type_other");
                String route_name = rs.getString("route_name");
                String schedule_time = rs.getString("schedule_time");
                String capacity = rs.getString("capacity");
                String driver_name = rs.getString("driver_name");
                String driver_name_other = rs.getString("driver_name_other");
                String status = rs.getString("status");
                String status_other = rs.getString("status_other");
                String notes = rs.getString("notes");

                TransportModel tp = new TransportModel(transport_id, event_type, event_type_other, reservation_type, 
                                                       reservation_type_other, distance_range, distance_range_other, 
                                                       event_date, pickup_location, drop_location, contact_person, 
                                                       contact_number, vehicle_type, vehicle_type_other, route_name, 
                                                       schedule_time, capacity, driver_name, driver_name_other, 
                                                       status, status_other, notes);
                transport.add(tp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return transport;
    }

    // GET All Data
    public static List<TransportModel> getAllTransport() {
        ArrayList<TransportModel> transports = new ArrayList<>();

        try {
            // DB Connection
            con = PankajiDBConnection.getConnection();
            stmt = con.createStatement();

            // Query
            String sql = "select * from transport";

            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int transport_id = rs.getInt("transport_id");
                String event_type = rs.getString("event_type");
                String event_type_other = rs.getString("event_type_other");
                String reservation_type = rs.getString("reservation_type");
                String reservation_type_other = rs.getString("reservation_type_other");
                String distance_range = rs.getString("distance_range");
                String distance_range_other = rs.getString("distance_range_other");
                String event_date = rs.getString("event_date");
                String pickup_location = rs.getString("pickup_location");
                String drop_location = rs.getString("drop_location");
                String contact_person = rs.getString("contact_person");
                String contact_number = rs.getString("contact_number");
                String vehicle_type = rs.getString("vehicle_type");
                String vehicle_type_other = rs.getString("vehicle_type_other");
                String route_name = rs.getString("route_name");
                String schedule_time = rs.getString("schedule_time");
                String capacity = rs.getString("capacity");
                String driver_name = rs.getString("driver_name");
                String driver_name_other = rs.getString("driver_name_other");
                String status = rs.getString("status");
                String status_other = rs.getString("status_other");
                String notes = rs.getString("notes");

                TransportModel tp = new TransportModel(transport_id, event_type, event_type_other, reservation_type, 
                                                       reservation_type_other, distance_range, distance_range_other, 
                                                       event_date, pickup_location, drop_location, contact_person, 
                                                       contact_number, vehicle_type, vehicle_type_other, route_name, 
                                                       schedule_time, capacity, driver_name, driver_name_other, 
                                                       status, status_other, notes);
                transports.add(tp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return transports;
    }

    // Update Data
    public static boolean updatedata(String transport_id, String event_type, String event_type_other, String reservation_type, 
                                      String reservation_type_other, String distance_range, String distance_range_other, 
                                      String event_date, String pickup_location, String drop_location, String contact_person, 
                                      String contact_number, String vehicle_type, String vehicle_type_other, String route_name, 
                                      String schedule_time, String capacity, String driver_name, String driver_name_other, 
                                      String status, String status_other, String notes) {
        try {
            // DB Connection
            con = PankajiDBConnection.getConnection();
            stmt = con.createStatement();

            // Query
            String sql = "update transport set event_type='" + event_type + "', event_type_other='" + event_type_other + "', " +
                    "reservation_type='" + reservation_type + "', reservation_type_other='" + reservation_type_other + "', " +
                    "distance_range='" + distance_range + "', distance_range_other='" + distance_range_other + "', " +
                    "event_date='" + event_date + "', pickup_location='" + pickup_location + "', drop_location='" + drop_location + "', " +
                    "contact_person='" + contact_person + "', contact_number='" + contact_number + "', vehicle_type='" + vehicle_type + "', " +
                    "vehicle_type_other='" + vehicle_type_other + "', route_name='" + route_name + "', schedule_time='" + schedule_time + "', " +
                    "capacity='" + capacity + "', driver_name='" + driver_name + "', driver_name_other='" + driver_name_other + "', " +
                    "status='" + status + "', status_other='" + status_other + "', notes='" + notes + "'"
                    +"where transport_id='"+transport_id+"'";

            int rs = stmt.executeUpdate(sql);

            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return isSuccess;
    }

    // Delete Data
    public static boolean deletedata(String transport_id) {
        int convID = Integer.parseInt(transport_id);

        try {
            // DB Connection
            con = PankajiDBConnection.getConnection();
            stmt = con.createStatement();

            String sql = "delete from transport where transport_id ='" + convID + "'";

            int rs = stmt.executeUpdate(sql);

            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isSuccess;
    }
}
