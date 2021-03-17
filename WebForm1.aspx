<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="HigleyDBMSLab9.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Welcome to Rolling Thunder</h1>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="StoreID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="StoreID" HeaderText="StoreID" InsertVisible="False" ReadOnly="True" SortExpression="StoreID" />
                <asp:BoundField DataField="StoreName" HeaderText="StoreName" SortExpression="StoreName" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="ContactFirstName" HeaderText="ContactFirstName" SortExpression="ContactFirstName" />
                <asp:BoundField DataField="ContactLastName" HeaderText="ContactLastName" SortExpression="ContactLastName" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
                <asp:BoundField DataField="CityID" HeaderText="CityID" SortExpression="CityID" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RollingThunderConnectionString %>" DeleteCommand="DELETE FROM [RetailStore] WHERE [StoreID] = @StoreID" InsertCommand="INSERT INTO [RetailStore] ([StoreName], [Phone], [ContactFirstName], [ContactLastName], [Address], [ZipCode], [CityID]) VALUES (@StoreName, @Phone, @ContactFirstName, @ContactLastName, @Address, @ZipCode, @CityID)" SelectCommand="SELECT * FROM [RetailStore]" UpdateCommand="UPDATE [RetailStore] SET [StoreName] = @StoreName, [Phone] = @Phone, [ContactFirstName] = @ContactFirstName, [ContactLastName] = @ContactLastName, [Address] = @Address, [ZipCode] = @ZipCode, [CityID] = @CityID WHERE [StoreID] = @StoreID">
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
    </form>
</body>
</html>
