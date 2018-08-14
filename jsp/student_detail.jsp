
<%@page import="db.Edit_Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="student.Student"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>学生详情</title>
	</head>
	
	<%
		int sid = Integer.parseInt(request.getParameter("sid"));
		Student s = Edit_Student.studentDetail(sid);
		
	%>
	
	<body background="../image/2.jpg">
		<p>学生姓名：<%=s.getName() %><p><br>
		<p>学生ID：<%=s.getId() %><p><br>
		<p>学生性别:<%
		if(s.isGender()){%>
		男
		<%}else{ %>
		女
		<%} %>
		</p><br>
	</body>
</html>