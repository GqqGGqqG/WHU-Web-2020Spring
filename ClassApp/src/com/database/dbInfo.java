package com.database;

public class dbInfo {
	private static String userName = "root";//���������ʼ������mysql��������˺�
	private static String password = "Whu123456";//���������ʼmysql���õ����룬
	private static String url = "jdbc:mysql://114.55.248.222/ClassApp?useSSL=false";
	 public static String getUserName() {
		return userName;
	 }
	 public static String getPassWord() {
		 return password;
	 }
	 public static String getUrl() {
		 return url;
	 }
}
