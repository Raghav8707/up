<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title></title>
           <center> <h1>INVENTORY MANAGEMENT</h1></center> 
           
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
</head>
<body >
<jsp:include page="CustomerMenu.jsp"/>

<center>
    <hr>  
       <center><b>Available Stock </b> </center>
	<jsp:useBean id="beanStock" class="com.Infinite.inventoryproject.StockDetails"></jsp:useBean>	
	<jsp:setProperty property="*" name="beanStock"/>
	<jsp:useBean id="beanDao" class="com.Infinite.inventoryproject.StockDAO"></jsp:useBean>
	<form method="get" action="ShowStock.jsp">
	<table border="5" align="center" class="table table-bordered table-hover table-striped">
	<tr>
	<th>Stock Id</th>
	<th>Item Name</th>
	<th>Price</th>
	<th>Quantity Avail</th>
	<th>Order</th>
	
	</tr>
	<c:forEach var="Stock" items="${beanDao.ShowStock()}">	
	<tr>
	<td>${Stock.stockid}</td>
	<td>${Stock.itemName}</td>
	<td>${Stock.price}</td>
	<td>${Stock.quantityAvail}</td>
	 <td bgcolor="green"><a href="AddOrder.jsp?id=${Stock.stockid}"><input type="button" value="Order" ></a></td>
	 
	</tr>
	</c:forEach>
	</table>	
	<c:out value="${param.quantity}"></c:out>
	</form>
	<center>
	<a href="SearchS.jsp?id=${Stock.stockid}"><input type="button" value="Search"></a>
	</center>


</body>
</html>