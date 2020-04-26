<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>无标题文档</title>
<link href="css/bootstrap-4.0.0.css" rel="stylesheet" type="text/css">
<style type="text/css">
</style>
<script type="text/javascript">
			$(document).ready(function(){
				var per_account=sessionStorage.getItem('account');
				var per_oele=document.getElementById("exampleInputID");
				per_oele.placeholder=per_account;
			});
</script>
</head>

<body>
<div class="container" style="margin-top:50px;float:left">
  <div class="row">
    <div class="card col-md-5 offset-1" align="center" style="margin-top:-50px"><img style="margin: 50px auto" src="images/ImgResponsive_Placeholder.png" alt="Placeholder image" width="300" height="300" class="rounded-circle img-fluid">
	<br>
	<br>
      <div class="card-body">
        <p class="card-text">    
           <h5 class="text-center"><strong>欢迎进入个人信息中心</strong></h5>
        </p>
        <a href="#" class="btn btn-primary">课程中心</a>
	  </div>
    </div>
<form>
      <div class="col-xl-12 offset-1">
        <div class="form-group col-md-12">
          <label for="exampleInputName">姓名</label>
          <input type="name" class="form-control" id="exampleInputName" placeholder="张三" disabled>
        </div>
        <div class="form-group col-md-12">
          <label for="exampleInputID">学号</label>
          <input type="id" class="form-control" id="exampleInputID" placeholder="" disabled>
        </div>
        <div class="form-group col-md-12">
          <label for="exampleInputCollege">学院</label>
          <input type="password" class="form-control" id="exampleInputCollege" placeholder="计算机学院" disabled>
        </div>
        <div class="form-group col-md-12">
          <label for="exampleInputPassMajor">专业</label>
          <input type="major" class="form-control" id="exampleInputMajor" placeholder="软件工程" disabled>
        </div>
        <div class="form-group col-md-12">
          <label for="exampleInputPhone">联系方式</label>
          <input type="phone" class="form-control" id="exampleInputPhone" placeholder="1234567890" disabled>
        </div>
        <div class="form-group col-md-12">
          <label for="exampleInputQQ">QQ</label>
          <input type="QQ" class="form-control" id="exampleInputQQ" placeholder="123456789" disabled>
        </div>
        <button type="submit" class="btn btn-primary" style="margin:50px">修改信息</button>
        <button type="submit" class="btn btn-primary" style="margin:80px">保存修改</button>
      </div>
    </form>
  </div>
</div>
<div style="min-width: 1000px"> <script src="js/jquery-3.2.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap-4.0.0.js"></script>
	</div>
</body>
</html>
