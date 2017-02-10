<%-- 
    Document   : mainpage
    Created on : Jan 28, 2017, 1:06:10 PM
    Author     : Suraj
--%>

 
<%-- 
    Document   : mainpage
    Created on : Jan 28, 2017, 1:06:10 PM
    Author     : Suraj
--%>
<%@ page import ="java.sql.*" %>
<%-- 
    Document   : mainpage
    Created on : Jan 28, 2017, 1:06:10 PM
    Author     : Suraj
--%>

<BODY background="picture/movie.jpg"></BODY>

<body>
    Welcome User; 
Please Logout Here <a href='logout.jsp'>Go to Logout</a>
        <h1>Welcome to Your Movie World !</h1>
        <h2>Book a Movie</h2>
        <div>
            <form action="" method="post">
                <select name="movieType" id="moviegenre">
                    <option value="Action">Action</option>
                     <option value="Comedy">Comedy</option>
                      <option value="Romantic">Romance</option>
                       <option value="Thriller">Thriller</option>
                </select>
                <input type ="Submit" name ="click" value ="Click-me"></input
                 </div>
        <div>

                <label for="Movie Name">Movie Name: </label>
                <p><input id="movieName" type="Text" name="movieName" /></p>
                <label for="Movie Price">Movie Price </label>
                <p><input id="moviePrice" type="Text" name="movieprice" /></p>                
            <p><input type="Submit" name="search" value="Search" /></p>
            </form>


        </div>
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
     String moviename = request.getParameter("moviename");    
    String movietype = request.getParameter("movietype");
    String movieprice = request.getParameter("movieprice");

     Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/moviestore",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    // change where parameter here........
    rs = st.executeQuery("select * from movies where movieName like '%" + moviename + "%' OR movieType like '%" + movietype + "%' OR Price like '%"+movieprice+"%'");
%>

        <table>
            <tr>
            <th>Select </th> <th>Movie Name</th><th>Movie Type</th><th>Movie Price</th>
            </tr>

           <%
               if (rs != null) {
                while (rs.next()) {
%>
<TR>
<TD><%=  rs.getString(1)%></TD>
<TD><%=  rs.getString(2)%></TD>
<TD><%= rs.getString(3)%></TD>
<TD><%= rs.getString(4)%></TD>
</TR>
<% } %>
        </table>
        <%  
        }}
        %>
    </body>
