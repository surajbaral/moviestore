<%-- 
    Document   : enterMovie
    Created on : Jan 28, 2017, 4:41:58 PM
    Author     : Suraj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        <form method="post" action="movieregistration.jsp">
            <center>
            <table border="30" width="80%" cellpadding="7">
                <thead>
                    <tr>
                        <th colspan="2">Enter Movie Information Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Movie Name</td>
                        <td><input type="text" name="moviename" value="" /></td>
                    </tr>
                    <tr>
                        <td>Movie Type</td>
                        <td><input type="text" name="movietype" value="" /></td>
                    </tr>
                    <tr>
                        <td>Price</td>
                        <td><input type="text" name="movieprice" value="" /></td>
                    </tr>
                    <tr>
                        <td>Quantity</td>
                        <td><input type="text" name="moviequantity" value="" /></td>
                    </tr>
                   
                   
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered!! <a href="admin.jsp">BackToAdminPage</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>
