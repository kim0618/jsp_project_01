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

	<jsp:useBean id="dto" class="com.care.root.board.dto.BoardDTO"/>
	<jsp:setProperty property="*" name="dto"/>
	<jsp:useBean id="dao" class="com.care.root.board.dao.BoardDAO"/>
	
	<c:set var="result" value="${dao.modify(dto) }" />

	<c:if test="${result == 1 }">
		<script type="text/javascript">
			alert("수정 완료");
			location.href="board.jsp"
		</script>
	</c:if>
	<c:if test="${result == 0 }">
			${dto.title}
	</c:if>

</body>
</html>