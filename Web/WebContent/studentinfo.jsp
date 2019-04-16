<%@page import="org.students.entity.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>个人详细信息</title>
</head>
<body>
		<%
			Student student = (Student)request.getAttribute("student");
		%>
		<form action="UpdateStudentServlet" method="post">
			<table border="1" cellspacing="0" cellpadding="5" bordercolor="silver" align="center">
				<tr>
					<td colspan="2" align="center" bgcolor="#E8E8E8">个人详细信息</td>
				</tr>
				<tr>
					<td>姓名：</td>
					<td><input type="text" name="name" value="<%=student.getName()%>"></td>
				</tr>
				<tr>
					<td>学号：</td>
					<td><input type="text" name="studentID" value="<%=student.getStudentID()%>" readonly="readonly"></td>
				</tr>
				<tr>
					<td>专业：</td>
					<td><input type="text" name="major" value="<%=student.getMajor()%>"></td>
				</tr>
				<tr>
					<td>电话：</td>
					<td><input type="text" name="phone" value="<%=student.getPhone()%>"></td>
				</tr>
				<tr>
					<td>邮箱：</td>
					<td><input type="email" name="email" value="<%=student.getEmail()%>"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="确定">
						<a href="QueryAllStudentsServlet">返回</a>
					</td>
				</tr>
				
			</table>
			
		</form>
		
		
			
			
</body>
</html>