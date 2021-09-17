<%@page import="java.util.Arrays"%>
<%@page import="day1.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP1 프로젝트[7]</title>
<style>
	ul{
		list-style: none;
		padding-inline-start:0;	/* 목록 들여쓰기 없애기*/
	}
	ul #name{
		padding: 5px 20px;
		margin:5px 0;
		background-color:tomato;
		color:white;
	}
	li{
		padding: 5px 20px;
	}
</style>
</head>
<body>
<!-- 이 파일에서는 사용자 정보를 전달받아서 화면에 출력. 그리고 이후에는 데이터베이스에 데이터를 저장합니다. -->
<%
	//form data(method post)로 전달된 데이터의 인코딩이 필요합니다.
	request.setCharacterEncoding("UTF-8");

	//request의 파라미터 가져오기 입니다. 파라미터가 10개 라면.... getPrameter() 메소드 몇번? 10번
			// 예고편 : DTO(VO) 타입 클래스를 이용해서 파라미터와 객체를 자동으로 매핑(프레임워크)
	String name = request.getParameter("name");	//"name"은 ?뒤에 파라미터 이름
	String password = request.getParameter("password");	//"name"은 ?뒤에 파라미터 이름
	String email = request.getParameter("email");	//"name"은 ?뒤에 파라미터 이름
	String age = request.getParameter("age");	//"name"은 ?뒤에 파라미터 이름
	String addr = request.getParameter("addr");	//"name"은 ?뒤에 파라미터 이름
	String addr_etc = request.getParameter("addr_etc");	//"name"은 ?뒤에 파라미터 이름
	String gender = request.getParameter("gender");	//"name"은 ?뒤에 파라미터 이름
	String[] hobby = request.getParameterValues("hobby");	//"name"은 ?뒤에 파라미터 이름
	String hobby_cont = Arrays.toString(hobby).substring(1, Arrays.toString(hobby).length()-1);
%>
<h3>환영합니다. WELCOME!!!</h3>
<ul>
	<li id="name"><%= name %> 님</li>
	<li>비밀번호 : <%= password %></li>
	<li>이메일 : <%= email %></li>
	<li><%= age %>세 ( <%= (gender.equals("male")? "남" : "여") %> )</li>
	<li>지역 : <%= addr %></li>
	<li>취미 : <%= hobby_cont %></li>
</ul>
<%	
	Member mb = new Member(name,password,email,Integer.parseInt(age),addr,addr_etc,gender,hobby);
	out.print(mb);	// out 은 내장객체 -> 브라우저에 출력
	String hobby_cont2 = Arrays.toString(mb.getHobby()).substring(1, Arrays.toString(mb.getHobby()).length()-1);
%>
<ul>
	<li id="name"><%= mb.getName() %> 님</li>
	<li>비밀번호 : <%= mb.getPassword() %></li>
	<li>이메일 : <%= mb.getEmail() %></li>
	<li><%= mb.getAge() %>세 ( <%=(mb.getGender().equals("male")? "남" : "여") %> )</li>
	<li>지역 : <%= mb.getAddr() %></li>
	<li>취미 : <%= hobby_cont2 %></li>
</ul>
</body>
</html>