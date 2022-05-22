<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String address = request.getParameter("address");
    String contactno = request.getParameter("contactno");
    String emailaddress = request.getParameter("emailaddress");
    String enquirytext = request.getParameter("enquirytext");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/oasdb", "root", "");
    String query = "insert into enquiry(name,gender,address,contactno,emailaddress,enquirytext) values (' "+name+" ', ' "+gender+" ', ' "+address+" ', ' "+contactno+" ', ' "+emailaddress+" ', ' "+enquirytext+" ' )";
    PreparedStatement ps = con.prepareStatement(query);
    ps.executeUpdate();
    out.print("<script>alert('Enquiry is saved');windows.location.href='contactus.jsp'</script>");
%>    