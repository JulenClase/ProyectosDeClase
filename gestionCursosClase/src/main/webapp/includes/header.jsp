<%@page import="com.ipartek.formacion.controller.Constantes"%>

<!DOCTYPE html >
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta charset = "UTF-8">
		<link rel="stylesheet" href="./css/bootstrap.min.css" >
		<link rel="stylesheet" href="./css/font-awesome.css" >
			<title>Página de inicio</title>
			
	<!--[if lt IE 9]>
	   <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	</head>
	<body class= "container-fluid">
	<header class="row"><h1 class = "col-xs-12">Gestion de cursos Ipartek</h1></header>
	<nav>
		<ul class="row">
			<li class="col-xs-4 col-md-2"><a href="<%=Constantes.SERVLET_CURSOS%>"> Ver todos los cursos. </a></li>
			<li class="col-xs-4 col-md-2"><a href="<%=Constantes.SERVLET_ALUMNOS%>"> Ver todos los Alumnos.</a></li>
			<li class="col-xs-4 col-md-2"><a href="<%=Constantes.SERVLET_MODULOS%>"> Ver todos los Modulos.</a></li>
		</ul>
	</nav>