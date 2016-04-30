
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>        <jsp:include page="header.jsp"></jsp:include>
            <div id="gbox-bg">
              <div id="gbox-grd">
                <h2>WELCOME TO JP TRANSPORT</h2>
				
                <marquee dir="ltr"><font style="color: navy;">Delhi-Kanpur,Agra-Kanpur,Agra-Ghaziabad,Kanpur-Delhi........</font></marquee>

				<%
				Class.forName("com.mysql.jdbc.Driver");

				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JP","sudhir", "sarthak");
				
				PreparedStatement ps= con.prepareStatement("select * from quizcontact ");
				ResultSet rs= ps.executeQuery();
				out.print("<table border='3'>");
				out.print("<tr><td>Name</td><td>Email</td><td>Phone</td><td>Message</td></tr>");
				
				while(rs.next()){
				out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td></tr>");
				
				}
				out.print("</table>");
				 %>				
				


                <div id="newsletter">
                <p></p>
                </div>
                <div class="clear"> </div>
                
              </div>
            </div>
            <jsp:include page="footer.html"></jsp:include>