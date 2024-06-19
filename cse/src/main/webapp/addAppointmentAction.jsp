<%@ page import="java.sql.*" %>
<%
    String customerName = request.getParameter("customerName");
    String barberName = request.getParameter("barberName");
    String appointmentTime = request.getParameter("appointmentTime");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/saloon_management", "root", "root");

        String query = "INSERT INTO appointments (customer_name, barber_name, appointment_time) VALUES (?, ?, ?)";
        PreparedStatement pst = con.prepareStatement(query);
        pst.setString(1, customerName);
        pst.setString(2, barberName);
        pst.setString(3, appointmentTime);
        pst.executeUpdate();

        con.close();
    } catch(Exception e) {
        out.println(e);
    }

    response.sendRedirect("index.jsp");
%>
