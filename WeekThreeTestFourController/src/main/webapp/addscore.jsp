<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%
	String path=request.getContextPath();
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/index_work.css"/> 
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery.validate.js"></script>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<form action="#">
		<input type="hidden" name="aid" value="${param.aid}">
		应聘人:${param.aname}<br><br>
		面试职位:<select id="jid" name="jid">
					<option value="">请选择</option>
				</select><br><br>
		面试成绩:<input type="text" name="score">分<br><br>
		<input type="button" value="保存" onclick="addScore()">
	</form>
</body>
<script type="text/javascript">
	$.post("queryJob",function(data){
		for(var i in data){
			$("#jid").append("<option value='"+data[i].jid+"'>"+data[i].jname+"</option>")
		}
	})

	function addScore() {
		$.post("addScore",$("form").serialize(),function(data){
			if(data){
				alert("保存成功")
				location.href="http://localhost:8080/queryApplicant"
			}else{{
				alert("保存失败")
			}}
		})
	}
</script>
</html>