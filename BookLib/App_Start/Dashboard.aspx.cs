using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace BookLib.App_Start
{
    public partial class Dashboard : System.Web.UI.Page
    {  
         protected void Page_Load(object sender, EventArgs e)
{
    if (!IsPostBack)
        {   
            if (Session["username"] == null)
            {
                HttpCookie userCookie = Request.Cookies["UserInfo"];
                if (userCookie != null)
                {
                    string username = userCookie.Values["username"];
                    
                    SqlConnection con = new SqlConnection("Data Source=DESKTOP-582BHD9;Initial Catalog=asplogin;Integrated Security=True;TrustServerCertificate=True");
                    con.Open();
                    string query = "SELECT * FROM signup WHERE username=@username";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@username", username);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            Session["username"] = username;
                            Session["name"] = reader["name"].ToString();
                            Session["email"] = reader["email"].ToString();
                            Session["address"] = reader["address"].ToString();
                            Session["phone"] = reader["phone"].ToString();
                        }
                    }
                    con.Close();
                }
                else
                {
                    Response.Redirect("Login.aspx");
                    return;
                }
            }

            Name.Text = Session["name"]?.ToString();
            User.Text = Session["username"]?.ToString();
            Email.Text = Session["email"]?.ToString();
            Add.Text = Session["address"]?.ToString();
            Phone.Text = Session["phone"]?.ToString();
        }
}

        private void DisplayUserData()
        {
            if (Session["name"] != null) Name.Text = Session["name"].ToString();
            if (Session["username"] != null) User.Text = Session["username"].ToString();
            if (Session["email"] != null) Email.Text = Session["email"].ToString();
            if (Session["address"] != null) Add.Text = Session["address"].ToString();
            if (Session["phone"] != null) Phone.Text = Session["phone"].ToString();
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();

        if (Request.Cookies["UserInfo"] != null)
        {
            HttpCookie cookie = new HttpCookie("UserInfo");
            cookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(cookie);
        }

        Response.Redirect("Login.aspx");
        }

        protected void Home_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("Library.aspx");
        }
    }
}