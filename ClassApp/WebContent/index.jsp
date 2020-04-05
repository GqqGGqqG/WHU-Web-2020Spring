<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<script src="${pageContext.request.contextPath }/js/jquery-3.4.1.min.js"></script>
	<link href="${pageContext.request.contextPath }/css/bootstrap.min.css"  rel="stylesheet">
	<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
	<meta charset="utf-8">
	<title>Login page</title>

</head>


<script>
	function login(){
		var a = document.getElementById("acc").value.trim();
		var b = document.getElementById("pwd").value.trim();
		var c = document.getElementById("type").value.trim();
		if (a=='' || b ==''){
			alert("请输入您的信息");
			return;
		}
		var accpattern = new RegExp("[0-9]{13}");
		if (accpattern.test(a)==false){
			alert("账号格式不正确")
			return;
		}
		//三种类型，三个跳转网页，并且需要进行密码验证, 编写新的JS函数进行验证,以免学生进入老师
		else{
			sessionStorage.setItem('account',a);
			var form = document.InfoForm;
			form.method = "post";
			//通过 if 选择性跳转
			if(c=="学生"){
				//跳转至 学生的主页，表单内容也已经提交，供给账号id account
				form.action = "studentMain.jsp";
			}
			else if(c=="老师"){
				//老师
			}
			else{
				//助教
			}
			//在此执行跳转
			form.submit();
		}
		
	}
</script>

<body>
	<div  style="margin-top:10%" >
	</div>
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-3 column">
		</div>
		<div class="col-md-6 column">
		<div style="width:20%;float:left;">
	    	<img src="https://how2j.cn/example.gif" class="img-rounded">
	    </div>
		<div style="width:70%;float:right;">
		<form name = "InfoForm">
			<input id = "acc" name ="account" type="text" class="form-control" value="账号">
			<br>
			<input id = "pwd" type="password" class="form-control" value="">
			<br>
			<select id ="type" class="form-control">
			   <option>学生</option>
			   <option>老师</option>
			   <option>助教</option>
			</select>
		</form>
		</div>
		</div>
		<div class="col-md-3 column">
		</div>
	</div>
	</div>
	<div  style="margin-top:5%">
	</div>
	<div class="row clearfix">
		<div class="col-md-4 column">
		</div>
		<div class="col-md-4 column">
			 <button type="button" class="btn btn-block btn-lg" onClick =login() >登录</button>
		</div>
		<div class="col-md-4 column">
		</div>
	</div>

</body>

</html>