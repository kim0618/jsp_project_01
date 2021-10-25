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
</style>

</head>
<body>

<jsp:include page="../default/header.jsp"/>

<div>
		<h2>게 시 판</h2>
	<table border="1" style=" text-align: center;">
		<tr>
			<th>작성자</th> <th>제목</th> <th>작성시간</th>
		</tr>
		<c:forEach var="member" items="${list }">
			<tr>
				<td><a href="${contextPath }/member/member_info.jsp?id=${member.id}">${member.id }</a></td>
				<td>
					${member.id}
				</td>
				<td>${member.addr }</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="4">
				<button type="button" onclick="location.href='${contextPath}/member/border_register.jsp'">등록</button>
			</td>
		</tr>
		
	</table>
	</table>
</div>

<jsp:include page="../default/footer.jsp"/>

</body>
</html>