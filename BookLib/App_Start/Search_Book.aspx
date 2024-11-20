<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search_Book.aspx.cs" Inherits="BookLib.App_Start.Search_Book" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
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
        <asp:LinkButton ID="Home_Button" runat="server" Style="z-index: 1; left: -15px; top: -1px; position: absolute; font-weight: 700; color: #000066; height: 100px; width: 130px; font-size: 35px;" OnClick="Home_Button_Click">Home</asp:LinkButton>
    <div style="height: 631px">
    
        <table align="center" class="style1">
            <tr>
                <td class="style2">
                    Search Book</td>
            </tr>
            <tr>
                <td class="style3">
                    <table class="style5">
                        <tr>
                            <td class="style6">
                                Select Book<asp:DropDownList ID="DropDownSelectBook" runat="server" 
                                    style="z-index: 1; left: 102px; top: 9px; position: absolute; right: 611px" 
                                    Width="180px">
                                    <asp:ListItem>Search By</asp:ListItem>
                                    <asp:ListItem>Book Name</asp:ListItem>
                                    <asp:ListItem>Author</asp:ListItem>
                                    <asp:ListItem>Category</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="style7">
                                Select Book Name<asp:DropDownList 
                                    ID="DropDownSelectBook1" runat="server" 
                                    style="z-index: 1; left: 462px; top: 7px; position: absolute; right: 252px" 
                                    Width="180px" DataSourceID="SqlDataSourceDropDown" 
                                    DataTextField="Book_Name" DataValueField="Book_Name">
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:Button ID="ButtonSearchBook" runat="server" 
                                    onclick="ButtonSearchBook_Click" 
                                    style="z-index: 1; left: 735px; top: 7px; position: absolute; height: 25px; right: 58px; background-color: #99CCFF" 
                                    Text="Search" Width="101px" />
                            </td>
                        </tr>
                    </table>
                    <table align="right" class="style8">
                        <tr>
                            <td>
                                <asp:SqlDataSource ID="SqlDataSourceGridView" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
                                    OnSelecting="SqlDataSourceGridView_Selecting" 
                                    SelectCommand="SELECT * FROM [books] WHERE ([Book_Name] = @Book_Name)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownSelectBook1" Name="Book_Name" 
                                            PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSourceDropDown" runat="server"
                                    ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>"
                                    SelectCommand="SELECT DISTINCT [Book_Name] FROM [books]" OnSelecting="SqlDataSourceDropDown_Selecting"></asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
                    <asp:GridView ID="GridViewBook" runat="server" AllowPaging="True"
                        AutoGenerateColumns="False" BackColor="White" BorderColor="#999999"
                        BorderStyle="None" BorderWidth="1px" CellPadding="3"
                        DataSourceID="SqlDataSourceGridView" GridLines="Vertical"
                        Style="z-index: 1; left: 203px; top: 174px; position: absolute; height: 100px; width: 803px; right: 269px"
                        Visible="False" DataKeyNames="No" OnSelectedIndexChanged="GridViewBook_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="No" HeaderText="No." 
                                SortExpression="No" ReadOnly="True" />
                            <asp:BoundField DataField="Book_Name" HeaderText="Book_Name" 
                                SortExpression="Book_Name" />
                            <asp:BoundField DataField="Author" HeaderText="Author" 
                                SortExpression="Author" />
                            <asp:BoundField DataField="Publisher" HeaderText="Publisher" 
                                SortExpression="Publisher" />
                            <asp:BoundField DataField="Category" HeaderText="Category" 
                                SortExpression="Category" />
                            <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="style4">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
