<%@ Page Title="Motcha Selection" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Motcha.aspx.cs" Inherits="MenuWeb.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <div class="container">
            <h1>Motcha Selection</h1>
            <p>Enjoy our refreshing motcha drinks, made with quality ingredients for a perfect blend.</p>

            <!-- Feedback Message -->
            <asp:Label ID="lblMessage" runat="server" CssClass="text-success" />

            <div class="row">
                <!-- Classic Motcha -->
                <div class="col-md-4">
                    <div class="card mb-4">
                        <img alt="Classic Motcha" src="Images/Motcha.jpg" style="width: 415px; height: 260px;" />
                        <div class="card-body">
                            <h5 class="card-title">Classic Motcha</h5>
                            <p class="card-text">Ingredients: Motcha Powder, Hot Water, Honey.</p>
                            <p class="card-text"><strong>Price:</strong> $3.75</p>
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Quantity"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Text="Submit Order" OnClick="SubmitOrderClassicMotcha_Click" />
                        </div>
                    </div>
                </div>
                
                <!-- Honey Motcha -->
                <div class="col-md-4">
                    <div class="card mb-4">
                        <img alt="Honey Motcha" src="Images/honey-matcha.jpg" style="width: 415px; height: 260px;" />
                        <div class="card-body">
                            <h5 class="card-title">Honey Motcha</h5>
                            <p class="card-text">Ingredients: Motcha Powder, Steamed Milk, Honey.</p>
                            <p class="card-text"><strong>Price:</strong> $4.25</p>
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Quantity"></asp:TextBox>
                            <asp:Button ID="Button2" runat="server" Text="Submit Order" OnClick="SubmitOrderHoneyMotcha_Click" />
                        </div>
                    </div>
                </div>
                
                <!-- Mint Motcha -->
                <div class="col-md-4">
                    <div class="card mb-4">
                        <img alt="Mint Motcha" src="Images/mint-motcha.jpg" style="width: 415px; height: 260px;" />
                        <div class="card-body">
                            <h5 class="card-title">Mint Motcha</h5>
                            <p class="card-text">Ingredients: Motcha Powder, Steamed Milk, Fresh Mint Leaves.</p>
                            <p class="card-text"><strong>Price:</strong> $4.50</p>
                            <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Quantity"></asp:TextBox>
                            <asp:Button ID="Button3" runat="server" Text="Submit Order" OnClick="SubmitOrderMintMotcha_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
