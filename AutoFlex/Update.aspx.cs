using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoFlex
{
    public partial class Update : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataAdapter da;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    int id = Convert.ToInt32(Request.QueryString["id"]);
                    LoadData(id);
                }
            }
            if (DDLModel.SelectedValue == "Axia")
            {
                TBPrice.Text = "8";
            }
            else if (DDLModel.SelectedValue == "Civic")
            {
                TBPrice.Text = "15";
            }
            else if (DDLModel.SelectedValue == "720s")
            {
                TBPrice.Text = "10,099";
            }
        }
        protected void BtnCalculate_Click(object sender, EventArgs e)
        {
            LblError.Visible = false;
            if (string.IsNullOrWhiteSpace(TBPickD.Text) || string.IsNullOrWhiteSpace(TBDropD.Text))
            {
                LblError.Text = "Please select both pick-up and drop-off dates.";
                LblError.Visible = true;
                return;
            }
            double pricePerDay = Convert.ToDouble(TBPrice.Text);

            DateTime pickDate = Convert.ToDateTime(TBPickD.Text);
            DateTime dropDate = Convert.ToDateTime(TBDropD.Text);

            TimeSpan pickTime = TimeSpan.Parse(DDLPickT.SelectedValue);
            TimeSpan dropTime = TimeSpan.Parse(DDLDropT.SelectedValue);

            DateTime pickDateTime = pickDate.Add(pickTime);
            DateTime dropDateTime = dropDate.Add(dropTime);

            if (dropDateTime <= pickDateTime)
            {
                LblError.Text = "Drop-off date and time must be after pick-up date and time.";
                LblError.Visible = true;
                return;
            }

            TimeSpan rentalDuration = dropDateTime - pickDateTime;
            double rentalHours = rentalDuration.TotalHours;

            double totalPrice = (rentalHours / 24) * pricePerDay;

            if (RBYes.Checked)
            {
                totalPrice *= 0.75;
            }

            TBTPrice.Text = totalPrice.ToString("F2");
        }
        private void LoadData(int id)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM Rent WHERE ID = @id", conn);
            cmd.Parameters.AddWithValue("@id", id);

            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                TBPickL.Text = reader["PickL"].ToString();
                TBPickD.Text = Convert.ToDateTime(reader["PickD"]).ToString("dd/MM/yyyy");
                DDLPickT.SelectedValue = reader["PickT"].ToString();
                TBDropL.Text = reader["DropL"].ToString();
                TBDropD.Text = Convert.ToDateTime(reader["DropD"]).ToString("dd/MM/yyyy");
                DDLDropT.SelectedValue = reader["DropT"].ToString();
                DDLModel.SelectedValue = reader["Model"].ToString();
                TBPrice.Text = reader["Price"].ToString();
                TBName.Text = reader["Name"].ToString();
                TBEmail.Text = reader["Email"].ToString();
                TBPhone.Text = reader["Phone"].ToString();
                TBDOB.Text = Convert.ToDateTime(reader["DOB"]).ToString("dd/MM/yyyy");
                TBSchool.Text = reader["School"].ToString();
            }
            conn.Close();
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            DateTime dob;
            if (DateTime.TryParse(TBDOB.Text, out dob))
            {
                DateTime today = DateTime.Today;
                int age = today.Year - dob.Year;
                if (dob.Date > today.AddYears(-age)) age--; 

                if (age < 17)
                {
                    LblError2.Text = "You must be at least 17 years old to proceed.";
                    LblError2.Visible = true;
                    return;
                }
            }
            double price = Convert.ToDouble(TBPrice.Text);

            if (Request.QueryString["id"] != null)
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);

                SqlCommand cmd = new SqlCommand("UPDATE Rent SET PickL=@pickL, PickD=@pickD, PickT=@pickT, DropL=@dropL, DropD=@dropD, DropT=@dropT, Model=@model, Price=@price, Name=@name, Email=@email, Phone=@phone, DOB=@dob, School=@school WHERE ID=@id", conn);

                cmd.Parameters.AddWithValue("@id", id); // Ensure you're using the correct ID
                cmd.Parameters.AddWithValue("@pickL", TBPickL.Text);
                cmd.Parameters.AddWithValue("@pickD", TBPickD.Text);
                cmd.Parameters.AddWithValue("@pickT", DDLPickT.SelectedValue);
                cmd.Parameters.AddWithValue("@dropL", TBDropL.Text);
                cmd.Parameters.AddWithValue("@dropD", TBDropD.Text);
                cmd.Parameters.AddWithValue("@dropT", DDLDropT.SelectedValue);
                cmd.Parameters.AddWithValue("@model", DDLModel.SelectedValue);
                cmd.Parameters.AddWithValue("@name", TBName.Text);
                cmd.Parameters.AddWithValue("@email", TBEmail.Text);
                cmd.Parameters.AddWithValue("@phone", TBPhone.Text);
                cmd.Parameters.AddWithValue("@dob", TBDOB.Text);
                cmd.Parameters.AddWithValue("@school", TBSchool.Text);
                cmd.Parameters.AddWithValue("@price", TBTPrice.Text);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            ClearForm();
            Response.Redirect("List.aspx");
        }

        private void ClearForm()
        {
            TBPickL.Text = "";
            TBPickD.Text = "";
            DDLPickT.SelectedIndex = 0;
            TBDropL.Text = "";
            TBDropD.Text = "";
            DDLDropT.SelectedIndex = 0;
            DDLModel.SelectedIndex = 0;
            TBPrice.Text = "";
            TBTPrice.Text = "";
            TBName.Text = "";
            TBEmail.Text = "";
            TBPhone.Text = "";
            TBDOB.Text = "";
            RBYes.Checked = false;
            RBNo.Checked = false;
            TBSchool.Text = "";
        }

        protected void BtnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("List.aspx");
        }
    }
}