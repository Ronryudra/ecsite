<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>




</head>


<body>
<%String error = (String)request.getAttribute("error"); %>
<%if(error!=null){%>
	<%=error %>
<% }%>
<form class="box" action="http://localhost:8080/ECsite/login" method="POST">

<h1>Login</h1>
<input type="text" name="name" placeholder="Username">
<input type="Password" name="password" placeholder="Password">
<input type="submit" name="" value="Login">


</form>

</body>
</html>