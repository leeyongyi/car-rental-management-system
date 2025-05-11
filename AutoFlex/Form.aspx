<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="AutoFlex.Form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            margin-bottom: 0.5rem;
            width: 706px;
        }
        .auto-style6 {
            display: flex;
            align-items: center;
            gap: 15px;
            width: 706px;
        }
        .auto-style7 {
            width: 706px;
        }
        .auto-style8 {
            margin-bottom: 0.5rem;
            width: 706px;
            height: 51px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>Car Rental Form<asp:Button ID="BtnBack" runat="server" OnClick="BtnBack_Click" Text="Back" CssClass="btn list-btn" style="font-family: Montserrat;" CausesValidation="False" />
        </strong>
    &nbsp;<table class="card card-body border-primary mb-3" style="max-width: 57rem;">
        <tr>
            <td colspan="2" class="card-title"><h4 class="card-title">Car Rental</h4></td>
        </tr>
        <tr>
            <td class="auto-style5">Pick-up Location</td>
            <td class="auto-style5">
                <asp:TextBox ID="TBPickL" runat="server" CssClass="form-control input-spacing"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFVPickL" runat="server" ControlToValidate="TBPickL" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Pick-up Date Time</td>
            <td class="auto-style6">
                <asp:TextBox ID="TBPickD" runat="server" TextMode="Date" CssClass="form-control input-spacing"></asp:TextBox>
                <asp:DropDownList ID="DDLPickT" runat="server" CssClass="form-select input-spacing">
                    <asp:ListItem Value="00:00">12:00 AM</asp:ListItem>
                    <asp:ListItem Value="00:30">12:30 AM</asp:ListItem>
                    <asp:ListItem Value="01:00">1:00 AM</asp:ListItem>
                    <asp:ListItem Value="01:30">1:30 AM</asp:ListItem>
                    <asp:ListItem Value="02:00">2:00 AM</asp:ListItem>
                    <asp:ListItem Value="02:30">2:30 AM</asp:ListItem>
                    <asp:ListItem Value="03:00">3:00 AM</asp:ListItem>
                    <asp:ListItem Value="03:30">3:30 AM</asp:ListItem>
                    <asp:ListItem Value="04:00">4:00 AM</asp:ListItem>
                    <asp:ListItem Value="04:30">4:30 AM</asp:ListItem>
                    <asp:ListItem Value="05:00">5:00 AM</asp:ListItem>
                    <asp:ListItem Value="05:30">5:30 AM</asp:ListItem>
                    <asp:ListItem Value="06:00">6:00 AM</asp:ListItem>
                    <asp:ListItem Value="06:30">6:30 AM</asp:ListItem>
                    <asp:ListItem Value="07:00">7:00 AM</asp:ListItem>
                    <asp:ListItem Value="07:30">7:30 AM</asp:ListItem>
                    <asp:ListItem Value="08:00">8:00 AM</asp:ListItem>
                    <asp:ListItem Value="08:30">8:30 AM</asp:ListItem>
                    <asp:ListItem Value="09:00">9:00 AM</asp:ListItem>
                    <asp:ListItem Value="09:30">9:30 AM</asp:ListItem>
                    <asp:ListItem Value="10:00">10:00 AM</asp:ListItem>
                    <asp:ListItem Value="10:30">10:30 AM</asp:ListItem>
                    <asp:ListItem Value="11:00">11:00 AM</asp:ListItem>
                    <asp:ListItem Value="11:30">11:30 AM</asp:ListItem>
                    <asp:ListItem Value="12:00">12:00 PM</asp:ListItem>
                    <asp:ListItem Value="12:30">12:30 PM</asp:ListItem>
                    <asp:ListItem Value="13:00">1:00 PM</asp:ListItem>
                    <asp:ListItem Value="13:30">1:30 PM</asp:ListItem>
                    <asp:ListItem Value="14:00">2:00 PM</asp:ListItem>
                    <asp:ListItem Value="14:30">2:30 PM</asp:ListItem>
                    <asp:ListItem Value="15:00">3:00 PM</asp:ListItem>
                    <asp:ListItem Value="15:30">3:30 PM</asp:ListItem>
                    <asp:ListItem Value="16:00">4:00 PM</asp:ListItem>
                    <asp:ListItem Value="16:30">4:30 PM</asp:ListItem>
                    <asp:ListItem Value="17:00">5:00 PM</asp:ListItem>
                    <asp:ListItem Value="17:30">5:30 PM</asp:ListItem>
                    <asp:ListItem Value="18:00">6:00 PM</asp:ListItem>
                    <asp:ListItem Value="18:30">6:30 PM</asp:ListItem>
                    <asp:ListItem Value="19:00">7:00 PM</asp:ListItem>
                    <asp:ListItem Value="19:30">7:30 PM</asp:ListItem>
                    <asp:ListItem Value="20:00">8:00 PM</asp:ListItem>
                    <asp:ListItem Value="20:30">8:30 PM</asp:ListItem>
                    <asp:ListItem Value="21:00">9:00 PM</asp:ListItem>
                    <asp:ListItem Value="21:30">9:30 PM</asp:ListItem>
                    <asp:ListItem Value="22:00">10:00 PM</asp:ListItem>
                    <asp:ListItem Value="22:30">10:30 PM</asp:ListItem>
                    <asp:ListItem Value="23:00">11:00 PM</asp:ListItem>
                    <asp:ListItem Value="23:30">11:30 PM</asp:ListItem>
                                    </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RFVPickD" runat="server" ControlToValidate="TBPickD" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Drop-off Location</td>
            <td class="auto-style7">
                <asp:TextBox ID="TBDropL" runat="server" CssClass="form-control input-spacing"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFVDropL" runat="server" ControlToValidate="TBDropL" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Drop-off Date Time</td>
            <td class="auto-style6">
                <asp:TextBox ID="TBDropD" runat="server" TextMode="Date" CssClass="form-control input-spacing"></asp:TextBox>
                <asp:DropDownList ID="DDLDropT" runat="server" CssClass="form-select input-spacing">
                    <asp:ListItem Value="00:00">12:00 AM</asp:ListItem>
                    <asp:ListItem Value="00:30">12:30 AM</asp:ListItem>
                    <asp:ListItem Value="01:00">1:00 AM</asp:ListItem>
                    <asp:ListItem Value="01:30">1:30 AM</asp:ListItem>
                    <asp:ListItem Value="02:00">2:00 AM</asp:ListItem>
                    <asp:ListItem Value="02:30">2:30 AM</asp:ListItem>
                    <asp:ListItem Value="03:00">3:00 AM</asp:ListItem>
                    <asp:ListItem Value="03:30">3:30 AM</asp:ListItem>
                    <asp:ListItem Value="04:00">4:00 AM</asp:ListItem>
                    <asp:ListItem Value="04:30">4:30 AM</asp:ListItem>
                    <asp:ListItem Value="05:00">5:00 AM</asp:ListItem>
                    <asp:ListItem Value="05:30">5:30 AM</asp:ListItem>
                    <asp:ListItem Value="06:00">6:00 AM</asp:ListItem>
                    <asp:ListItem Value="06:30">6:30 AM</asp:ListItem>
                    <asp:ListItem Value="07:00">7:00 AM</asp:ListItem>
                    <asp:ListItem Value="07:30">7:30 AM</asp:ListItem>
                    <asp:ListItem Value="08:00">8:00 AM</asp:ListItem>
                    <asp:ListItem Value="08:30">8:30 AM</asp:ListItem>
                    <asp:ListItem Value="09:00">9:00 AM</asp:ListItem>
                    <asp:ListItem Value="09:30">9:30 AM</asp:ListItem>
                    <asp:ListItem Value="10:00">10:00 AM</asp:ListItem>
                    <asp:ListItem Value="10:30">10:30 AM</asp:ListItem>
                    <asp:ListItem Value="11:00">11:00 AM</asp:ListItem>
                    <asp:ListItem Value="11:30">11:30 AM</asp:ListItem>
                    <asp:ListItem Value="12:00">12:00 PM</asp:ListItem>
                    <asp:ListItem Value="12:30">12:30 PM</asp:ListItem>
                    <asp:ListItem Value="13:00">1:00 PM</asp:ListItem>
                    <asp:ListItem Value="13:30">1:30 PM</asp:ListItem>
                    <asp:ListItem Value="14:00">2:00 PM</asp:ListItem>
                    <asp:ListItem Value="14:30">2:30 PM</asp:ListItem>
                    <asp:ListItem Value="15:00">3:00 PM</asp:ListItem>
                    <asp:ListItem Value="15:30">3:30 PM</asp:ListItem>
                    <asp:ListItem Value="16:00">4:00 PM</asp:ListItem>
                    <asp:ListItem Value="16:30">4:30 PM</asp:ListItem>
                    <asp:ListItem Value="17:00">5:00 PM</asp:ListItem>
                    <asp:ListItem Value="17:30">5:30 PM</asp:ListItem>
                    <asp:ListItem Value="18:00">6:00 PM</asp:ListItem>
                    <asp:ListItem Value="18:30">6:30 PM</asp:ListItem>
                    <asp:ListItem Value="19:00">7:00 PM</asp:ListItem>
                    <asp:ListItem Value="19:30">7:30 PM</asp:ListItem>
                    <asp:ListItem Value="20:00">8:00 PM</asp:ListItem>
                    <asp:ListItem Value="20:30">8:30 PM</asp:ListItem>
                    <asp:ListItem Value="21:00">9:00 PM</asp:ListItem>
                    <asp:ListItem Value="21:30">9:30 PM</asp:ListItem>
                    <asp:ListItem Value="22:00">10:00 PM</asp:ListItem>
                    <asp:ListItem Value="22:30">10:30 PM</asp:ListItem>
                    <asp:ListItem Value="23:00">11:00 PM</asp:ListItem>
                    <asp:ListItem Value="23:30">11:30 PM</asp:ListItem>
                                    </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RFVDropD" runat="server" ControlToValidate="TBDropD" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style7">
                <asp:Label ID="LblError" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="card-title"><hr /><h4 class="card-title">Car Detail</h4></td>
        </tr>
        <tr>
            <td class="auto-style">Car Model</td>
            <td class="auto-style5">
                <asp:DropDownList ID="DDLModel" runat="server" AutoPostBack="True" CssClass="form-select input-spacing">
                    <asp:ListItem>Axia</asp:ListItem>
                    <asp:ListItem>Civic</asp:ListItem>
                    <asp:ListItem>720s</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Price</td>
            <td class="auto-style6">
                <asp:TextBox ID="TBPrice" runat="server" ReadOnly="True" Width="100px" CssClass="form-control input-spacing"></asp:TextBox>/hour</td>
        </tr>
        <tr>
            <td class="auto-style5">Total Price</td>
            <td class="auto-style6">
                RM<asp:TextBox ID="TBTPrice" runat="server" ReadOnly="True" Width="110px" CssClass="form-control input-spacing"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFVTPrice" runat="server" ControlToValidate="TBTPrice" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td colspan="2"><hr /><h4 class="card-title">Personal Information</h4></td>
        </tr>
        <tr>
            <td class="auto-style5">Full Name</td>
            <td class="auto-style5">
                <asp:TextBox ID="TBName" runat="server" CssClass="form-control input-spacing"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFVName" runat="server" ControlToValidate="TBName" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">E-mail</td>
            <td class="auto-style5">
                <asp:TextBox ID="TBEmail" runat="server" TextMode="Email" CssClass="form-control input-spacing"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFVEmail" runat="server" ControlToValidate="TBEmail" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Phone Number</td>
            <td class="auto-style5">
                <asp:TextBox ID="TBPhone" runat="server" TextMode="Phone" CssClass="form-control input-spacing"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFVPhone" runat="server" ControlToValidate="TBPhone" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Date of Birth</td>
            <td class="auto-style8">
                <asp:TextBox ID="TBDOB" runat="server" TextMode="Date" CssClass="form-control input-spacing"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFVDOB" runat="server" ControlToValidate="TBDOB" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Student</td>
            <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp; <asp:RadioButton ID="RBYes" runat="server" Text="Yes" GroupName="Student" CssClass="radio-wrapper-1 input-spacing" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RBNo" runat="server" Text="No" GroupName="Student" CssClass="radio-wrapper-1 input-spacing" />
&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Name of School</td>
            <td class="auto-style5">
                <asp:TextBox ID="TBSchool" runat="server" CssClass="form-control input-spacing"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style7">
                <asp:Label ID="LblError2" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="text-secondary">
                * Please click &quot;Calculate&quot; button to claculate the total price for the car rental before submit the form.</td>
        </tr>
        <tr>
            <td style="text-align: center" colspan="2" class="auto-style7">
                <asp:Button ID="BtnCalculate" runat="server" Text="Calculate" OnClick="BtnCalculate_Click" CssClass="btn btn-secondary input-spacing" CausesValidation="False" />
                <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" CssClass="btn btn-primary input-spacing" />
            </td>
        </tr>
    </table>
</asp:Content>
