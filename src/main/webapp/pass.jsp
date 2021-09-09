<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>pass.jsp</title>
</head>
<body>
		<%!
		int age;
		String agestr;
	%>
	
	<%
		agestr = request.getParameter("age");
		age = Integer.parseInt(agestr);
	%>
	
	<h1>당신은 <%=age %>살 이므로 . 홈페이지 입장이 가능합니다.</h1>
</body>
</html>