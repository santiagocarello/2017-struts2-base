<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- indica que se usan tags de struts dentro de este jsp -->
<%@ taglib prefix="s" uri="/struts-tags"%>

<!-- aca empieza el html -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Basic Struts 2 Application - Welcome</title>
</head>
<body>
<center>
	<!-- Aca empieza lo que se va a mostrar en la pagina -->
	<p><h1><b><u>Bienvenidos!</u></b></h1></p>
	<h1><p>Menu Principal</p></h1>
	<IMG SRC="https://pbs.twimg.com/media/C8xwfIZXgAA-0Ob.jpg" ALT="Lio Messi">
	<p>
		<!-- este es un link al action "hello" que está definido en el struts.xml -->
		<a href="<s:url action='hello'/>">Jugar al solitario </a>
		Click para jugar al clasico juego
	</p>
	<p>
	<a href="<s:url action='personas'/>">Agregar personas</a>
	Tambien podes editar y borrarlas de la lista.
	</p>
</center>
</body>
</html>