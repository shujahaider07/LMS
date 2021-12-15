<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="LMS.about" %>

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
<body>
    <form id="form1" runat="server">
         <div class="container">
    <div class="navbar">
        <div class="logo">
            <a href="index.html"><img src="images/image1.png" width="125px"></a>
        </div>
        <nav>
            <ul id="MenuItems">
              <li><a href="index.aspx">Home</a></li>
              <li><a href="about.aspx">About</a></li>
              <li><a href="courses.aspx">Courses</a></li>
              <%--<li><a href="registration.aspx">Registration</a></li>--%>
              <li><a href="Portal.aspx">Portal</a></li>
           
            </ul>
        </nav>
        
      </div>  
</div>

  <div class="offers">
               <div class="small-container">
                 <div class="row">
                   <div class="col-2">
                           <img src="images/aboutus.png" class="offer-img">
                   </div>
                   <div class="col-2">
                     <p>Sami bat suno</p>
                     <h1>bat suno sami </h1>
                     <small>Yaha acha sa content add Krdena thk he??. <br> 
                    yaha bhi or dekh lio kahi bhool jaoo</small>
                      
                  </div>
                 </div>
               </div>
             </div>
             <br><br><br><br><br><br>

       <!------Single Products Details------------>
       <div class="small-container single-product">
           <div class="row">
               <div class="col-2">
                   <img src="images/lmss.png" width="100%" id="productImg">
                   <div class="small-img-row">
                       <div class="small-img-col">
                        <img src="images/bio.jpg" width="100%" class="small-img">
                       </div>
                       <div class="small-img-col">
                        <img src="images/networking.jpg" width="100%" class="small-img">
                       </div>
                       <div class="small-img-col">
                        <img src="images/datascience.jpg" width="100%" class="small-img">
                       </div>
                       <div class="small-img-col">
                        <img src="images/hardware.jpg" width="100%" class="small-img">
                       </div>
                   </div>
               </div>
               <div class="col-2">
                 <h2> What is LMS?</h2>
                   <p>A learning management system (LMS) is a sftware application or web-based technology used to plan,
                      implement and assess a specific learning process. It is used for eLearning practices and, in its most common form,
                       consists of two elements: a server that performs the base 
                     functionality and a user interface that is operated by instructors, students and administrators.
<br> <br>                   
Typically, a learning management system provides an instructor with a way to create and deliver content, monitor student participation
 and assess student performance.
 A learning management system may also provide students with the ability to use interactive features such as threaded discussions,
  video conferencing and discussion forums.
  <br><br>

LMSes are frequently used by businesses of all sizes, national government agencies, local governments, traditional educational 
institutions and online/eLearning-based institutions. 
.
                    </p>
               </div>
           </div>
       </div>

       <br><br><br><br><br><br>

      
    </form>
</body>
</html>
