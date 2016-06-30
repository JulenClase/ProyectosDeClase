<%@page import="java.util.List"%>
<%@page import="com.ipartek.formacion.pojo.Modulo"%>
<%@page import="com.ipartek.formacion.controller.Constantes"%>
<%@ include file="../includes/header.jsp"%>

<a href="index.jsp"> P�gina principal</a>
<a href="<%=Constantes.SERVLET_MODULOS+"?"+Constantes.PAR_CODIGO+"="+Modulo.CODIGO_MODULO%>"> A�adir Modulo Nuevo</a>

<%
	List<Modulo> modulos = (List<Modulo>) request.getAttribute(Constantes.ATT_LISTADO_MODULOS);
	if (modulos!=null)
	{
		for(Modulo modulo: modulos)
		{
			out.write("<p>Modulo: <a href='"+Constantes.SERVLET_MODULOS+"?"+ Constantes.PAR_CODIGO+"=" + modulo.getCodigo() + "'> " + modulo.getNombre() + "</a></p>");
		}
	}

%>

<%@ include file="../includes/footer.jsp"%>