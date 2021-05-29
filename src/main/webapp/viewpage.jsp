<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Student Details</title>
<link rel="stylesheet" href="style.css" type="text/css"></link>
</head>
<body>
<center>
<br><br>
<form action="View.jsp">
<button type="submit" class="viewAllbtn"  >View All  Students</button>
</form><br>
<br>
<form action="sview.jsp">
<label for="usn" style="font-size:18px;">USN:</label>
  <input type="text" id="usn" name="usn" style="width:20%;font-size:18px;" required/>
<button type="submit" class="sebtn"  >Get Student With USN</button>
</form>
</center>
</body>
</html>