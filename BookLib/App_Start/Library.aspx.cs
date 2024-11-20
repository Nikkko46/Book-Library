using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace BookLib.App_Start
{
    public partial class Library : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Dashboard_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Are you sure you wish to log out?')", true);
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

        protected void Add_Book_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add_Book.aspx");
        }

        protected void Search_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search_Book.aspx");
        }

        protected void Library_Manager_Click(object sender, EventArgs e)
        {
            Response.Redirect("Library_Manager.aspx");
        }
    }
}