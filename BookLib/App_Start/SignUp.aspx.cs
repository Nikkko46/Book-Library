using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BookLib.App_Start
{
    public partial class SignUp : System.Web.UI.Page
    {
        string gender;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            gender = "Male";
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            gender = "female";
        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(gender))
            {
                Response.Write("<script>alert('Please select a gender!')</script>");
                return;
            }

            using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-582BHD9;Initial Catalog=asplogin;Integrated Security=True;Encrypt=True;TrustServerCertificate=True"))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = con;
                    cmd.CommandText = @"INSERT INTO [dbo].[signup]
                ([name], [address], [gender], [phone], [email], [username], [password], [confirmPassword])
                VALUES (@name, @address, @gender, @phone, @email, @username, @password, @confirmPassword)";

                    cmd.Parameters.AddWithValue("@name", txtName.Text);
                    cmd.Parameters.AddWithValue("@address", txtAdd.Text);
                    cmd.Parameters.AddWithValue("@gender", gender);
                    cmd.Parameters.AddWithValue("@phone", txtPhone.Text);
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@username", txtUser.Text);
                    cmd.Parameters.AddWithValue("@password", txtPass.Text);
                    cmd.Parameters.AddWithValue("@confirmPassword", txtConfPass.Text);

                    try
                    {
                        con.Open();
                        cmd.ExecuteNonQuery();

                        Session["UserName"] = txtName.Text;
                        Session["UserAddress"] = txtAdd.Text;
                        Session["UserGender"] = gender;
                        Session["UserPhone"] = txtPhone.Text;
                        Session["UserEmail"] = txtEmail.Text;
                        Session["Username"] = txtUser.Text;

                        Response.Write("<script>alert('User was registered successfully!')</script>");
                        Response.Redirect("Login.aspx");
                    }
                    catch (Exception ex)
                    {
                        Response.Write($"<script>alert('Error: {ex.Message}')</script>");
                    }
                }
            }
        }
    }
}