<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
String n=request.getParameter("val");
String branch=request.getParameter("branch");
if(n.length()>0){
try{
	Class.forName("com.mysql.jdbc.Driver");

	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JP","sudhir", "sarthak");
	
PreparedStatement ps=con.prepareStatement("select * from payregister where branch='"+branch+"' and username like '%"+n+"%'");
ResultSet rs=ps.executeQuery();
%>
<div class="col-md-12 col-sm-12">
	<div class="table-responsive">
		<table class="table table-striped" id="myTable">
			<thead>
				<tr>
					<th>Name</th>
					<th>Password</th>
					<th>Salary</th>
					<th>Date of birth</th>
					<th>Date of joining</th>
					<th>Salary</th>
				</tr>
			</thead>
			<tbody>
				<tr>
				<%
				while(rs.next()){
				%>
					<td><% out.println(rs.getString(1));%></td>
					<td><% out.println(rs.getString(2));%></td>
					<td><% out.println(rs.getString(3));%></td>
					<td><% out.println(rs.getString(4));%></td>
					<td><% out.println(rs.getString(5));%></td>
					<td><% out.println(rs.getString(6));%></td>
					<%
}
con.close();
}catch(Exception e){e.printStackTrace();}
}//end of if
%>
				</tr>
			</tbody>
		</table>
	</div>
</div>
