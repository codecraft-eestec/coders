<%@ Page Theme="teme" Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication1.Register" %>

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
                    Register Here
                </a>
            </div>
            <ul class="nav navbar-nav" >
                <li><a href="Home.aspx" >Home</a></li>
                <li><a href="Login.aspx"> Login</a></li>
                <li class="active"><a href=""> Register</a></li>
            </ul>
        </nav>
    </div>
        <center>
            <div>

                <asp:Label ID="Label1" runat="server" Text="Email" Width="60px"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Password" Width="60px"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Conf pass"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:RadioButton ID="User" runat="server" AutoPostBack="True" OnCheckedChanged="User_CheckedChanged" Text="User" />
                <asp:RadioButton ID="Client" runat="server" AutoPostBack="True" OnCheckedChanged="Client_CheckedChanged" Text="Client" />
                <br />
                <br />
                <asp:MultiView ID="MultiView1" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged">
                    <asp:View ID="View2" runat="server">

                        <asp:Label ID="Label5" runat="server" Text="prvi"></asp:Label>

                    </asp:View>
                    <asp:View ID="View1" runat="server">
                        <asp:Label ID="Label6" runat="server" Text="drugi"></asp:Label>
                    </asp:View>
                </asp:MultiView>

            </div>
        </center>
    </form>
</body>
</html>
