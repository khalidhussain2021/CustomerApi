<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update</title>
</head>
<body>
	<h2>Update the Record</h2>
	<pre>
		<form action="updateRecord" method="post">
			Id : <input type="text" name="id" value="${oneCus.id}" readonly="readonly"/>
			Name:-<input type="text" name="name" value="${oneCus.name}"/>
			Email:-<input type="text" name="email" value="${oneCus.email}">
			<input type="submit"/>
		</form>
	</pre>
</body>
</html>