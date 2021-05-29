<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Details</title>
</head>
<body>
<%

    try {
    	 String usn = request.getParameter("susn");
    	 
    	Connection connection  = DriverManager.getConnection("jdbc:ucanaccess://C://Users//hegde//Documents//Database2.accdb");
    	PreparedStatement st = connection.prepareStatement("delete from Student_Info where usn=? ");
        st.setString(1,usn);
        st.executeUpdate();
 
        out.print("<center><h1>Student Removed Successfully</h1></center>");
   %>
   <% 	
   
    } catch (Exception ex) {

        System.out.println(ex);

    }

%>
<center>
<form action="FirstPage.jsp">
<button type="submit" class="hmbtn"  style="display: block;
  width: 25%;
  border: none;
  background-color: grey;
  padding: 14px 28px;
  font-size: 16px;
  cursor: pointer;
  text-align: center;">Home </button>
  </form>
  </center>
</body>
</html>