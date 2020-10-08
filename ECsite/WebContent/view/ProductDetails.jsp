<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.*"%>




    <% ProductBean productbean = new ProductBean(); %>

    <% productbean = (ProductBean)request.getAttribute("product"); %>


    <% CategoryBean categorybean = new CategoryBean(); %>
    <% categorybean = (CategoryBean) request.getAttribute("Category");%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

body{
background-color: #ebeff0;
}

.a{
display: flex;
justify-content: center;
align-items: center;

margin: 0 auto;
}

img{
height: 500px;
width: 500px;

padding: 10px;
}

.
</style>
</head>
<body>

<div class="a">

<img src="<%= productbean.getProImg()%> " >

<div class="b">
<table border="1">
<tr><td>Product Name</td><td><%= productbean.getProName()%></td></tr>
<tr><td>Category</td><td><%= categorybean.getCatName()%></td></tr>
<tr><td>Price</td><td><%= productbean.getProPrice()%> £</td></tr>
<tr><td>Stock</td><td><%= productbean.getProStock()%></td></tr>
<tr><td>Description</td><td><%= productbean.getProMsg()%></td></tr>


</table>







<table border="0" cellspacing="4" cellpadding="0">
<tr>


<td>
<form action="http://localhost:8080/ECsite/product" method="POST">
Stock
<input type= "number" name="number" value="1" min="1" max=<%= productbean.getProStock() %> >
<input type="submit" value="Cart">

<input type="hidden" name="name" value="<%=productbean.getProName()%>">
<input type="hidden" name="price" value="<%=productbean.getProPrice()%>">
<input type="hidden" name="code" value="<%=productbean.getProCd()%>">
</form></td>

<form action="http://localhost:8080/ECsite/back" method="POST">
<td><input type="submit" value="Back"></td>
</form>

</tr>
</table>
<input type="hidden" name="goodsNo" value="1">






</div>









</body>
</html>