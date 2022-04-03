package datos;

import java.sql.*;

public class Conexion {
	public String driver="com.mysql.cj.jdbc.Driver";
	public String cadena="jdbc:mysql://localhost/empresa";
	public String usuario="root";
	public String clave="";
	public Connection conn;
	public Statement sen;
	public ResultSet data,dato;
	
	public void conectar() {
		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(cadena,usuario,clave);
			sen=conn.createStatement();
			System.out.println("Conexión OK");
		}catch(ClassNotFoundException e) {
			System.out.println("Error en el Driver");
		}catch(SQLException e2) {
			System.out.println("Error en la conexión");
		}
	}
	
	public ResultSet consulta() {
		try {
			data= sen.executeQuery("SELECT apellidos, nombres, sexo, ocupacion, afp FROM empleados");
		}catch(SQLException e3) {
			System.out.println("Error en la consulta");
		}
		return data;
	}
	
	public ResultSet busqueda(String ocp) {
		try {
			dato= sen.executeQuery("SELECT apellidos, nombres, sexo, ocupacion, afp FROM empleados WHERE ocupacion like '%"+ocp+"%'");
		} catch (SQLException e) {
			System.out.println("Error en la busqueda");
		}
		return dato;
	}
	
	public void cerrar() {
		try {
			data.close();
			sen.close();
			conn.close();
		}catch(SQLException e1) {
			System.out.println("Error en cerrar los procesos");
		}
	}
}
