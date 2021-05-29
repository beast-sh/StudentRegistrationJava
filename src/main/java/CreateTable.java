import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class CreateTable {
	public static void main(String [] args) {
		Connection con = null;
		try {

		con =
		DriverManager.getConnection("jdbc:ucanaccess://C:/Users/hegde/Documents/Database2.accdb");

		Statement sta = con.createStatement();
		int count = sta.executeUpdate("CREATE TABLE IF NOT EXISTS Myinfo (first_name VARCHAR(20),last_name VARCHAR(20),usn VARCHAR(20),course VARCHAR(20),address VARCHAR(20),contact VARCHAR(50))");
		System.out.println("Table created.");
		sta.close();
		con.close();
		} catch (Exception e) {
		System.err.println("Exception: "+e.getMessage());
		}
		}
}
