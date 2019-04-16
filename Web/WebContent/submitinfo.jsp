<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>submit</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Course Registration Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
	function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- Meta tag Keywords -->
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- js -->
	<!-- //js -->
	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
	<!-- //web-fonts --> 
</head>
<body>
	<!-- banner --> 
<div class="video"> 
	<div class="center-container">
	    <div class="w3ls-agileinfo">
			<h1> --------- 这也太Low了吧  ---------</h1>	
		</div>
		 <div class="bg-agile">
			<h2>你懂滴 </h2>
			<div class="login-form">	
				<form action="AddStudentServlet" method="post" onsubmit="return checkForm()">
					<input type="text"  name="name" id="name" onfocus="showTips('span_name', '必须输入2-4个中文')" onblur="checkName()" onkeyup="checkName()" placeholder="尊姓大名" required="" /><br>
					<span id="span_name" style="color: red; size: 2"></span>
					
					<input type="text"  name="studentID" id="studentID" onfocus="showTips('span_studentID', '请输入正确的学号')" onblur="checkStudentID()" onkeyup="checkStudentID()" placeholder="认证码 ——>学学学......号" required="" /><br>
					<span id="span_studentID" style="color: red; size: 2"></span>
					
					<input type="text"  name="major" id="major" onfocus="showTips('span_major', '专业名必须为中文')" onblur="checkMajor()" onkeyup="checkMajor()" placeholder="学的是啥?" required="" /><br>
					<span id="span_major" style="color: red; size: 2"></span>
					
					<input type="text"  name="phone" id="phone" onfocus="showTips('span_phone', '请输入正确的手机号')" onblur="checkPhone()" onkeyup="checkPhone()" placeholder="电电电电电话话话话话话话话" required="" /><br>
					<span id="span_phone" style="color: red; size: 2"></span>
					
					<input type="email"  name="email" id="email" onfocus="showTips('span_email', '请输入正确的邮箱')" onblur="checkEmail()" onkeyup="checkEmail()" placeholder="邮箱有吧" required="" /><br>
					<span id="span_email" style="color: red; size: 2"></span>
					
					<input type="submit" value="发射">
				</form>	
			</div>	
		</div>
	<!-- //banner --> 
	 <!--copyright-->
		<div class="copy w3ls">
		    <p>&copy; 2019 Xxxxxx Xxxxxxxxxxxx Xxxx . Xxx Xxxxxx Xxxxxxxx  | Design by <a href="https://www.ctguqmx.com/" target="_blank">启明星工作室</a> </p>
	    </div>
	<!--//copyright-->
	</div>	
</div>	
	
	<%
		String message = (String)request.getAttribute("message");
		if(message != null && !"".equals(message)){
	
	%>
		<script type="text/javascript">
			alert("<%=message %>");
			window.location='submitinfo.jsp' ; 
		</script>
	<%
		}
	%>
	
	
	<script type="text/javascript">
	
		//显示提示信息
		function showTips(spanID, msg){
			var span = document.getElementById(spanID);
			span.innerHTML = msg;
		}
	
		//验证用户名
		function checkName(){
			var name = document.getElementById("name").value;
			var span = document.getElementById("span_name");
			var regName = /^[\u4E00-\u9FA5]{2,4}$/;
			if(!regName.test(name)){
// 				alert('必须输入2-4个中文！');
// 				window.location='submitinfo.jsp' ;
				span.innerHTML = "<font>必须输入2-4个中文</font>";
				return false;
			}else{
				span.innerHTML = "<font color='blue'>o(╯□╰)o</font>";
				return true;
			}
		}
		//验证学号
		function checkStudentID(){
			var studentID = document.getElementById("studentID").value;
			var span = document.getElementById("span_studentID");
			var regStudentID = /^(201(7|8))\d{6}$/;
			if(!regStudentID.test(studentID)){
// 				alert('请输入正确的学号！');
// 				window.location='submitinfo.jsp' ;
				span.innerHTML = "请输入正确的学号";
				return false;
			}else{
				span.innerHTML = "<font color='blue'>o(╯□╰)o</font>";
				return true;
			}
		}
		//验证专业
		function checkMajor(){
			var major = document.getElementById("major").value;
			var span = document.getElementById("span_major");
			var regMajor = /^[\u4E00-\u9FA5]+$/;
			if(!regMajor.test(major)){
// 				alert('请输入专业的中文表示！');
// 				window.location='submitinfo.jsp' ;
				span.innerHTML = "请输入专业的中文表示";
				return false;
			}else{
				span.innerHTML = "<font color='blue'>o(╯□╰)o</font>";
				return true;
			}
		}
		//验证电话
		function checkPhone(){
			var phone = document.getElementById("phone").value;
			var span = document.getElementById("span_phone");
			var regPhone = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
			if(!regPhone.test(phone)){
// 				alert('请输入正确的手机号！');
// 				window.location='submitinfo.jsp' ;
				span.innerHTML = "请输入正确的手机号";
				return false;
			}else{
				span.innerHTML = "<font color='blue'>o(╯□╰)o</font>";
				return true;
			}
		}
		//验证邮箱
		function checkEmail(){
			var email = document.getElementById("email").value;
			var span = document.getElementById("span_email");
			var regEmail =  /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
			if(!regEmail.test(email)){
// 				alert('请输入有效邮箱！');
// 				window.location='submitinfo.jsp' ;
				span.innerHTML = "请输入有效邮箱";
				return false;
			}else{
				span.innerHTML = "<font color='blue'>o(╯□╰)o</font>";
				return true;
			}
		}
		//验证所有信息是否全部正确
		function checkForm(){
			var flag = checkName() && checkStudentID() && checkMajor() && checkPhone() && checkEmail(); 
			return flag;
		}

	</script>

</body>
</html>