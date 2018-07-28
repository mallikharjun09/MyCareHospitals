
<html lang="en">
<head>
  <title>MyCare</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/styles.css">
  <script src="javascript/styles.js"></script>
  <script src="javascript/styles2.js"></script>
  <style>
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

<div id="myCarousel" class="carousel slide" data-ride="carousel" style="height:40%">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
      <li data-target="#myCarousel" data-slide-to="5"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="images/img2.jpg" alt="MyCureHospitals Pvt., Ltd." style="width:100%;height:100%">
      </div>

      <div class="item">
        <img src="images/img3.jpg" alt="MyCureHospitals Pvt., Ltd." style="width:100%;height:100%">
      </div>
    
      <div class="item">
        <img src="images/img4.jpg" alt="MyCureHospitals Pvt., Ltd." style="width:100%;height:100%">
      </div>
      <div class="item">
        <img src="images/img5.jpg" alt="MyCureHospitals Pvt., Ltd." style="width:100%;height:100%">
      </div>
      <div class="item">
        <img src="images/img6.jpg" alt="MyCureHospitals Pvt., Ltd." style="width:100%;height:100%">
      </div>
      <div class="item">
        <img src="images/img1.jpg" alt="MyCureHospitals Pvt., Ltd." style="width:100%;height:100%">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

<div class="container-fluid bg-3 text-center">    
  <h3>Our MultiSpeciality Features</h3><br>
  <div class="row">
    <div class="col-sm-3">
      <p>Experienced Doctors</p>
      <img src="images/doctor1.jpg" class="img-responsive" style="width:100%;height:20%" alt="Image">
    </div>
    <div class="col-sm-3"> 
      <p>24X7 Service on Demand</p>
      <img src="images/doctor2.jpg" class="img-responsive" style="width:100%;height:20%" alt="Image">
    </div>
    <div class="col-sm-3"> 
      <p>Well Equipped Lab</p>
      <img src="images/doctor3.jpg" class="img-responsive" style="width:100%;height:20%" alt="Image">
    </div>
    <div class="col-sm-3">
      <p>Special Care on Each Patient</p>
      <img src="images/doctor4.jpg" class="img-responsive" style="width:100%;height:20%" alt="Image">
    </div>
  </div>
</div><br>

<footer class="container-fluid text-center">
  <p> &copy; Copyrights belongs to My Care Hopitals Pvt., Ltd</p>
  <p> www.mycarehospitals.com | feedback@mycarehospitals.com</p>
</footer>
</body>
</html>