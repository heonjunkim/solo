<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>나의 홈페이지</title>
</head>
<body>
	<table id="iolist">
		<tr>
			<th>No</th>
			<th>일자</th>
			<th>시각</th>
			<th>상품명</th>
			<th>구분</th>
			<th>단가</th>
			<th>수량</th>
			<th>합계</th>
		</tr>

		<c:choose>
			<c:when test="${empty IOLIST}">
			</c:when>
			<c:otherwise>
				<c:forEach items="${IO_LIST}" var="iolist" varStatus="i">
					<tr data-seq="${io.seq}">
						<td>${i.count}</td>
						<td class="iolist-title" data-seq="${io.seq}">${iolist.title}</td>
						<td>${iolist.io_date}</td>
						<td>${iolist.io_time}</td>
						<td>${iolist.io_pname}</td>
						<td>${iolist.io_input}</td>
						<td>${iolist.io_price}</td>
						<td>${iolist.io_quan}</td>
						<td>${iolist.io_total}</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
	<div id="io-link-box">
		<a href="${rootPath}/iolist/input">새로작성</a>
	</div>




</body>
</html>
