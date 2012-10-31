<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<BudgetGuru.Models.BillModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	AddBill
</asp:Content>

<asp:Content ID="HeadContent" ContentPlaceHolderID="Head" runat="server">
    <script type="text/javascript">
        $(function () {
            $("#datepicker").datepicker();
        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

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
                <%: Html.LabelFor(model => model.datepicker)%>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.datepicker)%>
                <%: Html.ValidationMessageFor(model => model.datepicker)%>
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
    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

