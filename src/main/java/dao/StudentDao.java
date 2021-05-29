package dao;
import java.sql.*;

import model.Student;
public class StudentDao {
	public int registerStudent(Student student) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO Student_Info" +
            "  ( first_name, last_name, usn, course, address, contact) VALUES " +
            " ( ?, ?, ?, ?,?,?);";

        int result = 0;
        
        try (Connection connection  =
        		DriverManager.getConnection("jdbc:ucanaccess://C://Users//hegde//Documents//Database2.accdb");
        		
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, student.getFirstName());
            preparedStatement.setString(2, student.getLastName());
            preparedStatement.setString(3, student.getUSN());
            preparedStatement.setString(4, student.getcourse());
            preparedStatement.setString(5, student.getAddress());
            preparedStatement.setString(6, student.getContact());

            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
           
            printSQLException(e);
        }
        return result;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}