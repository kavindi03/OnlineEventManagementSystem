<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transport Table</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;500;700&family=Playfair+Display:ital,wght@1,400&display=swap" rel="stylesheet">
    <style>
        /* Full background with blur */
        body, html {
            height: 100%;
            margin: 0;
            font-family: 'Roboto', sans-serif;
            overflow-x: hidden;
        }

        .background {
            background-image: url('background.jpg'); /* Replace with your image path */
            filter: blur(8px);
            -webkit-filter: blur(8px);
            height: 100%;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            position: fixed;
            width: 100%;
            z-index: -1;
        }

        .content-wrapper {
            padding: 30px;
            background-color: rgba(255, 255, 255, 0.85);
            margin: 40px auto;
            width: 95%;
            max-width: 1400px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }

        h2 {
            text-align: center;
            font-family: 'Playfair Display', serif;
            color: #333;
            font-size: 32px;
            margin-bottom: 20px;
        }

        #searchInput {
            width: 100%;
            padding: 12px 20px;
            margin-bottom: 20px;
            border: 2px solid #ccc;
            border-radius: 10px;
            font-size: 16px;
            font-style: italic;
            transition: 0.3s ease;
        }

        #searchInput:focus {
            border-color: #007BFF;
            outline: none;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 14px;
            background-color: #fff;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px 12px;
            text-align: center;
        }

        th {
            background-color: #007BFF;
            color: white;
            font-weight: bold;
        }

        td {
            color: #333;
            font-style: italic;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #e1f5fe;
        }

        button {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 8px 12px;
            border-radius: 6px;
            cursor: pointer;
            font-weight: bold;
            transition: 0.3s;
        }

        button:hover {
            background-color: #218838;
        }

        form {
            display: inline;
        }

        a button {
            background-color: #007BFF;
        }

        a button:hover {
            background-color: #0056b3;
        }

        @media (max-width: 768px) {
            table, th, td {
                font-size: 12px;
            }

            h2 {
                font-size: 24px;
            }

            #searchInput {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>

<div class="background"></div>

<div class="content-wrapper">
    <h2>Transport Table</h2>
    <input type="text" id="searchInput" placeholder="Search...">

    <table>
        <tr>
            <th>Transport ID</th>
            <th>Event Type</th>
            <th>Reservation Type</th>
            <th>Distance Range</th>
            <th>Event Date</th>
            <th>Pickup Location</th>
            <th>Drop Location</th>
            <th>Contact Person</th>
            <th>Contact Number</th>
            <th>Vehicle Type</th>
            <th>Route Name</th>
            <th>Schedule Time</th>
            <th>Capacity</th>
            <th>Driver Name</th>
            <th>Status</th>
            <th>Action</th>
        </tr>

        <c:forEach var="transport" items="${allTransport}">
            <tr>
                <td>${transport.transport_id}</td>
                <td>${transport.event_type}</td>
                <td>${transport.reservation_type}</td>
                <td>${transport.distance_range}</td>
                <td>${transport.event_date}</td>
                <td>${transport.pickup_location}</td>
                <td>${transport.drop_location}</td>
                <td>${transport.contact_person}</td>
                <td>${transport.contact_number}</td>
                <td>${transport.vehicle_type}</td>
                <td>${transport.route_name}</td>
                <td>${transport.schedule_time}</td>
                <td>${transport.capacity}</td>
                <td>${transport.driver_name}</td>
                <td>${transport.status}</td>
                <td>
                    <a href="TransportUpdate.jsp?transport_id=${transport.transport_id}&event_type=${transport.event_type}&reservation_type=${transport.reservation_type}&distance_range=${transport.distance_range}&event_date=${transport.event_date}&pickup_location=${transport.pickup_location}&drop_location=${transport.drop_location}&contact_person=${transport.contact_person}&contact_number=${transport.contact_number}&vehicle_type=${transport.vehicle_type}&route_name=${transport.route_name}&schedule_time=${transport.schedule_time}&capacity=${transport.capacity}&driver_name=${transport.driver_name}&status=${transport.status}">
                        <button>Update</button>
                    </a>
                    <form action="TransportDeleteServelet" method="post">
                        <input type="hidden" name="transport_id" value="${transport.transport_id}"/>
                        <button>Delete</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>

<script>
    function filterTable() {
        var input, filter, table, tr, td, i, txtValue, rowVisible;
        input = document.getElementById("searchInput");
        filter = input.value.toUpperCase();
        table = document.querySelector("table");
        tr = table.getElementsByTagName("tr");

        for (i = 1; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td");
            rowVisible = false;

            for (var j = 0; j < td.length; j++) {
                if (td[j]) {
                    txtValue = td[j].textContent || td[j].innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        rowVisible = true;
                        break;
                    }
                }
            }
            tr[i].style.display = rowVisible ? "" : "none";
        }
    }

    document.getElementById("searchInput").addEventListener("input", filterTable);
</script>

</body>
</html>
