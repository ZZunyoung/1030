<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="write.jsp">글쓰기</a>
<table width="500" border="1">
	<tr>
		<th>이름</th>
		<th>전화번호</th>
		<th>주소</th>
		<th>나이</th>
		<th>급여(원)</th>
		<th>수정</th>
		<th>삭제</th>
	</tr>
<%
	//1. db연결
	Class.forName("org.mariadb.jdbc.Driver");
	String db = "jdbc:mariadb://localhost:3306/jspdb";
	Connection conn = DriverManager.getConnection(db, "root", "wnsdud0405");
	//2. 심부름꾼
	Statement stmt = conn.createStatement();
	
	String sql = "select * from member order by id desc";
	//3. 쿼리실행
	ResultSet rs = stmt.executeQuery(sql); // ResultSet 으로 결과 가져올때 executeQuery 사용
	// execute : update, delete, insert;
	// executeUpdate : select, create;
	// executequery : ResultSet;
	while(rs.next()){
%>
	<tr>
		<td><%=rs.getString("name")%></td>
		<td><%=rs.getString("phone")%></td>
		<td><%=rs.getString("juso")%></td>
		<td><%=rs.getString("age")%></td>
		<td><%=rs.getString("pay")%></td>
		<td>수정</td>
		<td>삭제</td>
	</tr>
<% 
	}
%>
</table>
<%
//4. db 닫기
	rs.close();
	stmt.close();
	conn.close();
%>
</body>
</html>