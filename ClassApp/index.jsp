<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>武汉带学</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="all,follow">
  	<script src="${pageContext.request.contextPath }/js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="js/jquery.cookie.js"></script>
    <link rel="stylesheet" href="https://ajax.aspnetcdn.com/ajax/bootstrap/4.2.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
	<link href="${pageContext.request.contextPath }/css/bootstrap.min.css"  rel="stylesheet">
	<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
  </head>
  <body>
  <%

    // 获取浏览器发送过来的cookie, 获取用户信息
    Cookie[] cookies = request.getCookies();
    String username = "";
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if ("username".equals(cookie.getName())) {
                username = cookie.getValue();
            }
        }
    }
%>
    <div class="page login-page">
      <div class="container d-flex align-items-center">
        <div class="form-holder has-shadow">
          <div class="row">
            <!-- Logo & Information Panel-->
            <div class="col-lg-6">
              <div class="info d-flex align-items-center">
                <div class="content">
                  <div class="logo">
                    <h1>欢迎登录</h1>
                  </div>
                  <p>武带教务管理系统</p>
                </div>
              </div>
            </div>
            <!-- Form Panel    -->
            <div class="col-lg-6 bg-white">
              <div class="form d-flex align-items-center">
                <div class="content">
                  <form  action="/ClassApp/LoginServlet3" method="post">
                    <div class="form-group">
                      <input id="login-username" type="text" name="username" required data-msg="请输入用户名" placeholder="用户名"  class="input-material">
                      <font color="red">${requestScope.error}</font>
                    </div>
                    <div class="form-group">
                      <input id="login-password" type="password" name="password" required data-msg="请输入密码" placeholder="密码" class="input-material" >
                    </div>
                    <div class="form-group">
                    	<img src="/ClassApp/VerifyCodeServlet">
                    	<div style="text-align:right">
						<input type="button"  class="btn btn-info" value="看不清? 换一张." id="btn">
						
						</div>
                    	<input type="text" name="image" required data-msg="请输入验证码" placeholder="验证码" class="input-material">
                		<font color="red">${requestScope.imageMess}</font>
                    </div>
                    <button id="login" type="submit" class="btn btn-primary btn-lg btn-block">登录</button>
                    <div style="margin-top: -40px;"> 
                    </div>
                  </form>
                  <script>

				    document.getElementById("btn").onclick = function () {
				        // 获取img元素
				        // 为了让浏览器发送请求到servlet, 所以一定要改变src
				        document.getElementsByTagName("img")[0].src =
				            "/ClassApp/VerifyCodeServlet?time=" + new Date().getTime();
				    };
				</script>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>