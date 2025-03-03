package anudeep_corejava;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class JDBCInsert {
	public static void main(String[] args) {

		try {
			//1.Register the Driver class
			Class.forName("com.mysql.cj.jdbc.Driver");//oracle.jdbc.driver.OracleDriver
			//2.Create connection
			Connection con=null;
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/human","root","security");
			System.out.println(con);
			//3.create statment
			PreparedStatement ps=con.prepareStatement("insert into person values(?,?,?)");
			ps.setInt(1,8);
			ps.setString(2, "sidhi");
			ps.setInt(3,26);
			//4.Execute queries
			int i=ps.executeUpdate();
			System.out.println(i+"record inserted sucessfully");
			
			//5.Close connection
			con.close();
		}catch(Exception e) {
		System.out.println(e);
		}

	}


}
