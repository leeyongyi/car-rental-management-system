using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoFlex
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LoginButton_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString))
            {
                conn.Open();
                string query = "SELECT COUNT(*) FROM [User] WHERE Username = @Username AND Password = @Password";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Username", TBusername.Text);
                    cmd.Parameters.AddWithValue("@Password", TBpassword.Text);

                    int userCount = (int)cmd.ExecuteScalar();

                    if (userCount > 0)
                    {
                        Response.Redirect("AutoFlex.aspx");
                    }
                    else
                    {
                        LblFail.Text = "<strong>Oh snap!</strong> Account not found. Please check your username and password.";
                        Fail.CssClass = "alert alert-dismissible alert-danger";
                        Fail.Visible = true;
                    }
                    conn.Close();
                }
            }
        }
    }
}
