<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
//    here we write code to delete  the job seeker details by emailaddress
       
      String emailaddress = request.getParameter("emailaddress");
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/oasdb","root","");
      String query = "delete from registration where emailaddress=' "+emailaddress+" ' ";
      PreparedStatement ps = con.prepareStatement(query);
      ps.executeUpdate();
      out.print("<script>alert('Information is deleted');window.location.href='jobseeker.jsp';</script>");
%>