<%-- 
    Document   : payment
    Created on : Feb 13, 2017, 6:12:34 PM
    Author     : Suraj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Welcome to Payment</h1>
        <form action="PaymentServlet" method="post">
          <fieldset>
            <p>Payment Method</p>
          <div>
            <label for="card-type">Type of Card</label>
            <select name="card-type" id="card-type">
            <option>Mastercard</option>
            <option>Visa</option>
            <option>American Express</option>
            </select>
          </div>
          <div>
            <label for="card-no">Card Number</label>
            <input type="text" id="card-no" name="card-no" title="As stated on passport">
          </div>
          <div>
            <label for="month">Expiry Date</label>  
            <select name="month" id="month">
                <option value="0">January</option>
                <option value="1">February</option>
                <option value="2">March</option>
                <option value="3">April</option>
                <option value="4">May</option>
                <option value="5">June</option>
                <option value="6">July</option>
                <option value="7">August</option>
                <option value="8">September</option>
                <option value="9">October</option>
                <option value="10">November</option>
                <option value="11">December</option>
            </select>
            <select id="year" name="year">
                <option>2017</option>
                <option>2018</option>
                <option>2019</option>
                <option>2020</option>
                <option>2021</option>
                <option>2022</option>
                <option>2023</option>
                <option>2024</option>
                <option>2025</option>
                <option>2026</option>
                <option>2027</option>
            </select>
          </div>
          <div>
            <label for="security">Security Code</label>
            
          </div>
           
            <div>
                <input type="checkbox" name="terms" value="terms"> I agree to the terms and conditions<br>
                <input type="Submit" name="payment" value="Pay" />
            </div>  
        </fieldset>
    </body>
</html>
