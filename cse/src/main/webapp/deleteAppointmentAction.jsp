<%@ page import="java.sql.*" %>
<%
    String appointmentID = request.getParameter("appointmentID");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/saloon_management", "root", "root");

        String query = "DELETE FROM appointments WHERE appointment_id = ?";
        PreparedStatement pst = con.prepareStatement(query);
        pst.setString(1, appointmentID);
        pst.executeUpdate();

        con.close();
    } catch(Exception e) {
        out.println(e);
    }

    response.sendRedirect("index.jsp");
%>