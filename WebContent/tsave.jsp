<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

    

<%try{
System.out.println("started");

String model=request.getParameter("model");
String tno=request.getParameter("tno");

String insurance=request.getParameter("insurance");
String cname=request.getParameter("cname");
String owner=request.getParameter("owner");
String mobile=request.getParameter("mobile");
String from=request.getParameter("from");
String to=request.getParameter("to");
String dat=request.getParameter("dat");
//java.util.Date sqdate=Calendar.getInstance().getTime();
//	java.sql.Date dat =new java.sql.Date(sqdate.getTime());
	

Class.forName("com.mysql.jdbc.Driver");

	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JP","sudhir", "sarthak");
	
PreparedStatement ps=con.prepareStatement("insert into tinstall values(?,?,?,?,?,?,?,?,?)");
System.out.println("hello");
//ps.setInt(1,2);
ps.setString(1,model);
ps.setString(2,tno);
ps.setString(3,owner);
ps.setString(4,from);
ps.setString(5,to);
ps.setString(6,dat);
ps.setString(7,mobile);
ps.setString(8,insurance);
ps.setString(9,cname);

System.out.println(ps.toString());
int s=ps.executeUpdate();
out.print(s);
}catch(SQLException e2){
    
    System.out.println("SQLEXCEPTION");
    out.println("SQL Exception");
    out.println(e2.getMessage());
e2.printStackTrace();
}
%>
<jsp:forward page="admin.jsp"></jsp:forward>
</html>