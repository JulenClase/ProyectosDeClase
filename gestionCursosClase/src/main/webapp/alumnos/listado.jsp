<%@page import="com.ipartek.formacion.controller.Constantes"%>
<%@page import="com.ipartek.formacion.pojo.Alumno"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../includes/header.jsp"/>

<a href="index.jsp"> Página principal</a>
<a href="<%=Constantes.SERVLET_ALUMNOS+"?"+Constantes.PAR_CODIGO+"="+Alumno.CODIGO_ALUMNO%>"> Añadir Alumno Nuevo</a>

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

<%@ include file="../includes/footer.jsp"%>