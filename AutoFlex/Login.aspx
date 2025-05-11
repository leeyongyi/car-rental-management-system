<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AutoFlex.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center">
        <div class="card">
            <div class="card-body">
                <h2 class="card-title">Welcome back, nice to see you again.</h2>
                <br>
                <p class="card-text">Hit the road in style – rent your dream car today!</p>
                <br>
                <asp:Panel ID="Fail" runat="server" Visible="false">
                    <div class="alert alert-dismissible alert-danger">
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                        <asp:Label ID="LblFail" runat="server"></asp:Label>
                    </div>
                </asp:Panel>
                <p class="card-text">&nbsp;</p>
                <asp:ValidationSummary ID="VSLogin" runat="server" DisplayMode="List" ForeColor="Red" />
                <div class="form-floating mb-3">
                    <asp:TextBox ID="TBusername" runat="server" CssClass="form-control" placeholder="Username" />
                    <asp:Label ID="usernameLabel" AssociatedControlID="TBusername" runat="server" Text="Username:" />
                    <asp:RequiredFieldValidator ID="RFVusername" runat="server" ControlToValidate="TBusername" ErrorMessage="Please enter your username!" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                </div>
                <div class="form-floating">
                    <asp:TextBox ID="TBpassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password" />
                    <asp:Label ID="passwordLabel" AssociatedControlID="TBpassword" runat="server" Text="Password:" />
                    <asp:RequiredFieldValidator ID="RFVpassword" runat="server" ControlToValidate="TBpassword" ErrorMessage="Please enter your password!" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                    <br>
                    <br>
                    <div class="d-grid gap-2">
                        <asp:Button ID="loginButton" runat="server" CssClass="btn btn-lg btn-primary" Text="Login" OnClick="LoginButton_Click" />
                        </div>
                    </div>
                </div>
        </div>
    </div>
</asp:Content>

