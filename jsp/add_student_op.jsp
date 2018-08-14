<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="student.Student" %>
<%@ page import="db.Add_Student" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>添加学生操作结果</title>
</head>
<body background="../image/2.jpg">
	<%
	String name = request.getParameter("name");
	boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
	
	Student newStu = new Student();
	newStu.setGender(gender);
	newStu.setName(name);
	//out.print(newStu.getName());
	//out.print(newStu.isGender());
	boolean ok = Add_Student.addStudent(newStu);
	if(ok){
		out.print("操作成功！<br>");
	}
	else{
		out.print("操作失败！<br>");
	}
	//out.print(ok);
	%>
</body>
</html>