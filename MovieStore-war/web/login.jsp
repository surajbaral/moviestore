<%-- 
    Document   : login
    Created on : Jan 28, 2017, 12:34:17 PM
    Author     : Suraj
--%>

<%--@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/moviestore",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from members where uname='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
         if(userid =="admin"){
        // admin  logic
        }else{
            //user logic
        }
        session.setAttribute("userid", userid);
        
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("checkUser.jsp");
    } else {
        out.println("Invalid password <a href='home.jsp'>try again</a>");
    }
--%>

<%-- 
    Document   : login
    Created on : Jan 28, 2017, 12:34:17 PM
    Author     : Suraj
--%>

<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/moviestore",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from members where uname='" + userid + "' and pass='" + pwd + "'");
    if (rs != null) {
          
        while (rs.next()) {

          if(rs.getInt(1) == 5){
          // admin 
          session.setAttribute("userid", userid);
          response.sendRedirect("admin.jsp");
          }else{
              // user
              session.setAttribute("userid", userid);
              response.sendRedirect("mainpage.jsp");
          }
            
        }
             
              
      //  session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
       // response.sendRedirect("checkUser.jsp");
    } else {
        out.println("Invalid password <a href='home.jsp'>try again</a>");
    }
%>