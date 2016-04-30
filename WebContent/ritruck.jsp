
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>       

 <jsp:include page="header.jsp"></jsp:include>
            <div id="gbox-bg">
             <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WELCOME TO JP TRANSPORT</h2>
             
             <br> <br>		<marquee dir="ltr"><font style="color: navy;">Delhi-Kanpur,Agra-Kanpur,Agra-Ghaziabad,Kanpur-Delhi........</font></marquee>             
             <br/><br> 
              <% 
              Class.forName("com.mysql.jdbc.Driver");

          	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JP","sudhir", "sarthak");%>
          	<table>
        	<tr><td>Route-From:<select name="from" id="select" onchange="sendInfo()">
        					<option>Select a Branch</option>
        					<option>Ghaziabad</option>
        					<option>Kanpur</option>
        					<option>Delhi</option>
        					<option>Agra</option>
        					</select></td><td>To:<select name="to" id="select" onchange="sendInfo()">
        					<option>Select a Branch</option>
        					<option>Ghaziabad</option>
        					<option>Kanpur</option>
        					<option>Delhi</option>
        					<option>Agra</option>
        					</select></td></tr>
                
        	
        	<tr><td><br></td></tr>
        </table>
            <%     PreparedStatement ps= con.prepareStatement("Select tmodel,tno,malik,tfrom,tto from tinstall");
                
               	ResultSet rs= ps.executeQuery();
               	out.print("<table cellspacing='3',cellpadding='3' border='3'>");
               	out.print("<tr><th><center>Model<center></th><th><center>Number</center></th><th>Owner</th><th><center>Route</center></th></tr>");
               	
               	
               	  while(rs.next()){
               	out.print("<tr>");
                
               			out.print("<td>"+rs.getString(1)+"</td>");
               			out.print("<td>"+rs.getString(2)+"</td>");
               			out.print("<td>"+rs.getString(3)+"</td>");
               			out.print("<td>"+rs.getString(4)+"-"+rs.getString(5)+"-"+rs.getString(4)+"</td>");
               	    	out.print("</tr>");
               	}
               out.print("</table>");
                %>
               
                </br>
             <div id="gbox-grd">
                               
                <div id="features">
                  
                  <div class="clear"> </div>
                </div>
                 </div>
                <div id="newsletter">
			     
                  
                <p></p>
                </div>
                <div class="clear"> </div>
                
             
            </div>
            <jsp:include page="footer.html"></jsp:include>