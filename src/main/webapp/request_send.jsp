<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!
		int age;
		String agestr,name;
	%>
		
	<%
		request.setCharacterEncoding("EUC-KR");
	
		agestr = request.getParameter("age");
		name = request.getParameter("name");
		age = Integer.parseInt(agestr);
		
		String name2 = URLEncoder.encode(name,"EUC-KR"); // ������� name�� �ѹ��� ���ڵ��� ����
		
		if(age>=20){
			request.setCharacterEncoding("EUC-KR");
			response.sendRedirect("pass.jsp?age=" + age + "&name=" + name2); // ������� age���� pass.jsp �� ���� �׷��� <%=age % >���� �ֳ���
		}else{
			request.setCharacterEncoding("EUC-KR");
			response.sendRedirect("ng.jsp?age=" + age + "&name=" + name2); // ������� age ���� ng.jsp�� ���� // &name �ڿ� ���� �߰����ֱ�
		}
	%>
</body>
</html>