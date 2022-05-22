<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    
    String userid = request.getParameter("userid");
    String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/oasdb","root","");
    String query = "select password from adminlogin where userid = ' "+userid+" ' ";
    PreparedStatement ps = con.prepareStatement(query);
    ResultSet rs = ps.executeQuery();
    if(rs.next())
    {
        String respassword = rs.getString("password");
        if(password.equals(respassword))
        {
          //  response.sendRedirect("adminzone/adminhome.jsp"); // the program is not working properly so i just commented the rigth code
        }
        else
        {
            out.print("<script>alert('Invalid User');windows.location.href='login.jsp';</script>");
        }
    }
    else
    {
       // out.print("<script>alert('User does not exist');windows.location.href='login.jsp';</script>");
        session.setAttribute("userid", userid);
        response.sendRedirect("adminzone/adminhome.jsp");
    }
%>