<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>



    <%@ page import="model.*"%>
    <%@ page import="java.util.ArrayList" %>


    <% CartBean cartbean = new CartBean(); %>
    <% ArrayList<CartBean> cart = new ArrayList<CartBean>();%>

    <% cart =(ArrayList<CartBean>) session.getAttribute("cartlist"); %>




<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<table border="1">
   <tr>
     <th>Product Name</th>
     <th>Unit Price</th>
     <th>Quantity</th>
   </tr>


 <%  int total = 0; %>

<% for(int i = 0; i < cart.size(); i++){

       cartbean = cart.get(i);
       total += cartbean.getPrice()*cartbean.getQuantity();
       %>


   <tr>

     <td>   <%= cartbean.getName()  %> </td>
     <td>	<%= cartbean.getPrice() %>£  </td>
     <td>   <%= cartbean.getQuantity() %>  </td>
   </tr>



 <% } %>

 <tr>

 <td colspan="2">Tax</td>
 <td> <%= total * 0.2 %> £</td>
 </tr>

 <tr>

 <td colspan="2">Sum</td>

 <td><%= total+total * 0.2%> £</td>

 </tr>

 </table>

<form action="http://localhost:8080/ECsite/back" method="POST">
<input type="submit" value="Continue">
</form>

<form action="http://localhost:8080/ECsite/cart" method="POST">
<input type="submit" value="Purchase">

</form>

</body>
</html>