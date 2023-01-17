<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Coche</title>
</head>

<body>
	<%
	String nombre = request.getParameter("nombre");
	String email = request.getParameter("correo");
	String tapiceria = request.getParameter("tapiceria");
	String moldura = request.getParameter("moldura");

	if (!nombre.contentEquals("")) {
	%>
	<p>
		Hola
		<%=nombre%>
		aqui tienes tu coche
	</p>
	<%
	}
	if (!email.contentEquals("")) {
	%>
	<p>
		Hola
		<%=email%>
		aqui tienes tu coche
	</p>
	<%
	}

	if (tapiceria.contentEquals("negro") && moldura.contentEquals("carbono")) {
	%>
	<img src="images/negrocarbono.jpg" />
	<%
	} else if (tapiceria.contentEquals("negro") && moldura.contentEquals("madera")) {
	%>
	<img src="images/negromadera.jpg" />
	<%
	} else if (tapiceria.contentEquals("berenjena") && moldura.contentEquals("carbono")) {
	%>
	<img src="images/berenjenacarbono.jpg" />
	<%
	} else if (tapiceria.contentEquals("berenjena") && moldura.contentEquals("madera")) {
	%>
	<img src="images/berenjenamadera.jpg" />
	<%
	} else if (tapiceria.contentEquals("blanco") && moldura.contentEquals("carbono")) {
	%>
	<img src="images/blancocarbono.jpg" />
	<%
	} else if (tapiceria.contentEquals("blanco") && moldura.contentEquals("madera")) {
	%>
	<img src="images/blancomadera.jpg" />
	<%
	}
	%>


</body>
</html>