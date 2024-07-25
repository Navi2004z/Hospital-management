<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- <title>Patient Registration Form</title>-->
</head>
<body>
<div class="container">
<center>
<h2>Patient Registration Form</h2>
<table>

<tr><td><b>Basic Information</b></td></tr>
<form action="PatientController" enctype="multipart/form-data" method="post">
<tr><td>Patient Name</td><td><input type="text" name="pname"></td></tr>
<tr><td>Address </td><td><input type="text" name="address"></td></tr>
<tr><td>Gender</td><td><input type="radio" name="gender" value="Male">Male <input type="radio" name="gender" value="Female">Female <input type="radio" name="gender" value="Other">Other</td></tr>
<tr><td>Prescription</td><td><input type="file" name="prescription"></td></tr>
<hr>
<tr align:"center"><td><b>Appointment Information</b></td></tr>
<tr><td>Required Appointment Date</td><td><input type="date" name="appointmentDate"></td></tr>
<tr><td colspan="2"><input type="submit" value="Register"></td></tr>
<hr>
</form>
</table>
</center>
</div>


</body>
<style>
table {
    border-collapse: collapse;
    width: 60%;
    margin: 0 auto;
    text-align:auto;
  }
  body{
   background-color:#66CCCC;
   display: flex;
  justify-content: center;
  height:100vh;
  background-position:center;
  background-size:cover;
  align-items:center;
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
  heigth:50vh;
  align-items:center;
}
  

</style>
</html>