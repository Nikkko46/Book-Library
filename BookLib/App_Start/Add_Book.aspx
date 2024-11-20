<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_Book.aspx.cs" Inherits="BookLib.App_Start.Add_Book" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <asp:LinkButton ID="Home_Button" runat="server" Style="z-index: 1; left: 15px; top: -1px; position: absolute; font-weight: 700; color: #000066; height: 100px; width: 130px; font-size: 35px;" OnClick="Home_Button_Click">Home</asp:LinkButton>
    <table align="center" class="style1" style="height: 401px">
        <tr>
            <td class="style3">
                <table class="style4" 
                    
                    style="height: 305px; width: 284px; z-index: 1; left: 274px; top: 253px; position: absolute">
                    <tr>
                        <td class="style5">
                            Book Name:</td>
                        <td class="style8">
                            <asp:TextBox ID="TextBoxAddBook" runat="server" Width="180px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBoxAddBook" ErrorMessage="This field is required" 
                                ForeColor="Red" 
                                style="z-index: 1; left: 291px; top: 17px; position: absolute; width: 161px; height: 19px"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            Author:</td>
                        <td class="style8">
                            <asp:TextBox ID="TextBoxAuthor" runat="server" Width="180px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextBoxAuthor" ErrorMessage="This field is required" 
                                ForeColor="Red" 
                                style="z-index: 1; left: 290px; top: 53px; position: absolute; height: 24px; width: 170px"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            Publisher:</td>
                        <td class="style8">
                            <asp:TextBox ID="TextBoxPublisher" runat="server" Width="180px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="TextBoxPublisher" ErrorMessage="This field is required" 
                                ForeColor="Red" 
                                style="z-index: 1; left: 291px; top: 94px; position: absolute; width: 191px; height: 19px"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                             No. :</td>
                        <td class="style8">
                            <asp:TextBox ID="TextBoxNo" runat="server" Width="180px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="TextBoxNo" ErrorMessage="This field is required" 
                                ForeColor="Red" 
                                style="z-index: 1; left: 292px; top: 136px; position: absolute; width: 150px; height: 19px"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            Category:</td>
                        <td class="style8">
                            <asp:DropDownList ID="DropDownListCategory" runat="server" Width="180px">
                                <asp:ListItem>Select Category</asp:ListItem>
                                <asp:ListItem>novel</asp:ListItem>
                                <asp:ListItem>biography</asp:ListItem>
                                <asp:ListItem>Language</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="DropDownListCategory" ErrorMessage="This field is required" 
                                ForeColor="Red" InitialValue="Select Category" 
                                style="z-index: 1; left: 292px; top: 174px; position: absolute; height: 24px; width: 146px" 
                                Width="150px"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            Stock:</td>
                        <td class="style8">
                            <asp:TextBox ID="TextBoxStock" runat="server" Width="180px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="TextBoxStock" ErrorMessage="This field is required" 
                                ForeColor="Red" 
                                style="z-index: 1; left: 292px; top: 220px; position: absolute; width: 139px" 
                                Width="150px"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                        </td>
                        <td class="style7">
                            <asp:Button ID="ButtonAdd_book" runat="server" BackColor="#99CCFF" 
                                ForeColor="Black" Height="32px" onclick="ButtonAdd_book_Click" Text="Add" 
                                Width="93px" />
                            <input id="Reset1" style="background-color: #99CCFF; height: 32px; right: 33px; z-index: 1; left: 208px; top: 259px; position: absolute;" 
                                type="reset" value="reset" /></td>
                    </tr>
                </table>
                <div style="width: 225px; z-index: 1; left: 835px; top: 263px; position: absolute; height: 233px">
                </div>
                <div class="style12" 
                    style="width: 162px; z-index: 1; left: 596px; top: 182px; position: absolute; height: 40px">
                    <strong>Add Books</strong></div>
            </td>
        </tr>
        </table>
    </form>
</body>
</html>
