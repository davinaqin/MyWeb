<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="db.*, student.*, java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>学生列表</title>
	</head>
	
	<%
		List<Student> studentList = Student_list.getStudentList();
	
		String path = request.getContextPath();//获取Web应用的路径		
		String editStudentJSP = path + "/jsp/edit_student.jsp";	//编辑修改学生的页面
		String deleteStudentJSP = path + "/jsp/delete_student.jsp";	//删除学生的页面
		String studentDetailJSP = path + "/jsp/student_detail.jsp";	//学生详情的页面
	%>
	
	<body background="../image/2.jpg">
		<p>
		学生列表1：<br>
		<table border="1">
			<%
				for(int i = 0; i < studentList.size(); i++){
					Student s = studentList.get(i);
					
			%>
				<tr>
					<td><%=s.getId() %></td>
					<td><%=s.getName() %></td>
					<td>
						<%
							if(s.isGender()){
						%>
						男
						<%
							}else{
						%>
						女
						<%
							}
						%>					
					</td>
					<td><a href="<%=studentDetailJSP %>?sid=<%=s.getId()%>">详情</a></td>
					<td><a href="<%=editStudentJSP %>?sid=<%=s.getId()%>">编辑</a></td>
					<td><a href="<%=deleteStudentJSP %>?sid=<%=s.getId()%>">删除</a></td>
				</tr>
				
			<%
				}
			%>
		</table>
	
		<p>
		学生列表2：<br>
		<table border="1">
			<%
				for(int i = 0; i < studentList.size(); i++){
					Student s = studentList.get(i);
					out.print("<tr>");
					out.print("<td>" + s.getId() + "</td>");
					out.print("<td>" + s.getName() + "</td>");
					if(s.isGender()){
						out.print("<td>男</td>");
					}else{
						out.print("<td>女</td>");
					}
					
					out.print("</tr>");
				}
			%>
		</table>
		
	</body>
</html>