<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>


<%
 try {
String name= request.getParameter("name");
String email= request.getParameter("email");
String phone= request.getParameter("phone");
String message= request.getParameter("message");
 
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JP","sudhir", "sarthak");

PreparedStatement ps=con.prepareStatement("insert into quizcontact values(?,?,?,?)");
ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,message);
ps.setString(4,phone);

int s= ps.executeUpdate();
if(s>0){%>
<jsp:forward page="home.jsp"></jsp:forward>
<% 
}
else{
out.print("Sorry! Please fill in correct details and try again" );
}
}
catch(Exception e){e.printStackTrace();
out.print("Sorry! Please fill in correct details and try again" );
}

%>

