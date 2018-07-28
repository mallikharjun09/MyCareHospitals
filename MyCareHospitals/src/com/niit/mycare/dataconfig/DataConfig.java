package com.niit.mycare.dataconfig;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

public class DataConfig {
	static public PreparedStatement ps=null;
	static public ResultSet rs=null;
	static public ResultSetMetaData rsmd=null;
	
	static public Connection connectDB() {
		try {
			Class.forName("org.h2.Driver");
			String url="jdbc:h2:tcp://localhost/~/hospital";
			String username="sa";
			String pwd="admin";
			Connection con=DriverManager.getConnection(url,username,pwd);
			return con;
		} catch (Exception e) {
			System.out.println("There is Connection Problem");
			return null;
		}
	}
	
}

