<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
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
  
  <body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-1" data-genuitec-path="/week7/WebRoot/login.jsp">
  	<%if(request.getAttribute("news")!=null){
  		out.println("<script type='text/javascript' language='javascript'>");
		out.println("alert('"+request.getAttribute("news")+"');");
		out.println("</script>");
  	} %>
  	<a href="register.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-1" data-genuitec-path="/week7/WebRoot/login.jsp">注册</a>
    <form action="loginCheck.jsp">
    	用户名：<input type="text" name="username"><br>
    	密码：<input type="text" name="pwd"><br>
    	<input type="submit" value="提交">
    	<input type="reset" value="重置">
    </form>
  </body>
</html>
