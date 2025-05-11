<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="AutoFlex.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="successAlert" class="alert alert-dismissible alert-success" style="display: none;">
        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        <strong>Congratulations!</strong>
        <h4 align="center">Your account has been successfully registered!</h4>
    </div>
    <div class="text-center">
        <div class="card">
            <div class="card-body">
                <h2 class="card-title">Register for free, now or never.</h2>
                <br>
                <p class="card-text">Join us today and unlock a world of exclusive benefits – register your account now!</p>
                <br>
                <asp:Panel ID="Success" runat="server" Visible="false">
                    <div class="alert alert-dismissible alert-success">
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                        <asp:Label ID="LblSuccess" runat="server"></asp:Label>
                            </div>
                </asp:Panel>
                <p class="card-text"></p>
                <asp:ValidationSummary ID="VSRegister" runat="server" DisplayMode="List" ForeColor="Red" />
                <div class="form-floating mb-3">
                    <asp:TextBox ID="TBname" runat="server" CssClass="form-control" placeholder="name" />                    
                    <asp:Label ID="nameLabel" AssociatedControlID="TBname" runat="server" Text="Name:" />
                &nbsp;<asp:RequiredFieldValidator ID="RFVname" runat="server" ControlToValidate="TBname" Display="Dynamic" ErrorMessage="Please enter your name." ForeColor="Red">*</asp:RequiredFieldValidator>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox ID="TBemail" runat="server" CssClass="form-control" TextMode="Email" placeholder="name@example.com" />
                    <asp:Label ID="emailLabel" AssociatedControlID="TBemail" runat="server" Text="Email address:" />
                &nbsp;<asp:RequiredFieldValidator ID="RFVemail" runat="server" ControlToValidate="TBemail" Display="Dynamic" ErrorMessage="Please enter your email address." ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REVEmail" runat="server" ControlToValidate="TBemail" Display="Dynamic" ErrorMessage="Email must be in a valid email format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox ID="TBphonenum" runat="server" CssClass="form-control" TextMode="Phone" placeholder="0123456789" />
                    <asp:Label ID="phoneLabel" AssociatedControlID="TBphonenum" runat="server" Text="Phone number:" />
                &nbsp;<asp:RequiredFieldValidator ID="RFVphone" runat="server" ControlToValidate="TBphonenum" Display="Dynamic" ErrorMessage="Please enter your phone number." ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REVphone" runat="server" ControlToValidate="TBphonenum" Display="Dynamic" ErrorMessage="Please ensure you put at least 10 digits for phone number." ForeColor="Red" ValidationExpression="^(\+?6?01)[02-46-9]-*[0-9]{7}$|^(\+?6?01)[1]-*[0-9]{8}$">*</asp:RegularExpressionValidator>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox ID="TBusername" runat="server" CssClass="form-control" placeholder="username" />
                    <asp:Label ID="usernameLabel" AssociatedControlID="TBusername" runat="server" Text="Username:" />
                &nbsp;<asp:RequiredFieldValidator ID="RFVusername" runat="server" ControlToValidate="TBusername" Display="Dynamic" ErrorMessage="Please enter your username." ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CVusername" runat="server" ControlToValidate="TBusername" Display="Dynamic" ErrorMessage="Username must be up to 6 characters, lowercase letters, numbers, and periods only." ForeColor="Red" SetFocusOnError="True" ValidateEmptyText="True" OnServerValidate="CVusername_ServerValidate">*</asp:CustomValidator>
                <div class="form-floating mb-3">
                    <asp:TextBox ID="TBpassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password" />
                    <asp:Label ID="passwordLabel" AssociatedControlID="TBpassword" runat="server" Text="Password:" />
                    &nbsp;<asp:RequiredFieldValidator ID="RFVpassword" runat="server" ControlToValidate="TBpassword" Display="Dynamic" ErrorMessage="Please enter your password." ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REVphone0" runat="server" ControlToValidate="TBpassword" Display="Dynamic" ErrorMessage="Please ensure you put at least 8 digits for password." ForeColor="Red" ValidationExpression="^.{8,}$">*</asp:RegularExpressionValidator>
                    <br>
                    <div class="d-grid gap-2">
                        <asp:Button ID="BtnRegister" runat="server" CssClass="btn btn-lg btn-primary" Text="Register" OnClick="RegisterButton_Click" />
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

