<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body background="./image/2.jpg">
	<%
		String username=(String)session.getAttribute("name");
		String path = request.getContextPath();//获取Web应用的路径
		String ManageStudent = path + "/jsp/student_manage.jsp";
		if(username!=null){
	%>
	<p>您好！欢迎登陆您登陆学生管理系统！</p><br>
	<a href="<%=ManageStudent%>">点击进行学生管理</a><br>
	<%
		}
	%>
</body>
</html>