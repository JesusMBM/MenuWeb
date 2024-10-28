<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Latte.aspx.cs" Inherits="MenuWeb.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <div class="container">
            <h1>Latte Selection</h1>
            <p>Explore our rich and delicious lattes, crafted with quality ingredients.</p>
            <div class="row">
                <!-- Vanilla Latte -->
                <div class="col-md-4">
                    <div class="card mb-4">
                        <img alt="Vanilla Latte" src="Images/vanilla-latte.jpg" style="width: 415px; height: 260px;" />
                        <div class="card-body">
                            <h5 class="card-title">Vanilla Latte</h5>
                            <p class="card-text">Ingredients: Espresso, Steamed Milk, Vanilla Syrup.</p>
                        </div>
                    </div>
                </div>
                
                <!-- Caramel Latte -->
                <div class="col-md-4">
                    <div class="card mb-4">
                        <img alt="Caramel Latte" src="Images/Caramel-latte.jpg" style="width: 415px; height: 260px;" />
                        <div class="card-body">
                            <h5 class="card-title">Caramel Latte</h5>
                            <p class="card-text">Ingredients: Espresso, Steamed Milk, Caramel Syrup.</p>
                        </div>
                    </div>
                </div>
                
                <!-- Hazelnut Latte -->
                <div class="col-md-4">
                    <div class="card mb-4">
                        <img alt="Hazelnut Latte" src="Images/Hazelnut-latte.jpg" style="width: 415px; height: 260px;" />
                        <div class="card-body">
                            <h5 class="card-title">Hazelnut Latte</h5>
                            <p class="card-text">Ingredients: Espresso, Steamed Milk, Hazelnut Syrup.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
