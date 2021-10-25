<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
<style type="text/css">
	.cl{ padding: 10px; height: 20px; margin-top:10px; }
	.re{ margin-top: 20px; padding: 10px; margin-right: 25px; }
	.re1{ margin-top: 20px; padding: 10px; margin-left: 25px;}
</style>
</head>
<body>
<c:import url="../default/header.jsp"/>
<div class="wrap" style="text-align: center; padding: 10px; margin-top: 40px;">
	<h1>로그인</h1><br>
	<form action="${contextPath }/member/login_check.jsp" method="post">
		<input type="text" name="id" placeholder="아이디" class="cl"><br>
		<input type="password" name="pwd" placeholder="비밀번호" class="cl"><br>
		<input type="submit" value="로그인" class="re">
		<input type="button" value="회원가입" onclick="location.href='member_register.jsp'" class="re1">
	</form>
</div>
<c:import url="../default/footer.jsp"/>
</body>
</html>