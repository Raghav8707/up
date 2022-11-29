<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<center> <h1>INVENTORY MANAGEMENT</h1></center> 
<hr>
<link rel="stylesheet" href="style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Customer</title>
</head>
<body>
<jsp:useBean id="dao" class="com.Infinite.inventoryproject.CustomerDAO"></jsp:useBean>
	
	<c:set var="customers" value="${dao.searchCustomer(cid)}"/>
		<form action="UpdateCustomer.jsp">
			
			Customer Id:
			<input name="customerid" type="text" value="${cid}" readonly><br/><br/>
			Customer Name:
			<input name="customerName" type="text" value="${customers.customerName }"><br/><br/>
			Customer Phone Number:
			<input name="customerPhoneNo" type="text" value="${customers.customerPhoneNo }" ><br/><br/>
			Gender :
            <input type="radio" name="gender" value="MALE">MALE<br/><br/>
            <input type="radio" name="gender" value="FEMALE">FEMALE<br/><br/>
			 address1:
			<input name="address1" type="text" value="${customers.address1}" ><br/><br/>
			 address2:
			<input name="address2" type="text" value="${customers.address2}" ><br/><br/>
			 zip code:
			<input name="zipcode" type="text" value="${customers.zipcode }" ><br/><br/>
			 User Name:
			<input name="userName" type="text" value="${customers.userName}" readonly><br/><br/>
			 Password:
			<input name="passCode" type="password" value="${customers.passCode }" ><br/><br/>
			 city:
			<input name="city" type="text" value="${customers.city}"><br/><br/>

			<input type="submit" value="Update">
		</form>	
	
	<c:if test="${param.customerName != null }">
		<jsp:useBean id="customer" class="com.Infinite.inventoryproject.Customer"/>
		<jsp:useBean id="beanDAO" class="com.Infinite.inventoryproject.CustomerDAO"/>
		
				
			    		<jsp:setProperty property="*" name="customer"/>
							<c:out value="${beanDAO.updateCustomer(customer)}"/>
		
	</c:if>
</body>
</html>