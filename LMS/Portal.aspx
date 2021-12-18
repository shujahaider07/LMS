<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Portal.aspx.cs" Inherits="LMS.Portal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PORTAL</title>
    <link rel="stylesheet" href="style1.css" type="text/css"/>
    <script src="sweetalert2.min.js"></script>
    <script src="sweetalert2.all.min.js"></script>
    <link rel="stylesheet" href="sweetalert2.min.css"/>
    <link href="dist/sweetalert2.min.css" rel="stylesheet"/>
    <script src ="dist/sweetalert2.min.js"></script>
    
    <link rel="stylesheet" href="sweetalert2.min.cs--%>s" type="text/css"/>

    
</head>
<body>
    <form id="form1" runat="server">
      <div class="login">
        <form action="">
            <img  class="logo" src="images/loginlogo.png" alt="">
            <br>
            <h1 style="color: linear-gradient(top to, green,yellow);">LOGIN PORTAL</h1>
            <p>PORTAL</p>
            
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Selected="True">ADMIN</asp:ListItem>
                <asp:ListItem>STUDENT</asp:ListItem>
            </asp:DropDownList><br><br>
            <asp:TextBox ID="pusername" class="form-control m-input " placeholder="Enter your Username" ForeColor="Black" BackColor="White" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="pusername" runat="server" ForeColor="red" ErrorMessage="Username is required"></asp:RequiredFieldValidator>
            <br>
            <asp:TextBox ID="Ppassword" class="form-control m-input " TextMode="Password" placeholder="Enter your Password" ForeColor="Black" BackColor="White" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="Ppassword" runat="server" ForeColor="Red" ErrorMessage="Password is required"></asp:RequiredFieldValidator>

            <%--<a href="#">Forget Password</a>--%>
          
            <%--<button>LOGIN</button>--%>
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click"/>
        </form>
    </div>
   
        
    </form>
</body>
</html>
