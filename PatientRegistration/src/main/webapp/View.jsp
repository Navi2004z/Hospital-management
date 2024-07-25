<%@ page import="com.model.Patientinfo" %>
<%@ page import="com.model.Patient" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Patient Records</title>
</head>
<body>

<%
    String pgid = request.getParameter("page");
    int pid = Integer.parseInt(pgid);
    int id = pid;
    int total = 3;

    if (id == 1) {
    } else {
        id = id - 1;
        id = id * total + 1;
    }

    out.println("<h2>Page No: " + pid + "</h2>");
    List<Patient> list = Patientinfo.getRecords(id, total);

    out.println("<table><tr><th>pid</th><th>pname</th><th>address</th><th>gender</th></tr>");

    for (Patient s : list) {
        out.println("<tr><td>" + s.getPid() + "</td><td>" + s.getPname() + "</td><td>" + s.getAddress() + "</td><td>" + s.getGender() + "</td></tr>");
    }

    out.println("</table>");
%>
    <a href="View.jsp?page=1">1..</a>
    <a href="View.jsp?page=2">2..</a>
    <a href="View.jsp?page=3">3..</a>

</body>
<style>body {
		background-color:#66CCCC;
		font-family: Arial, sans-serif;
		   text-align: center; /* Add this line to center the text */
  }
  table {
    margin: 0 auto; 

	}
	
	</style>
</html>
