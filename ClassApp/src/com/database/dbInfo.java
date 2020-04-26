package com.database;

public class dbInfo {
	private static String userName = "root";//这里是你最开始刚下载mysql是输入的账号
	private static String password = "Whu123456";//这里是你最开始mysql设置的密码，
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
