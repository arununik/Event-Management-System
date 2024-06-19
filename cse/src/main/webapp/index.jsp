<!DOCTYPE html>
<html>
<head>
    <title>Event Booking System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        h1 { 
        
            text-align: center;
            color: #333;
            margin-top: 50px;
        }
        ul {
            list-style-type: none;
            padding: 0;
            text-align: center;
        }
        li {
            display: inline-block;
            margin: 0 10px;
        }
        a {
            display: block;
            padding: 10px 20px;
            background-color: #2196F3;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        a:hover {
            background-color: #0b7dda;
        }
    </style>
</head>
<body>
<marquee>Welcome to Event Booking System</marquee>
    <h1>Welcome to Event Booking System</h1>
    <ul>
        <li><a href="addAppointment.jsp">Add Event</a></li>
        <li><a href="viewAppointments.jsp">View Event</a></li>
        <li><a href="updateAppointment.jsp">Update Event</a></li>
        <li><a href="deleteAppointment.jsp">Delete Event</a></li>
    </ul>
</body>
</html>
