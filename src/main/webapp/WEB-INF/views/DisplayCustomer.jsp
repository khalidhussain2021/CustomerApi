<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Views</title>
</head>
<body>
<h2>Customer Detail Display</h2>
<form>
<table>
<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
</tr>
<c:forEach items="${all}" var="all">
<tr>
<td>${all.id }</td>
<td>${all.name }</td>
<td>${all.email }</td>
<td><a href="deleteCustomer?id=${all.id}">Delete</a></td>
<td><a href="showCustomer?id=${all.id}">Edit</a></td>
</tr>
</c:forEach>
</table>
</form>
<a href="showReg">Add Customer</a>
</body>
</html>