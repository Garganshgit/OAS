<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    //Here we write the code to delete notification by its id
    
    String id = request.getParameter("id");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/oasdb","root","");
    String query = "delete from notification where id=' "+id+" ' ";
    PreparedStatement ps = con.prepareStatement(query);
    ps.executeUpdate();
    out.print("<script>alert('Notification is saved');window.location.href='adminhome.jsp';</script>");
%>