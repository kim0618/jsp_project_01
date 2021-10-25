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
	h2{ margin: auto; width:800px; text-align: center; margin-top:20px; }
	table{ width: 800px; align-items: center; margin:auto; margin-top:20px; }
	a{ color:blue; }
	a:hover{ color:red; }
</style>
</head>

<body>

	<c:import url="../default/header.jsp"></c:import>
<div class="wrap">
	<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"  />
	<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
	<!-- ArrayList<MemberDTO> list = dao.getMemberList(); -->
	<c:set var="list" value="${ dao.getMemberList() }" />
	
	<h2>회 원 목 록</h2>
	<table border="1" style=" text-align: center;">
		<tr>
			<th>아이디</th> <th>비밀번호</th> <th>이름</th> <th>주소</th>
		</tr>
		<c:forEach var="member" items="${list }">
			<tr>
				<td>${member.id }</td>
				<td>${member.pwd }</td>
				<td>
					<a href="${contextPath }/member/member_info.jsp?id=${member.id}">${member.name }</a>
				</td>
				<td>${member.addr }</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="4">
				<button type="button" onclick="location.href='${contextPath}/member/member_register.jsp'">등록</button>
			</td>
		</tr>
		
	</table>
</div>	
	<c:import url="../default/footer.jsp"></c:import>

</body>
</html>