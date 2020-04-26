package com.database.login;
import com.database.dbInfo;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class checkLogin {
	public static String checkWith(String acc,String pwd) {
		
		String res = null;
		try {
			Connection con = DriverManager.getConnection(dbInfo.getUrl(), dbInfo.getUserName(), dbInfo.getPassWord());//把上面的三个属性传过来，应该就连接成功了，不成功的话应该就是你的账号密码不正确
			 Statement statement = con.createStatement();
			            //要执行的SQL语句
			String sql = "select pwd,type from user_table where acc= \""+acc+"\";";
			//System.out.println(sql);
			ResultSet rs = statement.executeQuery(sql);
			while(rs.next()) {
				if (rs.getString("pwd").equals(pwd)) {
					res = rs.getString("type");
				}
			}
			rs.close();
			statement.close();
			con.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}
		return res;
	}
}
