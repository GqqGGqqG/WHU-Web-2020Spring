<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page language="Java" import="java.util.*"%>
<!--得到studentMain的传参，用于导航栏的选中效果 -->
<%
	String nav_sel=request.getParameter("sel");
	if(nav_sel==null)
		nav_sel="DashBoard";
	
	String nav_acc=(String) session.getAttribute("username");
%>
<html>
	<head>
		<meta charset="utf-8"/>
		<title>武大学生课程平台</title>
		<script type="text/javascript" src="./js/jquery.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				var x=document.getElementById("<%=nav_sel%>");
				x.style.background='white';   /*是background，不是background-color；注意有引号*/
				x.getElementsByTagName("a")[0].getElementsByTagName("font")[0].style.color="DeepSkyBlue"; /*注意返回是数组，需要下标*/
				
				var account=sessionStorage.getItem('account');
				var y=document.getElementById(0);
				y.innerText="123";
			});
		</script>
		<style type='text/css'>
			a{
				text-decoration:none;  <!--取消下划线-->
			}
			a:hover{
				text-decoration:none;
			}
			#nav{
				position:fixed;
				left:0;
				display:inline-block;
				width:100px;
				height:100%;
				background-color:DeepSkyBlue;
				padding:0px
			}
			#nav_img{
				display:block;
				width:40px;
				padding:0px;
				margin:0px auto;
			}
			#nav_font{
				display:block;
				margin:0px auto;
				font-size:12px;
				text-align:center;
			}
		</style>
	</head>
	<body>
		<div id='nav'>
			<div>
				<font style="color:black;margin-top:7px;display:block;text-align:center;font-size:16px"><strong>
				<%
					Date today = new Date();
					int hours = today.getHours();
					int minute = today.getMinutes();
					if(hours>=6 && hours<12){
						out.println("早上好!");
					}
					else if(hours>=12 && hours<20){
						out.println("下午好!");
					}
					else 
					out.println("晚上好!");
				%>
				</strong></font>
				<font id=0 style="font-size:10px;margin-top:2px;display:block;text-align:center"><font>
			</div>
			
			<div id="PersonalInfo" style="padding:20px 0px 5px 0px">
				<a href="studentMain.jsp?para=PersonalInfo">
					<img id='nav_img' src="images/account.png"/>
					<font id='nav_font' color="white">Account</font>
				</a>
			</div>
			<div id="DashBoard" style="padding:20px 0px 5px 0px">
				<a href="studentMain.jsp?para=DashBoard">
					<img id='nav_img' src="images/Dashboard.png"/>
					<font id='nav_font' color="white">Dashboard</font>
				</a>
			</div>
		</div>
	</body>
</html>