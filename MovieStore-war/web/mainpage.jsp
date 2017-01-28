<%-- 
    Document   : mainpage
    Created on : Jan 28, 2017, 1:06:10 PM
    Author     : Suraj
--%>

 
Welcome user; 
Please Logout Here <a href='logout.jsp'>Go to Logout</a>

<body>
        <h1>Welcome to Your Movie World !</h1>
        <h2>Book a Movie</h2>
        <div>
            <form action="OutcomeServlet" method="post">
                <p><input type="checkbox" name="action" value="Action" />Action</p>
                <p><input type="checkbox" name="comedy" value="Comedy" />Comedy</p>
                <p><input type="checkbox" name="romance" value="Romance" />Romance</p>
                <p><input type="checkbox" name="thriller" value="Thriller" />Thriller</p>
                <label for="Movie Name">Movie Name: </label>
                <p><input id="movieName" type="Text" name="movname" /></p>
                
            <p><input type="Submit" name="selection" value="Search" /></p>
            </form>
        </div>
    </body>