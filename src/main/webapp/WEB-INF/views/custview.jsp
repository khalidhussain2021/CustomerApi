<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Custoer</title>
</head>
<body>
	<h1>Show All View </h1>
		<table>
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>EMAIL</th>
			</tr>
			<c:forEach items="${custoer}" var="custoer">
			<tr>
				<td>${custoer.id}</td>
				<td>${custoer.name }</td>
				<td>${custoer.email }</td>
				<td><a href="deleteview?id=${custoer.id}">delete</a></td>
				<td><a href="updateview?id=${custoer.id}">update</a></td>
			</tr>
			</c:forEach>
		</table>
		${msg}
		<a href="reg">Add Custoer</a>
</body>
</html>