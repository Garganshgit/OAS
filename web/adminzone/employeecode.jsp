<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    //Here we write code to save employee information
    String empid = request.getParameter("empid");
    String empname = request.getParameter("empname");
    String gender = request.getParameter("gender");
    String address = request.getParameter("address");
    String contactno = request.getParameter("contactno");
    String emailaddress = request.getParameter("emailaddress");
    String department = request.getParameter("department");
    String designation = request.getParameter("designation");
    String doj = request.getParameter("doj");
     int salary=Integer.parseInt(request.getParameter("salary"));
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/oasdb","root","");
    String query ="insert into employee values(' "+empid+" ', ' "+empname+" ', ' "+gender+" ', ' "+address+" ', ' "+contactno+" ', ' "+emailaddress+" ', ' "+department+" ', ' "+designation+" ', ' "+doj+" ' , ' "+salary+" ' )";                                                       
    PreparedStatement ps = con.prepareStatement(query);
    ps.executeUpdate();
    out.print("<script>alert('Information is saved');window.location.href='employee.jsp';</script>");
%>