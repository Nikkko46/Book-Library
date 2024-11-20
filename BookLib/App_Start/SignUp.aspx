<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="BookLib.App_Start.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        #btnReg {
            cursor: pointer;
        }
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
            margin-left: 20%;
            margin-right: 20%;
            padding-bottom: 10px;
        }
        .genders {
            text-align: left;
            margin-left: 0;
        }
    </style>
    <title>Sign Up</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center">
                <tr>
                    <td>Full Name</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" placeholder="Enter your Full Name."></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>
                        <asp:TextBox ID="txtAdd" runat="server" placeholder="Enter your Address."></asp:TextBox></td>
                </tr>
                <tr>
                 <td>Gender</td>
                 <td>
                    <div class="genders">
                        <asp:RadioButton GroupName="user" ID="RadioButton1" runat="server" Text="Male" OnCheckedChanged="RadioButton1_CheckedChanged" Font-Size="13pt" Font-Names="Arial" /> <br />
                        <asp:RadioButton GroupName="user" ID="RadioButton2" runat="server" Text="Female" OnCheckedChanged="RadioButton2_CheckedChanged" Font-Size="13pt" Font-Names="Arial" /> <br /> 
                    </div>
                 </td>
                </tr>
                <tr>
                 <td>Phone Number</td>
                 <td>
                     <asp:TextBox ID="txtPhone" runat="server" placeholder="ex: +40 072 874 3214"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="example@example.com"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td>
                        <asp:TextBox ID="txtUser" runat="server" placeholder="Enter a desired Username."></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="txtPass" runat="server" placeholder="*****" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Confirm Password</td>
                    <td>
                        <asp:TextBox ID="txtConfPass" runat="server" placeholder="Reenter your Password" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td align="right">
                        <asp:Button ID="btnReg" runat="server" Text="Sign Up" BackColor="#3366FF" ForeColor="White" OnClick="btnReg_Click" Height="35px" Width="80px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
    <script type="text/javascript">
    function validatePasswords() {
        var password = document.getElementById('<%= txtPass.ClientID %>').value;
        var confirmPassword = document.getElementById('<%= txtConfPass.ClientID %>').value;

        if (password != confirmPassword) {
            alert("Passwords do not match!");
            return false;
        }
            return true;
    }
    </script>
</body>
</html>
