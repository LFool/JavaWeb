<%@page import="org.students.entity.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>显示学生信息</title>

</head>
<body>
		<table border="1" cellspacing="0" cellpadding="5" bordercolor="silver" align="center">
			<tr>
				<td colspan="7" align="center" bgcolor="#E8E8E8">学生信息列表</td>
			</tr>
			<tr>
				<th>姓名</th>
				<th>学号</th>
				<th>专业</th>
				<th>电话</th>
				<th>邮箱</th>
				<th>操作1</th>
				<th>操作2</th>
			</tr>
			
			<%
				List<Student> students = (List<Student>)request.getAttribute("students");

				for(Student student:students){
			%>
				
					<tr>
						<td><%=student.getName() %></td>
						<td><%=student.getStudentID() %></td>
						<td><%=student.getMajor() %></td>
						<td><%=student.getPhone() %></td>
						<td><%=student.getEmail() %></td>
						<td><a href="QueryStudentServlet?studentID=<%=student.getStudentID() %>">修改</a></td>
						<td><a href="DeleteStudentServlet?studentID=<%=student.getStudentID() %>">删除</a></td>
					</tr>
			<%
				}
			%>

		</table>
		
		<!-- 删除判断 -->
		<%
			String deleteError = (String)request.getAttribute("delete_error");
			//System.out.println(deleteError);
			if(deleteError != null){
				if(deleteError.equals("error")){
		%>
					<script type="text/javascript">
						alert('删除失败！');
						window.location='QueryAllStudentsServlet' ; 
					</script>
		<%
				}
				else if(deleteError.equals("noerror")){
		%>
					<script type="text/javascript">
						alert('删除成功！');
						window.location='QueryAllStudentsServlet' ; 
					</script>
		<%
				}
			}
		
			//判断修改
			String updateError = (String)request.getAttribute("update_error");
			//System.out.println(deleteError);
			if(updateError != null){
				if(updateError.equals("error")){
		%>
					<script type="text/javascript">
						alert('修改失败！');
						window.location='QueryAllStudentsServlet' ; 
					</script>
		<%
				}
				else if(updateError.equals("noerror")){
		%>
					<script type="text/javascript">
						alert('修改成功！');
						window.location='QueryAllStudentsServlet' ; 
					</script>
		<%
				}
			}
		%>

</body>
</html>