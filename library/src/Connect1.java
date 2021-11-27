import java.sql.*;
public class Connect1 {
	public Connection conn=null;

	public Connection	connect1(){
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","admin");
		
	}
	catch(Exception e){}
	return conn;
		}



}
