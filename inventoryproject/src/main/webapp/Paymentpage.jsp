<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title></title>
           <center> <h1>PAYMENT PAGE</h1></center> 
           <style>
           body{
           margin-top:60px;}
           </style>
</head>
<body >
<jsp:include page="CustomerMenu.jsp"/>
<center>
    <hr>  
       <b>Payment Details</b> 

	<jsp:useBean id="beanDao" class="com.Infinite.inventoryproject.WalletDAO"></jsp:useBean>

	
	
	<table border="5" class="table table-bordered table-hover table-striped">
 
 <tr>
 
 <th>Wallet ID</th>
 <th>Amount</th>
 
 <th>Wallet Type</th>
 
 
 </tr>
 
 <c:forEach var="pay" items="${beanDao.searchWallet(cid)}">
<tr>
<td>${pay.walletId}</td>
<td>${pay.amt}</td>
<td>${pay.walletType}</td>




  </tr> 
  </c:forEach>

	</table> 

	

</body>
</html>