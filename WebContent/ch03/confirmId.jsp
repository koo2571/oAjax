<%@page import="oAjax.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	MemberDao md = MemberDao.getInstance();
	int result = md.confrim(id);
	if(result == 0 ){
		out.println("사용할수 있는 아이디입니다.");
	}else{
		out.println("중복된 아이디입니다.");
	}
%>
</body>
</html>