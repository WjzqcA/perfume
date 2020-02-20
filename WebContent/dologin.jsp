<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
   <%
       String username="";
       String password="";
       request.setCharacterEncoding("utf-8");
       
       username=request.getParameter("username");
       password=request.getParameter("password");
       
       if("Marry".equals(username)&&"123".equals(password)){
    	   session.setAttribute("loginUser", username);
    	   request.getRequestDispatcher("index.jsp").forward(request, response);
       }
       else{
    	   request.getRequestDispatcher("login.jsp").forward(request, response);
       }
   %>
</body>
</html>