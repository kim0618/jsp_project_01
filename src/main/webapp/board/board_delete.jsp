<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="dao" class="com.care.root.board.dao.BoardDAO" />
	<c:set var="reulst" value="${ dao.delete(param.num) }" />
	<c:if test="${reulst == 1 }">
		<script type="text/javascript">
			alert('삭제가 완료되었습니다.')
			location.href="board.jsp"
		</script>
	</c:if>

</body>
</html>