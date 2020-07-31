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
		<input type="hidden" name="aid" value="${applicant.aid}">
		应聘人:<input type="text" name="aname" value="${applicant.aname}"><br><br>
		性别:<input type="radio" name="gender" value="男" <c:if test="${applicant.gender=='男'}">checked="checked"</c:if>>男
			<input type="radio" name="gender" value="女" <c:if test="${applicant.gender=='女'}">checked="checked"</c:if>>女<br><br>
		出生日期:<input type="date" name="birthday" value="${applicant.birthday}"><br><br>
		毕业大学:<input type="text" name="college" value="${applicant.college}"><br><br>
		所学专业:<input type="text" name="major" value="${applicant.major}"><br><br>
		学历:<select name="edu" id="edu">
				<option value="">请选择</option>
				<option value="1">专科</option>
				<option value="2">本科</option>
				<option value="3">研究生</option>
			</select><br><br>
		学位:<select name="degree" id="degree">
				<option value="">请选择</option>
				<option value="1">学士</option>
				<option value="2">硕士</option>
				<option value="3">博士</option>
			</select><br><br>
		<input type="button" value="保存" onclick="updateApplicant()">
	</form>
</body>
<script type="text/javascript">
	$("#edu").val("${applicant.edu}")
	$("#degree").val("${applicant.degree}")
	
	function updateApplicant() {
		$.post("updateApplicant",$("form").serialize(),function(data){
			if(data){
				alert("修改成功")
				location.href="http://localhost:8080/queryApplicant"
			}else{
				alert("修改失败")
			}
		})
	}
</script>
</html>