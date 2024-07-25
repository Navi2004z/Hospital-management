<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="header">
  <h1 class="one">NPK CARE</h1>
</div>
<div class="container">
  <center>
    <h2>Hospital Management</h2>
    <a href="PatientRegForm.jsp">Patient Registration</a> <br>
    <a href="DoctorRegForm.jsp">Doctor Registration</a> <br>
    <a href="View.jsp?page=1">Patient info</a> <br>
    <a href="New.jsp?page=1">Doctor info</a>
  </center>
</div>
</body>

<style>
body{
  background-color:#66CCCC;
  display: flex;
  justify-content: center;
  height:100vh;
  width:100%;
  background-position:center;
  background-size:cover;
  align-items:center;
  flex-direction: column; /* Added to stack elements vertically */
}
.header {
  text-align: center; /* Centers the h1 element */
  margin-bottom: 20px; /* Adds some space between the h1 and container */
}
.container {
  width: 30%;
  margin: 0 auto;
  padding: 20px;
  background-color:#ADD8E6;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0);
  display: flex;
  justify-content: center;
  height:50vh;
  align-items:center;
}
h2 {
  color: #00698f;
}
a {
  text-decoration: none;
  color: #00698f;
  margin-bottom: 10px;
  display: block;
}
a:hover {
  color: #0099cc;
}
</style>
</html>


