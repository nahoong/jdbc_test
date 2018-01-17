<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%
	Connection conn = null;

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	//오라클 성치폴더 network/admin/listener.ora 에서 port(1521),service_name(xe)확인
	
	boolean connect = false;
	
	try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url,"jdbc_test","1234");
		//create user jdbc_test identified by 1234;
		//grant resource, connect to jdbc_test;
		
		connect = true;
		
		conn.close();
	}catch(Exception e){
		connect = false;
		e.printStackTrace();
	}

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>
<% if(connect == true){ %>
	연결되었습니다.
<%}else{%>
	연결에 실패하였습니다.
<%} %>
</h3>
</body>
</html>