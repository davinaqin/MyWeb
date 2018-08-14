<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生管理系统</title>

</head>
<%

	String path = request.getContextPath();
	String LoginJsp = path + "/login.jsp"; 
	String img=path+"/image/sky.jpg";
%>
<body background="./image/2.jpg">
	<p>主页</p>
	<a href="<%=LoginJsp %>">点击登录</a>
	
</body>
</html>