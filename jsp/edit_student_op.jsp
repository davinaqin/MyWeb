<%@page import="db.Edit_Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="student.Student"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>编辑修改学生操作结果</title>
	</head>
	
	<%
		int sid = Integer.parseInt(request.getParameter("sid"));
		String name = request.getParameter("name");
		boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
		
		Student newStu = new Student();
		newStu.setGender(gender);
		newStu.setName(name);
		
		boolean ok = Edit_Student.editStudent(sid, newStu);
		if(ok){
			out.print("操作成功！<br>");
		}
		else{
			out.print("操作失败！<br>");
		}
	%>
	
	<body>
		
	</body>
</html>