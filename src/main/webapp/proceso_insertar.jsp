<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Registro</title>
</head>
<%@ page import="datos.Libreria" %>
<body>
<%
	String ape=request.getParameter("txtApellidos");
	String nom=request.getParameter("txtNombres");
	String sex=request.getParameter("txtSexo");
	String ocu=request.getParameter("txtOcupacion");
	String af=request.getParameter("txtAfp");
	
	Libreria lib = new Libreria();
	boolean x=lib.insertar(ape, nom, sex, ocu, af);
	if(x==true){
%>	
	<h3>Empleado registrado correctamente</h3>
<%	}else{
%>
	<h3>Error al registrar Empleado</h3>
<%} %>
</body>
</html>