<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<% response.setContentType("text/html; charset=UTF-8"); %> 
<!DOCTYPE html>
<html>
<head>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<script type="text/javascript">

	function ajaxFunc(){
		$.ajax({
			url : "ajax.do",
			type : "get",
			success : function(){
				alert("서버통신성공!");
			},
			error : function() {
				alert("서버통신실패!");
			}
		});
	}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp exam02</title>
</head>
<body>

	<fieldset>
		<legend>Q.09</legend>
		<p>버튼을 클릭하면, ajax를 사용하여 AjaxController와 통신해 주세요.
		성공하면 "통신 성공" 이라고 alert 해 주세요. </p>
		<button onclick="ajaxFunc();">클릭</button>
	</fieldset>
	
	<fieldset>
		<legend>Q.10</legend>
		<p>web.xml에서 "last.do" 로 mapping 해 주세요. </p>
		<<button onclick="location.href='last.do?command=q10'">클릭</button>
	</fieldset>
	
</body>
</html>