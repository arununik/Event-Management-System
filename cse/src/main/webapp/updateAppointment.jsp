<!DOCTYPE html>
<html>
<head>
    <title>Update Event Details</title>
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
            text-align: center;
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
            background-color: #FF9800;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #F57C00;
        }
    </style>
</head>
<body>
    <div class="container">
    <marquee>Update Event Details</marquee>
        <h1>Update Event Details</h1>
        <form action="updateAppointmentAction.jsp" method="post">
            <label for="appointmentID">Event ID:</label><br>
            <input type="text" id="appointmentID" name="appointmentID"><br>
            <label for="newAppointmentTime">New Event Time:</label><br>
            <input type="text" id="newAppointmentTime" name="newAppointmentTime"><br>
            <input type="submit" value="Update Appointment">
        </form>
    </div>
</body>
</html>
