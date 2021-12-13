<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Portal.aspx.cs" Inherits="LMS.Portal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style1.css">
</head>
<body>
    <form id="form1" runat="server">
      <div class="login">
        <form action="">
            <img  class="logo" src="images/loginlogo.png" alt="">
            <br>
            <h1 style="color: linear-gradient(top to, green,yellow);">LOGIN PORTAL</h1>
            <p>USERNAME</p>
            
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Selected="True">ADMIN</asp:ListItem>
                <asp:ListItem>STUDENT</asp:ListItem>
            </asp:DropDownList><br><br>
            <asp:TextBox ID="pusername" placeholder="Enter your Username" ForeColor="Black" BackColor="White" runat="server"></asp:TextBox>
            
            <br>
            <asp:TextBox ID="Ppassword" TextMode="Password" placeholder="Enter your Password" ForeColor="Black" BackColor="White" runat="server"></asp:TextBox>

            <a href="#">Forget Password</a>
          <br>
            <%--<button>LOGIN</button>--%>
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
        </form>
    </div>
   
        
    </form>
</body>
</html>
