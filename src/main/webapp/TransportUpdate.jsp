<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Transport Details</title>
    <style>
        /* Google Fonts */
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

        * {
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            margin: 0;
            padding: 0;
            background-image: url('https://i.pinimg.com/736x/52/14/75/521475b4756b57ac4d92b1c2dd85af5f.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            min-height:100vh;
            position: relative;
            color: #fff;
        }

        body::before {
            content: "";
            position: absolute;
            top:0;  left: 0; right: 0; bottom: 0;
            background-color: rgba(0, 0, 0, 0.6);
            backdrop-filter: blur(8px);
            z-index: -1;
        }

        .container {
            width: 90%;
            max-width: 1000px;
            margin: 50px auto;
            background-color: rgba(255, 255, 255, 0.1);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(255, 255, 255, 0.2);
        }

        h1 {
            text-align:center; 
            font-size: 32px;
            font-weight: 600;
            margin-bottom:30px; 
            color: #ffcc00;
        }

        .logo {
            display: block;
            margin: 0 auto 20px;
            width: 100px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 10px;
            vertical-align: top;
        }

        input[type="text"],
        input[type="date"],
        input[type="time"],
        textarea {
            width: 100%;
            padding: 10px;
            background-color: rgba(255, 255, 255, 0.9);
            border: none;
            border-radius: 6px;
            font-size: 14px;
            color: #333;
        }

        textarea {
            resize: vertical;
            height: 80px;
        }

        input[type="submit"] {
            background-color: #ffcc00;
            color: #000;
            padding: 12px 20px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            display: block;
            margin: 30px auto 10px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #ff9900;
            transform: scale(1.05);
        }

        footer {
            text-align: center;
            color: #ddd;
            font-size: 14px;
            margin-top: 40px;
            font-style: italic;
        }

        @media (max-width: 600px) {
            td {
                display: block;
                width: 100%;
            }

            table, tbody, tr {
                display: block;
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <img src="https://cdn-icons-png.flaticon.com/512/854/854878.png" alt="Logo" class="logo">
        <h1>Update Transport Details</h1>
        
        <%
    String transport_id = request.getParameter("transport_id");
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
    String schedule_time = request.getParameter("schedule_time");
    String capacity = request.getParameter("capacity");
    String driver_name = request.getParameter("driver_name");
    String driver_name_other = request.getParameter("driver_name_other");
    String status = request.getParameter("status");
    String status_other = request.getParameter("status_other");
    String notes = request.getParameter("notes");
%>
        

       <form action="TransportUpdateServelet" method="post">
    <table>
        <tr>
            <td>Transport ID :</td>
            <td><input type="text" id="transport_id" name="transport_id" value="<%=transport_id%>" readonly></td>
        </tr>
        <tr>
            <td>Event Type :</td>
            <td><input type="text" id="event_type" name="event_type" value="<%=event_type%>" required></td>
        </tr>
        <tr>
            <td>Event Type (Other) :</td>
            <td><input type="text" id="event_type_other" name="event_type_other" value="<%=event_type_other%>"></td>
        </tr>
        <tr>
            <td>Reservation Type :</td>
            <td><input type="text" id="reservation_type" name="reservation_type" value="<%=reservation_type%>" required></td>
        </tr>
        <tr>
            <td>Reservation Type (Other) :</td>
            <td><input type="text" id="reservation_type_other" name="reservation_type_other" value="<%=reservation_type_other%>"></td>
        </tr>
        <tr>
            <td>Distance Range :</td>
            <td><input type="text" id="distance_range" name="distance_range" value="<%=distance_range%>" required></td>
        </tr>
        <tr>
            <td>Distance Range (Other) :</td>
            <td><input type="text" id="distance_range_other" name="distance_range_other" value="<%=distance_range_other%>"></td>
        </tr>
        <tr>
            <td>Event Date :</td>
            <td><input type="date" id="event_date" name="event_date" value="<%=event_date%>" required></td>
        </tr>
        <tr>
            <td>Pickup Location :</td>
            <td><input type="text" id="pickup_location" name="pickup_location" value="<%=pickup_location%>" required></td>
        </tr>
        <tr>
            <td>Drop Location :</td>
            <td><input type="text" id="drop_location" name="drop_location" value="<%=drop_location%>" required></td>
        </tr>
        <tr>
            <td>Contact Person :</td>
            <td><input type="text" id="contact_person" name="contact_person" value="<%=contact_person%>" required></td>
        </tr>
        <tr>
            <td>Contact Number :</td>
            <td><input type="text" id="contact_number" name="contact_number" value="<%=contact_number%>" required></td>
        </tr>
        <tr>
            <td>Vehicle Type :</td>
            <td><input type="text" id="vehicle_type" name="vehicle_type" value="<%=vehicle_type%>" required></td>
        </tr>
        <tr>
            <td>Vehicle Type (Other) :</td>
            <td><input type="text" id="vehicle_type_other" name="vehicle_type_other" value="<%=vehicle_type_other%>"></td>
        </tr>
        <tr>
            <td>Route Name :</td>
            <td><input type="text" id="route_name" name="route_name" value="<%=route_name%>" required></td>
        </tr>
        <tr>
            <td>Schedule Time :</td>
            <td><input type="time" id="schedule_time" name="schedule_time" value="<%=schedule_time%>" required></td>
        </tr>
        <tr>
            <td>Capacity :</td>
            <td><input type="text" id="capacity" name="capacity" value="<%=capacity%>" required></td>
        </tr>
        <tr>
            <td>Driver Name :</td>
            <td><input type="text" id="driver_name" name="driver_name" value="<%=driver_name%>" required></td>
        </tr>
        <tr>
            <td>Driver Name (Other) :</td>
            <td><input type="text" id="driver_name_other" name="driver_name_other" value="<%=driver_name_other%>"></td>
        </tr>
        <tr>
            <td>Status :</td>
            <td><input type="text" id="status" name="status" value="<%=status%>" required></td>
        </tr>
        <tr>
            <td>Status (Other) :</td>
            <td><input type="text" id="status_other" name="status_other" value="<%=status_other%>"></td>
        </tr>
        <tr>
            <td>Notes :</td>
            <td><textarea id="notes" name="notes"><%=notes%></textarea></td>
        </tr>
    </table>
    <input type="submit" value="Submit">
</form>

    </div>

    <footer>
        © 2025 University Transport Management System. All rights reserved.
    </footer>
</body>
</html>
