<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="HigleyDBMSLab9.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Welcome to Rolling Thunder</h1>
    <form id="form1" runat="server">
        <p></p>
        <asp:Menu ID="Menu2" runat="server" BackColor="#FFFBD6" DataSourceID="SiteMapDataSource1" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" StaticDisplayLevels="2" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#FFFBD6" />
            <DynamicSelectedStyle BackColor="#FFCC66" />
            <StaticHoverStyle BackColor="#990000" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#FFCC66" />
        </asp:Menu>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1">
        </asp:Menu>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <div>
        </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="StoreID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="125px" OnPageIndexChanging="DetailsView1_PageIndexChanging1">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="StoreID" HeaderText="StoreID" InsertVisible="False" ReadOnly="True" SortExpression="StoreID" />
                <asp:BoundField DataField="StoreName" HeaderText="StoreName" SortExpression="StoreName" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="ContactFirstName" HeaderText="ContactFirstName" SortExpression="ContactFirstName" />
                <asp:BoundField DataField="ContactLastName" HeaderText="ContactLastName" SortExpression="ContactLastName" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
                <asp:TemplateField HeaderText="CityID" SortExpression="CityID">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="cityinfo2" DataValueField="CityID" SelectedValue='<%# Bind("CityID") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CityID") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="cityinfo2" DataValueField="CityID" SelectedValue='<%# Bind("CityID") %>'>
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RollingThunderConnectionString %>" DeleteCommand="DELETE FROM [RetailStore] WHERE [StoreID] = @StoreID" InsertCommand="INSERT INTO [RetailStore] ([StoreName], [Phone], [ContactFirstName], [ContactLastName], [Address], [ZipCode], [CityID]) VALUES (@StoreName, @Phone, @ContactFirstName, @ContactLastName, @Address, @ZipCode, @CityID)" SelectCommand="SELECT RetailStore.StoreID, RetailStore.StoreName, RetailStore.Phone, RetailStore.ContactFirstName, RetailStore.ContactLastName, RetailStore.Address, RetailStore.ZipCode, RetailStore.CityID, City.CityID AS Expr2, City.City + ' ' + City.State + ', ' + City.Country AS cityInfo FROM RetailStore INNER JOIN City ON RetailStore.CityID = City.CityID" UpdateCommand="UPDATE [RetailStore] SET [StoreName] = @StoreName, [Phone] = @Phone, [ContactFirstName] = @ContactFirstName, [ContactLastName] = @ContactLastName, [Address] = @Address, [ZipCode] = @ZipCode, [CityID] = @CityID WHERE [StoreID] = @StoreID">
            <DeleteParameters>
                <asp:Parameter Name="StoreID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="StoreName" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="ContactFirstName" Type="String" />
                <asp:Parameter Name="ContactLastName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="ZipCode" Type="String" />
                <asp:Parameter Name="CityID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="StoreName" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="ContactFirstName" Type="String" />
                <asp:Parameter Name="ContactLastName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="ZipCode" Type="String" />
                <asp:Parameter Name="CityID" Type="Int32" />
                <asp:Parameter Name="StoreID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RollingThunderConnectionString %>" SelectCommand="SELECT [CityID], [City] + ' ' + [State] + ' ' + [Country] AS cityinfo2 FROM [City] "></asp:SqlDataSource>
    </form>
</body>
</html>
