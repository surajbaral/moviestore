<%@ page import ="java.sql.*" %>
<%-- 
    Document   : mainpage
    Created on : Jan 28, 2017, 1:06:10 PM
    Author     : Suraj
--%>

<BODY background="picture/movie.jpg"></BODY>

<body>
    Welcome <br/> 
Please Logout Here <a href='logout.jsp'>Go to Logout</a>
        <h1>Welcome to Your Movie World !</h1>
        <h2>Book a Movie</h2>

            <form action="" method="post">
                <select name="movieType" id="moviegenre">
                    
                    <option value="Action">Action</option>
                     <option value="Comedy">Comedy</option>
                      <option value="Romantic">Romance</option>
                       <option value="Thriller">Thriller</option>
                </select> <br/>


                <br/><label for="Movie Name"><a>Movie Name: </A>></label>
                <p><input id="movieName" type="Text" name="movieName" /></p>
                <label for="Movie Price"><a>Movie Price </A></label>
                <p><input id="moviePrice" type="Text" name="moviePrice" /></p>                
            <p><input type="Submit" name="search" value="Search" /></p>
            </form>



        <style>
            h1{
                color: white;
            }
            a{
                background-color: white;
            }
            TD{
                background-color: white;
            }
            th{
                background-color: white;
                font-style: italic;
            }
        </style>
        <%  
// your logic here. 
if(request.getParameter("search")!=null){
     String moviename = request.getParameter("movieName");    
    String movietype = request.getParameter("movieType");
    String movieprice = request.getParameter("moviePrice");

     Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/moviestore",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    // change where parameter here........
    rs = st.executeQuery("select * from movies where movieName like '%" + moviename + "%' and movieType = '" + movietype + "' and Price like '%"+movieprice+"%'");
%>

        <table>
            <tr>
                <th>Select </th> <th>Movie Name</th><th>Movie Type</th><th>Movie Price</th><th>Action</th>
            </tr>

           <%
               if (rs != null) {
                while (rs.next()) {
%>
<TR>
<TD><%=  rs.getString(1)%></TD>
<TD><%=  rs.getString(2)%></TD>
<TD><%= rs.getString(3)%></TD>
<TD><%= rs.getInt(4)%></TD>
<td>
    <form method="post" action="Addtocart" >
        <INPUT type="hidden" name="mprice" value="<%= rs.getInt(4)%>"/>
        <INPUT type="hidden" name="mname" value="<%= rs.getString(2)%>"/>
        <input type="submit" value="Order" value="${rs.getString(2)}" />
        
    </form>


<!--<form method ="get" action="cart.jsp">
<input type="text" name="uname">
<input type="submit" value="go" ><br/>
</form>-->
</td>

</TR>
<% } %>
        </table>
        <%  
        }}
        %>
    </body>