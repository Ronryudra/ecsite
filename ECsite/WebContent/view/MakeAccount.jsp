<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="http://localhost:8080/ECsite/makeaccount" method="POST">

<h1>Make account</h1>
<input type="text" name="createname" placeholder="In 50 words or less">
<input type="Password" name="createpassword" placeholder="In 50 words or less">
<input type="submit" name="" value="Register">

</form>

<form action="http://localhost:8080/ECsite/login" method="GET">


<input type="submit" name="" value="Back to login">

</form>


</body>
</html>