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
			Connection con = DriverManager.getConnection(dbInfo.getUrl(), dbInfo.getUserName(), dbInfo.getPassWord());//��������������Դ�������Ӧ�þ����ӳɹ��ˣ����ɹ��Ļ�Ӧ�þ�������˺����벻��ȷ
			 Statement statement = con.createStatement();
			            //Ҫִ�е�SQL���
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
