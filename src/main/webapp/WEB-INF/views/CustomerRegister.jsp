<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Page</title>
</head>
<body>
<form action="save" method="post">
<pre>
Id :<input type="text" name="id"/>
Name :<input type="text" name="name"/>
Email :<input type="email" name="email"/>
<input type="submit"/> 
</pre>
</form>
${msg}

<a href="viewCustomer">View All</a>
</body>
</html>