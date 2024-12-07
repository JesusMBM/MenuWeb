<%@ Page Title="Black Coffee Selection" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="BlackCoffee.aspx.cs" Inherits="MenuWeb.WebFormBlackCoffee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <div class="container">
            <h1>Black Coffee Selection</h1>
            <p>Discover our bold and invigorating black coffee varieties, crafted for a pure coffee experience.</p>

            <!-- Feedback Message -->
            <asp:Label ID="lblMessage" runat="server" CssClass="text-success" />

            <div class="row">
                <!-- Classic Black Coffee -->
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <img alt="Classic Black Coffee" src="Images/Americano.jpg" class="card-img-top" style="width: 100%; height: 260px; object-fit: cover;" />
                        <div class="card-body">
                            <h5 class="card-title">Classic Black Coffee</h5>
                            <p class="card-text">Ingredients: Freshly Ground Coffee Beans, Hot Water.</p>
                            <p class="card-text"><strong>Price:</strong> $2.50</p>
                            <asp:TextBox ID="TextBoxClassic" runat="server" placeholder="Enter Quantity" CssClass="form-control mb-2"></asp:TextBox>
                            <asp:Button ID="ButtonClassic" runat="server" Text="Submit Order" CssClass="btn btn-primary w-100" OnClick="SubmitOrderClassic_Click" />
                        </div>
                    </div>
                </div>

                <!-- Americano -->
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <img alt="Americano" src="Images/americano-2.jpg" class="card-img-top" style="width: 100%; height: 260px; object-fit: cover;" />
                        <div class="card-body">
                            <h5 class="card-title">Americano</h5>
                            <p class="card-text">Ingredients: Espresso, Hot Water.</p>
                            <p class="card-text"><strong>Price:</strong> $3.00</p>
                            <asp:TextBox ID="TextBoxAmericano" runat="server" placeholder="Enter Quantity" CssClass="form-control mb-2"></asp:TextBox>
                            <asp:Button ID="ButtonAmericano" runat="server" Text="Submit Order" CssClass="btn btn-primary w-100" OnClick="SubmitOrderAmericano_Click" />
                        </div>
                    </div>
                </div>

                <!-- Cold Brew -->
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <img alt="Cold Brew" src="Images/cold_brew_coffee.jpg" class="card-img-top" style="width: 100%; height: 260px; object-fit: cover;" />
                        <div class="card-body">
                            <h5 class="card-title">Cold Brew</h5>
                            <p class="card-text">Ingredients: Coarsely Ground Coffee Beans, Cold Water.</p>
                            <p class="card-text"><strong>Price:</strong> $3.50</p>
                            <asp:TextBox ID="TextBoxColdBrew" runat="server" placeholder="Enter Quantity" CssClass="form-control mb-2"></asp:TextBox>
                            <asp:Button ID="ButtonColdBrew" runat="server" Text="Submit Order" CssClass="btn btn-primary w-100" OnClick="SubmitOrderColdBrew_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
