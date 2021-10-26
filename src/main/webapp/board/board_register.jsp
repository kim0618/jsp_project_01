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
	div{  }
	.ti{ text-align: left;  width:400px; height: 50px; text-align: center; }
	.con{ width:800px; height: 300px; text-align: center; align-items: center; display: flex; justify-content: center;}
	.re{ width:200px; height: 30px; }
	.table1{ display: flex; justify-content: center; }
</style>
</head>
<body>

<c:import url="../default/header.jsp"/>

<div class="wrap" style="padding: 10px; margin-top: 20px; text-align: center;" >
	<h1 style="text-align: center;">게 시 판 글</h1><br>
	
	<form action="${contextPath }/board/register.jsp" method="post">
	<table  class="table1">
	 	    <input type="hidden" name="name" value="${se.id }">
	<tr><td ><input type="text" name="title" placeholder="제목 작성" class="ti"></td></tr>
	<tr><td ><textarea type="text" name="content" placeholder="글 작성" class="con"></textarea></td></tr>
	<tr><td align="right"><input type="submit" value="등록하기" class="re" ></td></tr>
	
		
	</table>	
	</form>
</div>

<c:import url="../default/footer.jsp"/>

</body>
</html>