<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<c:set var="contextPath" value="${pageContext.request.contextPath }"/><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* { margin: 0; }
.wrap { width: 1000px; margin: auto; }
.header { width: 1000px; background-color: white; }
.navdiv{width:100%; background-color: gray; }
nav{ background-color: gray;width: 1000px; }
nav ul { list-style: none; display: flex; justify-content: flex-end; }
nav ul li { margin: 0 3px; padding: 10px 10px; }
nav ul li a { text-decoration: none; color: white; }
nav ul li a:hover {
    color: orange; padding-bottom: 3px; /* a태그 밑줄과 글씨 간격*/
    border-bottom: 1px solid orange; transition: all 0.25s;
}
.label{ color: white; }
.label:hover{ color: orange; padding-bottom: 3px; /* a태그 밑줄과 글씨 간격*/
    border-bottom: 1px solid orange; transition: all 0.25s; cursor: pointer; }
    
.title {    /*오른, 아래, 번짐*/
    text-shadow: 10px 10px 15px black; font-size: 70pt;
    text-align: center; margin-top: 0px; padding-bottom: 20px;
    color:black; font-family:Gabriola;
}
.content{ margin-top: 50px; }

</style>
<script type="text/javascript">
	function lab(){
		if(${se == null} ){
			alert('로그인 후 이용하세요')
			location.href="${contextPath }/member/login.jsp"
		}else{
			location.href="${contextPath }/member/board.jsp"
		}
	}
</script>

 </head> <body>

<c:set var="session" value="${se }" />

<div class="wrap">
    <div class="header"> <h1 class="title">COMMIT</h1> </div>
</div>
<div class="navdiv">
<div class="wrap">
<nav>
    <ul>
	<li><a href="${contextPath }/default/main.jsp">HOME</a></li>
	<li><a href="${contextPath }/member/membership.jsp">MEMBER_SHIP</a></li>
	<li><label onclick="lab()" class="label">BOARD</label></li>
	<c:choose>
		<c:when test="${ session == null }">
			<li><a href="${contextPath }/member/login.jsp">LOGIN</a></li>
		</c:when>
		<c:otherwise>
			<li><a href="${contextPath }/member/logout.jsp">LOGOUT</a></li>
		</c:otherwise>
	</c:choose>
    </ul>
</nav>
</div>
</div>
</body> </html>
