<%--
    Document   : validate
    Created on : 11 Oct, 2023, 10:35:53 PM
    Author     : DELL
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="xyz.Conn" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validation Page</title>
    </head>
    <%
        Connection con = new Conn().con;
        String u = request.getParameter("email");
        String p = request.getParameter("password");
        PreparedStatement ps = con.prepareStatement("SELECT * FROM SIGNUP WHERE EMAIL=? AND PASSWORD =?");
        ps.setString(1,u);
        ps.setString(2,p);
        ResultSet rs = ps.executeQuery();
         
        if(rs.next()){
           
            response.sendRedirect("index.html");}
        else
            response.sendRedirect("error.html");
    %>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
