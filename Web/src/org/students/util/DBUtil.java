package org.students.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

//通用数据库操作
public class DBUtil {
	
	public static Connection connection = null;
	public static PreparedStatement pstmt = null;
	public static ResultSet rs = null;
	
	private final static String url = "jdbc:mysql://localhost:3306/information?serverTimezone=GMT%2B8";
	private final static String username = "root";
	private final static String password = "990309";
	
	//获取connection链接
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		return connection = DriverManager.getConnection(url, username, password);
	}
	
	//获取PreparedStatement
	public static PreparedStatement createPreparedStatement(String sql, Object[] params) throws ClassNotFoundException, SQLException {
		
		pstmt = getConnection().prepareStatement(sql);
		
		if(params != null) {
			for(int i = 0; i < params.length; i++) {
				pstmt.setObject(i + 1, params[i]);
			}
		}
		return pstmt;
	}
	
	//关闭
	public static void closeAll(ResultSet rs, Statement stmt, Connection connection) {
		try {
			if(rs != null) rs.close();
			if(connection != null) connection.close();
			if(pstmt != null) pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//查询总数
	public static int getTotalCount(String sql) {
		int count = -1;
		try {
			pstmt = createPreparedStatement(sql, null);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				count = rs.getInt(1);
			}
			
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(rs, pstmt, null);
		}
		
		return count;
		
	}
	
	//通用增删改
	public static boolean executeUpdate(String sql, Object[] params) {
		
		try {
			int count = createPreparedStatement(sql, params).executeUpdate();
			
			if(count > 0)
				return true;
			else
				return false;
	
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return false;

		} catch (SQLException e) {
			e.printStackTrace();
			return false;

		} catch (Exception e) {
			e.printStackTrace();
			return false;

		} finally {
			closeAll(null, pstmt, connection);
		}
	}
	
	
	//查询
	public static ResultSet executeQuery(String sql, Object[] params) {

			
		try {
			
			return rs = createPreparedStatement(sql, params).executeQuery();
				
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return null;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} 
	}
}
