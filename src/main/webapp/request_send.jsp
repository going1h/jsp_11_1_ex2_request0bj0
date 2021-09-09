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
		
		String name2 = URLEncoder.encode(name,"EUC-KR"); // 가지고온 name을 한번더 인코딩을 해줌
		
		if(age>=20){
			request.setCharacterEncoding("EUC-KR");
			response.sendRedirect("pass.jsp?age=" + age + "&name=" + name2); // 가지고온 age값을 pass.jsp 에 전달 그래서 <%=age % >쓸수 있나봄
		}else{
			request.setCharacterEncoding("EUC-KR");
			response.sendRedirect("ng.jsp?age=" + age + "&name=" + name2); // 가지고온 age 값을 ng.jsp에 전달 // &name 뒤에 값에 추가해주기
		}
	%>
</body>
</html>