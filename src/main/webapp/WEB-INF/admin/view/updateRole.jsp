<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
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
					style="width: 70px; border: 0px; background-color: #845636; color: white;"
					onchange="if(this.value!='')window.location.href=(this.value);this.options[0].selected=true">
					<option>${username}</option>
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
			<li class="li1-li"><a href="userAction_getPageList" id="a"><i
					class="fa fa-angle-right fa-fw"></i>&nbsp;&nbsp;&nbsp;&nbsp;删除用户</a></li>
			<li class="li1-li"><a href="userAction_getPageList" id="a"><i
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
				<div class="head-left">当前位置：更新角色</div>
				<div class="head-right">
					<b id="mytimer"></b>
				</div>
			</div>
			<div class="head-bottom">
				<div class="query">
					<div class="head-left">
						<a href=""><i class="fa fa-list"></i></a>&nbsp;&nbsp;role table
					</div>
				</div>
			</div>
			<br> <br> <br>
			<div class="form">
				<form action="roleAction_updateRole" method="post" name="form"
					onsubmit="return register()">
					<p>
						<a href=""><i class="fa fa-user fa-fw"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="text" name="roleName" id="name"
							placeholder="${role.roleName }" class="input"><b id="mes"
							style="font-size: 16px;"></b>
					</p>
					<p>
						<a href=""><i class="fa fa-rmb fa-fw"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="text" name="permission" id="password"
							placeholder="${role.permission }" class="input">
					</p>
					<p>
						<a href=""><i class="fa fa-envelope-o fa-fw"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="text" name="description" id="againpass"
							placeholder="${role.description }" class="input">
					</p>
					<p>
						<input type="submit" name="submit" value="更新" id="submit"><input
							type="reset" name="reset" id="reset" value="重置">
					</p>
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function register() {
			if (document.getElementById("name").value.length == 0) {
				alert("项目名不能为空!");
				document.getElementById("name").focus();
				return false;
			} else if (document.getElementById("password").value.length == 0) {
				alert("金额不能为空!");
				document.getElementById("password").focus();
				return false;
			} else if (document.getElementById("againpass").value.length == 0) {
				alert("描述不能为空!");
				document.getElementById("againpass").focus();
				return false;
			}
			return true;
		}
		$(function() {

			$("#name").blur(
					function() {
						if ("${role.roleName }" != $("#name").val()) {
							var username = $("#name").val();
							var content = {
								"roleName" : username
							};
							$.ajax({
								type : "post",
								url : "addRoleCheckUsername",
								data : content,
								dataType : "json",
								success : function(data) {
									if (data.success) {
										$('#mes').html("该名称已存在").css('color',
												'red');
										$('#name').val(null);
									} else
										$('#mes').html("该名称可以使用").css('color',
												'green');
								},
								error : function() {
									alert("请求失败");
								}
							});
						}
					});
		});
	</script>
</body>
</html>