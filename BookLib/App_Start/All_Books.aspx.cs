using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookLib.App_Start
{
    public partial class All_Books : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Home_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("Library.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSourceBook_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}