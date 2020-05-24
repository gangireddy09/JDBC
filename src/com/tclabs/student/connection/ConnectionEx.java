package com.tclabs.student.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectionEx {
	public Connection getConnection() throws ClassNotFoundException, SQLException {	
		Class.forName("com.mysql.jdbc.Driver");
		Connection connect =  DriverManager.getConnection("jdbc:mysql://localhost:3306/tasks", "root", "root");
		return connect;
	}
}
