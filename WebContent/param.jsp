<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String no = request.getParameter("no");
	int number = Integer.parseInt(no);
	if(no==null){
		no="0";
	}
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String gender = request.getParameter("gender");
	String year = request.getParameter("year");
	String intro = request.getParameter("intro");
	String[] hobbies = request.getParameterValues("hobby");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=number%>
	<br>
	<%=name%>
	<br>
	<%=email%>
	<br>
	<%=password%>
	<br>
	<%=gender%>
	<br>
	<%=year%>
	<br>
	<%=intro.replaceAll("\n", "<br>")%>
	<br>
	<%
		int countHobby = 0;
		//countHobby =(hobbies == null) ? 0 : hobbies.length;
		if (hobbies != null) {
			countHobby = hobbies.length;
		}
		for (int i = 0; i < countHobby; i++) {
	%>
	<h2><%=hobbies[i]%></h2>
			<%
				}
			%>

			<br>
</body>
</html>