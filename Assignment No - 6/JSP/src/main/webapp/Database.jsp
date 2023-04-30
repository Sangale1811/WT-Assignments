<%@ page import="java.sql.*" %>
<%
String uname=request.getParameter("uname");
String email=request.getParameter("email");
String city=request.getParameter("city");
String password=request.getParameter("pass");

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg","root","root");
	PreparedStatement ps = conn.prepareStatement("insert into reg values(?,?,?,?);");
	
	ps.setString(1,uname);
	ps.setString(2,email);
	ps.setString(3,city);
	ps.setString(4,password);
	
	int x = ps.executeUpdate();
	if(x>0){
		out.println("Registration done Successfully...");
	}
}
catch(Exception e){
	System.out.println(e);
	
}
%>

