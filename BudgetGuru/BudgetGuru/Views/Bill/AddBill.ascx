<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<BudgetGuru.Models.BillModel>" %>

    <% using (Html.BeginForm())
       {%>
        <%: Html.ValidationSummary(true)%>

        <fieldset>
            <legend>Add a new bill</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.billTitle)%>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.billTitle)%>
                <%: Html.ValidationMessageFor(model => model.billTitle)%>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.billDescription)%>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.billDescription)%>
                <%: Html.ValidationMessageFor(model => model.billDescription)%>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.billDue)%>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.billDue)%>
                <%: Html.ValidationMessageFor(model => model.billDue)%>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.billAmt)%>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.billAmt)%>
                <%: Html.ValidationMessageFor(model => model.billAmt)%>
            </div>
        </fieldset>
        <p>
            <input type="submit" value="AddBill" />
            </p>
        <script type="text/javascript">
            function sign() {
                //Todo: Add web service call to update database with model
                alert('Saved Bill');
                //$('#myForm').submit(function () {
                //                    $.ajax({
                //                        url: this.action,
                //                        type: this.method,
                //                        data: $(this).serialize(),
                //                        success: function (result) {
                //                            alert('success');
                //                        }
                //                    });
                return false;
                //});
            }
        </script>
     <%} %>
<%--    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>--%>


