<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="day1.MyUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP1 프로젝트[2]</title>
</head>
<body>
<!-- 데이터베이스에서 쿼리결과로 받아온 데이터입니다. : list -->
<%
//My
	List<MyUser> list = new ArrayList<>();
	list.add(new MyUser("도봉순", 34, "서울시 서초구"));	
	list.add(new MyUser("박세리", 32, "서울시 강남구"));	
	list.add(new MyUser("허재", 29, "안양시"));	
	list.add(new MyUser("김길순", 41, "의왕시"));	
	list.add(new MyUser("제임스", 54, "과천시"));	

%>
	<table style="width:70%; margin:auto;">
		<tr>
			<th>번호</th><th>이름</th><th>나이</th><th>지역</th>
		</tr>
	</table>
<%
	MyUser temp;
	for(int i=0; i<list.size(); i++){
		temp=list.get(i);
%>
	<tr>
		<td><%= i+1%></td>
		<td><%=temp.getName() %></td>
		<td><%=temp.getAge() %></td>
		<td><%=temp.getLocation() %></td>
	</tr>
<% } %>
</body>
</html>