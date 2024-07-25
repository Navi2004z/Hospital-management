<%@page import="com.model.Doctorinfo"%>
<%@page import="com.model.Doctor"%>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Doctor Records</title>
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
    List<Doctor> list = Doctorinfo.getRecords(id, total);
    out.println("<table><tr><th>pid</th><th>pname</th><th>address</th><th>gender</th><th>specialist</th></tr>");

    for (Doctor s : list) {
        out.println("<tr><td>" + s.getId() + "</td><td>" + s.getName() + "</td><td>" + s.getAddress()+"</td><td>"+s.getSpecialist() + "</td><td>" + s.getContactno()+ "</td></tr>");
    }

    out.println("</table>");
%>
    <a href="New.jsp?page=1">1..</a>
    <a href="New.jsp?page=2">2..</a>
    <a href="New.jsp?page=3">3..</a>

</body>
<style>body {
		background-color: #66CCCC;
		font-family: Arial, sans-serif;
		   text-align: center; /* Add this line to center the text */
  }
  table {
    margin: 0 auto; 

	}
	
	</style>
</html>
