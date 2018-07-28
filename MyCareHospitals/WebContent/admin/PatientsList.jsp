<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.niit.mycare.dataconfig.DataConfig"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
<style>
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
<%
	 int id;
     String name,pwd,mail;
     id=Integer.parseInt(session.getAttribute("doctor_id").toString());
     name=session.getAttribute("doctor_name").toString();
     
     pwd=session.getAttribute("doctor_pwd").toString();
     mail=session.getAttribute("doctor_mail").toString();
     String status="valid";
%> 

<div class="container" style="height:60%">
    
      <%
          Connection con=DataConfig.connectDB();
          PreparedStatement ps=con.prepareStatement("select patient_id, patient_name, patient_age, patient_gender from patients where patient_status=? and visited_dept like ? ");
          ps.setString(1,status);
          ps.setString(2,name.replace('+', ' ')+"%");
          ResultSet rs=ps.executeQuery();
          if(rs.equals(null)){
        	  out.println("<h3>Sorry No Patients</h3>");
          }else {%>
          <table class="table table-striped">
        	     <caption><h4>Patients List</h4></caption>
        	      <tr><th>patient ID</th>
        	      <th>patient Name</th>
        	      <th>patient Age</th>
        	      <th>gender</th>
        	      <th></th></tr>
        	<%
          while(rs.next()){
        	  
        	 out.println("<tr>");
        	 for(int i=1;i<=4;i++){
        		 out.println("<td>"+rs.getString(i)+"</td>");
        		 
        	 }
        	 out.println("<td><a href=Prescription.jsp >Write Prescription</a>");
        	 out.println("</tr>");
          }
          }
        	 %>
     
    </table>
</div>
<footer class="container-fluid text-center">
  <p> &copy; Copyrights belongs to My Care Hopitals Pvt., Ltd</p>
  <p> www.mycarehospitals.com | feedback@mycarehospitals.com</p>
</footer>
</body>
</html>                                		                            