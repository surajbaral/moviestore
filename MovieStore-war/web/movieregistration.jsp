<%-- 
    Document   : movieregistration
    Created on : Jan 28, 2017, 4:45:19 PM
    Author     : Suraj
--%>

<%@ page import ="java.sql.*" %>
<%
    String moviename = request.getParameter("moviename");    
    String movietype = request.getParameter("movietype");
    String movieprice = request.getParameter("movieprice");
    
    //Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/moviestore",
           "root", "root");
    Statement stm = con.createStatement();
    //ResultSet rs;
    int i = stm.executeUpdate("insert into movies(movieName, movieType, Price) values ('" + moviename + "','" + movietype + "','" + movieprice+"')");

    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("home.jsp");
    }
%>

