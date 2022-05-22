package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Office Automation System</title>\n");
      out.write("        <style>\n");
      out.write("            #wrapper\n");
      out.write("            {\n");
      out.write("                width: 1000px;\n");
      out.write("                height:1200px;\n");
      out.write("               // border: 2px solid white;\n");
      out.write("                margin: 0 auto;\n");
      out.write("            }\n");
      out.write("            #header\n");
      out.write("            {\n");
      out.write("                width: 1000px;\n");
      out.write("                height: 150px;\n");
      out.write("            }\n");
      out.write("            #logo\n");
      out.write("            {\n");
      out.write("                width: 150px;\n");
      out.write("                height: 150px;\n");
      out.write("                background-color: aqua;\n");
      out.write("                float: left;\n");
      out.write("            }\n");
      out.write("            #banner\n");
      out.write("            {\n");
      out.write("                width: 850px;\n");
      out.write("                height: 150px;\n");
      out.write("                background-color: blue;\n");
      out.write("                float: right;\n");
      out.write("                font-size: 60px;\n");
      out.write("                color: white;\n");
      out.write("                text-align: center;\n");
      out.write("               line-height: 150px;\n");
      out.write("               font-weight: bold;\n");
      out.write("            }\n");
      out.write("            #menu\n");
      out.write("            {\n");
      out.write("                width: 1000px;\n");
      out.write("                height: 50px;\n");
      out.write("                background-color: white;\n");
      out.write("                margin-top: 5px;\n");
      out.write("                border: 1px solid white;\n");
      out.write("            }\n");
      out.write("            #menu ul\n");
      out.write("            {\n");
      out.write("                list-style-type: none;\n");
      out.write("            }\n");
      out.write("            #menu ul li\n");
      out.write("            {\n");
      out.write("                display: inline;\n");
      out.write("            }\n");
      out.write("            #menu ul li a\n");
      out.write("            {\n");
      out.write("                padding: 20px;\n");
      out.write("                font-size: 20px;\n");
      out.write("                text-decoration: none;\n");
      out.write("                color: black;\n");
      out.write("            }\n");
      out.write("           #menu ul li a:hover\n");
      out.write("           {\n");
      out.write("               color: red;\n");
      out.write("           }\n");
      out.write("            #slider\n");
      out.write("            {\n");
      out.write("                width: 1000px;\n");
      out.write("                height: 200px;\n");
      out.write("                background-color: grey;\n");
      out.write("            }\n");
      out.write("            #left\n");
      out.write("            {\n");
      out.write("                width: 300px;\n");
      out.write("                height: 700px;\n");
      out.write("                background-color: aqua;\n");
      out.write("                float: left;\n");
      out.write("            }\n");
      out.write("            #main\n");
      out.write("            {\n");
      out.write("                width: 700px;\n");
      out.write("                height: 700px;\n");
      out.write("                background-color: white;\n");
      out.write("                float: right;\n");
      out.write("            }\n");
      out.write("            #footer\n");
      out.write("            {\n");
      out.write("                width: 1000px;\n");
      out.write("                height: 80px;\n");
      out.write("               margin-top: 5px;\n");
      out.write("            }\n");
      out.write("            #lfooter\n");
      out.write("            {\n");
      out.write("                width: 500px;\n");
      out.write("                height: 80px;\n");
      out.write("                background-color: black;\n");
      out.write("                float: left;\n");
      out.write("                color: white;\n");
      out.write("                text-align: center;\n");
      out.write("                font-size: 25px;\n");
      out.write("                line-height: 80px;\n");
      out.write("            }\n");
      out.write("            #rfooter\n");
      out.write("            {\n");
      out.write("                width: 500px;\n");
      out.write("                height: 80px;\n");
      out.write("                background-color: navy;\n");
      out.write("                float: right;\n");
      out.write("                 color: white;\n");
      out.write("                text-align: center;\n");
      out.write("                font-size: 25px;\n");
      out.write("                line-height: 80px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <script>\n");
      out.write("            var images = [\"slider_1.jpg\",\"slider_2.gif\",\"slider_3.jpg\",\"slider_4.jpg\"];\n");
      out.write("            var i =0;\n");
      out.write("            function moveslider()\n");
      out.write("            {\n");
      out.write("                if(i === images.length)\n");
      out.write("                {\n");
      out.write("                    i = 0;\n");
      out.write("                }\n");
      out.write("               document.getElementById(\"slider\").src=\"images/\"+images[i];\n");
      out.write("               i++;\n");
      out.write("               window.setTimeout(\"moveslider();\",2000);\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body bgcolor = \"green\" onload=\"moveslider()\"> \n");
      out.write("        <div id=\"wrapper\">\n");
      out.write("            <div id=\"header\">\n");
      out.write("                <div id=\"logo\">\n");
      out.write("                    <img src=\"images/logo.png\" width=\"150\" height=\"150\" />\n");
      out.write("                </div>\n");
      out.write("                <div id=\"banner\">\n");
      out.write("                    Office Administration System \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"menu\">\n");
      out.write("                <ul>\n");
      out.write("                    <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                    <li><a href=\"aboutus.jsp\">About Us</a></li>\n");
      out.write("                    <li><a href=\"registration.jsp\">Registration</a></li>\n");
      out.write("                    <li><a href=\"login.jsp\">Login</a></li>\n");
      out.write("                    <li><a href=\"contactus.jsp\">Contact Us</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"slider\">\n");
      out.write("                <img id=\"slider\" width=\"1000\" height=\"200\"/>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"parent\">\n");
      out.write("                <div id=\"left\">\n");
      out.write("                    <marquee direction=\"up\" height=\"400\" onmouseover=\"stop()\" onmouseout=\"start()\">\n");
      out.write("                    ");

                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/oasdb" , "root" , "");
                        PreparedStatement ps = con.prepareStatement("select * from notification");
                        ResultSet rs = ps.executeQuery();
                        while(rs.next())
                        {
                    
      out.write("\n");
      out.write("                    <p style=\"color: blue; text-align: center;\">");
      out.print(rs.getString("notificationtext"));
      out.write("</p>\n");
      out.write("                    <p style=\"color: brown; text-align: center;\">");
      out.print(rs.getString("notificationdate"));
      out.write("</p>\n");
      out.write("                    ");
}
      out.write("\n");
      out.write("                    </marquee>\n");
      out.write("                </div>\n");
      out.write("                <div id=\"main\"></div>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"footer\">\n");
      out.write("                <div id=\"lfooter\">\n");
      out.write("                    copyright &copy; to OAS\n");
      out.write("                </div>\n");
      out.write("                <div id=\"rfooter\">\n");
      out.write("                    Developed By: - Gargansh \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
