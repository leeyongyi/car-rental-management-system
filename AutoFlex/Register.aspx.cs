using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Xml.Linq;
using System.Drawing.Drawing2D;
using System.Text.RegularExpressions;

namespace AutoFlex
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("INSERT INTO [User] (Name, Email, Number, Username, Password) VALUES (@Name, @Email, @Number, @Username, @Password)", conn))
                    {
                        cmd.Parameters.AddWithValue("@Name", TBname.Text);
                        cmd.Parameters.AddWithValue("@Email", TBemail.Text);
                        cmd.Parameters.AddWithValue("@Number", TBphonenum.Text);
                        cmd.Parameters.AddWithValue("@Username", TBusername.Text);
                        cmd.Parameters.AddWithValue("@Password", TBpassword.Text);
                        cmd.ExecuteNonQuery();
                    }
                    conn.Close();
                }

                TBname.Text = "";
                TBemail.Text = "";
                TBphonenum.Text = "";
                TBusername.Text = "";
                TBpassword.Text = "";
                LblSuccess.Text = "Registration successful! You need to login again to access the website.";
                Success.Visible = true;
            }
        }
        
        protected void CVusername_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string username = args.Value;
            if (username.Length <= 6)
            {
                args.IsValid = false;
                return;
            }

            Regex regex = new Regex("^[a-z0-9.]+$"); 
            args.IsValid = regex.IsMatch(username);
        }
    }
}