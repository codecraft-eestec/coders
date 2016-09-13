<%@ Page Theme="teme" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="width:80%" class="center-block">
    <form id="form1" runat="server">
    <div>
     <nav class="navbar navbar-default">
            <div class="container-fluid">
                <a class="navbar-brand " href="#" >
                    Login here
                </a>
            </div>
            <ul class="nav navbar-nav" >
                <li ><a href="Home.aspx" >Home</a></li>
                <li class="active"><a href=""> Login</a></li>
                <li><a href="Register.aspx"> Register</a></li>
            </ul>
        </nav>
      <center>
            <div class="center-block" > 


            <asp:Label ID="Label1" runat="server" Text="Email:" Width="60px" ></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" ></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server">Forget password?</asp:HyperLink>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />


        </div>
      </center>
    </div>
    </form>
</body>
</html>
