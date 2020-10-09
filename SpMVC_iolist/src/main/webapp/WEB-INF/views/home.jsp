<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link href="${rootPath}/static/css/io.css?ver=2020-10-05"
	rel="stylesheet">
<script>var rootPath = "${rootPath}"</script>
<title>자유시장</title>
</head>
<body>
	<header>
		<h2>Loo9 상점</h2>
	</header>
	
	<section id="main-section">
		<c:choose>
			<c:when test="${BODY == 'IO-LIST'}">
				<%@ include file = "/WEB-INF/views/iolist/io-list.jsp" %>
			</c:when>
			
			<c:when test="${BODY == 'IO-WRITE'}">
				<%@ include file = "/WEB-INF/views/iolist/io-write.jsp" %>
			</c:when>
			<c:when test="${BODY == 'IO-DETAIL'}">
				<%@ include file = "/WEB-INF/views/iolist/io-detail.jsp" %>
			</c:when>												
		</c:choose>			
	</section>
	<footer>
	<address>CopyRight &copy; maplegjswns@naver.com</address>	
	</footer>

</body>
</html>
