<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生管理</title>
</head>
<%
		String path = request.getContextPath();//获取Web应用的路径	
		String addStudentJSP = path + "/jsp/add_student.jsp";			//添加学生的页面
		String studentListJSP = path + "/jsp/student_list.jsp";	//显示学生列表页面
		
	%>
<body background="../image/2.jpg">
	<a href="<%=addStudentJSP%>">添加新学生</a><br>
	<a href="<%=studentListJSP%>">学生列表</a><br>
</body>
</html>