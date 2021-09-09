<%@page import="java.net.URLEncoder"%>
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
		String agestr,name;
	%>
	
	<%
		request.setCharacterEncoding("EUC-KR");
	
		agestr = request.getParameter("age");
		age = Integer.parseInt(agestr);
		name = request.getParameter("name");
		String name2 = URLEncoder.encode(name,"EUC-KR"); // 가지고온 name을 한번더 인코딩을 해줌
	%>
	
	<h1><%=name %>님은 <%=age %>살 이므로 . 홈페이지 입장이 가능합니다.</h1>
</body>
</html>