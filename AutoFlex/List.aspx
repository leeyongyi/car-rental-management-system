<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="AutoFlex.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>Your Rentals<asp:Button ID="BtnRent" runat="server" OnClick="BtnRent_Click" Text="Rent Now" CssClass="btn list-btn" style="font-family: Montserrat;" />
    </strong>
    <table style="max-width: 57rem; font-family: Montserrat;">
    <tr>
        <td>
            Search based on Renatl ID:
              <asp:TextBox ID="TBSearch" runat="server"></asp:TextBox>
        &nbsp;<asp:Button id="BtnSearch" Text="Search" OnClick="BtnSearch_Click" runat="server" style="font-family: Montserrat;" CssClass="btn btn-primary input-spacing" ValidateRequestMode="Enabled"/>  
        </td>
        <td style="text-align: right">
            <asp:Button id="BtnSort" Text="Sort by Pick-up Date" OnClick="BtnSort_Click" runat="server" style="font-family: Montserrat;" CssClass="btn btn-primary input-spacing"/>
        </td>
    </tr>
    <tr>
        <td colspan="2">

            <asp:GridView ID="GridView1" runat="server" CellPadding="3" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" class="card card-body border-primary" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                <Columns>
                    <asp:TemplateField HeaderText="Rental ID">
                        <ItemTemplate>
                            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Pick-up Location">
                        <ItemTemplate>
                            <asp:Label ID="PickLLabel" runat="server" Text='<%# Eval("PickL") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Pick-up Date">
                        <ItemTemplate>
                            <asp:Label ID="PickDLabel" runat="server" Text='<%# Eval("PickD", "{0:dd/MM/yyyy}") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Pick-up Time">
                        <ItemTemplate>
                            <asp:Label ID="PickTLabel" runat="server" Text='<%# Eval("PickT") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Drop-off Location">
                        <ItemTemplate>
                            <asp:Label ID="DropLLabel" runat="server" Text='<%# Eval("DropL") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Drop-off Date">
                        <ItemTemplate>
                            <asp:Label ID="DropDLabel" runat="server" Text='<%# Eval("DropD", "{0:dd/MM/yyyy}") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Drop-off Time">
                        <ItemTemplate>
                            <asp:Label ID="DropTLabel" runat="server" Text='<%# Eval("DropT") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Car Model">
                        <ItemTemplate>
                            <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Total Price">
                        <ItemTemplate>
                            RM <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>


        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <div class="list" style="max-width: 57rem;">
                        <div class="left-column">
                            <div class="list-label">
                                Rental ID:
                                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                            </div>
                            <div class="list-label">
                                Pick-up Location:
                                <asp:Label ID="PickLLabel" runat="server" Text='<%# Eval("PickL") %>' />
                            </div>
                            <div class="list-label">
                                Pick-up Date:
                                <asp:Label ID="PickDLabel" runat="server" Text='<%# Eval("PickD", "{0:dd/MM/yyyy}") %>' />
                            </div>
                            <div class="list-label">
                                Pick-up Time:
                                <asp:Label ID="PickTLabel" runat="server" Text='<%# Eval("PickT") %>' />
                            </div>
                            <div class="list-label">
                                Drop-off Location:
                                <asp:Label ID="DropLLabel" runat="server" Text='<%# Eval("DropL") %>' />
                            </div>
                            <div class="list-label">
                                Drop-off Date:
                                <asp:Label ID="DropDLabel" runat="server" Text='<%# Eval("DropD", "{0:dd/MM/yyyy}") %>' />
                            </div>
                            <div class="list-label">
                                Drop-off Time:
                                <asp:Label ID="DropTLabel" runat="server" Text='<%# Eval("DropT") %>' />
                            </div>
                        </div>
                        <div class="right-column">
                            <div class="list-label">
                                Car Model:
                                <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' />
                            </div>
                            <div class="list-label">
                                Total Price: RM
                                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                            </div>
                            <div class="list-label">
                                Full Name:
                                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                            </div>
                            <div class="list-label">
                                E-mail:
                                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                            </div>
                            <div class="list-label">
                                Phone Number:
                                <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                            </div>
                            <div class="list-label">
                                Date of Birth:
                                <asp:Label ID="DOBLabel1" runat="server" Text='<%# Eval("DOB", "{0:dd/MM/yyyy}") %>' />
                            </div>
                            <div class="list-label">
                                Name of School:
                                <asp:Label ID="SchoolLabel" runat="server" Text='<%# Eval("School") %>' />
                            </div>
                        </div>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" CommandArgument='<%# Eval("ID") %>' OnCommand="EditButton_Command" Text="Edit" CssClass="btn btn-primary" />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" CommandArgument='<%# Eval("ID") %>' OnCommand="DeleteButton_Command" Text="Delete" CssClass="btn btn-primary" />
                    </div>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <p style="background-color: #008A8C;color: #FFFFFF;">Rental ID:
                        <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                        <br />
                        Pick-up Location:
                        <asp:TextBox ID="PickLTextBox" runat="server" Text='<%# Bind("PickL") %>' />
                        <br />
                        Pick-up Date:
                        <asp:TextBox ID="PickDTextBox" runat="server" Text='<%# Bind("PickD") %>' />
                        <br />
                        Pick-up Time:
                        <asp:TextBox ID="PickTTextBox" runat="server" Text='<%# Bind("PickT") %>' />
                        <br />
                        Drop-off Location:
                        <asp:TextBox ID="DropLTextBox" runat="server" Text='<%# Bind("DropL") %>' />
                        <br />
                        Drop-off Date:
                        <asp:TextBox ID="DropDTextBox" runat="server" Text='<%# Bind("DropD") %>' />
                        <br />
                        Drop-off Time:
                        <asp:TextBox ID="DropTTextBox" runat="server" Text='<%# Bind("DropT") %>' />
                        <br />
                        Car Model:
                        <asp:TextBox ID="ModelTextBox" runat="server" Text='<%# Bind("Model") %>' />
                        <br />
                        Total Price: RM
                        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                        <br />
                        Full Name:
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        <br />
                        E-mail:
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                        <br />
                        Phone Number:
                        <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                        <br />
                        Date of Birth:
                        <asp:Label ID="DOBLabel1" runat="server" Text='<%# Eval("DOB") %>' />
                        <br />
                        Name of School:
                        <asp:TextBox ID="SchoolTextBox" runat="server" Text='<%# Bind("School") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </p>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    No rental yet.
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <p style="">Rental ID:
                        <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                        <br />
                        Pick-up Location:
                        <asp:TextBox ID="PickLTextBox0" runat="server" Text='<%# Bind("PickL") %>' />
                        <br />
                        Pick-up Date:
                        <asp:TextBox ID="PickDTextBox0" runat="server" Text='<%# Bind("PickD") %>' />
                        <br />
                        Pick-up Time:
                        <asp:TextBox ID="PickTTextBox0" runat="server" Text='<%# Bind("PickT") %>' />
                        <br />
                        Drop-off Location:
                        <asp:TextBox ID="DropLTextBox0" runat="server" Text='<%# Bind("DropL") %>' />
                        <br />
                        Drop-off Date:
                        <asp:TextBox ID="DropDTextBox0" runat="server" Text='<%# Bind("DropD") %>' />
                        <br />
                        Drop-off Time:
                        <asp:TextBox ID="DropTTextBox0" runat="server" Text='<%# Bind("DropT") %>' />
                        <br />
                        Car Model:
                        <asp:TextBox ID="ModelTextBox0" runat="server" Text='<%# Bind("Model") %>' />
                        <br />
                        Total Price: RM
                        <asp:TextBox ID="PriceTextBox0" runat="server" Text='<%# Bind("Price") %>' />
                        <br />
                        Full Name:
                        <asp:TextBox ID="NameTextBox0" runat="server" Text='<%# Bind("Name") %>' />
                        <br />
                        E-mail:
                        <asp:TextBox ID="EmailTextBox0" runat="server" Text='<%# Bind("Email") %>' />
                        <br />
                        Phone Number:
                        <asp:TextBox ID="PhoneTextBox0" runat="server" Text='<%# Bind("Phone") %>' />
                        <br />
                        Date of Birth:
                        <asp:Label ID="DOBLabel1" runat="server" Text='<%# Eval("DOB") %>' />
                        <br />
                        Name of School:
                        <asp:TextBox ID="SchoolTextBox0" runat="server" Text='<%# Bind("School") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton0" runat="server" CommandName="Cancel" Text="Clear" />
                    </p>
                </InsertItemTemplate>
                <ItemSeparatorTemplate>
                    <br />
                </ItemSeparatorTemplate>
                <ItemTemplate>
                    <div class="list" style="max-width: 57rem;">
                        <div class="left-column">
                            <div class="list-label">
                                Rental ID:
                                <asp:Label ID="IDLabel2" runat="server" Text='<%# Eval("ID") %>' />
                            </div>
                            <div class="list-label">
                                Pick-up Location:
                                <asp:Label ID="PickLLabel0" runat="server" Text='<%# Eval("PickL") %>' />
                            </div>
                            <div class="list-label">
                                Pick-up Date:
                                <asp:Label ID="PickDLabel0" runat="server" Text='<%# Eval("PickD", "{0:dd/MM/yyyy}") %>' />
                            </div>
                            <div class="list-label">
                                Pick-up Time:
                                <asp:Label ID="PickTLabel0" runat="server" Text='<%# Eval("PickT") %>' />
                            </div>
                            <div class="list-label">
                                Drop-off Location:
                                <asp:Label ID="DropLLabel0" runat="server" Text='<%# Eval("DropL") %>' />
                            </div>
                            <div class="list-label">
                                Drop-off Date:
                                <asp:Label ID="DropDLabel0" runat="server" Text='<%# Eval("DropD", "{0:dd/MM/yyyy}") %>' />
                            </div>
                            <div class="list-label">
                                Drop-off Time:
                                <asp:Label ID="DropTLabel0" runat="server" Text='<%# Eval("DropT") %>' />
                            </div>
                        </div>
                        <div class="right-column">
                            <div class="list-label">
                                Car Model:
                                <asp:Label ID="ModelLabel0" runat="server" Text='<%# Eval("Model") %>' />
                            </div>
                            <div class="list-label">
                                Total Price: RM
                                <asp:Label ID="PriceLabel0" runat="server" Text='<%# Eval("Price") %>' />
                            </div>
                            <div class="list-label">
                                Full Name:
                                <asp:Label ID="NameLabel0" runat="server" Text='<%# Eval("Name") %>' />
                            </div>
                            <div class="list-label">
                                E-mail:
                                <asp:Label ID="EmailLabel0" runat="server" Text='<%# Eval("Email") %>' />
                            </div>
                            <div class="list-label">
                                Phone Number:
                                <asp:Label ID="PhoneLabel0" runat="server" Text='<%# Eval("Phone") %>' />
                            </div>
                            <div class="list-label">
                                Date of Birth:
                                <asp:Label ID="DOBLabel0" runat="server" Text='<%# Eval("DOB", "{0:dd/MM/yyyy}") %>' />
                            </div>
                            <div class="list-label">
                                Name of School:
                                <asp:Label ID="SchoolLabel0" runat="server" Text='<%# Eval("School") %>' />
                            </div>
                        </div>
                        <asp:Button ID="EditButton0" runat="server" CommandName="Edit" CommandArgument='<%# Eval("ID") %>' OnCommand="EditButton_Command" Text="Edit" CssClass="btn btn-primary" />
                        <asp:Button ID="DeleteButton0" runat="server" CommandName="Delete" CommandArgument='<%# Eval("ID") %>' OnCommand="DeleteButton_Command" Text="Delete" CssClass="btn btn-primary" />
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <p id="itemPlaceholderContainer" runat="server" style="font-family: Montserrat;">
                        <p runat="server" id="itemPlaceholder" />
                    </p>
                    <div style="text-align: center;background-color: #CCCCCC;font-family: Montserrat;color: #000000;">
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <p style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">Rental ID:
                        <asp:Label ID="IDLabel3" runat="server" Text='<%# Eval("ID") %>' />
                        <br />
                        Pick-up Location:
                        <asp:Label ID="PickLLabel1" runat="server" Text='<%# Eval("PickL") %>' />
                        <br />
                        Pick-up Date:
                        <asp:Label ID="PickDLabel1" runat="server" Text='<%# Eval("PickD") %>' />
                        <br />
                        Pick-up Time:
                        <asp:Label ID="PickTLabel1" runat="server" Text='<%# Eval("PickT") %>' />
                        <br />
                        Drop-off Location:
                        <asp:Label ID="DropLLabel1" runat="server" Text='<%# Eval("DropL") %>' />
                        <br />
                        Drop-off Date:
                        <asp:Label ID="DropDLabel1" runat="server" Text='<%# Eval("DropD") %>' />
                        <br />
                        Drop-off Time:
                        <asp:Label ID="DropTLabel1" runat="server" Text='<%# Eval("DropT") %>' />
                        <br />
                        Car Model:
                        <asp:Label ID="ModelLabel1" runat="server" Text='<%# Eval("Model") %>' />
                        <br />
                        Total Price: RM
                        <asp:Label ID="PriceLabel1" runat="server" Text='<%# Eval("Price") %>' />
                        <br />
                        Full Name:
                        <asp:Label ID="NameLabel1" runat="server" Text='<%# Eval("Name") %>' />
                        <br />
                        E-mail:
                        <asp:Label ID="EmailLabel1" runat="server" Text='<%# Eval("Email") %>' />
                        <br />
                        Phone Number:
                        <asp:Label ID="PhoneLabel1" runat="server" Text='<%# Eval("Phone") %>' />
                        <br />
                        Date of Birth:
                        <asp:Label ID="DOBLabel1" runat="server" Text='<%# Eval("DOB") %>' />
                        <br />
                        Name of School:
                        <asp:Label ID="SchoolLabel1" runat="server" Text='<%# Eval("School") %>' />
                        <br />
                        <asp:Button ID="EditButton1" runat="server" CommandName="Edit" CommandArgument='<%# Eval("ID") %>' OnCommand="EditButton_Command" Text="Edit" CssClass="btn btn-primary" />
                        <asp:Button ID="DeleteButton1" runat="server" CommandName="Delete" CommandArgument='<%# Eval("ID") %>' OnCommand="DeleteButton_Command" Text="Delete" CssClass="btn btn-primary" />
                    </p>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Rent]" OldValuesParameterFormatString="original_{0}" DeleteCommand="DELETE FROM [Rent] WHERE [ID] = @original_ID" InsertCommand="INSERT INTO [Rent] ([ID], [PickL], [PickD], [PickT], [DropL], [DropD], [DropT], [Model], [Price], [Name], [Email], [Phone], [DOB], [School]) VALUES (@ID, @PickL, @PickD, @PickT, @DropL, @DropD, @DropT, @Model, @Price, @Name, @Email, @Phone, @DOB, @School)" UpdateCommand="UPDATE [Rent] SET [PickL] = @PickL, [PickD] = @PickD, [PickT] = @PickT, [DropL] = @DropL, [DropD] = @DropD, [DropT] = @DropT, [Model] = @Model, [Price] = @Price, [Name] = @Name, [Email] = @Email, [Phone] = @Phone, [DOB] = @DOB, [School] = @School WHERE [ID] = @original_ID">
                <DeleteParameters>
                    <asp:Parameter Name="original_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                    <asp:Parameter Name="PickL" Type="String" />
                    <asp:Parameter DbType="Date" Name="PickD" />
                    <asp:Parameter Name="PickT" Type="String" />
                    <asp:Parameter Name="DropL" Type="String" />
                    <asp:Parameter DbType="Date" Name="DropD" />
                    <asp:Parameter Name="DropT" Type="String" />
                    <asp:Parameter Name="Model" Type="String" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter DbType="Date" Name="DOB" />
                    <asp:Parameter Name="School" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PickL" Type="String" />
                    <asp:Parameter DbType="Date" Name="PickD" />
                    <asp:Parameter Name="PickT" Type="String" />
                    <asp:Parameter Name="DropL" Type="String" />
                    <asp:Parameter DbType="Date" Name="DropD" />
                    <asp:Parameter Name="DropT" Type="String" />
                    <asp:Parameter Name="Model" Type="String" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter DbType="Date" Name="DOB" />
                    <asp:Parameter Name="School" Type="String" />
                    <asp:Parameter Name="original_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ID], [PickL], [PickD], [PickT], [DropL], [DropD], [DropT], [Model], [Price] FROM [Rent] WHERE ([ID] = @ID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TBSearch" Name="ID" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    </table>
</asp:Content>
