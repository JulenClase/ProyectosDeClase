<%@page import="com.ipartek.formacion.controller.exception.AlumnoError"%>
<%@page import="com.ipartek.formacion.pojo.Alumno"%>
<%@page import="com.ipartek.formacion.controller.Constantes"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%
	
		Alumno alumno = (Alumno) request.getAttribute(Constantes.ATT_ALUMNO);
		
		int op = -1;
		if(alumno!=null)
		{
			op = Constantes.OP_UPDATE;		
%>
		<title>Curso <% out.write(alumno.getNombre()); %></title>
<%
		}
		else
		{
%>
		<title>Alumno  - Alumno nuevo</title>
<%		op = Constantes.OP_CREATE;
		alumno = new Alumno();
		
		}
%>
		
</head>
<body>
	<div>
	<a href="<%=Constantes.SERVLET_ALUMNOS %>">Atras</a>

		<%
			if(alumno instanceof AlumnoError)
			{
				AlumnoError aux = (AlumnoError) alumno;
				out.write(aux.getMensaje());
			}
		%>
		<%
		if(alumno!=null){
		%>
		<%=Constantes.SERVLET_ALUMNOS%>
			<form name="" id="" method='post' 
				action="<%=Constantes.SERVLET_ALUMNOS%>">
				<input type="hidden" 
					id="<%=Constantes.PAR_OPERACION %>"
					name="<%=Constantes.PAR_OPERACION %>"  
					value="<%=op %>"/>
				<input type="hidden" 
					id="<%=Constantes.PAR_CODIGO %>" 
					name="<%=Constantes.PAR_CODIGO %>" 
					value="<%=alumno.getCodigo()%>"/>
				<label for="<%=Constantes.PAR_NOMBRE%>">Nombre:</label>
				<input type="text" 
					name="<%=Constantes.PAR_NOMBRE%>" 
					id="<%=Constantes.PAR_NOMBRE%>" 
					value="<%=alumno.getNombre() %>"/>
				<label for="<%=Constantes.PAR_NOMBRE%>">Apellidos:</label>
				<input type="text" 
					name="<%=Constantes.PAR_APELLIDOS%>" 
					id="<%=Constantes.PAR_APELLIDOS%>" 
					value="<%=alumno.getApellidos() %>"/>
				<label for="<%=Constantes.PAR_NOMBRE%>">Dni:</label>
				<input type="text" 
					name="<%=Constantes.PAR_DNI%>" 
					id="<%=Constantes.PAR_DNI%>" 
					value="<%=alumno.getDni() %>"/>
			
				<input type="submit" />
			</form>			
	<%	}
		%>
		</div>
<%@ include file="/includes/footer.jsp"%>