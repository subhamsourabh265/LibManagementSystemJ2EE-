<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<body>
<%@ page import="java.sql.*" %>
	<%! Connection conn=null;%>
	<%	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","sourabh");
		System.out.println("driver  found");
	}
	catch(Exception e) {
System.out.println("driver not found");
}
	%> 
</body>
</html>