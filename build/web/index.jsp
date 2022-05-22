<%-- 
    Document   : index.jsp
    Created on : 6 Nov, 2021, 9:38:48 PM
    Author     : DELL
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Office Automation System</title>
        <style>
            #wrapper
            {
                width: 1000px;
                height:1200px;
               // border: 2px solid white;
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
                background-color: blue;
                float: right;
                font-size: 60px;
                color: white;
                text-align: center;
               line-height: 150px;
               font-weight: bold;
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
           #menu ul li a:hover
           {
               color: red;
           }
            #slider
            {
                width: 1000px;
                height: 200px;
                background-color: grey;
            }
            #left
            {
                width: 300px;
                height: 700px;
                background-color: aqua;
                float: left;
            }
            #main
            {
                width: 700px;
                height: 700px;
                background-color: white;
                float: right;
            }
            #footer
            {
                width: 1000px;
                height: 80px;
               margin-top: 5px;
            }
            #lfooter
            {
                width: 500px;
                height: 80px;
                background-color: black;
                float: left;
                color: white;
                text-align: center;
                font-size: 25px;
                line-height: 80px;
            }
            #rfooter
            {
                width: 500px;
                height: 80px;
                background-color: navy;
                float: right;
                 color: white;
                text-align: center;
                font-size: 25px;
                line-height: 80px;
            }
        </style>
        <script>
            var images = ["slider_1.jpg","slider_2.gif","slider_3.jpg","slider_4.jpg"];
            var i =0;
            function moveslider()
            {
                if(i === images.length)
                {
                    i = 0;
                }
               document.getElementById("slider").src="images/"+images[i];
               i++;
               window.setTimeout("moveslider();",2000);
            }
        </script>
    </head>
    <body bgcolor = "green" onload="moveslider()"> 
        <div id="wrapper">
            <div id="header">
                <div id="logo">
                    <img src="images/logo.png" width="150" height="150" />
                </div>
                <div id="banner">
                    Office Administration System 
                </div>
            </div>
            <div id="menu">
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="aboutus.jsp">About Us</a></li>
                    <li><a href="registration.jsp">Registration</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="contactus.jsp">Contact Us</a></li>
                </ul>
            </div>
            <div id="slider">
                <img id="slider" width="1000" height="200"/>
            </div>
            <div id="parent">
                <div id="left">
                    <marquee direction="up" height="400" onmouseover="stop()" onmouseout="start()">
                    <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/oasdb" , "root" , "");
                        PreparedStatement ps = con.prepareStatement("select * from notification");
                        ResultSet rs = ps.executeQuery();
                        while(rs.next())
                        {
                    %>
                    <p style="color: blue; text-align: center;"><%=rs.getString("notificationtext")%></p>
                    <p style="color: brown; text-align: center;"><%=rs.getString("notificationdate")%></p>
                    <%}%>
                    </marquee>
                </div>
                <div id="main"></div>
            </div>
            <div id="footer">
                <div id="lfooter">
                    copyright &copy; to OAS
                </div>
                <div id="rfooter">
                    Developed By: - Gargansh 
                </div>
            </div>
        </div>
    </body>
</html>
