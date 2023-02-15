<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>
	<h2>Customer Register Page</h2>
	<pre>
		<form action="save" method="post">
			Customer Name:<input type="text" name="name"/>
			Customer Email:<input type="text" name="email"/>
			<input type="submit" value="Register Here"/>
		</form>
	
	</pre>
	${msg}
	<a href="viewCust">View All</a>
</body>
</html>