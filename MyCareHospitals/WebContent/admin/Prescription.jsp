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
		width: 500px;
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
    .form-control1, .btn1 {
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
        <h2 class="text-center">Prescription</h2>
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Doctor's Name" required="required" name="doctorName" disabled="disabled" value="<%=request.getAttribute("doctor_name").toString().replace('+',' ')%>">
        </div>       
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Patient's Name" required="required" name="patientName" disabled="disabled" value="My Patient Name">
        </div>
        <div class="form-group">
            <input type="text" class="form-control" placeholder="DecieseDetails" required="required" name="details" >
        </div>
        <div class="form-group">
            Prescription:
            <textarea class="form-control" rows="8"></textarea>
        </div>
        
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">Submit</button>
        </div>
              
    </form>
    
</div>
</body>
</html>