<%@ page import="java.sql.*"%>
<%@include file="connect1.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 

Transitional//EN">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; ">
</head>
<body style="background-color:lightblue ">
<form name="form1" method="post" action="myupdate.jsp">
  <p> id 
<%!Statement pst1=null; int s1;%>
<select name="n1">
<%try{
	pst1=conn.createStatement();
	ResultSet rs1=pst1.executeQuery("Select id from member"); 
 while(rs1.next()){
     s1=rs1.getInt(1);
   %>
   <option  onclick="this.form.submit()" value="<%=s1%>"><%=s1%></option>
  <%  }
	   rs1.close();
    %>

</select>
<%}catch(Exception e){}%>
  </p>
  <p>
   <input type="submit" name="Submit" value="Submit">
 </p>
</form>
</body>
</html>
