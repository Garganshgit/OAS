<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.Connection"%>
<%
    
    //here we write the java code
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String address = request.getParameter("address");
    String contactno = request.getParameter("contactno");
    String emailaddress = request.getParameter("emailaddress");
    String qualification = request.getParameter("qualification");
    String experience = request.getParameter("experience");
    String keyskill = request.getParameter("keyskill");
    String dob = request.getParameter("dob");
    String nationality = request.getParameter("nationality");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/oasdb","root","");
    String query = "insert into registration values('"+name+"', ' "+gender+ " ', ' "+address+" ', '"+contactno+"', '"+emailaddress+"', ' "+qualification+"', ' "+experience+" ', ' "+keyskill+" ' , ' "+dob+ " ' , ' "+nationality+" ')";
    PreparedStatement ps = con.prepareStatement(query);
    ps.executeUpdate();
    out.print("<script>alert('Information is Saved');windows.location.href='regestration.jsp'</script>");
    
%>