<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<BudgetGuru.Models.BillModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Budget Guru
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Manage your bills here!</h2>
    <%--<%Html.RenderPartial("BillDetails");%>--%>
<form runat="server">
<asp:GridView ID="grdBill" runat="server" AutoGenerateColumns="False" 
    DataSourceID="BudgetGuruDataSource">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" 
            ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
        <asp:BoundField DataField="Description" HeaderText="Description" 
            SortExpression="Description" />
        <asp:BoundField DataField="DueDate" HeaderText="DueDate" 
            SortExpression="DueDate" />
        <asp:BoundField DataField="Amout" HeaderText="Amout" SortExpression="Amout" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="BudgetGuruDataSource" runat="server" 
    ConnectionString="<%$ ConnectionStrings:BudgetGuruConnectionString %>" 
    SelectCommand="SELECT * FROM [Bill_Items]"></asp:SqlDataSource>
    </form>
    <%Html.RenderPartial("Create");%>
</asp:Content>
