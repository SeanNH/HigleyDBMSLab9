<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="HigleyDBMSLab9.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome to the Query Page</h1>
        </div>
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
        <br />
        <br />
        Highest Payed Employee<asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="EmployeeID" DataSourceID="SqlDataSource2" ForeColor="#333333">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <ItemTemplate>
                EmployeeID:
                <asp:Label ID="EmployeeIDLabel" runat="server" Text='<%# Eval("EmployeeID") %>' />
                <br />
                EmpName:
                <asp:Label ID="EmpNameLabel" runat="server" Text='<%# Eval("EmpName") %>' />
                <br />
                Salary:
                <asp:Label ID="SalaryLabel" runat="server" Text='<%# Eval("Salary") %>' />
                <br />
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RollingThunderConnectionString %>" SelectCommand="Select top 1 Employee.EmployeeID, Employee.FirstName + ' ' + Employee.LastName as EmpName, Employee.Salary
from Employee
order by Employee.Salary desc"></asp:SqlDataSource>
        <br />
        Total Sales of Bicycles per Model Type in 2010<asp:DataList ID="DataList2" runat="server" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <ItemTemplate>
                BikesSold:
                <asp:Label ID="BikesSoldLabel" runat="server" Text='<%# Eval("BikesSold") %>' />
                <br />
                ModelType:
                <asp:Label ID="ModelTypeLabel" runat="server" Text='<%# Eval("ModelType") %>' />
                <br />
                sumSalePrice:
                <asp:Label ID="sumSalePriceLabel" runat="server" Text='<%# Eval("sumSalePrice") %>' />
                <br />
                sumListPrice:
                <asp:Label ID="sumListPriceLabel" runat="server" Text='<%# Eval("sumListPrice") %>' />
<br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RollingThunderConnectionString %>" SelectCommand="Select COUNT(Bicycle.SerialNumber) BikesSold, Bicycle.ModelType, sum(Bicycle.SalePrice) as sumSalePrice, sum(Bicycle.ListPrice) as sumListPrice
from Bicycle
where Bicycle.OrderDate like '%2010%'
group by Bicycle.ModelType
order by sumListPrice desc"></asp:SqlDataSource>
        <br />
        Most Popular Bicycle Colorname Sold in March 2007<asp:DataList ID="DataList3" runat="server" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <ItemTemplate>
                BikesSold:
                <asp:Label ID="BikesSoldLabel" runat="server" Text='<%# Eval("BikesSold") %>' />
                <br />
                ColorName:
                <asp:Label ID="ColorNameLabel" runat="server" Text='<%# Eval("ColorName") %>' />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        </asp:DataList>
        <br />
        Supplier/Manufacturer we owe the most money to:<asp:DataList ID="DataList4" runat="server" CellPadding="4" DataSourceID="SqlDataSource5" ForeColor="#333333">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <ItemTemplate>
                ManufacturerName:
                <asp:Label ID="ManufacturerNameLabel" runat="server" Text='<%# Eval("ManufacturerName") %>' />
                <br />
                BalanceDue:
                <asp:Label ID="BalanceDueLabel" runat="server" Text='<%# Eval("BalanceDue") %>' />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:RollingThunderConnectionString %>" SelectCommand="select top 1 Manufacturer.ManufacturerName, Manufacturer.BalanceDue
from Manufacturer
order by Manufacturer.BalanceDue desc"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:RollingThunderConnectionString %>" SelectCommand="Select top 1 COUNT(Bicycle.SerialNumber) BikesSold, Paint.ColorName
from Paint
INNER JOIN [Bicycle]  ON [Paint].[PaintID] = [Bicycle].[PaintID] 
where Bicycle.OrderDate between '2007-03-01' and '2007-03-31'
group by Paint.ColorName
order by BikesSold DESC"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RollingThunderConnectionString %>" SelectCommand="SELECT EmployeeID, FirstName + ' ' + LastName AS EmpName, Salary FROM Employee ORDER BY Salary DESC"></asp:SqlDataSource>
        <br />
    </form>
</body>
</html>
