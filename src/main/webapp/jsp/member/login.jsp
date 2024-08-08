<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>

	<a href="../home/main">메인 페이지로 </a>

	<h2>로그인</h2>

	<script type="text/javascript">
		function LoginForm__submit(form) {
			let loginId = form.loginId.value.trim();
			let loginPw = form.loginPw.value.trim();
			if (loginId.length == 0) {
				alert('아이디 써');
				return;
			}
			if (loginPw.length == 0) {
				alert('비번 써');
				return;
			}
			form.submit();
		}
	</script>


	<form method="POST" action="doLogin"
		onsubmit="LoginForm__submit(this); return false;">
		<div>
			아이디 : <input autocomplete="off" type="text" placeholder="아이디 입력해"
				name="loginId" />
		</div>
		<div>
			비밀번호 : <input autocomplete="off" type="text" placeholder="비밀번호 입력해"
				name="loginPw" />
		</div>
		<button type="submit">로그인</button>
	</form>


	<div>
		<a style="color: green" href="../article/list">리스트로 돌아가기</a>
	</div>

</body>
</html>