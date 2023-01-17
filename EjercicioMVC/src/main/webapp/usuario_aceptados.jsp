<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bienvenida</title>
</head>
<body>
<% String nombre = request.getParameter("nombre"); %>
	<h1>Bienvenido <%= nombre %></h1>
	<form action="index.jsp" >
		<button>Volver inicio</button>
	</form>
</body>
</html>