<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="AutoFlex.aspx.cs" Inherits="AutoFlex.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .card {
            padding: 20px;
        }
        .auto-style1 {
            width: 391px;
        }
        .auto-style2 {
            width: 400px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>FAST AND EASY WAY TO RENT A CAR</strong>
    <table class="auto-style2" style="border-spacing: 0; caption-side: bottom;">
        <tbody class="auto-style3">
            <tr>
                <td style="padding: 20px;" class="auto-style1">
                    <div class="card" style="margin-right: 20px; width: 330px;">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/Myvi - Hatchback.png" Width="290px" /><br />
                        <strong>Myvi -
                        Hatchback</strong><br />
                        <asp:Button ID="Button1" runat="server" Text="More Details" OnClick="Button1_Click" CssClass="btn btn-primary" />
                    </div>
                </td>
                <td style="padding: 20px;">
                    <div class="card" style="margin-right: 20px; width: 330px;">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/Axia - Hatchback.png" Width="290px" /><br />
                        <strong>Axia -
                        Hatchback</strong><br />
                        <asp:Button ID="Button2" runat="server" Text="More Details" OnClick="Button2_Click" CssClass="btn btn-primary" />
                    </div>
                </td>
                <td style="padding: 20px;" class="auto-style2">
                    <div class="card" style="margin-right: 20px; width: 330px;">
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/Image/Saga - Sedan.png" Width="290px" /><br />
                        <strong>Saga - Sedan</strong><br />
                        <asp:Button ID="Button3" runat="server" Text="More Details" OnClick="Button3_Click" CssClass="btn btn-primary" />
                    </div>
                </td>
                <td style="padding: 20px;">
                    <div class="card" style="width: 330px;">
                        <asp:Image ID="Image4" runat="server" ImageUrl="~/Image/Avanza - MPV.png" Width="220px" /><br />
                        <strong>Avanza -
                        MPV</strong><br />
                        <asp:Button ID="Button4" runat="server" Text="More Details" OnClick="Button4_Click" CssClass="btn btn-primary" />
                    </div>
                </td>
            </tr>
        </tbody>
    </table>
    <p>&nbsp;</p>
</asp:Content>