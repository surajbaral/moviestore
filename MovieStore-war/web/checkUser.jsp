<%-- 
    Document   : checkUser
    Created on : Jan 28, 2017, 1:27:16 PM
    Author     : Suraj
--%>


<%
            String username = request.getParameter("uname");
            String password = request.getParameter("pass");
           out.println("Checking login<br>");
            if (username == null || password == null) {
 
                out.print("Invalid paramters ");
            }
 
            // Here you put the check on the username and password
            if (username.toLowerCase().trim().equals("Admin") && password.toLowerCase().trim().equals("admin")) {
                out.println("Welcome " + username + " <a href=\"admin.jsp\">Back to main</a>");
                session.setAttribute("username", username);
            }
           else 
               {
                out.println("Invalid username and password");
           }
 
 
 
 
%> 
