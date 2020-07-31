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
	<form action="queryApplicant" method="post">
		姓名:<input type="text" name="aname">
		出生日期:<input type="date" name="startBirthday">~<input type="date" name="endBirthday">
		<input type="submit" value="搜索">
	</form>
	<table>
		<tr>
			<td>应聘人</td>
			<td>性别</td>
			<td>年龄</td>
			<td>毕业学校</td>
			<td>所学专业</td>
			<td>学历</td>
			<td>学位</td>
			<td>面试成绩</td>
			<td>平均分</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${page.list}" var="a">
			<tr>
				<td>${a.aname}</td>
				<td>${a.gender}</td>
				<td>${a.age}</td>
				<td>${a.college}</td>
				<td>${a.major}</td>
				<td>${a.edu==1?"专科":a.edu==2?"本科":"研究生"}</td>
				<td>${a.degree==1?"学士":a.degree==2?"硕士":"博士"}</td>
				<td>${a.score}</td>
				<td>${a.avgscore}</td>
				<td>
					<a href="addscore.jsp?aid=${a.aid}&aname=${a.aname}">
						<input type="button" value="录入成绩">
					</a>
					<a href="queryApplicantByAid?aid=${a.aid}">
						<input type="button" value="修改应聘人信息">
					</a>
				</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="10">
				<a href="?pageNum=1">首页</a>
				<a href="?pageNum=${page.pageNum-1}">上一页</a>
				<a href="?pageNum=${page.pageNum+1}">下一页</a>
				<a href="?pageNum=${page.pages}">尾页</a>
			</td>
		</tr>
	</table>
	<a href="addapplicant.jsp">
		<input type="button" value="添加应聘人">
	</a>
</body>
<script type="text/javascript">
	
</script>
</html>