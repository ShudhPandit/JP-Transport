package com.javatpoint;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class MyListener implements ServletContextListener{

    @Override
	public void contextInitialized(ServletContextEvent arg0) {
		
		Connection con=null;
	try{

Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection("jdbc:mysql://localhost:3306/transport","sudhir", "sarthak");

		

		PreparedStatement ps2= con.prepareStatement("CREATE SEQUENCE JAVATPOINT MINVALUE 1 MAXVALUE 999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE");
		ps2.executeUpdate();
		
		
		
		PreparedStatement ps4=con.prepareStatement("create table payregister(username varchar(80), userpass varchar(80), branch varchar(80),dateofjoining varchar(80), dateofbirth varchar(80), salary varchar(80)");
		ps4.executeUpdate();		
			
		
		ps4= con.prepareStatement("create table tinstall(tmodel varchar(80), tno varchar(80), insurance varchar(80),iname varchar(80), malik varchar(80), tfrom varchar(80),tto varchar(80), idate date, mobilenumber int,status varchar(80)");
		ps4.executeUpdate();
		
		ps4= con.prepareStatement("CREATE TABLE  QUIZCONTACT(NAME VARCHAR2(4000),EMAIL VARCHAR2(4000),PHONE NUMBER NOT NULL ENABLE, MESSAGE VARCHAR2(4000))");
		ps4.executeUpdate();
		
		
		Statement stmt=con.createStatement();
		

//stmt.executeUpdate("CREATE TRIGGER  BI_PAYREGISTER before insert on PAYREGISTER for each row begin select JAVATPOINT.nextval into :NEW.ID from dual;end");
		//stmt.executeUpdate("CREATE TRIGGER  BI_TINSTALL before insert on TINSTALL for each row begin select JAVATPOINT.nextval into :NEW.ID from dual;end");
		}	
	
		
	    catch(Exception e){
	    	e.printStackTrace();
	    	
	    }
	    }
	     public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("project undeployed");
		
	}
}
