<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Simple Login Form</title>
<link rel="stylesheet" href="css/styles.css">
<script src="javascript/styles.js"></script>
<script src="javascript/styles2.js"></script>
<style type="text/css">
	.login-form {
		width: 340px;
    	margin: 50px auto;
	}
    .login-form form {
    	margin-bottom: 15px;
        background: #f7f7f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
    .login-form h2 {
        margin: 0 0 15px;
    }
    .form-control, .btn {
        min-height: 38px;
        border-radius: 2px;
    }
    .btn {        
        font-size: 15px;
        font-weight: bold;
    }
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
</style>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
<div class="login-form">
    <form action="../addDoctor" method="post">
        <h2 class="text-center">Register</h2>
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Doctor's Name" required="required" name="doctorName">
        </div>       
        <div class="form-group">
            <input type="text" class="form-control" placeholder="EmailID" required="required" name="doctorMail">
        </div>
        <div class="form-group">
            <select class="form-control" required="required" name="doctorSpecialization">
            <option value="">Specialization.........</option>
            <option value="generalphysician">General Physician</option>
            <option value="entspecialist">ENT Specialist</option>
                 <option value="gynocologist">Gynocologist</option>
                 <option value="chordiologist">Chordiologist</option>
                 <option value="gastrologist">Gastrologist</option>
                 <option value="neaurologist">Neaurologist</option>
                 <option value="orthopedic">Orthopedic</option>
                 <option value="dentist">Dentist</option>
                 <option value="ophthalmologist">Ophthalmologist</option>
            </select>
        </div>
        <div class="form-group">
            Gender : <input type="radio" value="male" name="gender"> Male
            <input type="radio" value="female" name="gender"> Female
        </div>
               
        <div class="form-group">
            Login Time:
            <input type="time" class="form-control" required="required" name="doctorLogin">
        </div>
        <div class="form-group">
            Logout Time:
            <input type="time" class="form-control" required="required" name="doctorLogout">
        </div>
        <div class="form-group">
            <input type="password" class="form-control" placeholder="Password" required="required" name="doctorPassword">
        </div>
        
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">Signup</button>
        </div>
              
    </form>
    
</div>
</body>
</html>                                		                            