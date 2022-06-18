<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  write_ok.jsp  -->

<%
	//1. db연결
	Class.forName("org.mariadb.jdbc.Driver");
	String db = "jdbc:mariadb://localhost:3306/jspdb";
	Connection conn = DriverManager.getConnection(db,"root","wnsdud0405");
	/*//2. 심부름꾼 선언
	String sql = "insert into member(name, pwd, juso, phone, age, pay) ";
	sql += "values(?, ?, ?, ?, ?, ?)";
	PreparedStatement pstmt = conn.prepareStatement(sql); //sql은 실행 쿼리문
	pstmt.setString(1, request.getParameter("name"));
	pstmt.setString(2, request.getParameter("pwd"));
	pstmt.setString(3, request.getParameter("juso"));
	pstmt.setString(4, request.getParameter("phone"));
	pstmt.setString(5, request.getParameter("age"));
	pstmt.setString(6, request.getParameter("pay"));

	//3. 쿼리 실행
	pstmt.execute();
	
	//4. db닫기
	pstmt.close();
	conn.close();*/
	
	//2. 심부름꾼 선언 2번째 방법
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String juso = request.getParameter("juso");
	String phone = request.getParameter("phone");
	String age = request.getParameter("age");
	String pay = request.getParameter("pay");
	
	String sql = "insert into member(name, pwd, juso, phone, age, pay) ";
	sql += "values('"+name;
	sql += "', '" + pwd;
	sql += "', '" + juso;
	sql += "', '" + phone;
	sql += "'," + age;
	sql += ","+ pay;
	sql += ")";
		
	Statement stmt = conn.createStatement();

	//3. 쿼리 실행
	stmt.execute(sql);
		
	//4. db닫기
	stmt.close();
	conn.close();
	
	//5. 이동
	response.sendRedirect("select.jsp");

%>