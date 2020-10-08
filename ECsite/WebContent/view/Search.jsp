<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

     <%@ page import="model.*"%>
    <%@ page import="java.util.ArrayList" %>


    <% CategoryBean categorybean = new CategoryBean(); %>
    <% ArrayList<CategoryBean> clist = new ArrayList<CategoryBean>();%>

    <% clist =(ArrayList<CategoryBean>) session.getAttribute("getcategory"); %>


    <% ProductBean productbean = new ProductBean(); %>
    <% ArrayList<ProductBean> productlist = (ArrayList<ProductBean>)request.getAttribute("abc");%>






<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>


body{
background: #edf2fa;
}


.subcontainer h1{
text-align: center;

}


.search{
position: absolute;
top: 50%;
left: 50%;
transform: translate(-50%,-50%);

padding-top: 100px;
}

.search input[type="text"]{

width: 300px;
border: 2px solid #cacbcc;
text-align: center;
border-radius: 10px;
outline: none;
box-shadow: 10px 10px 25px 0 rgba(0,0,0, .1);
}

</style>
</head>
<body>



<div class="container">

  <div class="subcontainer">

   <h1>Search</h1>

    <div class="search">



    <form action="http://localhost:8080/ECsite/search" method="POST">




    <select name="category">

    <option value="0">all</option>

    <%CategoryBean cb = new CategoryBean(); %>


    <%ArrayList<CategoryBean> list = (ArrayList<CategoryBean>)session.getAttribute("getcategory"); %>


    <% for(int i = 0; i<list.size(); i++){
    	cb = list.get(i);%>
    	<option value="<%= cb.getCatId() %>"><%=cb.getCatName() %> </option>
    <% }%>
    </select>
    <input type="text" name="search" placeholder="Explore">
    <input type="submit" name="submit" value="search">

    </form>




<% for(int i = 0; i < clist.size(); i++){

	categorybean = clist.get(i); %>





<% } %>



<%if(productlist!=null){%>

<table border="1">
   <tr>
     <th>Product Name</th>
     <th>Price</th>
     <th>Stock</th>
   </tr>

<% for(int i = 0; i < productlist.size(); i++){

	productbean = productlist.get(i); %>

   <tr>

     <td>  <a href="http://localhost:8080/ECsite/search?procd=<%= productbean.getProCd() %>"> <%= productbean.getProName()%> </a> </td>
     <td>	<%= productbean.getProPrice() %>£  </td>
     <td>    <%= productbean.getProStock() %>  </td>
   </tr>


 <% } %>

 </table>

  <% }%>


</div>





  </div>


</div>




<%String error = (String)request.getAttribute("error"); %>
<%if(error!=null){%>
	<%=error %>
<% }%>





</body>
</html>