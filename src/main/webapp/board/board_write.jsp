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
	.res{ width:200px; height: 30px; }
</style>
</head>
<body>

<jsp:include page="../default/header.jsp"></jsp:include>

<jsp:useBean id="dao" class="com.care.root.board.dao.BoardDAO"/>
	<c:set var="bo" value="${dao.getBoard(param.num) }"/>

<div class="wrap" style="padding: 10px; margin-top: 20px; text-align: center;" >
	<h1 style="text-align: center;">${bo.name} 님의 글</h1><br>
	
	<form action="${contextPath }/board/board.jsp" method="post">
	<table  class="table1">
	 	    <input type="hidden" name="name" value="${se.id }">
	<tr><td ><input type="text" name="title" class="ti" value="${bo.title}" disabled="disabled"></td></tr>
	<tr><td ><textarea type="text" name="content" class="con" disabled="disabled">${bo.content }</textarea></td></tr>
	<tr><td align="right"><input type="submit" value="이전으로" class="re" ></td></tr>
	
	<c:if test="${se.id == bo.name }">
			<tr><td align="right"><input type="button" value="수정" class="res" onclick="location.href='board_modi.jsp?num=${bo.num}'"></td></tr>
			<tr><td align="right"><input type="button" value="삭제" class="res" onclick="location.href='board_delete.jsp?num=${bo.num}'"></td></tr>
	</c:if>
	
	</table>	
	</form>

</div>


<jsp:include page="../default/footer.jsp"></jsp:include>

</body>
</html>