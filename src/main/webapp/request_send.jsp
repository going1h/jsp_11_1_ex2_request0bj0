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
		String agestr;
	%>
	
	<%
		agestr = request.getParameter("age");
		age = Integer.parseInt(agestr);
		
		if(age>=20){
			response.sendRedirect("pass.jsp?age=" + age); // 가지고온 age값을 pass.jsp 에 전달 그래서 <%=age % >쓸수 있나봄
		}else{
			response.sendRedirect("ng.jsp?age=" + age); // 가지고온 age 값을 ng.jsp에 전달
		}
	%>
</body>
</html>