<%-- 
    Document   : cart
    Created on : Feb 10, 2017, 4:41:00 PM
    Author     : Suraj
--%>
<%@page import="java.util.HashMap"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="Servlets.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <title>carts</title>
    <%
         
        Cart shoppingCart;
        shoppingCart = (Cart) session.getAttribute("cart");
        HashMap<String, Integer> items = shoppingCart.getCartItems();
            
            
            
            out.println("<table border='10px'>");
              float total = 0; 
            for(String key: items.keySet()){
                
                
            
    %>
</head>

 <body bgcolor="white">
       <h1>Your Cart</h1>
     
     <form >
         <table>
             "<tr><td> Movie Name"+key+" - </td><td> Price"+"$"+items.get(key)+"</td>
                 
             <td>"+key+" - </td><td>"+"$"+items.get(key)+"</td>
                }
         </table>
   
     
     </form>
</body>
</html>
