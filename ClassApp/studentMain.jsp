<!--include.jsp文件代码-->
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page language="Java" import="java.util.*"%>
<html>
<head>
	<title>武大学生课程平台</title>
	<script language="JavaScript">
/* 		function getValue(name){
			var str=window.location.search;
			if(str.indexOf(name)!=-1){
				var start=str.indexOf(name)+name.length+1;
				var end=str.indexOf("&",start);
				if(end==-1){
					para=str.substring(start);
					if(para=="a")
						return "a.html";
					else if(para=="b")
						return "b.html";
				}
			}
			else
				return "a.html";
		}
		getValue(name); */
	</script>
</head>
<body>
<!--得到nav.jsp的选择结果，即将刷新到对应界面-->
<%
	String para=request.getParameter("para");
 	if(para==null)
		para="DashBoard";
	String sel=para;
	para+=".jsp";
	
	String acc=(String) session.getAttribute("username");
%>

<div style="float:left">
<!--导入时需要传参，用page，file不行-->
	<jsp:include page="nav.jsp" flush="true">
		<jsp:param name="sel" value="<%=sel%>"/>
		<jsp:param name="acc" value="<%=acc%>"/>
	</jsp:include>
</div>
<div style="float:left;width:100%;position:fixed;left:120px;top:0;bottom:0;overflow-y:scroll;overflow-x:hidden;">
	<jsp:include page="<%=para%>"  flush="true"/>
</div>
</body>
</html>