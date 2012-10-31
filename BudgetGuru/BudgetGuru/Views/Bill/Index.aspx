<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<BudgetGuru.Models.BillModel>" %>

<script runat="server">

    protected void grdBill_DataBound(object sender, EventArgs e)
    {

    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Budget Guru
</asp:Content>

<asp:Content ID="HeadContent" ContentPlaceHolderID="Head" runat="server">
    <link href="~../../Content/css/managebills.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="~../../Scripts/jquery-1.8.0.min.js"></script> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Manage your bills here!</h2>
    <%--<%Html.RenderPartial("BillDetails");%>--%>
   
<form runat="server">
<div>
<asp:GridView ID="grdBill" runat="server" AutoGenerateColumns="False" 
    DataSourceID="BudgetGuruDataSource" ondatabound="grdBill_DataBound" 
        ShowFooter="True">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" 
            ReadOnly="True" SortExpression="Id" Visible="False" />
        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
        <asp:BoundField DataField="Description" HeaderText="Description" 
            SortExpression="Description" />
        <asp:BoundField DataField="DueDate" HeaderText="DueDate" 
            SortExpression="DueDate" />
        <asp:BoundField DataField="Amout" HeaderText="Amount" SortExpression="Amout" />
         <asp:HyperLinkField 
            Text="Edit" DataNavigateUrlFields="Id" 
            DataNavigateUrlFormatString="~/Bill/Edit?id={0}" />
         <asp:HyperLinkField 
            Text="Delete" DataNavigateUrlFields="Id" 
            DataNavigateUrlFormatString="~/Bill/Delete?id={0}" />
    </Columns>
</asp:GridView>

<div id="billGrid" />
</div>
<asp:SqlDataSource ID="BudgetGuruDataSource" runat="server" 
    ConnectionString="<%$ ConnectionStrings:BudgetGuruConnectionString %>" 
    SelectCommand="SELECT * FROM [Bill_Items]"></asp:SqlDataSource>
    </form>
    <div class="addLabel"><div style="margin: 5px 0 0 24px;"><%:Html.ActionLink("Add a new bill", "AddBill")%></div></div>
</asp:Content>
