
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Library.aspx.cs" Inherits="BookLib.App_Start.Library" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Home</title>
    <style>
        * {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .tabs {
            background-color: #f8f9fa;
            padding: 1rem;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        .tab_nav {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 1rem;
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .tab_nav a {
            text-decoration: none !important;
            padding: 0.5rem 1.5rem !important;
            border-radius: 5px !important;
            transition: all 0.3s ease;
            display: inline-flex !important;
            align-items: center;
            justify-content: center;
            min-width: 120px;
            height: 40px !important;
            font-size: 0.9rem;
            border: none !important;
        }

        .tab_nav a:hover {
            opacity: 0.9;
            transform: translateY(-1px);
        }

        #content {
            text-align: center;
            margin-top: 5rem;
            padding: 2rem;
        }

        .description {
            font-size: 1.5rem;
            color: #333;
            margin-bottom: 1rem;
        }

        .smallNote {
            font-size: 1.2rem;
            color: #666;
            margin-bottom: 2rem;
        }

        .title {
            font-size: 1.8rem;
            color: #333;
            margin-bottom: 1rem;
        }

        table {
            margin: 0 auto;
            border-collapse: collapse;
        }

        td {
            padding: 1rem;
            border: 1px solid #ddd;
        }

        #Logout {
            background-color: #FA4343 !important;
            color: white;
        }

        #Search, #Add_Book, #Library_Manager, #Dashboard {
            background-color: #3366FF !important;
            color: white;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
</head>
<body> 
    <form id="form1" runat="server">
        <div class="tabs">
            <ul class="tab_nav">
                <asp:LinkButton ID="Search" runat="server" OnClick="Search_Click" CssClass="nav-button">Search Books</asp:LinkButton>
                <asp:LinkButton ID="Add_Book" runat="server" OnClick="Add_Book_Click" CssClass="nav-button">Add a Book</asp:LinkButton>
                <asp:LinkButton ID="Library_Manager" runat="server" OnClick="Library_Manager_Click" CssClass="nav-button">Library Manager</asp:LinkButton>
                <asp:LinkButton ID="Dashboard" runat="server" OnClick="Dashboard_Click" CssClass="nav-button">Your Dashboard</asp:LinkButton>
                <asp:LinkButton ID="Logout" runat="server" OnClick="Logout_Click" CssClass="nav-button">Logout</asp:LinkButton>
            </ul>
        </div>
        <div id="content">
            <p class="description">Books are a uniquely portable magic.</p>
            <p class="description">Library Management System</p>
            <p class="smallNote"><b>Enter into the world of learning...enjoy reading!</b></p>
            <asp:Panel ID="Panel" runat="server" Height="500px">
                <b>
                    <p class="title">Rules of Registration:</p></b>
                    <p class="description">Register and benefit from the LSM.</p>
                <table style="width:450px;">
                    <tr>
                        <td>
                            Registration Charge is totally free!
                        </td>
                        <td> This is only a test application!</td>
                    </tr>
                </table>
            </asp:Panel>
        </div>  
    </form>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
