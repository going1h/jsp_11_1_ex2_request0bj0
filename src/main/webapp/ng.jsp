<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ng.jsp</title>
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
	<h1> 당신은 <%=age %>살 이므로 미성년자입니다. 우리 홈페이지에 들어오실 수 없습니다.</h1><br/>
	<a href="requestage.html">나이 홈페이지로 이동</a>
</body>
</html>