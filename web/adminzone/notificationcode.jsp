<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%
    String notificationtext = request.getParameter("notificationtext");
    Date dt = new Date();
    SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
    String notificationdate = df.format(dt);
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/oasdb","root","");
    String query = "insert into notification(notificationtext,notificationdate) values(' "+notificationtext+" ', ' "+notificationdate+" ')";
    PreparedStatement ps = con.prepareStatement(query);
     ps.executeUpdate();
    out.print("<script>alert('Notification is saved');window.location.href='adminhome.jsp';</script>");
%>