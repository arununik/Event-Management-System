<!DOCTYPE html>
<html>
<head>
    <title>Add New Event Appointment</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        form {
            margin-top: 20px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            color: #555;
        }
        input[type="text"] {
            width: calc(100% - 12px);
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
    <marquee>Add New Event Appointment</marquee>
        <h1>Add New Event Appointment</h1>
        <form action="addAppointmentAction.jsp" method="post">
            <label for="customerName">Customer Name:</label>
            <input type="text" id="customerName" name="customerName"><br>
            <label for="barberName">Event Handler Name:</label>
            <input type="text" id="barberName" name="barberName"><br>
            <label for="appointmentTime">Event Date & Time:</label>
            <input type="text" id="appointmentTime" name="appointmentTime"><br>
            <input type="submit" value="Add Appointment">
        </form>
    </div>
</body>
</html>