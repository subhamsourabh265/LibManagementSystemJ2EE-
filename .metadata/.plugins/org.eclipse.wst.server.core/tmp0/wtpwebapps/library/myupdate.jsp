<%@ page import="java.sql.*"%>
<%@include file="connect1.jsp" %>
<%String name="",mailid="";
int id,phno;
Statement pst=null;
%>
<table border="2">
<tr>
<td>id</td>
<td>name</td>
<td>phno</td>
<td>mailid</td>
</tr>
<body style="background-color:lightblue ">
<% 
try{
pst=conn.createStatement();
String a=request.getParameter("n1");
out.println(a);
ResultSet rs=pst.executeQuery("Select * from member where id="+a );
while(rs.next())
{
id=rs.getInt(1);
name=rs.getString(2);
phno=rs.getInt(3);
mailid=rs.getString(4);
%>
<tr><td><%=id %></td><br><br>
<td><%=name%></td><br><br>
<td><%=phno%></td><br><br>
<td><%=mailid%></td><br><br>
</tr>
<%}%>
</table>
<%
rs.close();
conn.close();
}catch(Exception e){}
%>
   
 </p>
</form>
</html>
