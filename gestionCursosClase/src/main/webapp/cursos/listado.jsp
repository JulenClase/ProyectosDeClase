<%@page import="com.ipartek.formacion.controller.Constantes"%>
<%@page import="com.ipartek.formacion.pojo.Curso"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset = "UTF-8">
<title>Listado de cursos</title>
</head>
<body>

<a href="index.jsp"> Página principal</a>
<a href="cursos/curso.jsp">Añadir Curso Nuevo</a> 

<!-- SCIPTLET para poder poner codigo java se usa <% %>-->

<%
	List<Curso> cursos = (List<Curso>) request.getAttribute("listado_cursos");
	if (cursos!=null)
	{
		String formulario = "";
		for(Curso curso: cursos)
		{
			formulario =  "<form action= '" + Constantes.SERVLET_CURSOS + "' method = 'post'>";
			//variable operacion
			formulario +="<input type='hidden' "+ "name='" + Constantes.PAR_OPERACION + "' value = '" + Constantes.OP_DELETE + "'/>";
			//variable del codigo
			formulario +="<input type='hidden' "+ "name='"+Constantes.PAR_CODIGO+ "' value='"+curso.getCodigo()+"'/>";
			//el boton de borrar
			formulario +="<input type='submit' value='Borrar'";
			formulario +="</form>";
			
					
			out.write("<div>Curso: <a href='cursos.do?"+Constantes.PAR_CODIGO+"=" + curso.getCodigo() + "'> " + curso.getNombre() + "</a>  "+formulario+"</div>");
		}
	}

%>
</body>
</html>