<%-- 
    Document   : adminhome
    Created on : 13 Nov, 2021, 8:26:38 PM
    Author     : DELL
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    
    if(session.getAttribute("userid")==null)
    {
        response.sendRedirect("../login.jsp");
    }
    else
    {
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Admin Zone</title>
        <style>
            #outer
            {
                width: 1000px;
                height: auto;
                margin: 0 auto;
            }
            #header
            {
                width: 1000px;
                height: 150px;
            }
            #logo
            {
                width: 150px;
                height: 150px;
                background-color: aqua;
                float: left;
            }
            #banner
            {
                width: 850px;
                height: 150px;
                background-color: navy;
                float: right;
                color: white;
                font-size: 60px;
                text-align: center;
                line-height: 150px;
            }
            #menu
            {
                width: 1000px;
                height: 50px;
                background-color: white;
                margin-top: 5px;
                border: 1px solid white;
            } 
            #menu ul
            {
                list-style-type: none;
            }
            #menu ul li
            {
                display: inline;
            }
            #menu ul li a
            {
                padding: 20px;
                font-size: 20px;
                text-decoration: none;
                color: black;
            }
            #main
            {
                width: 1000px;
                height: auto;
                margin-top: 5px;
                min-height: 700px;
                background-color: white;
                border: 1px solid white;
            }
            #footer
            {
                width: 1000px;
                height: 80px;
                background-color: black;
                margin-top: 5px;
                color: white;
                font-size: 30px;
                text-align: center;
                line-height: 80px;
            }
        </style>
    </head>
    <body bgcolor="green">
        <div id="outer">
            <div id="header">
                <div id="logo">
                    <img src="../images/logo.png" width="150" height="150"/>
                </div>
                <div id="banner">
                    Welcome To Admin Zone
                </div>
            </div>
            <div id="menu">
                <ul>
                    <li><a href="adminhome.jsp">Admin home</a></li>
                    <li><a href="enquiry.jsp">Enquiry</a></li>
                    <li><a href="jobseeker.jsp">Job Seeker</a></li>
                    <li><a href="employee.jsp">Employee</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </div>
            <div id="main">
                <h1 style="text-align: center; color: blue;">Job seeker Managment</h1>
                <table border="1" style="margin: 0 auto; width: 95%;">
                    <tr>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Address</th>
                        <th>Contact number</th>
                        <th>Email Address</th>
                        <th>Qualification</th>
                        <th>Experience</th>
                        <th>Key Skills</th>
                        <th>Date Of Birth</th>
                        <th>Nationality</th>
                        <th>Delete</th>
                    </tr>
                    <%
                                  Class.forName("com.mysql.jdbc.Driver");
                                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/oasdb","root","");
                                  String query = "select * from registration";
                                  PreparedStatement ps = con.prepareStatement(query);
                                  ResultSet rs = ps.executeQuery();
                                  while(rs.next())
                                  {
                    %>
                    <tr>
                        <td><%=rs.getString("name")%></td>
                        <td><%=rs.getString("gender")%></td>
                        <td><%=rs.getString("address")%></td>
                        <td><%=rs.getString("contactno")%></td>
                        <td><%=rs.getString("emailaddress")%></td>
                        <td><%=rs.getString("qualification")%></td>
                        <td><%=rs.getString("experience")%></td>
                        <td><%=rs.getString("keyskill")%></td>
                        <td><%=rs.getString("dob")%></td>
                        <td><%=rs.getString("nationality")%></td>
                        <td>
                            <a href="deletejobseeker.jsp?emailaddress=<%=rs.getString("emailaddress")%>">Delete</a>
                        </td>
                    </tr>
                             <%}%>
                </table>
            </div>
            <div id="footer">
                Copyrigth &copy; to Office Administration System
            </div>
        </div>
    </body>
</html>
<%
    }
%>