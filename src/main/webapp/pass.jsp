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
		String name2 = URLEncoder.encode(name,"EUC-KR"); // ������� name�� �ѹ��� ���ڵ��� ����
	%>
	
	<h1><%=name %>���� <%=age %>�� �̹Ƿ� . Ȩ������ ������ �����մϴ�.</h1>
</body>
</html>