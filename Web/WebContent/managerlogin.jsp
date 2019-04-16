<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>管理员登录</title>
	
	<!-- CSS -->
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
	<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/css/form-elements.css">
	<link rel="stylesheet" href="assets/css/style.css">
	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>

<body>
	
	<%
		String error = (String)request.getAttribute("login_error");
		if(error != null){
	%>
			<script type="text/javascript">
				alert('用户名或密码错误！');
				window.location='manager_login.jsp' ; 
			</script>
	<%
		}
	%>
	
	<!-- Top content -->
	<div class="top-content">
		
	    <div class="inner-bg">
	        <div class="container">
	            <div class="row">
	                <div class="col-sm-8 col-sm-offset-2 text">
	                    <h1><strong>管理员</strong> 登录</h1>
	                </div>
	            </div>
	            <div class="row">
	                <div class="col-sm-6 col-sm-offset-3 form-box">
	                	<div class="form-top">
	                		<div class="form-top-right">
	                			<i class="fa fa-key"></i>
	                		</div>
	                    </div>
	                    <div class="form-bottom">
	               <form action="LoginServlet" method="post" class="login-form">
	               	   <div class="form-group">
	               		<label class="sr-only" for="form-username">Username</label>
	                   	<input type="text" name="form-username" placeholder="用户名" class="form-username form-control" id="form-username">
	                   </div>
	                   <div class="form-group">
	                   	<label class="sr-only" for="form-password">Password</label>
	                   	<input type="password" name="form-password" placeholder="密码" class="form-password form-control" id="form-password">
	                   </div>
	                   <button type="submit" class="btn">登录</button>
	               </form>
	              </div>
	                </div>
	            </div>
	        </div>
	    </div>
	    
	</div>
	<!-- Javascript -->
	<script src="assets/js/jquery-1.11.1.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.backstretch.min.js"></script>
	<script src="assets/js/scripts.js"></script>

</body>
</html>