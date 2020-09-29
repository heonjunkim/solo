<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>매입</title>
</head>
<body>
	
	<section id="main-section">
		<c:choose>
			<c:when test="${BODY == 'IOLIST-LIST'}">
				<%@ include file = "/WEB-INF/views/iolist/iolist-list.jsp" %>
			</c:when>
			
			<c:when test="${BODY == 'IOLIST-WRITE'}">
				<%@ include file = "/WEB-INF/views/iolist/iolist-write.jsp" %>
			</c:when>							
		</c:choose>			
	</section>

</body>
</html>
