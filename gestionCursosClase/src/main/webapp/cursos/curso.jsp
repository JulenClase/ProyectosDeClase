<%@page import="com.ipartek.formacion.controller.Constantes"%>
<%@page import="com.ipartek.formacion.pojo.Curso"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset = "UTF-8">
<title>Curso</title>
	<%
	Curso curso = (Curso) request.getAttribute(Constantes.ATT_CURSO);
		int op = -1;
		if(curso!=null)
		{
			op = Constantes.OP_UPDATE;		
 	%>
 	<title>Curso <% out.write(curso.getNombre()); %></title>
 	<%
		}
		else
		{
	%>
	<title>Curso  - Curso nuevo</title>
	<%
		curso = new Curso();
		op = Constantes.OP_CREATE;
		//out.write("<p>Curso ID:" + curso.getCodigo() + "</p> <p> Curso Nombre: " + curso.getNombre() + "</p>");
		}
	%>
	</head>
<body>

	<div id="wrapper">
		<a href="<%=Constantes.SERVLET_CURSOS %>">Atras</a>

		
		<%
		if(curso!=null){
		%>
		<%=Constantes.SERVLET_CURSOS%>
			<form name="" id="" method='post' 
				action="<%=Constantes.SERVLET_CURSOS%>">
				<input type="hidden" 
					id="<%=Constantes.PAR_OPERACION %>"
					name="<%=Constantes.PAR_OPERACION %>"  
					value="<%=op %>"/>
				<input type="hidden" 
					id="<%=Constantes.PAR_CODIGO %>" 
					name="<%=Constantes.PAR_CODIGO %>" 
					value="<%=curso.getCodigo()%>"/>
				<label for="<%=Constantes.PAR_NOMBRE%>"></label>
				<input type="text" 
					name="<%=Constantes.PAR_NOMBRE%>" 
					id="<%=Constantes.PAR_NOMBRE%>" 
					value="<%=curso.getNombre() %>"
					/>
			
				<input type="submit" />
			</form>			
	<%	}
		%>
		</div>

</body>
</html>