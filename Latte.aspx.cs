using System;
using System.Data.SqlClient;

namespace MenuWeb
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void SubmitOrderVanilla_Click(object sender, EventArgs e)
        {
            ProcessOrder("Vanilla Latte", TextBox1.Text);
        }

        protected void SubmitOrderCaramel_Click(object sender, EventArgs e)
        {
            ProcessOrder("Caramel Latte", TextBox2.Text);
        }

        protected void SubmitOrderHazelnut_Click(object sender, EventArgs e)
        {
            ProcessOrder("Hazelnut Latte", TextBox3.Text);
        }

        private void ProcessOrder(string productName, string quantityText)
        {
            try
            {
                if (int.TryParse(quantityText, out int quantity) && quantity > 0)
                {
                    string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["VendorMgmtDbConnection"].ConnectionString;

                    using (SqlConnection conn = new SqlConnection(connectionString))
                    {
                        string query = "INSERT INTO Orders (ProductName, Quantity) VALUES (@ProductName, @Quantity)";
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@ProductName", productName);
                            cmd.Parameters.AddWithValue("@Quantity", quantity);

                            conn.Open();
                            cmd.ExecuteNonQuery();
                        }
                    }

                    lblMessage.Text = $"Order for {quantity} {productName}(s) placed successfully!";
                    lblMessage.CssClass = "text-success";
                }
                else
                {
                    lblMessage.Text = "Invalid quantity. Please enter a positive integer.";
                    lblMessage.CssClass = "text-warning";
                }
            }
            catch (SqlException sqlEx)
            {
                lblMessage.Text = "Database error occurred. Please try again later.";
                lblMessage.CssClass = "text-danger";
                System.Diagnostics.Debug.WriteLine($"SQL Error: {sqlEx.Message}");
                System.Diagnostics.Debug.WriteLine($"Stack Trace: {sqlEx.StackTrace}");
            }

            catch (Exception ex)
            {
                lblMessage.Text = "An error occurred. Please try again later.";
                lblMessage.CssClass = "text-danger";
                System.Diagnostics.Debug.WriteLine($"Error: {ex.Message}");
            }
        }
    }
}
