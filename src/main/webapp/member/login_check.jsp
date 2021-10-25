<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="dto" class="com.care.root.member.dto.MemberDTO"/>
	<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
	<c:set var="mem" value="${dao.getMember(param.id) }" />
	
	<c:choose>
		<c:when test="${ mem.id != null }">
			<c:if test="${ mem.pwd != param.pwd }">
				<script type="text/javascript">
					alert('비밀번호가 일치하지 않습니다!!!');
					location.href='login.jsp'
				</script>
			</c:if>
			<c:if test="${ mem.pwd == param.pwd }">
			<c:set var="se" value="${mem }" scope="session"/>
			<script type="text/javascript">
				alert('로그인 성공~~~');
				location.href='../default/main.jsp'
			</script>
			</c:if>
		</c:when>
		<c:otherwise>
				<script type="text/javascript">
				alert('아이디가 존재하지 않습니다!!!');
				location.href='login.jsp'
				</script>
		</c:otherwise>
	</c:choose>

</body>
</html>