<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Event Registered</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
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
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>All Event's Registered</h1>
        <% 
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/saloon_management", "root", "root");

            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM appointments");

            out.println("<table border='1'>");
            out.println("<tr><th>Appointment ID</th><th>Customer Name</th><th>Event_Handler_Name</th><th>Event Date & Time</th></tr>");
            while (rs.next()) {
                out.println("<tr><td>" + rs.getInt("appointment_id") + "</td><td>" + rs.getString("customer_name") + "</td><td>" + rs.getString("barber_name") + "</td><td>" + rs.getString("appointment_time") + "</td></tr>");
            }
            out.println("</table>");

            con.close();
        } catch(Exception e) {
            out.println(e);
        }
        %>
    </div>
</body>
</html>
