<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
List<Map<String, Object>> articleRows = (List<Map<String, Object>>) request.getAttribute("articleRows");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 목록</title>
</head>
<body>

	<h2>게시물 목록</h2>


	<a href="../home/main">메인 페이지로 </a>

	<table style="border-collapse: collapse; border-color: green;"
		border="1px">
		<thead>
			<tr>
				<th>번호</th>
				<th>날짜</th>
				<th>제목</th>
				<th>내용</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (Map<String, Object> articleRow : articleRows) {
			%>
			<tr style="text-align: center;">
				<td><%=articleRow.get("id")%></td>
				<td><%=articleRow.get("regDate")%></td>
				<td><%=articleRow.get("title")%></td>
				<td><%=articleRow.get("body")%></td>
				<td><a href="doDelete?id=<%=articleRow.get("id")%>">del</a></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>

	<!-- 	<ul> -->
	<%-- 		<% --%>
	<%--// 		for (Map<String, Object> articleRow : articleRows) {--%>
	<%-- 		%> --%>
	<%-- 		<li><a href="detail?id=<%=articleRow.get("id")%>"><%=articleRow.get("id")%>번, --%>
	<%-- 				<%=articleRow.get("regDate")%>,<%=articleRow.get("title")%>,<%=articleRow.get("body")%></a></li> --%>
	<%-- 		<% --%>
	<%--// 		}--%>
	<%-- 		%> --%>
	<!-- 	</ul> -->
	
</body>
</html>