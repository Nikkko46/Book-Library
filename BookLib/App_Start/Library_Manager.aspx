<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Library_Manager.aspx.cs" Inherits="BookLib.App_Start.Library_Manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
        <form id="form1" runat="server">
            <asp:LinkButton ID="Home_Button" runat="server" Style="z-index: 1; left: 15px; top: -1px; position: absolute; font-weight: 700; color: #000066; height: 100px; width: 130px; font-size: 35px;" OnClick="Home_Button_Click">Home</asp:LinkButton>
    <table align="center" class="style1" style="height: 411px">
            <tr>
                <td class="style20" valign="top">
                    <table class="style9" 
                        style="width: 888px; height: 32px; z-index: 1; left: 1px; top: 56px; position: relative; background-color: #FFFFCC">
                        <tr>
                            <td class="style16">
                                Select Book</td>
                            <td class="style15">
                                <asp:DropDownList ID="DropDownList1" runat="server" Width="180px" 
                                    onselectedindexchanged="DropDownList1_SelectedIndexChanged1" 
                                    style="z-index: 1; left: 7px; top: 0px; position: relative; height: 22px">
                                    <asp:ListItem>Search By</asp:ListItem>
                                    <asp:ListItem>Book_Name</asp:ListItem>
                                    <asp:ListItem>Author</asp:ListItem>
                                    <asp:ListItem>Category</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="style17">
                                <asp:DropDownList ID="DropDownList2" runat="server"
                                    DataSourceID="SqlDataSource3" DataTextField="Book_Name"
                                    DataValueField="Book_Name"
                                    Style="z-index: 1; left: 422px; top: 8px; position: absolute; height: 22px; right: 286px"
                                    Width="180px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                                </asp:DropDownList>
                                Select Book Name</td>
                            <td class="style18">
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                    style="z-index: 1; top: -1px; position: relative; width: 111px; height: 25px; left: -60px; bottom: -24px; right: -51px; background-color: #99CCFF" 
                                    Text="Search" />
                                <div style="width: 104px; z-index: 1; left: 762px; top: 8px; position: absolute; height: 19px">
                                    <asp:LinkButton ID="LinkButtonAllBook" runat="server" 
                                        onclick="LinkButton1_Click" 
                                        
                                        style="z-index: 1; left: 15px; top: -1px; position: absolute; font-weight: 700; color: #000066; height: 20px; width: 67px;">All-Book</asp:LinkButton>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <table align="right" class="style12" 
                        style="z-index: 1; left: 878px; top: 419px; position: absolute">
                        <tr>
                            <td class="style13">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                    ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>"
                                    DeleteCommand="DELETE FROM [books] WHERE [No] = @No"
                                    InsertCommand="INSERT INTO [books] ([No], [Book_Name], [Author], [Publisher], [Category], [Stock]) VALUES (@No, @Book_Name, @Author, @Publisher, @Category, @Stock)"
                                    SelectCommand="SELECT * FROM [books] WHERE ([Book_Name] = @Book_Name)"
                                    UpdateCommand="UPDATE [books] SET [Book_Name] = @Book_Name, [Author] = @Author, [Publisher] = @Publisher, [Category] = @Category, [Stock] = @Stock WHERE [No] = @No" OnSelecting="SqlDataSource1_Selecting">
                                    <DeleteParameters>
                                        <asp:Parameter Name="No" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="No" Type="Int32" />
                                        <asp:Parameter Name="Book_Name" Type="String" />
                                        <asp:Parameter Name="Author" Type="String" />
                                        <asp:Parameter Name="Publisher" Type="String" />
                                        <asp:Parameter Name="Category" Type="String" />
                                        <asp:Parameter Name="Stock" Type="Int32" />
                                    </InsertParameters>
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList2" Name="Book_Name" 
                                            PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="Book_Name" Type="String" />
                                        <asp:Parameter Name="Author" Type="String" />
                                        <asp:Parameter Name="Publisher" Type="String" />
                                        <asp:Parameter Name="Category" Type="String" />
                                        <asp:Parameter Name="Stock" Type="Int32" />
                                        <asp:Parameter Name="No" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [Book_Name] FROM [books]"></asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
                    <div class="style21" 
                        style="width: 194px; height: 40px; z-index: 1; left: 572px; top: 183px; position: absolute; right: 529px">
                        <strong><span class="style22">Manage Book</span></strong></div>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoPostBack="true"
                        AutoGenerateColumns="False" CellPadding="3" DataKeyNames="No" 
                        DataSourceID="SqlDataSource1" GridLines="Vertical" 
                        OnSelectedIndexChanged="GridView1_SelectedIndexChanged" 
                        style="z-index: 1; left: 8px; top: 61px; position: relative; height: 100px; width: 853px" 
                        Visible="False" BackColor="White" BorderColor="#999999" BorderStyle="None" 
                        BorderWidth="1px">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="No" HeaderText="No." ReadOnly="True" 
                                SortExpression="No" />
                            <asp:BoundField DataField="Book_Name" HeaderText="Book_Name" 
                                SortExpression="Book_Name" />
                            <asp:BoundField DataField="Author" HeaderText="Author" 
                                SortExpression="Author" />
                            <asp:BoundField DataField="Publisher" HeaderText="Publisher" 
                                SortExpression="Publisher" />
                            <asp:TemplateField HeaderText="Category" SortExpression="Category">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList3" runat="server" 
                                        DataSourceID="SqlDataSource4" DataTextField="Category" 
                                        DataValueField="Category" SelectedValue='<%# Bind("Category") %>' Width="100px">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
                                        SelectCommand="SELECT DISTINCT [Category] FROM [books]"></asp:SqlDataSource>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Category") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                        </Columns>
                        <EmptyDataTemplate>
                            Data Deleted Successfully.
                        </EmptyDataTemplate>
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
            </table>
    </form>
</body>
</html>
