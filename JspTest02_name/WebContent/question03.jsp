<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<% response.setContentType("text/html; charset=UTF-8"); %> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp exam02</title>
</head>
<body>

	<div id="examTable">
		<table border="1">
			<col width="100px">
			<col width="100px">
			<tr>
				<th>이름</th>
				<th>점수</th>
			</tr>
			<c:choose>
				<c:when test="${empty list }">
					<tr>
						<td colspan="2">아무것도 없습니다.</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${list }" var="dto">
						<tr>
							<td>${dto.name }</td>
							<td>${dto.score }</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</table>
	</div>
	
	<fieldset>
		<legend>Q.07</legend>
		<p>input tag에 이름과 점수를 입력해서 버튼을 누르면 controller에서 insert 후 다시 question03.jsp로 넘어오도록 해주세요.
		(ExamDaoImpl의 insert() 메서드에서 코드를 채워야 합니다.)</p>
		<form action="question.do" method="post" id="submitForm">
			<input type="hidden" name="command" value="q07">
			이름 : <input type="text" name="name" id="name"><br/>
			점수 : <input type="text" name="score" id="score"><br/>
			<input type="submit" value="클릭"><br/>
		</form>
	</fieldset>

	<fieldset>
		<legend>Q.08</legend>
		<p>버튼을 클릭하면 controller를 거치지 않고 question04.jsp로 바로 이동해 주세요.</p>
		<button onclick="location.href='question04.jsp'">클릭</button>
	</fieldset>
	
</body>
</html>