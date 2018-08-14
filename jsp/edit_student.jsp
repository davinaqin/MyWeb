<%@page import="db.Edit_Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="student.Student"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>编辑学生详情</title>
	</head>
	
	<%
		int sid = Integer.parseInt(request.getParameter("sid"));
		Student s = Edit_Student.studentDetail(sid);
		
		String path = request.getContextPath();
		String editStudentOpJSP = path + "/jsp/edit_student_op.jsp"; 
		
	%>
	
	<body background="../image/2.jpg">
		<form action="<%=editStudentOpJSP %>?sid=<%=sid %>" method="post">
			姓名：<input name="name" value="<%= s.getName()%>"><br>
			性别：<input name="gender" value="<%= s.isGender()%>"><br>
			<input type="submit" value="确认修改">
		</form>
	</body>
</html>




