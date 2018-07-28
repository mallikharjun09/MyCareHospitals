<%@page session="true" %>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">MyCareHospitals</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="AdminHome.jsp">Home</a></li>
        <%try{if(!session.getAttribute("doctor_name").equals(null)){ %>
        	<li><a href="admin/PatientsList.jsp">Show All Patients</a></li>	
        <%}}catch(NullPointerException e){ %>
        <li><a href="Register.jsp">New Employee</a></li>
        <%} %>
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <%try{if(!session.getAttribute("doctor_name").equals(null)){ %>
        
        <li><a href="">Welcome <font size="3%"><%=session.getAttribute("doctor_name").toString().replace('+', ' ') %></font></a></li>
        <li><a href="logout">Logout</a></li>
        <%}}catch(NullPointerException e){%>
        <li><a href="Login.jsp">Login</a></li>
        
        <%} %>
      </ul>
    </div>
  </div>
</nav>