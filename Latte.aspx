<%@ Page Title="Latte Selection" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Latte.aspx.cs" Inherits="MenuWeb.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <div class="container">
            <h1>Latte Selection</h1>
            <p>Explore our rich and delicious lattes, crafted with quality ingredients.</p>

            <!-- Feedback Message -->
            <asp:Label ID="lblMessage" runat="server" CssClass="text-success" />

            <div class="row">
                <!-- Vanilla Latte -->
                <div class="col-md-4">
                    <div class="card mb-4">
                        <img alt="Vanilla Latte" src="Images/vanilla-latte.jpg" style="width: 415px; height: 260px;" />
                        <div class="card-body">
                            <h5 class="card-title">Vanilla Latte</h5>
                            <p class="card-text">Ingredients: Espresso, Steamed Milk, Vanilla Syrup.</p>
                            <p class="card-text"><strong>Price:</strong> $3.50</p>
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Quantity"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Text="Submit Order" OnClick="SubmitOrderVanilla_Click" />
                        </div>
                    </div>
                </div>

                <!-- Caramel Latte -->
                <div class="col-md-4">
                    <div class="card mb-4">
                        <img alt="Caramel Latte" src="Images/caramel-latte.jpg" style="width: 415px; height: 260px;" />
                        <div class="card-body">
                            <h5 class="card-title">Caramel Latte</h5>
                            <p class="card-text">Ingredients: Espresso, Steamed Milk, Caramel Syrup.</p>
                            <p class="card-text"><strong>Price:</strong> $4.00</p>
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Quantity"></asp:TextBox>
                            <asp:Button ID="Button2" runat="server" Text="Submit Order" OnClick="SubmitOrderCaramel_Click" />
                        </div>
                    </div>
                </div>

                <!-- Hazelnut Latte -->
                <div class="col-md-4">
                    <div class="card mb-4">
                        <img alt="Hazelnut Latte" src="Images/hazelnut-latte.jpg" style="width: 415px; height: 260px;" />
                        <div class="card-body">
                            <h5 class="card-title">Hazelnut Latte</h5>
                            <p class="card-text">Ingredients: Espresso, Steamed Milk, Hazelnut Syrup.</p>
                            <p class="card-text"><strong>Price:</strong> $4.25</p>
                            <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Quantity"></asp:TextBox>
                            <asp:Button ID="Button3" runat="server" Text="Submit Order" OnClick="SubmitOrderHazelnut_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
