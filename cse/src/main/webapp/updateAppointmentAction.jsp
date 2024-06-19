<%@ page import="java.sql.*" %>
<%
    String appointmentID = request.getParameter("appointmentID");
    String newAppointmentTime = request.getParameter("newAppointmentTime");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/saloon_management", "root", "root");

        String query = "UPDATE appointments SET appointment_time = ? WHERE appointment_id = ?";
        PreparedStatement pst = con.prepareStatement(query);
        pst.setString(1, newAppointmentTime);
        pst.setString(2, appointmentID);
        pst.executeUpdate();

        con.close();
    } catch(Exception e) {
        out.println(e);
    }

    response.sendRedirect("index.jsp");
%>