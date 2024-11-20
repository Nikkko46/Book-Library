using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookLib.App_Start
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             HttpCookie userCookie = Request.Cookies["UserInfo"];
            if (userCookie != null)
            {
                TextBox1.Text = userCookie.Values["username"];
                Session["username"] = userCookie.Values["username"];
                Response.Redirect("Library.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = Session["username"]?.ToString();
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-582BHD9;Initial Catalog=asplogin;Integrated Security=True;TrustServerCertificate=True");
            con.Open();
            string loginQuery = "SELECT COUNT(*) FROM signup WHERE username=@username AND password=@password";
            SqlCommand cmd = new SqlCommand(loginQuery, con);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
           int count = (int)cmd.ExecuteScalar();
    
                if (count > 0)
                {
                    Session["username"] = TextBox1.Text;
                    
                    HttpCookie userCookie = new HttpCookie("UserInfo");
                    userCookie.Values["username"] = TextBox1.Text;
                    userCookie.Expires = DateTime.Now.AddDays(30);
                    Response.Cookies.Add(userCookie);

                    Response.Write("<script>alert('Login success!');</script>");
                    Response.Redirect("Library.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Login failed! Username or Password are incorrect.');</script>");
                }
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
     }
  }