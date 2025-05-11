using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoFlex
{
    public partial class List : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataAdapter da;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void BtnRent_Click(object sender, EventArgs e)
        {
            Response.Redirect("Form.aspx");
        }
        protected void EditButton_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "Edit")
            {
                string commandArgument = e.CommandArgument.ToString();
                int itemId = 0;

                if (int.TryParse(commandArgument, out itemId))
                {
                    Response.Redirect("Update.aspx?ID=" + itemId);
                }
                else
                {
                    Response.Write("Invalid ID format.");
                }
            }
        }
        protected void DeleteButton_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                string commandArgument = e.CommandArgument.ToString();
                int itemId = 0;

                if (int.TryParse(commandArgument, out itemId))
                {
                    conn.Open();
                    cmd = new SqlCommand("DELETE FROM Rent WHERE ID = @ID", conn);
                    cmd.Parameters.AddWithValue("@ID", itemId);
                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        Response.Redirect("List.aspx");
                    }
                    else
                    {
                        Response.Write("Deletion failed. Item not found.");
                    }
                }
                else
                {
                    Response.Write("Invalid ID format.");
                }
            }
        }

        protected void BtnSort_Click(object sender, EventArgs e)
        {
            string sortDirection = ViewState["SortDirection"] as string == "ASC" ? "DESC" : "ASC";
            ViewState["SortDirection"] = sortDirection;

            ListView1.Sort("PickD", sortDirection == "ASC" ? SortDirection.Ascending : SortDirection.Descending);
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }
    }
}