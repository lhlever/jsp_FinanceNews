<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'update.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <script type="text/javascript">
		function confirm1(){
			if(document.forms["fm"]["username"].value==""){
				alert("用户名不能为空");
				return false;
			}
			if(document.forms["fm"]["pwd"].value==""){
				alert("原密码不能为空");
				return false;
			}
			if(document.forms["fm"]["pwd1"].value==""){
				alert("请输入新的密码");
				return false;
			}
			if(document.forms["fm"]["pwd2"].value==""){
				alert("请再次输入新的密码");
				return false;
			}
			if(document.forms["fm"]["pwd1"].equals(document.forms["fm"]["pwd2"])==false){
				alert("新的密码两次输入的不一致");
				return false;
			}
			
		}
	</script>
  <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"64544",secure:"64549"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
  
  <body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-8" data-genuitec-path="/week7/WebRoot/update.jsp">
    <%if(request.getAttribute("news")!=null){
  		out.println("<script type='text/javascript' language='javascript'>");
		out.println("alert('"+request.getAttribute("news")+"');");
		out.println("</script>");
  	} %>
    <form name="fm" action="registerCheck.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-8" data-genuitec-path="/week7/WebRoot/update.jsp">
    	更改的用户名：<input type="text" name="username"><br>
    	原密码：<input type="text" name="pwd"><br>
    	输入更改的密码：<input type="text" name="pwd1"><br>
    	再次输入更改的密码：<input type="text" name="pwd2"><br>
    	<input type="submit" value="提交" onclick="confirm1()">
    </form>
  </body>
</html>
