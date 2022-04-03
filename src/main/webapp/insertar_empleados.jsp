<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Registro</title>
</head>
<body>
<form action="proceso_insertar.jsp" method="post">
	<table>
		<tr>
			<td>Apellidos</td>
			<td><input type="text" name="txtApellidos"></td>
		</tr>
		<tr>
			<td>Nombres</td>
			<td><input type="text" name="txtNombres"></td>
		</tr>
		<tr>
			<td>Sexo</td>
			<td><select name="txtSexo">
				<option value="Masculino">
					Masculino
				</option>
				<option value="Femenino">
					Feminino
				</option>
			</select></td>
		</tr>
		<tr>
			<td>Ocupación</td>
			<td><select name="txtOcupacion">
				<option value="Estudiante">
					Estudiante
				</option>
				<option value="Trabajador">
					Trabajador
				</option>
				<option value="Artista">
					Artista
				</option>
				<option value="Otros">
					Otros
				</option>
			</select></td>
		</tr>
		<tr>
			<td>AFP</td>
			<td><select name="txtAfp">
				<option value="Rimac">
					Rimac
				</option>
				<option value="Integra">
					Integra
				</option>
				<option value="Habitat">
					Habitat
				</option>
			</select></td>
		</tr>
		
		<tr>
			<td><input type="submit" value="enviar"></td>
		</tr>
	</table>
</form>
</body>
</html>