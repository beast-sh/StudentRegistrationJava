package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Student;
import dao.StudentDao;

@WebServlet("/register")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StudentDao studentDao;

    public void init() {
    	studentDao = new StudentDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String usn = request.getParameter("USN");
        String course = request.getParameter("Course");
        String address = request.getParameter("address");
        String contact = request.getParameter("contact");

        Student student = new Student();
        student.setFirstName(firstName);
        student.setLastName(lastName);
        student.setUSN(usn);
        student.setcourse(course);
        student.setContact(contact);
        student.setAddress(address);

        try {
        	studentDao.registerStudent(student);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("StudentDetails.jsp");
    }
}