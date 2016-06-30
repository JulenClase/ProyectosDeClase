<%@page import="com.ipartek.formacion.controller.Constantes"%>

<!DOCTYPE html >
<html>
	<head>
		<meta charset = "UTF-8">
			<title>Página de inicio</title>
	</head>
	<body>
	<header><h1>Gestion de cursos Ipartek</h1></header>
	<nav>
		<ul>
			<li><a href="<%=Constantes.SERVLET_CURSOS%>"> Ver todos los cursos. </a></li>
			<li><a href="<%=Constantes.SERVLET_ALUMNOS%>"> Ver todos los Alumnos.</a></li>
			<li><a href="<%=Constantes.SERVLET_MODULOS%>"> Ver todos los Modulos.</a></li>
		</ul>
	</nav>