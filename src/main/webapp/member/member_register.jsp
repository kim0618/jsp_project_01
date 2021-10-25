<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.cl{ padding: 10px; height: 20px; margin-top:10px; }
	.re{ margin-top: 20px; padding: 10px; }
</style>
</head>
<body>
<c:import url="../default/header.jsp"/>
<div class="wrap" style="text-align: center; padding: 10px; margin-top: 40px;">
	<h1>회 원 가 입</h1><br>
	<form action="${contextPath }/member/register.jsp" method="post">
		<input type="text" name="id" placeholder="input id" class="cl"><br>
		<input type="password" name="pwd" placeholder="input pwd" class="cl"><br>
		<input type="text" name="name" placeholder="input name" class="cl"><br>
		<input type="text" name="addr" placeholder="input addr" class="cl"><br>
		<input type="submit" value="회원가입" class="re">
	</form>
</div>
<c:import url="../default/footer.jsp"/>
</body>
</html>