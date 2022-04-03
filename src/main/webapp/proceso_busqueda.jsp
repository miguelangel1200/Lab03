<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Busqueda</title>
<style>
	table, th, td {
		width: 75%;
 		border: 0.5px solid;
	}
</style>
</head>
<%@ page import="java.sql.*" %>
<%@ page import="datos.Conexion" %>
<body>
<h3>Resultados de busqueda</h3><hr>
<%
	String ocp = request.getParameter("txtBusquedaOcupacion");
	Conexion c = new Conexion();
	c.conectar();
	ResultSet datos;
	datos=c.busqueda(ocp);
%>
<hr>
	<table>
	<thead>
		<tr>
			<th>Apellidos</th>
			<th>Nombres</th>
			<th>Sexo</th>
			<th>Ocupación</th>
			<th>AFP</th>
		</tr>
	</thead>
	<tbody>
	<%
		while(datos.next()){
	%>
		<tr>
			<td>
				<%=datos.getString(1) %>
			</td>
			<td>
				<%=datos.getString(2) %>
			</td>
			<td>
				<%=datos.getString(3) %>
			</td>
			<td>
				<%=datos.getString(4) %>
			</td>
			<td>
				<%=datos.getString(5) %>
			</td>
		</tr>
		<%
		} 
		%>
	</tbody>
	</table>
<hr>
<a type="button" href="menu.jsp">Regresar</a>
</body>
</html>