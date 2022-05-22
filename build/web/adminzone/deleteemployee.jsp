<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    // Here we write the code to delete employee information by empid
    
    String empid = request.getParameter("empid");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/oasdb" , "root" , "");
    String query = "delete from employee where empid= ' "+empid+" ' ";
    PreparedStatement ps = con.prepareStatement(query);
    ps.executeUpdate();
    out.print("<script>alert('Information is deleted');window.location.href='employee.jsp';</script>");
%>