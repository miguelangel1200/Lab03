package datos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Libreria {
	public String driver="com.mysql.cj.jdbc.Driver";
	public String cadena="jdbc:mysql://localhost/empresa";
	public String usuario="root";
	public String clave="";
	public Connection conn;
	public PreparedStatement sen;
	
	public Connection conectar() {
		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(cadena,usuario,clave);
			System.out.println("Conexión OK");
		}catch(ClassNotFoundException e) {
			System.out.println("Error en el Driver");
		}catch(SQLException e2) {
			System.out.println("Error en la conexión");
		}
		return conn;
	}
	
	public boolean insertar(String apellidos, String nombres, String sexo, String ocupacion, String afp) {
		try {
			String sql="insert into empleados(apellidos,nombres,sexo,ocupacion,afp) values(?,?,?,?,?)";
			sen=conectar().prepareStatement(sql);
			sen.setString(1, apellidos);
			sen.setString(2, nombres);
			sen.setString(3, sexo);
			sen.setString(4, ocupacion);
			sen.setString(5, afp);
			sen.executeUpdate();
		}catch(SQLException e4){
			System.out.println("Error al insertar datos");
		}return true;
	}
	
	public void cerrar() {
		try {
			sen.close();
			conn.close();
		}catch(SQLException e1) {
			System.out.println("Error en cerrar los procesos");
		}
	}
}
