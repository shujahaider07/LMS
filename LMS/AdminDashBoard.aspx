<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="LMS.AdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet" />
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.1/mdb.min.css" rel="stylesheet" /> 
    <!-- MDB -->
 
</head>
<body>
    <form id="form1" runat="server">
      <style>
body {
  background-image: url('images/image1.png');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
 
}
</style>
        <header>
        <div class="d-flex flex-column flex-shrink-0 p-3 text-white bg-dark" style="width: 20vw; height: 100vh;">
            <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                <!-- <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"></use></svg> -->
                <img src="images/image1.png" alt="logo" class="bi me-2" width="40" height="32">
                <span class="fs-6">Learning Management System</span>
            </a>
            <hr>
            <ul class="nav nav-pills flex-column mb-auto">
                <li class="nav-item">
                    <a href="AdminCoursesView.aspx" class="nav-link active" aria-current="page">
                          <i class="fas fa-video mx-1"></i>
                        <!-- <svg class="bi me-2" width="16" height="16"><use xlink:href="#home"></use></svg> -->
                        
                        Courses View
                    </a>
                </li>
                <!-- <li>
                <a href="#" class="nav-link text-white">
                    <svg class="bi me-2" width="16" height="16">
                        <use xlink:href="#speedometer2"></use>
                    </svg>
                    <i class="fas fa-tachometer-alt"></i>
                    Dashboard
                </a>
            </li> -->
                <li>
                    <a href="AdminCourseUpload.aspx" class="nav-link text-Black">
                        <i class="fas fa-video mx-1"></i>
                        Lectures
                    </a>
                </li>
                <li>
                    <a href="#" class="nav-link text-Black">
                        <i class="fas fa-user-graduate mx-1"></i>
                        Attendance
                    </a>
                </li>
                <li>
                    <a href="#" class="nav-link text-Black">
                        <i class="fas fa-book-reader mx-1"></i>
                        Quiz
                    </a>
                </li>
                 <li>
                    <a href="Portal.aspx" class="nav-link text-Black">
                        <i class="fas fa-book-reader mx-1"></i>
                        Portal
                    </a>
                </li>
            </ul>
            <hr>
            <div class="dropdown">
                <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle"
                    id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                    <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2" >
                    <strong> <%Response.Write(Session["username"]);%></strong>
                </a>
                <ul class="dropdown-menu dropdown-menu-dark text-small shadow" aria-labelledby="dropdownUser1">
                    <!-- <li><a class="dropdown-item" href="#">New project...</a></li>
    <li><a class="dropdown-item" href="#">Settings</a></li>
    <li><a class="dropdown-item" href="#">Profile</a></li>
    <li><hr class="dropdown-divider"></li> -->
                    <asp:Button class="dropdown-item" ID="Button1" runat="server" Text="Logout" OnClick="Button1_Click" />
                </ul>
            </div>
        </div>
    </header>
    <!-- Header Ends Here -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
   
    </form>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.1/mdb.min.js"></script>

</body>
   

</html>
