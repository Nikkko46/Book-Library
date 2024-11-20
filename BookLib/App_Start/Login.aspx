
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BookLib.App_Start.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style>
    body {
        text-align: center;
        margin-top: 10rem;
        font-size: 1.5rem;
    }
    div {
        padding: 8px;
    }
    form {
        border: solid;
        margin-left: 30%;
        margin-right: 30%;
        padding-bottom: 10px;
    }
    .checkbox {
        margin-left: 16%;
    }
    #Button1, #Button2 {
        cursor: pointer;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Login or Create an Account" ForeColor="#CC3399"></asp:Label>
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="25px"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="25px"></asp:TextBox>
        </div>
        <input class="checkbox" type="checkbox" onchange="document.getElementById('TextBox2').type=this.checked ? 'text' : 'password'" />Show Password
        <div>
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" ForeColor="White" BackColor="#33CC33" Height="30px" Width="80px" />
            <asp:Button ID="Button2" runat="server" Text="Sign Up" OnClick="Button2_Click" ForeColor="White" BackColor="#3366FF" Height="30px" Width="80px"/>
        </div>
    </form>
</body>
</html>
