<%@page import="com.ipartek.formacion.controller.Constantes"%>
<%@page import="com.ipartek.formacion.pojo.Alumno"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Listado de alumnos</title>
</head>
<body>

<a href="index.jsp"> Página principal</a>

<!-- SCIPTLET para poder poner codigo java se usa <% %>-->

<%
	List<Alumno> alumnos = (List<Alumno>) request.getAttribute(Constantes.ATT_LISTADO_ALUMNOS);
	if (alumnos!=null)
	{
		for(Alumno alumno: alumnos)
		{
			out.write("<p>Curso: <a href='alumnos.do?"+ Constantes.PAR_CODIGO+"=" + alumno.getCodigo() + "'> " + alumno.getNombre() + "</a></p>");
		}
	}

%>

</body>
</html>