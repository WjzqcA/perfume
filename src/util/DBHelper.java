package util;

import java.sql.DriverManager;

import java.sql.Connection;


public class DBHelper {
	private static final String driver="com.mysql.jdbc.Driver";
	private static final String url="jdbc:mysql://106.14.209.83:3306/perfume";
	private static final String username="perfume_reader";
	private static final String password="perfume@123";
	 
	 private static Connection conn=null;
	 //��̬���븺���������
	 static {
		 try {
			Class.forName(driver);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	 }
	 //��ģʽ�������ݿ����Ӷ���
	 public static Connection getConnection() throws Exception
	 {
		 if (conn==null) {
			 conn=DriverManager.getConnection(url,username,password);
			return conn;
		}
		 return conn;
	 }
	 public static void main(String[] args) {
		try {
			Connection conn=DBHelper.getConnection();
			if (conn!=null) {
				System.out.println("���ݿ���������");
			}
			else {
				System.out.println("���ݿ������쳣");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
