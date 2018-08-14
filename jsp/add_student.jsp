<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加学生</title>
</head>
<%
	String path = request.getContextPath();
	String AddStudent = path + "/jsp/add_student_op.jsp"; 
%>
<body background="../image/2.jpg">
	<form action="<%=AddStudent%>" method="post">
			姓名：<input type="text" name="name"><br>
			性别：<input type="text" name="gender"><br>
			等等其他学生信息<br>
			<input type="submit" >
		</form>
</body>
</html>