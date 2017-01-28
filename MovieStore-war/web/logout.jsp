<%-- 
    Document   : logout
    Created on : Jan 28, 2017, 12:37:48 PM
    Author     : Suraj
--%>

<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("home.jsp");
%>