<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'registerCheck.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta charset="utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"64544",secure:"64549"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
  
  <body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-5" data-genuitec-path="/week7/WebRoot/registerCheck.jsp">
  	<jsp:useBean id="user" class="com.login.User" scope="request"></jsp:useBean>
  	<jsp:setProperty property="username" name="user"/>
  	<jsp:setProperty property="pwd" name="user"/>
  	<jsp:setProperty property="enable" name="user"/>
    <%
    	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	    String url="jdbc:sqlserver://localhost:1433;dataBasename=mydb";
	    String username="sa";
	    String pwd="123";
	    Connection conn=DriverManager.getConnection(url,username,pwd);
	    Statement stmt=conn.createStatement();
	    String sqlQuery="select * from login where username='"+user.getUsername()+"'";
	    String sqlInsert="insert into login values('"+user.getUsername()+"','"+user.getPwd()+"','"+"1"+"','"+"1"+"')";
	    ResultSet rs=stmt.executeQuery(sqlQuery);
	    if(rs.next()){
	    	request.setAttribute("news","该用户名已经存在");
    		request.getRequestDispatcher("register.jsp").forward(request, response);
	    }else{
	    	int i=stmt.executeUpdate(sqlInsert);
	    }
	    
     %>
  </body>
</html>
