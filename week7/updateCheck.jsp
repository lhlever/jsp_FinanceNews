<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateCheck.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
  <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"64544",secure:"64549"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
  
  <body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-9" data-genuitec-path="/week7/WebRoot/updateCheck.jsp">
  	<%Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    String url="jdbc:sqlserver://localhost:1433;dataBasename=mydb";
    String username="sa";
    String pwd="123";
    Connection conn=DriverManager.getConnection(url,username,pwd);
    Statement stmt=conn.createStatement();
    String sql="select * from login where username='"+request.getParameter("username")+"'and pwd='"+request.getParameter("pwd")+"'";
    ResultSet rs=stmt.executeQuery(sql);
    if(rs.next()){
    	int i=stmt.executeUpdate("update login set pwd='"+request.getParameter("pwd1")+"'where username='"+request.getParameter("username")+"'");
    	if(i!=0){
    		response.sendRedirect("login.jsp");
    	}else{
    		request.setAttribute("news","用户名或密码错误");
    		request.getRequestDispatcher("update.jsp").forward(request, response);
    	}
    }else{
    	request.setAttribute("news","用户名或密码错误");
    	request.getRequestDispatcher("login.jsp").forward(request, response);
    }
    %>
  </body>
</html>
