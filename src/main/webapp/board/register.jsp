<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<fmt:requestEncoding value="utf-8"/>

<jsp:include page="../default/header.jsp"></jsp:include>


	<jsp:useBean id="dto" class="com.care.root.board.dto.BoardDTO"/>
	<jsp:useBean id="dao" class="com.care.root.board.dao.BoardDAO"/>
	<jsp:setProperty property="*" name="dto"/>
	<c:set var="result" value="${dao.register(dto) }"/>
	
	
	
	<script type="text/javascript">
		alert('게시글이 작성되었습니다.')
		location.href="${contextPath}/board/board.jsp"
	</script>




<jsp:include page="../default/footer.jsp"></jsp:include>

</body>
</html>