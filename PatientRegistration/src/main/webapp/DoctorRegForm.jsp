<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<center>
<h2>Doctor Registration Form</h2>
<table>
<form action="DoctorController" enctype="multipart/form-data" method="post">
<tr><td>Doctor Name</td><td><input type="text" name="name"></td></tr>
<tr><td>Address </td><td><input type="text" name="address"></td></tr>
<tr><td>Gender</td><td><input type="radio" name="gender" value="Male">Male <input type="radio" name="gender" value="Female">Female <input type="radio" name="gender" value="Other">Other</td></tr>
<hr>
<tr><td>Specialist</td><td><select name="specialist">
  <option value="Child">Child </option>
  <option value="General">General</option>
  <option value="Womens">Womens</option>
  <!-- Add more options here -->
</select></td></tr>
<tr><td>Contact </td><td><input type="text" name="contactno"></td></tr>
<tr><td  colspan="2"><input type="submit" value="Submit"></td></tr>
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