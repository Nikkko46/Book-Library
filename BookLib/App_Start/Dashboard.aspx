<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="BookLib.App_Start.Dashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Dashboard</title>
    <style>
         #displayName {
             padding-top: 5%;
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
             border: none;
             margin-left: 20%;
             margin-right: 20%;
             padding-bottom: 10px;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:LinkButton ID="Home_Button" runat="server" Style="z-index: 1; left: 15px; top: -1px; position: absolute; font-weight: 700; color: #000066; height: 100px; width: 130px; font-size: 35px;" OnClick="Home_Button_Click">Home</asp:LinkButton>
   <h1>Welcome to your dashboard, <span id="displayName" runat="server"></span> <asp:Label ID="Name" runat="server" ReadOnly="true" BorderStyle="None" Height="30px" Style="vertical-align: baseline"></asp:Label>!</h1>
    <p>Username: <span id="displayUser" runat="server"></span>
        <asp:Label ID="User" runat="server" ReadOnly="true" BorderStyle="None"></asp:Label></p>
    <p>Email: <span id="displayEmail" runat="server"></span> <asp:Label ID="Email" runat="server" ReadOnly="true" BorderStyle="None"></asp:Label></p>
    <p>Address: <span id="displayAdd" runat="server"></span>  <asp:Label ID="Add" runat="server" ReadOnly="true" BorderStyle="None"></asp:Label></p>
    <p>Phone: <span id="displayPhone" runat="server"></span> <asp:Label ID="Phone" runat="server" ReadOnly="true" BorderStyle="None"></asp:Label> </p>
    <asp:LinkButton ID="logout" runat="server" OnClick="Logout_Click">Logout</asp:LinkButton>
        </form>
</body>
</html>
