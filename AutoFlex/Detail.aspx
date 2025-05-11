<%@ Page Title="Car Details" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="AutoFlex.Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .vehicle-card {
            display: flex;
            border: 1px solid #ccc;
            padding: 10px;
            margin: 15px 0;
            border-radius: 8px;
        }
        .vehicle-image {
            width: 150px;
            height: 100px;
            background-color: #f0f0f0;
            margin-right: 15px;
        }
        .vehicle-details {
            flex-grow: 1;
        }
        .vehicle-title {
            font-weight: bold;
            margin-bottom: 5px;
        }
       .book-button {
        padding: 5px 10px;
        background-color: #1e2f3f; 
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        }

        .book-button:hover {
         background-color: #16324a; 
        }

        .auto-style4 {
            width: 281px;
        }
        .auto-style5 {
            width: 375px;
            height: 272px;
            background-color: #f0f0f0;
            margin-right: 15px;
        }
        .auto-style6 {
            width: 375px;
            height: 285px;
            background-color: #f0f0f0;
            margin-right: 15px;
        }
        .auto-style7 {
            width: 429px;
        }
        .auto-style8 {
            width: 283px;
        }
        .auto-style9 {
            width: 319px;
        }
        .auto-style10 {
            width: 290px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>What We Offer</strong>

    <div class="vehicle-card">
        <div class="auto-style5">
            <asp:Image ID="ImgPerodua" runat="server" AlternateText="Perodua Image" Height="282px" ImageUrl="~/Image/axia.png" Width="386px" />
        </div>
        <div class="vehicle-details">
            <div class="vehicle-title">Brand: Perodua</div>
            <div>Model: Axia (2019)</div>
            <div>Type: Hatchback</div>
            <div>Price Per Hour: RM 8<div class="auto-style7">Descriptions: 
                <ul>
                    <li>Budget-friendly&nbsp;
                        <asp:Image ID="ImgGood" runat="server" Height="16px" ImageUrl="~/Image/Agree icon.jpg" />
                    </li>
                    <li>Airconditioning&nbsp;&nbsp;
                        <asp:Image ID="ImgGood1" runat="server" Height="16px" ImageUrl="~/Image/Agree icon.jpg" />
                    </li>
                    <li>Luggage&nbsp;&nbsp;
                        <asp:Image ID="ImgGood2" runat="server" Height="16px" ImageUrl="~/Image/Agree icon.jpg" />
                    </li>
                    <li>Limited power&nbsp;&nbsp;
                        <asp:Image ID="ImgGood3" runat="server" Height="16px" ImageUrl="~/Image/Agree icon.jpg" />
                    </li>
                    <li>Performance&nbsp;
                        <asp:Image ID="ImgWrong" runat="server" Height="16px" ImageUrl="~/Image/wrong icon.jpg" />
                    </li>
                </ul>
            </div>
            </div>
        </div>
        <div>
            <asp:Button ID="BookNowPerodua" runat="server" Text="Book Now" CssClass="book-button" PostBackUrl="~/Form.aspx" />
        </div>
    </div>

    <div class="vehicle-card">
    <div class="auto-style5">
        <asp:Image ID="Image1" runat="server" AlternateText="Perodua Image" Height="282px" ImageUrl="~/Image/myvi.png" Width="386px" />
    </div>
    <div class="vehicle-details">
        <div class="vehicle-title">Brand: Perodua</div>
        <div>Model: Myvi </div>
        <div>Type: Hatchback</div>
        <div>Price Per Hour: RM 10<div class="auto-style8">Descriptions: 
                <ul>
                    <li>Budget-friendly&nbsp;
                        <asp:Image ID="ImgGood4" runat="server" Height="16px" ImageUrl="~/Image/Agree icon.jpg" />
                    </li>
                    <li>Airconditioning&nbsp;&nbsp;
                        <asp:Image ID="ImgGood5" runat="server" Height="16px" ImageUrl="~/Image/Agree icon.jpg" />
                    </li>
                    <li>Luggage&nbsp;&nbsp;
                        <asp:Image ID="ImgGood6" runat="server" Height="16px" ImageUrl="~/Image/Agree icon.jpg" />
                    </li>
                    <li>Limited power&nbsp;&nbsp;
                        <asp:Image ID="ImgGood7" runat="server" Height="16px" ImageUrl="~/Image/Agree icon.jpg" />
                    </li>
                    <li>Performance&nbsp;
                        <asp:Image ID="ImgWrong0" runat="server" Height="16px" ImageUrl="~/Image/wrong icon.jpg" />
                    </li>
                </ul>
        </div>
        </div>
    </div>
    <div>
        <asp:Button ID="Button1" runat="server" Text="Book Now" CssClass="book-button" PostBackUrl="~/Form.aspx" />
    </div>
</div>


    <div class="vehicle-card">
    <div class="auto-style5">
        <asp:Image ID="Image2" runat="server" AlternateText="Perodua Image" Height="282px" ImageUrl="~/Image/saga.png" Width="386px" />
    </div>
    <div class="vehicle-details">
        <div class="vehicle-title">Brand: Proton</div>
        <div>Model: Saga</div>
        <div>Type: Sedan</div>
        <div>Price Per Hour: RM 8<div class="auto-style9">Descriptions: 
                <ul>
                    <li>Budget-friendly&nbsp;
                        <asp:Image ID="ImgGood8" runat="server" Height="16px" ImageUrl="~/Image/Agree icon.jpg" />
                    </li>
                    <li>Airconditioning&nbsp;&nbsp;
                        <asp:Image ID="ImgGood9" runat="server" Height="16px" ImageUrl="~/Image/Agree icon.jpg" />
                    </li>
                    <li>Luggage&nbsp;&nbsp;
                        <asp:Image ID="ImgGood10" runat="server" Height="16px" ImageUrl="~/Image/Agree icon.jpg" />
                    </li>
                    <li>Limited power&nbsp;&nbsp;
                        <asp:Image ID="ImgGood11" runat="server" Height="16px" ImageUrl="~/Image/wrong icon.jpg" />
                    </li>
                    <li>Performance&nbsp;
                        <asp:Image ID="ImgWrong1" runat="server" Height="16px" ImageUrl="~/Image/Agree icon.jpg" />
                    </li>
                </ul>
        </div>
        </div>
    </div>
    <div>
        <asp:Button ID="Button2" runat="server" Text="Book Now" CssClass="book-button" PostBackUrl="~/Form.aspx" />
    </div>
</div>


    <div class="vehicle-card">
    <div class="auto-style5">
        <asp:Image ID="Image3" runat="server" AlternateText="Perodua Image" Height="282px" ImageUrl="~/Image/hrv.png" Width="386px" />
    </div>
    <div class="vehicle-details">
        <div class="vehicle-title">Brand: Honda</div>
        <div>Model: HRV</div>
        <div>Type: Hatchback</div>
        <div>Price Per Hour: RM 20<div class="auto-style10">Descriptions: 
                <ul>
                    <li>Budget-friendly&nbsp;
                        <asp:Image ID="ImgGood12" runat="server" Height="16px" ImageUrl="~/Image/Agree icon.jpg" />
                    </li>
                    <li>Airconditioning&nbsp;&nbsp;
                        <asp:Image ID="ImgGood13" runat="server" Height="16px" ImageUrl="~/Image/Agree icon.jpg" />
                    </li>
                    <li>Luggage&nbsp;&nbsp;
                        <asp:Image ID="ImgGood14" runat="server" Height="16px" ImageUrl="~/Image/Agree icon.jpg" />
                    </li>
                    <li>Limited power&nbsp;&nbsp;
                        <asp:Image ID="ImgGood15" runat="server" Height="16px" ImageUrl="~/Image/wrong icon.jpg" />
                    </li>
                    <li>Performance&nbsp;
                        <asp:Image ID="ImgWrong2" runat="server" Height="16px" ImageUrl="~/Image/Agree icon.jpg" />
                    </li>
                </ul>
        </div>
        </div>
    </div>
    <div>
        <asp:Button ID="Button3" runat="server" Text="Book Now" CssClass="book-button" PostBackUrl="~/Form.aspx" />
    </div>
</div>

    <div class="vehicle-card">
    <div class="auto-style5">
        <asp:Image ID="Image4" runat="server" AlternateText="Perodua Image" Height="282px" ImageUrl="~/Image/avanza.png" Width="386px" />
    </div>
    <div class="vehicle-details">
        <div class="vehicle-title">Brand: Toyota</div>
        <div>Model: Avanza</div>
        <div>Type: MPV</div>
        <div>Price Per Hour: RM 20<div class="auto-style4">Descriptions: 
                <ul>
                    <li>Budget-friendly&nbsp;
                        <asp:Image ID="ImgGood16" runat="server" Height="16px" ImageUrl="~/Image/Agree icon.jpg" />
                    </li>
                    <li>Airconditioning&nbsp;&nbsp;
                        <asp:Image ID="ImgGood17" runat="server" Height="16px" ImageUrl="~/Image/Agree icon.jpg" />
                    </li>
                    <li>Luggage&nbsp;&nbsp;
                        <asp:Image ID="ImgGood18" runat="server" Height="16px" ImageUrl="~/Image/Agree icon.jpg" />
                    </li>
                    <li>Limited power&nbsp;&nbsp;
                        <asp:Image ID="ImgGood19" runat="server" Height="16px" ImageUrl="~/Image/wrong icon.jpg" />
                    </li>
                    <li>Performance&nbsp;
                        <asp:Image ID="ImgWrong3" runat="server" Height="16px" ImageUrl="~/Image/Agree icon.jpg" />
                    </li>
                </ul>
        </div>
        </div>
    </div>
    <div>
        <asp:Button ID="Button4" runat="server" Text="Book Now" CssClass="book-button" PostBackUrl="~/Form.aspx" />
    </div>
</div>



    <div class="vehicle-card">
        <div class="auto-style5">
            <asp:Image ID="ImgCivic" runat="server" AlternateText="Civic Image" Height="265px" ImageUrl="~/Image/honda civic.png" Width="370px" />
        </div>
        <div class="vehicle-details">
            <div class="vehicle-title">Brand: Honda</div>
            <div>Model: Civic</div>
            <div>Type: Sedan</div>
            <div>Price Per Hour: RM 15</div>
            <div>Descriptions: 
                <ul>
                    <li>Comfort</li>
                    <li>Airconditioning</li>
                    <li>Luggage</li>
                    <li>Performance</li>
                    <li>Limited power</li>
                </ul>
            </div>
        </div>
        <div>
            <asp:Button ID="BookNowHonda" runat="server" Text="Book Now" CssClass="book-button" PostBackUrl="~/Form.aspx"/>
        </div>
    </div>

    <div class="vehicle-card">
        <div class="auto-style6">
            <asp:Image ID="ImgMcLaren" runat="server" AlternateText="McLaren Image" Height="265px" ImageUrl="~/Image/mclaren.png" Width="370px" />
        </div>
        <div class="vehicle-details">
            <div class="vehicle-title">Brand: McLaren</div>
            <div>Model: 720s</div>
            <div>Type: Supercar</div>
            <div>Price Per Hour: RM 10,099</div>
            <div>Descriptions: 
                <ul>
                    <li>Comfort</li>
                    <li>Airconditioning</li>
                    <li>Luxurious</li>
                    <li>Performance</li>
                    <li>Limited seat</li>
                </ul>
            </div>
        </div>
        <div>
            <asp:Button ID="BookNowMcLaren" runat="server" Text="Book Now" CssClass="book-button" PostBackUrl="~/Form.aspx"/>
        </div>
    </div>
</asp:Content>
