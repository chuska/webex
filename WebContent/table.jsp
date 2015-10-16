<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String row = request.getParameter("r");
	String col = request.getParameter("c");
	if (row == null || row.matches("^[0-9]+$") == false) {
		row = "0";
	}
	if (col == null || col.matches("^[0-9]+$") == false) {
		col = "0";
	}
	int nRow = Integer.parseInt(row);
	int nCol = Integer.parseInt(col);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border='1px' cellpadding='10px' cellspacing='0'>
		<%
			for (int i = 0; i < nRow; i++) {
		%>
		<tr>
			<%
				for (int j = 0; j < nCol; j++) {
			%>
			<td>cell(<%=i%>,<%=j%>)
			</td>
			<%
				}
			%>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>