<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<script src="${rootPath}/static/js/home.js?ver=001"></script>


<table id="iolist">
	<tr>
		<th>No</th>
		<th>일자</th>
		<th>시각</th>
		<th>상품명</th>
		<th>매입단가</th>
		<th>판매단가</th>
		<th>수량</th>
		<th>매입합계</th>
		<th>판매합계</th>
	</tr>
	<c:forEach items="${IO}" var="io" varStatus="i">

		<c:choose>
			<c:when test="${io.io_input =='1'}">
				<tr class=io_item data-id="${io.seq}">
					<td>${i.count}</td>
					<td>${io.io_date}</td>
					<td>${io.io_time}</td>
					<td>${io.io_pname}</td>
					<td>${io.io_price}</td>
					<td></td>
					<td>${io.io_quan}</td>
					<td class="i_price">${io.io_total}</td>
					<td></td>
			</c:when>
			<c:otherwise>
				<tr class=io_item data-id="${io.seq}">
					<td>${i.count}</td>
					<td>${io.io_date}</td>
					<td>${io.io_time}</td>
					<td>${io.io_pname}</td>
					<td></td>
					<td>${io.io_price}</td>
					<td>${io.io_quan}</td>
					<td></td>
					<td class="o_price">${io.io_total}</td>
				</tr>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	<tr>
		<td colspan="7">합계</td>
		<td id="i_total"></td>
		<td id="o_total"></td>

	</tr>

</table>
<div id="write">
	<a href="${rootPath}/write">새로작성</a>
</div>





