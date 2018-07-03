<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<% response.setContentType("text/html; charset=UTF-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp exam02</title>
</head>
<body>

	<fieldset>
		<legend>Q.04</legend>
		<p>session scope에 "scopeTest" 라는 이름으로 "Hello, scope" 라는 값을 담고, 
		버튼을 클릭하면 controller에서 해당 값을 받아서 console에 출력해 주세요.</p>
		<% //session scope에 값을 담아주세요.  %>
		<button onclick="location.href='question.do?command=q04'">클릭</button>
	</fieldset>
	
	<fieldset>
		<legend>Q.05</legend>
		<p>el 태그를 이용하여, 버튼을 클릭하면 controller에서 request 객체에 담아온 값(이름은 "reqScope")을 출력해 주세요.</p>
		<button onclick="location.href='question.do?command=q05'">클릭</button>
		<!-- el tag를 사용해 주세요. -->
		 ${reqScope}
	</fieldset>
	
	<fieldset>
		<legend>Q.06</legend>
		<p>버튼을 클릭하면 question03으로 넘어가면서 DB의 list가 출력될 수 있도록 config.xml을 작성해 주세요.</p>
		<button onclick="location.href='question.do?command=q06'">클릭</button>
	</fieldset>
	
</body>
</html>