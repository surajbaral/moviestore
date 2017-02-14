<%-- 
    Document   : home
    Created on : Jan 28, 2017, 12:17:50 PM
    Author     : Suraj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    
    <head>
    <BODY background="picture/moviestore.jpg"></BODY>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Homepage</title>
    </head>
     
    <body>
         <h1>Book Your Movie </h1>
        <form method="post" action="mainpage.jsp">
            <center>
            <table border="30" width="65%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2"><a>Login Here</a></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><a>User Name<a/></td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td><a>Password<a/></td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">New User!! <a href="reg.jsp">Register Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
        <style>
        table {
            color: red;
            background-position:center ;
            background-color: white;
        }
        a{
            color : blue;
        }
        h1 {
            color: white;
            background-position:center ;
            
        }

    </style>
    </body>
</html>
