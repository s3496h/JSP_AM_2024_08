<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

	<a href="../home/main">메인 페이지로 </a>

	<h2>회원가입</h2>

	<script type="text/javascript">
		function JoinForm__submit(form) {
			// 			console.log('form.loginId.value : ' + form.loginId.value);
			// 			console.log('form.loginId.value.trim() : '
			// 					+ form.loginId.value.trim());
			// 			console.log('form.loginId.value.trim : ' + form.loginId.value.trim);
			// 			console.log('form.loginPw.value : ' + form.loginPw.value);
			// 			console.log('form.loginPwConfirm.value : '
			// 					+ form.loginPwConfirm.value);
			// 			console.log('form.name.value : ' + form.name.value);
			// 			form.loginId.value = form.loginId.value.trim();
			// 			console.log("loginId : " + loginId);
			let loginId = form.loginId.value.trim();
			let loginPw = form.loginPw.value.trim();
			let loginPwConfirm = form.loginPwConfirm.value.trim();
			let name = form.name.value.trim();
			if (loginId.length == 0) {
				alert('아이디 써');
				return;
			}
			if (loginPw.length == 0) {
				alert('비번 써');
				return;
			}
			if (loginPwConfirm.length == 0) {
				alert('비번 확인 써');
				return;
			}
			if (loginPw != loginPwConfirm) {
				alert('비번 일치 x');
				form.loginPw.focus();
				return;
			}
			if (name.length == 0) {
				alert('이름 써');
				return;
			}
			
			form.submit();
		}
	</script>

	<!-- 	<a onclick="if(confirm('진짜 이동???') == false) return false;" href="https://www.naver.com" target="_blank">네이버</a> -->

	<form method="POST" action="doJoin"
		onsubmit="JoinForm__submit(this); return false;">
		<div>
			아이디 : <input autocomplete="off" type="text" placeholder="아이디 입력해"
				name="loginId" />
		</div>
		<div>
			비밀번호 : <input autocomplete="off" type="text" placeholder="비밀번호 입력해"
				name="loginPw" />
		</div>
		<div>
			비밀번호 확인: <input autocomplete="off" type="text"
				placeholder="비밀번호 확인 입력해" name="loginPwConfirm" />
		</div>
		<div>
			이름 : <input autocomplete="off" type="text" placeholder="이름 입력해"
				name="name" />
		</div>
		<button type="submit">가입</button>
	</form>


	<div>
		<a style="color: green" href="list">리스트로 돌아가기</a>
	</div>

</body>
</html>