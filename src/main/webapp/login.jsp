<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>
<script type="text/javascript" src="admin/plugins/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="admin/css/font-awesome.css" />
<link rel="stylesheet" type="text/css"
	href="admin/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="admin/css/login.css">
<script type="text/javascript" src="admin/js/main.js"></script>
</head>
<body>
	<div class="main">
		<div class="left">
			<img src="admin/images/login.jpg">
		</div>
		<div class="right">
			<div class="right-top">
				<div class="img1">
					<img src="admin/images/logo1.png">
				</div>
				<div class="text">ADMIN LOGIN</div>
			</div>
			<div class="right-middle">
				<form id="myForm" action="adminAction_adminLogin" method="post"
					name="form" onsubmit="return login()">
					<li><a href=""><i class="fa fa-user fa-fw"></i></a>&nbsp;&nbsp;
						<input type="text" name="username" id="name" required="required"
						placeholder="your username"></li>
					<li><a href=""><i class="fa fa-lock fa-fw"></i></a>&nbsp;&nbsp;
						<input type="password" name="password" id="password"
						required="required" placeholder="your password"></li>
					<li><a href=""><i class="fa fa-lock fa-fw"></i></a>&nbsp;&nbsp;<input
						id="loginform:codeInput" class="loginFormTdIpt" type="text"
						name="checkcode" placeholder="请输入验证码" /><img id="loginform:vCode"
						class="validateCode" src="validatecode.jsp"
						onclick="javascript:document.getElementById('loginform:vCode').src='validatecode.jsp?'+Math.random();" /></li>
					<b id="loginMsg"></b>
					<li><label><input type="checkbox">&nbsp;remember
							me</label></li>
					<li><input type="submit" name="submit" id="submit" value="登录">
						<input type="reset" name="reset" id="reset" value="重置"></li>
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {

			var flag = false;

			$('.loginFormTdIpt').on(
					"blur",
					function() {
						var validateNum = $(".loginFormTdIpt").val();
						$.post("adminValidateNum", {
							"validateNum" : validateNum
						}, function(data) {
							if (data.message == -1) {
								$('#loginMsg').html('验证码输入有误 请重新输入').css(
										"color", "red");
								$('.loginFormTdIpt').html('');
								return false;
							} else{
								$('#loginMsg').html('');
							}
						}, "json");
					});

			//登陆验证
			$("#submit").on("click", function() {
				var username = $("#name").val();
				var password = $("#password").val();

				$.post("adminValidatePwd", {
					"username" : username,
					"password" : password,
				}, function(data) {
					if (data.message) {
						alert("登陆成功");
						flag = true;
					} else {
						alert("用户名或密码错误");
						return false;
					}
				}, "json");
			});

			if (flag == false) {
				return false;
			} else {
				$('#myForm').submit();
			}
		})
	</script>
</body>
</html>