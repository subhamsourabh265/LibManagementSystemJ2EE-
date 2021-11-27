<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="connect1.jsp" %>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert succesfull</title>
</head>
<body>
<% try{
	
PreparedStatement ps=conn.prepareStatement("insert into memeber values(?,?,?,?,?)");
ps.setString(1,request.getParameter("n1"));
ps.setString(2,request.getParameter("n2"));
ps.setString(3,request.getParameter("n3"));
ps.setString(4,request.getParameter("n4"));
ps.setString(5,request.getParameter("n5"));
int t=ps.executeUpdate();
if(t>0)
	out.println("<h1> Registration successfull");
conn.close();
}
catch (Exception e)
{
	out.println("<h2>registration unsuccesfull");
}
%>
</body>
</html>