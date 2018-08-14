<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>


<body>
	<%
		String name=request.getParameter("username");
		String password=request.getParameter("userpassword");
		if(name=="admin"&&password=="123"){
	%>
	<p>yes</p>
	<p><%=name %>
	<p><%=password %></p>
	<%} %>
</body>
</html>