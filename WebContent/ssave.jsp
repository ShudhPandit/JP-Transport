<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>


<% 
String status=request.getParameter("status");
String id=(String)session.getAttribute("id");
System.out.print(id);
if(id.length()>0){
try{
	Class.forName("com.mysql.jdbc.Driver");

	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JP","sudhir", "sarthak");
	
PreparedStatement ps=con.prepareStatement("update tinstall set status='"+status+"' where id='"+id+"'");
//ps.setString(1,n);
out.print("<br>");
int s=ps.executeUpdate();

con.close();
}catch(Exception e){e.printStackTrace();}
}//end of if
%>
<jsp:forward page="status.jsp"></jsp:forward>