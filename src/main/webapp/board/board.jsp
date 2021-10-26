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
	*{margin:auto}
		h2{ margin: auto; width:800px; text-align: center; margin-top:20px; }
	table{ width: 800px; align-items: center; margin:auto; margin-top:20px; }
	.a{  width:200px; height: 30px;  }
	a{ text-decoration: none; color: skyblue; }
	a:hover{ color: blue; }
</style>

</head>
<body>

<jsp:include page="../default/header.jsp"/>
<jsp:useBean id="dao" class="com.care.root.board.dao.BoardDAO" />
<c:set var="bolist" value="${dao.getBoardList() }"/>
<div>
		<h2>게 시 판</h2>
	<table border="1" style=" text-align: center;">
		<tr>
			<th style="width:10%;">글번호</th><th style="width:40%;">제목</th> <th style="width:20%;">작성자</th> <th style="width:30%;">작성시간</th>
		</tr>
		<c:forEach var="board" items="${bolist }">
			<tr>
				<td>${board.num }</td>
				<td><a href="${contextPath }/board/board_write.jsp?num=${board.num}">${board.title}</a></td>
				<td>
					${board.name }
				</td>
				<td>${board.time }</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="4" style="text-align: right;">
				<button type="button" onclick="location.href='${contextPath}/board/board_register.jsp'" class="a"><b>작성</b></button>
			</td>
		</tr>
		
	</table>
	</table>
</div>

<jsp:include page="../default/footer.jsp"/>

</body>
</html>