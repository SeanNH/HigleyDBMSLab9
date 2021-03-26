<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="HigleyDBMSLab9.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #000000;
        }
        .auto-style2 {
            width: 105px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Welcome to the Bike Components Page</h1>
        <p>
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
        <p>
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ComponentID" DataSourceID="SqlDataSourceBikeComponents" Height="50px" Width="125px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="ComponentID" HeaderText="ComponentID" ReadOnly="True" SortExpression="ComponentID" />
                    <asp:BoundField DataField="ProductNumber" HeaderText="ProductNumber" SortExpression="ProductNumber" />
                    <asp:BoundField DataField="Road" HeaderText="Road" SortExpression="Road" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="ListPrice" HeaderText="ListPrice" SortExpression="ListPrice" DataFormatString="{0:c}" />
                    <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSourceBikeComponents" runat="server" ConnectionString="<%$ ConnectionStrings:RollingThunderConnectionString %>" SelectCommand="SELECT [ComponentID], [ProductNumber], [Road], [Category], [Description], [ListPrice], [Year] FROM [Component] WHERE ([Year] = @Year)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="2012" Name="Year" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="SerialNumber,ComponentID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="SerialNumber" HeaderText="SerialNumber" ReadOnly="True" SortExpression="SerialNumber" />
                    <asp:BoundField DataField="ComponentID" HeaderText="ComponentID" ReadOnly="True" SortExpression="ComponentID" />
                    <asp:BoundField DataField="SubstituteID" HeaderText="SubstituteID" SortExpression="SubstituteID" />
                    <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="DateInstalled" HeaderText="DateInstalled" SortExpression="DateInstalled" />
                    <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" SortExpression="EmployeeID" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="componentInsert" runat="server" Text="Insert" OnClick="componentInsert_Click" />
                </td>
                <td>
                    <asp:TextBox ID="SerialTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="ComponentIDTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="SubstituteTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="LocationTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="QuantityTextbox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="DateInstalledTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="EmployeeIDTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>Serial</td>
                <td>Component ID</td>
                <td>Substitute ID</td>
                <td>Location</td>
                <td>Quantity</td>
                <td>Date Installed</td>
                <td>EmployeeID</td>
            </tr>
            <asp:Label ID="ErrMessage1" runat="server" ForeColor="Red"></asp:Label>
        </table>
        <p>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PurchaseID,ComponentID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="PurchaseID" HeaderText="PurchaseID" ReadOnly="True" SortExpression="PurchaseID" />
                    <asp:BoundField DataField="ComponentID" HeaderText="ComponentID" ReadOnly="True" SortExpression="ComponentID" />
                    <asp:BoundField DataField="PricePaid" HeaderText="PricePaid" SortExpression="PricePaid" DataFormatString="{0:c}" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="QuantityReceived" HeaderText="QuantityReceived" SortExpression="QuantityReceived" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:Label ID="ErrMessage2" runat="server" ForeColor="Red"></asp:Label>
        </p>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Button ID="PurchaseItemInsert" runat="server" OnClick="PurchaseItemInsert_Click" Text="Insert" />
                </td>
                <td>
                    <asp:TextBox ID="purchaseIDtextbox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="componentID_purchaseTextbox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="pricePaidtextbox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="quantity2textbox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="quantityRecTextbox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>Purchase ID</td>
                <td>Component ID</td>
                <td>Price Paid</td>
                <td>Quantity</td>
                <td>Quantity Recieved</td>
            </tr>
    </table>
        <p>
            &nbsp;</p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RollingThunderConnectionString %>" DeleteCommand="DELETE FROM [PurchaseItem] WHERE [PurchaseID] = @PurchaseID AND [ComponentID] = @ComponentID" InsertCommand="INSERT INTO [PurchaseItem] ([PurchaseID], [ComponentID], [PricePaid], [Quantity], [QuantityReceived]) VALUES (@PurchaseID, @ComponentID, @PricePaid, @Quantity, @QuantityReceived)" SelectCommand="SELECT [PurchaseID], [ComponentID], [PricePaid], [Quantity], [QuantityReceived] FROM [PurchaseItem] WHERE ([ComponentID] = @ComponentID)" UpdateCommand="UPDATE [PurchaseItem] SET [PricePaid] = @PricePaid, [Quantity] = @Quantity, [QuantityReceived] = @QuantityReceived WHERE [PurchaseID] = @PurchaseID AND [ComponentID] = @ComponentID">
                <DeleteParameters>
                    <asp:Parameter Name="PurchaseID" Type="Int32" />
                    <asp:Parameter Name="ComponentID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PurchaseID" Type="Int32" />
                    <asp:Parameter Name="ComponentID" Type="Int32" />
                    <asp:Parameter Name="PricePaid" Type="Decimal" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="QuantityReceived" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DetailsView1" Name="ComponentID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PricePaid" Type="Decimal" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="QuantityReceived" Type="Int32" />
                    <asp:Parameter Name="PurchaseID" Type="Int32" />
                    <asp:Parameter Name="ComponentID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RollingThunderConnectionString %>" DeleteCommand="DELETE FROM [BikeParts] WHERE [SerialNumber] = @SerialNumber AND [ComponentID] = @ComponentID" InsertCommand="INSERT INTO [BikeParts] ([SerialNumber], [ComponentID], [SubstituteID], [Location], [Quantity], [DateInstalled], [EmployeeID]) VALUES (@SerialNumber, @ComponentID, @SubstituteID, @Location, @Quantity, @DateInstalled, @EmployeeID)" SelectCommand="SELECT [SerialNumber], [ComponentID], [SubstituteID], [Location], [Quantity], [DateInstalled], [EmployeeID] FROM [BikeParts] WHERE ([ComponentID] = @ComponentID)" UpdateCommand="UPDATE [BikeParts] SET [SubstituteID] = @SubstituteID, [Location] = @Location, [Quantity] = @Quantity, [DateInstalled] = @DateInstalled, [EmployeeID] = @EmployeeID WHERE [SerialNumber] = @SerialNumber AND [ComponentID] = @ComponentID">
            <DeleteParameters>
                <asp:Parameter Name="SerialNumber" Type="Int32" />
                <asp:Parameter Name="ComponentID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SerialNumber" Type="Int32" />
                <asp:Parameter Name="ComponentID" Type="Int32" />
                <asp:Parameter Name="SubstituteID" Type="Int32" />
                <asp:Parameter Name="Location" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="DateInstalled" Type="DateTime" />
                <asp:Parameter Name="EmployeeID" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DetailsView1" Name="ComponentID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="SubstituteID" Type="Int32" />
                <asp:Parameter Name="Location" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="DateInstalled" Type="DateTime" />
                <asp:Parameter Name="EmployeeID" Type="Int32" />
                <asp:Parameter Name="SerialNumber" Type="Int32" />
                <asp:Parameter Name="ComponentID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
