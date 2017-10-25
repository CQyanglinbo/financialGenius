<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>licaiupdate</title>
<script type="text/javascript" src="admin/plugins/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="admin/js/main.js"></script>
<script type="text/javascript" src="admin/js/timer.js"></script>
<link rel="stylesheet" type="text/css" href="admin/css/font-awesome.css" />
<link rel="stylesheet" type="text/css"
	href="admin/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="admin/css/main.css">
<link rel="stylesheet" type="text/css" href="admin/css/useradd.css">
</head>
<body>
	<div class="main">
		<div class="head">
			<div class="head1">ADMIN</div>
			<div class="head2">
				<input type="text" name="text" value="search..." id="input1"><a
					href=""><i class="fa fa fa-search fa fa-fw"></i></a>&nbsp;&nbsp;&nbsp;
				<a href="">设置</a>&nbsp;&nbsp;<a href="">帮助</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
					href=""><i class="fa fa fa-user fa-2x fa-fw"></i></a> <select
					class="section"
					style="width: 70px; border: 0px; background-color: #845636;color:white;" 
					onchange="if(this.value!='')window.location.href=(this.value);this.options[0].selected=true">
					<option>${username} ${id}</option>
					<option value="admin_view_changePassword">修改密码</option>
					<option value="adminAction_adminExit">退出</option>
				</select>
			</div>
		</div>

		<div class="left">
			<a href="admin_view_main"><li id="li5"><i
					class="fa fa fa-envira fa-fw"></i>&nbsp;HOME</li></a>
			<li id="li1"><a href=""><i class="fa fa fa-user fa fa-fw"></i></a>&nbsp;user
				manage</li>
			<li class="li1-li"><a href="admin_view_addUser" id="a"><i
					class="fa fa-angle-right fa-fw"></i>&nbsp;&nbsp;&nbsp;&nbsp;添加用户</a></li>
			<li class="li1-li"><a href="userAction_findUsers" id="a"><i
					class="fa fa-angle-right fa-fw"></i>&nbsp;&nbsp;&nbsp;&nbsp;删除用户</a></li>
			<li class="li1-li"><a href="userAction_findUsers" id="a"><i
					class="fa fa-angle-right fa-fw"></i>&nbsp;&nbsp;&nbsp;&nbsp;更新用户</a></li>
			<!-- <li id="li5">用户添加</li> -->
			<li id="li2"><a href=""><i class="fa fa fa-money fa fa-fw"></i></a>&nbsp;project
				manage</li>
			<li class="li2-li"><a href="admin_view_addFinancing" id="a"><i
					class="fa fa-angle-right fa-fw"></i>&nbsp;&nbsp;&nbsp;&nbsp;添加投资项目</a></li>
			<li class="li2-li"><a href="investmentAction_findInvestments"
				id="a"><i class="fa fa-angle-right fa-fw"></i>&nbsp;&nbsp;&nbsp;&nbsp;删除投资项目</a></li>
			<li class="li2-li"><a href="investmentAction_findInvestments"
				id="a"><i class="fa fa-angle-right fa-fw"></i>&nbsp;&nbsp;&nbsp;&nbsp;更新投资项目</a></li>
			<li id="li3"><a href=""><i class="fa fa fa-vcard fa fa-fw"></i></a>&nbsp;role
				manage</li>
			<li class="li3-li"><a href="admin_view_addRole" id="a"><i
					class="fa fa-angle-right fa-fw"></i>&nbsp;&nbsp;&nbsp;&nbsp;添加角色</a></li>
			<li class="li3-li"><a href="roleAction_getRoles" id="a"><i
					class="fa fa-angle-right fa-fw"></i>&nbsp;&nbsp;&nbsp;&nbsp;删除角色</a></li>
			<li class="li3-li"><a href="roleAction_getRoles" id="a"><i
					class="fa fa-angle-right fa-fw"></i>&nbsp;&nbsp;&nbsp;&nbsp;更新角色</a></li>
			<li id="li4"><a href=""><i
					class="fa fa fa-bar-chart fa fa-fw"></i></a>&nbsp;message</li>
			<li class="li4-li"><a href="admin_view_onlineUser" id="a"><i
					class="fa fa-angle-right fa-fw"></i>&nbsp;&nbsp;&nbsp;&nbsp;在线人数统计</a></li>
			<li class="li4-li"><a href="userAction_showUsersStatus" id="a"><i
					class="fa fa-angle-right fa-fw"></i>&nbsp;&nbsp;&nbsp;&nbsp;用户状态统计</a></li>
		</div>
		<div class="right">
			<div class="right-head">
				<div class="head-left">当前位置：修改密码</div>
				<div class="head-right">
					<b id="mytimer"></b>
				</div>
			</div>
			<div class="head-bottom">
				<div class="query">
					<div class="head-left">
						<a href=""><i class="fa fa-list"></i></a>&nbsp;&nbsp;licai update
					</div>
				</div>
				<br> <br> <br>
				<div class="form">
					<form action="adminAction_updateAdmin?admin.id=${id }" method="post"
						name="form" onsubmit="return register()">
						<p>
							<a href=""><i class="fa fa-user fa-fw"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
								type="password" name="passpwd" id="name"
								placeholder="请输入原密码" class="input">
								<b id="mes"
								style="font-size: 16px;"></b>
						</p>
						<p>
							<a href=""><i class="fa fa-rmb fa-fw"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
								type="password" name="newPassword" id="password"
								placeholder="请输入新密码" class="input">
						</p>
						<p>
							<a href=""><i class="fa fa-envelope-o fa-fw"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
								type="password" name="againPassword" id="againpass"
								placeholder="请再次输入新密码" class="input">
						</p>
						<p>
							<input type="submit" name="submit" value="更新" id="submit"><input
								type="reset" name="reset" id="reset" value="重置">
						</p>
					</form>
				</div>
			</div>
		</div>
	</div>
		<script type="text/javascript">
		function register(){
			if(document.getElementById("name").value.length==0){
				alert("请输入原密码!");
				document.getElementById("name").focus();
				return false;
			}else if(document.getElementById("password").value.length==0){
				alert("请输入新密码!");
				document.getElementById("password").focus();
				return false;
			}else if(document.getElementById("againpass").value.length==0){
				alert("请再次输入新密码!");
				document.getElementById("againpass").focus();
				return false;
			}else if(document.getElementById("password").value!=document.getElementById("againpass").value){
				alert("两次输入的密码必须相同!");
				document.getElementById("againpass").focus();
				return false;
			}
			alert("密码修改成功！请重新登录");
			return true;
		}
		$(function() {
			
			$("#name").blur(function() {
				var username = $("#name").val();
				var content = {
					"password" : username
				};
				$.ajax({
					type : "post",
					url : "adminCheckPassword",
					data : content,
					dataType : "json",
					success : function(data) {
						if (data.success) {
							$('#mes').html("密码正确").css('color', 'green');
							
						}else{
					
							$('#mes').html("密码错误").css('color', 'red');
							$('#name').val(null);
						}
							
						},
					error : function() {
						alert("请求失败");
					}
				});
			});
		});
	</script>
</body>
</html>