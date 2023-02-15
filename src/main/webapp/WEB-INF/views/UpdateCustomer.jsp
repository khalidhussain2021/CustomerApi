<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Page</title>
</head>
<body>
<form action="update" method="post">
<pre>
Id :<input type="text" name="id" value="${oneCustomer.id}" readonly/>
Name :<input type="text" name="name"  value="${oneCustomer.name}" />
Email :<input type="email" name="email" value="${oneCustomer.email}"/>
<input type="submit"/> 
</pre>
</form>
</body>
</html>