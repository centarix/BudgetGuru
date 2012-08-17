<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<BudgetGuru.Models.BillModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	EditBill
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>EditBill</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Fields</legend>
            
<%--            <div class="editor-label">
                <%: Html.LabelFor(model => model.billId) %>
            </div>--%>
<%--            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.billId) %>
                <%: Html.ValidationMessageFor(model => model.billId) %>
            </div>--%>
            
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
                <%: Html.LabelFor(model => model.billDue) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.billDue) %>
                <%: Html.ValidationMessageFor(model => model.billDue) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.billAmt) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.billAmt, String.Format("{0:F}", Model.billAmt)) %>
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

