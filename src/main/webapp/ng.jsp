<%@page import="java.net.URLEncoder"%>
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
		String agestr,name;
	%>
	
	<%
		request.setCharacterEncoding("EUC-KR");
	
		agestr = request.getParameter("age");
		age = Integer.parseInt(agestr);
		name = request.getParameter("name");
		String name2 = URLEncoder.encode(name,"EUC-KR"); // ������� name�� �ѹ��� ���ڵ��� ����
	%>
	<h1> <%=name2 %>���� <%=age %>�� �̹Ƿ� �̼������Դϴ�. �츮 Ȩ�������� ������ �� �����ϴ�.</h1><br/>
	<a href="requestage.html">���� Ȩ�������� �̵�</a>
</body>
</html>