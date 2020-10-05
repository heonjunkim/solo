<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />


<h3>매입 데이터 등록</h3>
<form:form id="io" modelAttribute="IoVO">
	<fieldset>
		<legend>매입데이터입력</legend>
		<div>
			<label for="date">일자</label>
			<form:input path="date" placeholder="일자" />
		</div>

		<div>
			<label for="time">시각</label>
			<form:input path="time" placeholder="시각" />
		</div>

		<div>
			<label for="pname">상품명</label>
			<form:input path="pname" placeholder="상품명" />
		</div>

		<div>
			<label for="input">구분</label>
			<form:input path="input" placeholder="구분" />
		</div>

		<div>
			<label for="price">단가</label>
			<form:input path="price" placeholder="단가" />
		</div>


		<div>
			<label for="quan">수량</label>
			<form:input path="quan" placeholder="수량" />
		</div>
		
		<div>
			<label for="total">합계</label>
			<form:input path="total" placeholder="합계" />
		</div>
		
		<div class="button-box">
			<button id="btn-save" type="button">저장</button>
		</div>		
	</fieldset>
	</form:form>
	
	