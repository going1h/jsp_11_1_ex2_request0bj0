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
		response.setCharacterEncoding("EUC-KR");
	
		agestr = request.getParameter("age");
		name = request.getParameter("name");
		age = Integer.parseInt(agestr);
		
		if(age>=20){
			request.setCharacterEncoding("EUC-KR");
			response.sendRedirect("pass.jsp?age=" + age + "&name=" + name); // ������� age���� pass.jsp �� ���� �׷��� <%=age % >���� �ֳ���
		}else{
			request.setCharacterEncoding("EUC-KR");
			response.sendRedirect("ng.jsp?age=" + age + "&name=" + name); // ������� age ���� ng.jsp�� ���� // &name �ڿ� ���� �߰����ֱ�
		}
	%>
</body>
</html>