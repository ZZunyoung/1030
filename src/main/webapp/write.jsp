<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 :: write.jsp</title>
<style>
	table{
		width:500px;
		text-align:center;
		border:1px solid #efefef;
	}
	th, td{
		background: #efefef;
	}
	
</style>
</head>
<body>
<form action ="write_ok.jsp" method="get">
<table>
	<tr>
		<td colspan = "2">글쓰기</td>
	</tr>
	<tr>
		<th>이름</th>
		<td><input type="text" name="name"></td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><input type="password" name="pwd"></td>
	</tr>
	<tr>
		<th>주소</th>
		<td><input type="text" name="juso"></td>
	</tr>
	<tr>
		<th>전화번호</th>
		<td><input type="text" name="phone"></td>
	</tr>
	<tr>
		<th>나이</th>
		<td><input type="text" name="age"></td>
	</tr>
	<tr>
		<th>급여</th>
		<td><input type="text" name="pay"></td>
	</tr>
	<tr>
		<td colspan = "2"><input type ="submit"><input type ="reset"></td>
	</tr>
</table>
</form>
</body>
</html>