<%-- 
    Document   : validate1
    Created on : Apr 1, 2024, 10:12:06 PM
    Author     : jahna
--%>

<%@page import="xyz.Conn"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
          Connection con=new Conn().con;
        String i = request.getParameter("email");
        String p = request.getParameter("password");
       
        if (i != null && p!= null ) {
           try{
               PreparedStatement ps = con.prepareStatement("INSERT INTO SIGNUP(EMAIL, PASSWORD) VALUES (?,?)");
            ps.setString(1,i);
            ps.setString(2,p);
            
            int rows = ps.executeUpdate();
            response.sendRedirect("index.html");
    %>
    
    <%
        }catch(Exception e){e.printStackTrace();
    %>
                <h1>Registration failed. An error occurred.</h1>
    <%
            }
        } else {
    %>
            <h1>Registration failed. Please provide valid credentials.</h1>
    <%
        }
    %>
         </div>
    </body>
</html>
