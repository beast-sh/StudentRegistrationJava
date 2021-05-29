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

    	Connection connection  = DriverManager.getConnection("jdbc:ucanaccess://C://Users//hegde//Documents//Database2.accdb");
        PreparedStatement st = connection.prepareStatement("select * from Student_Info ");
        ResultSet rs = st.executeQuery();
        ResultSetMetaData rsmd = rs.getMetaData(); 
        out.print("<center><h1>Result:</h1></center>");
        while (rs.next()) {

%>
<center>
<%

    out.print("<table width=25% border=1>");

    out.print("<tr>");

    out.print("<tr><td>" + rsmd.getColumnName(1) + "</td>");

    out.print("<td>" + rs.getString(1) + "</td></tr>");

    out.print("<tr><td>" + rsmd.getColumnName(2) + "</td>");

    out.print("<td>" + rs.getString(2) + "</td></tr>");

    out.print("<tr><td>" + rsmd.getColumnName(3) + "</td>");

    out.print("<td>" + rs.getString(3) + "</td></tr>");

    out.print("<tr><td>" + rsmd.getColumnName(4) + "</td>");

    out.print("<td>" + rs.getString(4) + "</td></tr>");

    out.print("<tr><td>" + rsmd.getColumnName(5) + "</td>");

    out.print("<td>" + rs.getString(5) + "</td></tr>");

    out.print("<tr><td>" + rsmd.getColumnName(6) + "</td>");

    out.print("<td>" + rs.getString(6) + "</td></tr>");

    out.println("</table>");
    
    out.println("<br><br>");

} 



%>

</center>

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