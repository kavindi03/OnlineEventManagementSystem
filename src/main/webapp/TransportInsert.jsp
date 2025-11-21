<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Transport Reservation Form</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;600;700&family=Playfair+Display:ital,wght@1,500&display=swap" rel="stylesheet">

    <!-- CSS Styling -->
    <style>
        html, body {
            margin:0;
            padding:0;
            font-family: 'Quicksand', sans-serif;
            height:100%;
        }

        body {
            background: url('https://i.pinimg.com/736x/df/1c/bc/df1cbc504d712c3c5c285ea2084b0de6.jpg') no-repeat center center fixed;
            background-size:cover;
            position:relative;
        }

        body::before {
            content: "";
            position: fixed;
            top:0;  left:0;  right:0;  bottom: 0;
            background-color: rgba(255, 255, 255, 0.3);
            backdrop-filter: blur(6px);
            z-index: 0;
        }

        .form-wrapper {
            position: relative;
            z-index: 1;
            max-width: 850px;
            margin: 40px auto;
            padding: 35px;
            background: rgba(255, 255, 255, 0.85);
            border-radius: 14px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.25);
        }

        h2 {
            text-align: center;
            font-family: 'Playfair Display', serif;
            font-style: italic;
            font-size: 2em;
            color: #2c3e50;
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px;
            vertical-align: top;
        }

        label {
            font-weight: bold;
            color: #34495e;
        }

        input[type="text"],
        input[type="date"],
        input[type="time"],
        select,
        textarea {
            width: 95%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 15px;
        }

        .checkbox-group label {
            display: block;
            margin-bottom: 4px;
            font-weight: normal;
        }

        input[type="submit"] {
            background-color: #2ecc71;
            color: white;
            padding: 12px 20px;
            border: none;
            font-size: 16px;
            border-radius: 8px;
            cursor: pointer;
            width: 100%;
            font-weight: bold;
            transition: background 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #27ae60;
        }

        .other-input {
            margin-top: 6px;
            display: none;
        }
    </style>

    <!-- JavaScript to handle "Other" input fields -->
    <script>
        window.addEventListener('DOMContentLoaded', () => {
            const selects = document.querySelectorAll('select');
            selects.forEach(select => {
                select.addEventListener('change', function () {
                    const otherInput = this.parentElement.querySelector('.other-input');
                    otherInput.style.display = this.value === "Other" ? 'block' : 'none';
                });
            });

            const checkGroups = document.querySelectorAll('.checkbox-group');
            checkGroups.forEach(group => {
                const checkboxes = group.querySelectorAll('input[type="checkbox"]');
                checkboxes.forEach(checkbox => {
                    checkbox.addEventListener('change', function () {
                        const otherInput = group.parentElement.querySelector('.other-input');
                        otherInput.style.display = (checkbox.value === "Other" && checkbox.checked) ? 'block' : 'none';
                    });
                });
            });
        });
    </script>
</head>
<body>

<div class="form-wrapper">
<form action="TransportInsertServlet" method="post">
    <h2>Transport Reservation Form</h2>
    <table>
        <!-- Event Type -->
        <tr>
            <td><label for="event_type">Event Type:</label></td>
            <td>
                <select name="event_type" required>
                    <option value="">-- Select Event --</option>
                    <option>Wedding</option>
                    <option>Birthday</option>
                    <option>Gender Reveal</option>
                    <option>Bride-to-be Party</option>
                    <option>Corporate Event</option>
                    <option>Graduation</option>
                    <option>Anniversary</option>
                    <option>Religious Ceremony</option>
                    <option>Other</option>
                </select>
                <input type="text" name="event_type_other" class="other-input" placeholder="If Other, specify here">
            </td>
        </tr>

        <!-- Transport Reservation Type -->
        <tr>
            <td><label for="reservation_type">Transport Reservation Type:</label></td>
            <td>
                <select name="reservation_type" required>
                    <option value="">-- Select Type --</option>
                    <option>One-Way</option>
                    <option>Round Trip</option>
                    <option>Multi-Day</option>
                    <option>Hourly</option>
                    <option>Other</option>
                </select>
                <input type="text" name="reservation_type_other" class="other-input" placeholder="If Other, specify here">
            </td>
        </tr>

        <!-- Distance Range -->
        <tr>
            <td><label for="distance_range">Distance Range (KM):</label></td>
            <td>
                <select name="distance_range" required>
                    <option value="">-- Select Range --</option>
                    <option>0 - 10</option>
                    <option>11 - 25</option>
                    <option>26 - 50</option>
                    <option>51 - 100</option>
                    <option>100+</option>
                    <option>Other</option>
                </select>
                <input type="text" name="distance_range_other" class="other-input" placeholder="If Other, specify here">
            </td>
        </tr>

        <!-- Event Date -->
        <tr>
            <td><label for="event_date">Event Date:</label></td>
            <td><input type="date" name="event_date" required></td>
        </tr>

        <!-- Pickup and Drop -->
        <tr>
            <td><label for="pickup_location">Pickup Location:</label></td>
            <td><input type="text" name="pickup_location" required></td>
        </tr>
        <tr>
            <td><label for="drop_location">Drop Location:</label></td>
            <td><input type="text" name="drop_location" required></td>
        </tr>

        <!-- Contact -->
        <tr>
            <td><label for="contact_person">Contact Person:</label></td>
            <td><input type="text" name="contact_person" required></td>
        </tr>
        <tr>
            <td><label for="contact_number">Contact Number:</label></td>
            <td><input type="text" name="contact_number" required></td>
        </tr>

        <!-- Vehicle Type -->
        <tr>
            <td><label for="vehicle_type">Vehicle Type:</label></td>
            <td>
                <div class="checkbox-group">
                    <label><input type="checkbox" name="vehicle_type" value="Van"> Van</label>
                    <label><input type="checkbox" name="vehicle_type" value="Car"> Car</label>
                    <label><input type="checkbox" name="vehicle_type" value="Bus"> Bus</label>
                    <label><input type="checkbox" name="vehicle_type" value="Lorry"> Lorry</label>
                    <label><input type="checkbox" name="vehicle_type" value="Three-Wheeler"> Three-Wheeler</label>
                    <label><input type="checkbox" name="vehicle_type" value="Other"> Other</label>
                </div>
                <input type="text" name="vehicle_type_other" class="other-input" placeholder="If Other, specify here">
            </td>
        </tr>

        <!-- Route -->
        <tr>
            <td><label for="route_name">Route Name:</label></td>
            <td><input type="text" name="route_name" required></td>
        </tr>

        <!-- Schedule -->
        <tr>
            <td><label for="schedule_time">Schedule Time:</label></td>
            <td><input type="time" name="schedule_time" required></td>
        </tr>

        <!-- Capacity -->
        <tr>
            <td><label for="capacity">Capacity:</label></td>
            <td><input type="text" name="capacity" required></td>
        </tr>

        <!-- Driver -->
        <tr>
            <td><label for="driver_name">Driver Name:</label></td>
            <td>
                <div class="checkbox-group">
                    <label><input type="checkbox" name="driver_name" value="Kamal Perera"> Kamal Perera</label>
                    <label><input type="checkbox" name="driver_name" value="Sunil Silva"> Sunil Silva</label>
                    <label><input type="checkbox" name="driver_name" value="Nuwan Fernando"> Nuwan Fernando</label>
                    <label><input type="checkbox" name="driver_name" value="Amila Jayasuriya"> Amila Jayasuriya</label>
                    <label><input type="checkbox" name="driver_name" value="Other"> Other</label>
                </div>
                <input type="text" name="driver_name_other" class="other-input" placeholder="If Other, specify here">
            </td>
        </tr>

        <!-- Status -->
        <tr>
            <td><label for="status">Status:</label></td>
            <td>
                <select name="status" required>
                    <option value="">-- Select Status --</option>
                    <option>Available</option>
                    <option>In Use</option>
                    <option>Unavailable</option>
                    <option>Other</option>
                </select>
                <input type="text" name="status_other" class="other-input" placeholder="If Other, specify here">
            </td>
        </tr>

        <!-- Notes -->
        <tr>
            <td><label for="notes">Notes:</label></td>
            <td><textarea name="notes" rows="3" placeholder="Any additional info..."></textarea></td>
        </tr>

        <!-- Submit -->
        <tr>
            <td colspan="2"><input type="submit" value="Submit Reservation"></td>
        </tr>
    </table>
</form>
</div>

</body>
</html>
