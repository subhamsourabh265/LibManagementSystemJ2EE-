<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@include file="connect1.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:lightblue ">
<%try{
	String sub=request.getParameter("n1");
 out.println(sub);
	    PreparedStatement pst=conn.prepareStatement("select * from book where subject=?");
	    pst.setString(1,sub);
	    ResultSet rs=pst.executeQuery();%>
	 
	   <%while(rs.next()){
		   %>
	   
	    <form action="download">
	    <table border=2>
	    <tr>
	    <td><%=rs.getString(2) %></td>
	    <td><%=rs.getString(3) %></td>
	    <td><%=rs.getString(4) %></td>
	    <td><%=rs.getString(5) %></td>
		<input type="hidden" value="<%=rs.getString(6)%>" name="h1"></td>
		<td><input type="submit" value="download"/></td>
		</tr>
	</table>
	  </form>
	   
    <% }} catch(Exception e){System.out.println(" connection unconnected");}%>
</body>
</html>