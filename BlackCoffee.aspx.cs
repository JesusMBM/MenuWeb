using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace MenuWeb
{
    public partial class WebFormBlackCoffee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Any initialization logic can go here
        }

        protected void SubmitOrderClassic_Click(object sender, EventArgs e)
        {
            ProcessOrder("Classic Black Coffee", TextBoxClassic.Text, 2.50m);
        }

        protected void SubmitOrderAmericano_Click(object sender, EventArgs e)
        {
            ProcessOrder("Americano", TextBoxAmericano.Text, 3.00m);
        }

        protected void SubmitOrderColdBrew_Click(object sender, EventArgs e)
        {
            ProcessOrder("Cold Brew", TextBoxColdBrew.Text, 3.50m);
        }

        private void ProcessOrder(string productName, string quantityText, decimal pricePerItem)
        {
            if (!string.IsNullOrEmpty(quantityText) && int.TryParse(quantityText, out int qty) && qty > 0)
            {
                try
                {
                    // Calculate total price
                    decimal totalPrice = qty * pricePerItem;

                    // Retrieve the connection string
                    string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["VendorMgmtDbConnection"].ConnectionString;

                    // Insert the order into the database
                    using (SqlConnection conn = new SqlConnection(connectionString))
                    {
                        string query = "INSERT INTO Orders (ProductName, Quantity, TotalPrice) VALUES (@ProductName, @Quantity, @TotalPrice)";
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@ProductName", productName);
                            cmd.Parameters.AddWithValue("@Quantity", qty);
                            cmd.Parameters.AddWithValue("@TotalPrice", totalPrice);

                            conn.Open();
                            cmd.ExecuteNonQuery();
                        }
                    }

                    // Display success message
                    ShowMessage($"Order for {qty} {productName}(s) placed successfully! Total Price: ${totalPrice:F2}", "text-success");
                }
                catch (SqlException sqlEx)
                {
                    // Handle database errors
                    ShowMessage("Database error occurred. Please try again later.", "text-danger");
                    System.Diagnostics.Debug.WriteLine($"SQL Error: {sqlEx.Message}");
                }
                catch (Exception ex)
                {
                    // Handle general errors
                    ShowMessage("An unexpected error occurred. Please try again later.", "text-danger");
                    System.Diagnostics.Debug.WriteLine($"Error: {ex.Message}");
                }
            }
            else
            {
                // Display validation error
                ShowMessage("Please enter a valid quantity.", "text-warning");
            }
        }

        private void ShowMessage(string message, string cssClass)
        {
            lblMessage.Text = message;
            lblMessage.CssClass = cssClass;
        }
    }
}
