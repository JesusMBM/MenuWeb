using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace MenuWeb
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Any page initialization can go here
        }

        protected void SubmitOrderClassicMotcha_Click(object sender, EventArgs e)
        {
            ProcessOrder("Classic Motcha", TextBox1.Text, 3.75m);
        }

        protected void SubmitOrderHoneyMotcha_Click(object sender, EventArgs e)
        {
            ProcessOrder("Honey Motcha", TextBox2.Text, 4.25m);
        }

        protected void SubmitOrderMintMotcha_Click(object sender, EventArgs e)
        {
            ProcessOrder("Mint Motcha", TextBox3.Text, 4.50m);
        }

        private void ProcessOrder(string productName, string quantityText, decimal pricePerItem)
        {
            try
            {
                // Validate quantity input
                if (int.TryParse(quantityText, out int quantity) && quantity > 0)
                {
                    // Calculate total price
                    decimal totalPrice = quantity * pricePerItem;

                    // Connection string from web.config
                    string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["VendorMgmtDbConnection"].ConnectionString;

                    // Insert order into database
                    using (SqlConnection conn = new SqlConnection(connectionString))
                    {
                        string query = "INSERT INTO Orders (ProductName, Quantity, TotalPrice) VALUES (@ProductName, @Quantity, @TotalPrice)";
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@ProductName", productName);
                            cmd.Parameters.AddWithValue("@Quantity", quantity);
                            cmd.Parameters.AddWithValue("@TotalPrice", totalPrice);

                            conn.Open();
                            cmd.ExecuteNonQuery();
                        }
                    }

                    // Display success message
                    lblMessage.Text = $"Order for {quantity} {productName}(s) placed successfully! Total Price: ${totalPrice:F2}";
                    lblMessage.CssClass = "text-success";
                }
                else
                {
                    // Invalid quantity message
                    lblMessage.Text = "Invalid quantity. Please enter a positive integer.";
                    lblMessage.CssClass = "text-warning";
                }
            }
            catch (SqlException sqlEx)
            {
                // Handle SQL errors
                lblMessage.Text = "Database error occurred. Please try again later.";
                lblMessage.CssClass = "text-danger";
                System.Diagnostics.Debug.WriteLine($"SQL Error: {sqlEx.Message}");
            }
            catch (Exception ex)
            {
                // Handle general errors
                lblMessage.Text = "An unexpected error occurred. Please try again later.";
                lblMessage.CssClass = "text-danger";
                System.Diagnostics.Debug.WriteLine($"Error: {ex.Message}");
            }
        }
    }
}
