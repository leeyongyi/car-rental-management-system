<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="AutoFlex.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 24px;
        }
        .image-style {
            --bs-card-spacer-y: 1rem;
            --bs-card-spacer-x: 1rem;
            --bs-card-title-spacer-y: 0.5rem;
            --bs-card-title-color:;
            --bs-card-subtitle-color:;
            --bs-card-border-width: var(--bs-border-width);
            --bs-card-border-color: var(--bs-border-color-translucent);
            --bs-card-border-radius: var(--bs-border-radius);
            --bs-card-box-shadow:;
            --bs-card-inner-border-radius: calc(var(--bs-border-radius) - (var(--bs-border-width)));
            --bs-card-cap-padding-y: 0.5rem;
            --bs-card-cap-padding-x: 1rem;
            --bs-card-cap-bg: rgba(var(--bs-body-color-rgb), 0.03);
            --bs-card-cap-color:;
            --bs-card-height:;
            --bs-card-color:;
            --bs-card-bg: var(--bs-body-bg);
            --bs-card-img-overlay-padding: 1rem;
            --bs-card-group-margin: 0.75rem;
            color: var(--bs-body-color);
            background-color: var(--bs-card-bg);
            background-clip: border-box;
            border-radius: var(--bs-card-border-radius);
            box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;
            padding: 20px;
            display: inline-block;
            width: auto; 
            text-align: center;
        }

        .content-style h2, .content-style h4, .content-style h5 {
            margin-bottom: 10px; 
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="image-style">
                <asp:Image ID="Image1" runat="server" Height="378px" ImageUrl="~/Image/About us.jpeg" Width="291px" />
            </td>
            <td class="content-style">
                <h2>Vision</h2>
                <h5>
                    <span class="OYPEnA font-feature-liga-off font-feature-clig-off font-feature-calt-off text-decoration-none text-strikethrough-none" style="color: rgb(0, 0, 0); font-weight: 400; font-style: normal; font-kerning: none;">
                        To become a trusted and easily accessible car rental platform for all users.
                    </span>
                </h5>
                <p>
                    &nbsp;</p>

                <h2>Mission</h2>
                <h5>
                    1. To simplify car rentals through a user-friendly platform.<br />
                    2. To offer affordable prices with a variety of car options.<br />
                    3. To enhance customer satisfaction through efficient and reliable services.
                </h5>
                <p>
                    &nbsp;</p>

                <h2>Contact Us:</h2>
                <h6>Phone Number: +6015487351</h6>
                <h6>Email: AutoFlex@gmail.com</h6>
            </td>
        </tr>
    </table>
</asp:Content>
