<%@ page import="java.sql.*" %>
<%
    String customerName = request.getParameter("customerName");
    String barberName = request.getParameter("barberName");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/saloon_management", "root", "root");

        String query = "SELECT * FROM appointments WHERE customer_name LIKE ? OR barber_name LIKE ?";
        PreparedStatement pst = con.prepareStatement(query);
        pst.setString(1, "%" + customerName + "%");
        pst.setString(2, "%" + barberName + "%");
        ResultSet rs = pst.executeQuery();

        out.println("<table border='1'>");
        out.println("<tr><th>Appointment ID</th><th>Customer Name</th><th>Barber Name</th><th>Appointment Time</th></tr>");
        while (rs.next()) {
            out.println("<tr><td>" + rs.getInt("appointment_id") + "</td><td>" + rs.getString("customer_name") + "</td><td>" + rs.getString("barber_name") + "</td><td>" + rs.getString("appointment_time") + "</td></tr>");
        }
        out.println("</table>");

        con.close();
    } catch(Exception e) {
        out.println(e);
    }

    response.sendRedirect("index.jsp");
%>