<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<BudgetGuru.Models.BillModel>" %>
<asp:Content ID="HeadContent" ContentPlaceHolderID="Head" runat="server">
    <link href="../../Content/css/managebills.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../../Scripts/manageBills.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#datepicker").datepicker();
        });
    </script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Edit</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label" style="visibility: hidden">
                <%: Html.LabelFor(model => model.billId) %>
            </div>
            <div class="editor-field" style="visibility: hidden">
                <%: Html.TextBoxFor(model => model.billId) %>
                <%: Html.ValidationMessageFor(model => model.billId) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.billTitle) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.billTitle) %>
                <%: Html.ValidationMessageFor(model => model.billTitle) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.billDescription) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.billDescription) %>
                <%: Html.ValidationMessageFor(model => model.billDescription) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.datepicker) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.datepicker) %>
                <%--<input type="text" id="datepicker" />--%>
<%--                <%: Html.ValidationMessageFor(model => model.billDue, new { id = "datepicker" })%>
                <%=this.IdFor(x => x.LastName)%>--%>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.billAmt) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.billAmt) %>
                <%: Html.ValidationMessageFor(model => model.billAmt) %>
            </div>
            
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

