<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="BlackCoffee.aspx.cs" Inherits="MenuWeb.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <div class="container">
            <h1>Black Coffee Selection</h1>
            <p>Discover our bold and invigorating black coffee varieties, crafted for a pure coffee experience.</p>
            <div class="row">
                <!-- Classic Black Coffee -->
                <div class="col-md-4">
                    <div class="card mb-4">
                        <img alt="Classic Black Coffee" src="Images/Americano.jpg" style="width: 415px; height: 260px;" />
                        <div class="card-body">
                            <h5 class="card-title">Classic Black Coffee</h5>
                            <p class="card-text">Ingredients: Freshly Ground Coffee Beans, Hot Water.</p>
                        </div>
                    </div>
                </div>
                
                <!-- Americano -->
                <div class="col-md-4">
                    <div class="card mb-4">
                        <img alt="Americano" src="Images/americano-2.jpg" style="width: 415px; height: 260px;" />
                        <div class="card-body">
                            <h5 class="card-title">Americano</h5>
                            <p class="card-text">Ingredients: Espresso, Hot Water.</p>
                        </div>
                    </div>
                </div>
                
                <!-- Cold Brew -->
                <div class="col-md-4">
                    <div class="card mb-4">
                        <img alt="Cold Brew" src="Images/cold_brew_coffee.jpg" style="width: 415px; height: 260px;" />
                        <div class="card-body">
                            <h5 class="card-title">Cold Brew</h5>
                            <p class="card-text">Ingredients: Coarsely Ground Coffee Beans, Cold Water.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>

