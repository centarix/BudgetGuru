<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<BudgetGuru.Models.BillModel>" %>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Add a new bill</legend>
            
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
                <%: Html.LabelFor(model => model.billDue)%>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.billDue) %>
                <%: Html.ValidationMessageFor(model => model.billDue) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.billAmt) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.billAmt) %>
                <%: Html.ValidationMessageFor(model => model.billAmt) %>
            </div>
            
            <p>
                <input type="submit" value="Create" onclick="sign();"/>
            </p>
        </fieldset>

        <script type="text/javascript">
            function sign() {
            //Todo: Add web service call to update database with model
                alert('Saved Bill');
                
            }
        </script>

    <% } %>

<%--    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>--%>


