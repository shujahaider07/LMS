<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="LMS.Registration" %>

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
</div>
    <form id="form1" runat="server">
       <div class="account-page">
     <div class="container">
         <div class="row">
             <div class="col-2">
                 <img src="images/registration.png" width="70%">
             </div>
             <div class="col-2">
                 <div class="form-container">
                         <div class="form-btn">
                             <span onclick="login()">Login</span>
                             <span onclick="register()">Register</span>
                             <hr id="Indicator">
                         </div>
                         <form id="LoginForm">
                           <%--<input type="text" placeholder="Username">--%>
                             <asp:TextBox ID="Lusertxt" placeholder="Username"   runat="server"></asp:TextBox>
                           <%--<input type="password" placeholder="Password">--%>
                             <asp:TextBox ID="Lpasstxt" TextMode="Password" placeholder="Password" runat="server"></asp:TextBox>
                           <%--<button type="submit" class="btn">Login</button>--%>
                             <asp:Button ID="Submit" class="btn" runat="server" Text="LOGIN" OnClick ="Submit_Click" />
                           <a href="">Forget Password</a>
                         </form>
                         <%--<form id="RegForm">
                          <%--<input type="text" placeholder="Username">--%>
                           <%--<asp:TextBox ID="usernametxt" placeholder="Username"   runat="server"></asp:TextBox>--%>
                             <%--<input type="email" placeholder="Email">--%>
                              <%--<asp:TextBox ID="Emailtxt" placeholder="Email"   runat="server"></asp:TextBox>--%>
                          <%--<input type="password" placeholder="Password">--%>
                          
                             <%--<button type="submit" class="btn">Register</button>--%>
                             <%--<asp:Button ID="Buttontxt" runat="server" Text="submit"  />--%>
                        </form>
                 </div>
            </div>
         </div>
     </div>
 </div>

    </form>
<script>
  var LoginForm = document.getElementById("LoginForm");
  var RegForm = document.getElementById("RegForm");
   var Indicator = document.getElementById("Indicator");
   
        function register()
        {
          RegForm.style.transform = "translateX(0px)";
          LoginForm.style.transform = "translateX(0px)";
          Indicator.style.transform = "translateX(100px)";

} 
function login()
        {
          RegForm.style.transform = "translateX(300px)";
          LoginForm.style.transform = "translateX(300px)";
          Indicator.style.transform = "translateX(0px)";

}

</script>
</body>

</html>
