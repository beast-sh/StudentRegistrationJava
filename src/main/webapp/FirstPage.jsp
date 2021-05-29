<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link rel="stylesheet" href="style.css" type="text/css"></link>
</head>
<body>
<center>
<h1 style="display: block;
  width: 100%;
  border: none;
  background-color: lightblue;
  padding: 14px 28px;
  cursor: pointer;
  text-align: center;" > Welcome! Student Registration System</h1>
<form action=" StudentRegister.jsp">
<button type="submit" class="registerbtn"  >Register</button> 
</form> <br>
<form action="viewpage.jsp">
<button type="submit" class="viewrbtn"  >View Students</button>
</form><br>
<form action="Remove.jsp">
<button type="submit" class="removebtn"  >Remove Students</button>&nbsp &nbsp
</form>

</center>

</body>

</html>