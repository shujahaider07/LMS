<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="courses.aspx.cs" Inherits="LMS.courses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     
    <title>All Products | Red Store</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600;700&display=swap" rel="stylesheet">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body style=" background: radial-gradient(#fff, #a4c9f5)">
        <div class="container">
    <div class="navbar">
        <div class="logo">
            <img src="images/image1.png" width="125px">
        </div>
        <nav>
            <ul id="MenuItems">
                <li><a href="index.aspx">Home</a></li>
                <li><a href="about.html">About</a></li>
                <li><a href="courses.aspx">Courses</a></li>
                <li><a href="Registration.aspx">Registration</a></li>
                <li><a href="portal.aspx">Portal</a></li>
            </ul>
        </nav>
       </div>
    <form id="form1" runat="server">
                 <div class="small-container">
              <div class="row row-2">
                  <h2>ALL Courses</h2>
  
              </div>
              <div class="row">
                  <div class="col-4">
                      <img src="images/datascience.jpg">
                      <h4>Data Science</h4>
                      <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>
                      </div>
                      <p>$70.00</p>
                  </div>
                  <div class="col-4">
                    <img src="images/bio.jpg">
                    <h4>Biology</h4>
                    <div class="rating">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star-half-o"></i>
                      <i class="fa fa-star-o"></i>
                    </div>
                    <p>$80.00</p>
                </div> <div class="col-4">
                    <img src="images/chemistry.jpg">
                    <h4>Chemistry</h4>
                    <div class="rating">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star-half-o"></i>
                    </div>
                    <p>$55.00</p>
                </div> <div class="col-4">
                    <img src="images/hardware.jpg">
                    <h4>Hardware</h4>
                    <div class="rating">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star-o"></i>
                    </div>
                    <p>$45.00</p>
                </div>
              </div>
              
                <div class="row">
                  <div class="col-4">
                      <img src="images/coding.jpg">
                      <h4>Front-End</h4>
                      <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>
                      </div>
                      <p>$70.00</p>
                  </div>
                  <div class="col-4">
                    <img src="images/engineering.jpg">
                    <h4>Computer Engineering </h4>
                    <div class="rating">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star-half-o"></i>
                      <i class="fa fa-star-o"></i>
                    </div>
                    <p>$50.00</p>
                </div> <div class="col-4">
                    <img src="images/IT.jpg">
                    <h4>Information Technology</h4>
                    <div class="rating">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star-half-o"></i>
                    </div>
                    <p>$90.00</p>
                </div> <div class="col-4">
                    <img src="images/networking.jpg">
                    <h4>Networking</h4>
                    <div class="rating">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star-o"></i>
                    </div>
                    <p>$40.00</p>
                </div>
                </div>
  
                <div class="row">
                  <div class="col-4">
                      <img src="images/technical.jpg">
                      <h4>Technical Writing</h4>
                      <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>
                      </div>
                      <p>$50.00</p>
                  </div>
                  <div class="col-4">
                    <img src="images/maths.jpg">
                    <h4>Mathematics</h4>
                    <div class="rating">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star-half-o"></i>
                      <i class="fa fa-star-o"></i>
                    </div>
                    <p>$55.00</p>
                </div> <div class="col-4">
                    <img src="images/socialmedia.jpg">
                    <h4>Social Media</h4>
                    <div class="rating">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star-half-o"></i>
                    </div>
                    <p>$30.00</p>
                </div> <div class="col-4">
                    <img src="images/coding.jpg">
                    <h4>Back-End</h4>
                    <div class="rating">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star-o"></i>
                    </div>
                    <p>$65.00</p>
                </div>
              </div>

              </div>

    </form>
</body>
</html>
