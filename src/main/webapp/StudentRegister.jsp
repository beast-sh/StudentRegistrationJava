<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css" type="text/css"></link>
</head>
<body>
 <div align="center">
  <h1>Student Register Form</h1>
  <form action="<%= request.getContextPath() %>/register" method="post">
   <table style="with: 80%">
    <tr>
     <td>First Name</td>
     <td><input type="text" name="firstName" required/></td>
    </tr>
    <tr>
     <td>Last Name</td>
     <td><input type="text" name="lastName" required /></td>
    </tr>
    <tr>
     <td>USN</td>
     <td><input type="text" name="USN" required/></td>
    </tr>
    <tr>
     <td>Course</td>
     <td><input type="text" name="Course" required/></td>
    </tr>
    <tr>
     <td>Address</td>
     <td><input type="text" name="address" required/></td>
    </tr>
    <tr>
     <td>Contact No</td>
     <td><input type="text" name="contact" required/></td>
    </tr>
   </table><br><br>
   <input type="submit" value="Submit" style="display: block;
  width: 25%;
  border: none;
  background-color: grey;
  padding: 14px 28px;
  font-size: 16px;
  cursor: pointer;
  text-align: center;"/>
  </form><br>
  <form action="FirstPage.jsp">
  <button type="submit" class="Home"  >Home</button>
  </form>
  
 </div>
</body>
</html>