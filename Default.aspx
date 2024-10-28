<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MenuWeb._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<main>
    <section class="row" aria-labelledby="coffeeMenuTitle">
        <h1 id="coffeeMenuTitle">Coffee Shop Menu</h1>
        <p class="lead">Welcome to our coffee shop! Choose from our selection of Latte, Motcha, and Black Coffee products.</p>
    </section>
    <div class="row">
        <section class="col-md-4" aria-labelledby="latteTitle">
            <h2 id="latteTitle">Latte Products</h2>
            <ul>
                <li>Vanilla Latte - Rich espresso with steamed milk and vanilla flavor.</li>
                <li>Caramel Latte - Smooth caramel blended with rich espresso and steamed milk.</li>
                <li>Hazelnut Latte - A nutty twist on a classic latte with hazelnut flavor.</li>
            </ul>
        </section>
        <section class="col-md-4" aria-labelledby="motchaTitle">
            <h2 id="motchaTitle">Motcha Products</h2>
            <ul>
                <li>Classic Motcha - Freshly brewed motcha with a hint of sweetness.</li>
                <li>Honey Motcha - Smooth motcha with a drizzle of natural honey.</li>
                <li>Mint Motcha - Refreshing mint blended with traditional motcha.</li>
            </ul>
        </section>
        <section class="col-md-4" aria-labelledby="blackCoffeeTitle">
            <h2 id="blackCoffeeTitle">Black Coffee Products</h2>
            <ul>
                <li>Classic Black Coffee - Pure, strong, and freshly brewed.</li>
                <li>Americano - Espresso shots with added hot water for a smoother taste.</li>
                <li>Cold Brew Black Coffee - Slow-brewed over time for a smooth and bold flavor.</li>
            </ul>
        </section>
    </div>
</main>


</asp:Content>
